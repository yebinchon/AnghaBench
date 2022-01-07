; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_bsg_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_bsg_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.bsg_device* }
%struct.bsg_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @bsg_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsg_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.bsg_device*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = call i32 (...) @lock_kernel()
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.bsg_device* @bsg_get_device(%struct.inode* %8, %struct.file* %9)
  store %struct.bsg_device* %10, %struct.bsg_device** %6, align 8
  %11 = call i32 (...) @unlock_kernel()
  %12 = load %struct.bsg_device*, %struct.bsg_device** %6, align 8
  %13 = call i64 @IS_ERR(%struct.bsg_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.bsg_device*, %struct.bsg_device** %6, align 8
  %17 = call i32 @PTR_ERR(%struct.bsg_device* %16)
  store i32 %17, i32* %3, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.bsg_device*, %struct.bsg_device** %6, align 8
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  store %struct.bsg_device* %19, %struct.bsg_device** %21, align 8
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.bsg_device* @bsg_get_device(%struct.inode*, %struct.file*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i64 @IS_ERR(%struct.bsg_device*) #1

declare dso_local i32 @PTR_ERR(%struct.bsg_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
