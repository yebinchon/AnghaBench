; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_fs3270.c_fs3270_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_fs3270.c_fs3270_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.fs3270* }
%struct.fs3270 = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @fs3270_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs3270_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.fs3270*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.fs3270*, %struct.fs3270** %7, align 8
  store %struct.fs3270* %8, %struct.fs3270** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  store %struct.fs3270* null, %struct.fs3270** %10, align 8
  %11 = load %struct.fs3270*, %struct.fs3270** %5, align 8
  %12 = icmp ne %struct.fs3270* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load %struct.fs3270*, %struct.fs3270** %5, align 8
  %15 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @put_pid(i32* %16)
  %18 = load %struct.fs3270*, %struct.fs3270** %5, align 8
  %19 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %18, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = load %struct.fs3270*, %struct.fs3270** %5, align 8
  %21 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %20, i32 0, i32 0
  %22 = call i32 @raw3270_reset(i32* %21)
  %23 = load %struct.fs3270*, %struct.fs3270** %5, align 8
  %24 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %23, i32 0, i32 0
  %25 = call i32 @raw3270_put_view(i32* %24)
  %26 = load %struct.fs3270*, %struct.fs3270** %5, align 8
  %27 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %26, i32 0, i32 0
  %28 = call i32 @raw3270_del_view(i32* %27)
  br label %29

29:                                               ; preds = %13, %2
  ret i32 0
}

declare dso_local i32 @put_pid(i32*) #1

declare dso_local i32 @raw3270_reset(i32*) #1

declare dso_local i32 @raw3270_put_view(i32*) #1

declare dso_local i32 @raw3270_del_view(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
