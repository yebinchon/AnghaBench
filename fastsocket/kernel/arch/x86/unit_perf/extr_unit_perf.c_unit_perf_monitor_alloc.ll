; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/unit_perf/extr_unit_perf.c_unit_perf_monitor_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/unit_perf/extr_unit_perf.c_unit_perf_monitor_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unit_perf_monitor = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@UNIT_PERF_SLOT_CNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.unit_perf_monitor* ()* @unit_perf_monitor_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.unit_perf_monitor* @unit_perf_monitor_alloc() #0 {
  %1 = alloca %struct.unit_perf_monitor*, align 8
  %2 = alloca %struct.unit_perf_monitor*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.unit_perf_monitor* @kmalloc(i32 16, i32 %4)
  store %struct.unit_perf_monitor* %5, %struct.unit_perf_monitor** %2, align 8
  %6 = load %struct.unit_perf_monitor*, %struct.unit_perf_monitor** %2, align 8
  %7 = icmp ne %struct.unit_perf_monitor* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.unit_perf_monitor* null, %struct.unit_perf_monitor** %1, align 8
  br label %34

9:                                                ; preds = %0
  %10 = load %struct.unit_perf_monitor*, %struct.unit_perf_monitor** %2, align 8
  %11 = call i32 @memset(%struct.unit_perf_monitor* %10, i32 0, i32 16)
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %29, %9
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @UNIT_PERF_SLOT_CNT, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load %struct.unit_perf_monitor*, %struct.unit_perf_monitor** %2, align 8
  %18 = getelementptr inbounds %struct.unit_perf_monitor, %struct.unit_perf_monitor* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @INIT_LIST_HEAD(i64 %21)
  %23 = load %struct.unit_perf_monitor*, %struct.unit_perf_monitor** %2, align 8
  %24 = getelementptr inbounds %struct.unit_perf_monitor, %struct.unit_perf_monitor* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @spin_lock_init(i64 %27)
  br label %29

29:                                               ; preds = %16
  %30 = load i64, i64* %3, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %3, align 8
  br label %12

32:                                               ; preds = %12
  %33 = load %struct.unit_perf_monitor*, %struct.unit_perf_monitor** %2, align 8
  store %struct.unit_perf_monitor* %33, %struct.unit_perf_monitor** %1, align 8
  br label %34

34:                                               ; preds = %32, %8
  %35 = load %struct.unit_perf_monitor*, %struct.unit_perf_monitor** %1, align 8
  ret %struct.unit_perf_monitor* %35
}

declare dso_local %struct.unit_perf_monitor* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.unit_perf_monitor*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i64) #1

declare dso_local i32 @spin_lock_init(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
