; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_tty_driver_lookup_tty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_tty_driver_lookup_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.tty_driver = type { %struct.tty_struct**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_struct* (%struct.tty_driver*, %struct.inode*, i32)* @tty_driver_lookup_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_struct* @tty_driver_lookup_tty(%struct.tty_driver* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.tty_driver*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tty_struct*, align 8
  store %struct.tty_driver* %0, %struct.tty_driver** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %10 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to %struct.tty_struct* (%struct.tty_driver*, %struct.inode*, i32)**
  %14 = load %struct.tty_struct* (%struct.tty_driver*, %struct.inode*, i32)*, %struct.tty_struct* (%struct.tty_driver*, %struct.inode*, i32)** %13, align 8
  %15 = icmp ne %struct.tty_struct* (%struct.tty_driver*, %struct.inode*, i32)* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %18 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to %struct.tty_struct* (%struct.tty_driver*, %struct.inode*, i32)**
  %22 = load %struct.tty_struct* (%struct.tty_driver*, %struct.inode*, i32)*, %struct.tty_struct* (%struct.tty_driver*, %struct.inode*, i32)** %21, align 8
  %23 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.tty_struct* %22(%struct.tty_driver* %23, %struct.inode* %24, i32 %25)
  store %struct.tty_struct* %26, %struct.tty_struct** %4, align 8
  br label %36

27:                                               ; preds = %3
  %28 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %29 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %28, i32 0, i32 0
  %30 = load %struct.tty_struct**, %struct.tty_struct*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.tty_struct*, %struct.tty_struct** %30, i64 %32
  %34 = load %struct.tty_struct*, %struct.tty_struct** %33, align 8
  store %struct.tty_struct* %34, %struct.tty_struct** %8, align 8
  %35 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  store %struct.tty_struct* %35, %struct.tty_struct** %4, align 8
  br label %36

36:                                               ; preds = %27, %16
  %37 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  ret %struct.tty_struct* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
