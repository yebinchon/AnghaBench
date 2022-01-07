; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu.c_pmu_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu.c_pmu_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.pmu_private* }
%struct.pmu_private = type { i32, i64, i32, i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@all_pvt_lock = common dso_local global i32 0, align 4
@all_pmu_pvt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @pmu_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.pmu_private*, align 8
  %7 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.pmu_private* @kmalloc(i32 40, i32 %8)
  store %struct.pmu_private* %9, %struct.pmu_private** %6, align 8
  %10 = load %struct.pmu_private*, %struct.pmu_private** %6, align 8
  %11 = icmp eq %struct.pmu_private* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.pmu_private*, %struct.pmu_private** %6, align 8
  %17 = getelementptr inbounds %struct.pmu_private, %struct.pmu_private* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = load %struct.pmu_private*, %struct.pmu_private** %6, align 8
  %19 = getelementptr inbounds %struct.pmu_private, %struct.pmu_private* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.pmu_private*, %struct.pmu_private** %6, align 8
  %21 = getelementptr inbounds %struct.pmu_private, %struct.pmu_private* %20, i32 0, i32 3
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.pmu_private*, %struct.pmu_private** %6, align 8
  %24 = getelementptr inbounds %struct.pmu_private, %struct.pmu_private* %23, i32 0, i32 2
  %25 = call i32 @init_waitqueue_head(i32* %24)
  %26 = call i32 (...) @lock_kernel()
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_lock_irqsave(i32* @all_pvt_lock, i64 %27)
  %29 = load %struct.pmu_private*, %struct.pmu_private** %6, align 8
  %30 = getelementptr inbounds %struct.pmu_private, %struct.pmu_private* %29, i32 0, i32 0
  %31 = call i32 @list_add(i32* %30, i32* @all_pmu_pvt)
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* @all_pvt_lock, i64 %32)
  %34 = load %struct.pmu_private*, %struct.pmu_private** %6, align 8
  %35 = load %struct.file*, %struct.file** %5, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  store %struct.pmu_private* %34, %struct.pmu_private** %36, align 8
  %37 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %15, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.pmu_private* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
