; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_set_cntr_6120_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_set_cntr_6120_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qib_chip_specific* }
%struct.qib_chip_specific = type { i64, i64, i64, i64, i64, i32, i32 }

@IB_PMA_SAMPLE_STATUS_STARTED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IB_PMA_SAMPLE_STATUS_RUNNING = common dso_local global i32 0, align 4
@IB_PMA_SAMPLE_STATUS_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, i64, i64)* @qib_set_cntr_6120_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_set_cntr_6120_sample(%struct.qib_pportdata* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.qib_pportdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qib_chip_specific*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %9 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %11, align 8
  store %struct.qib_chip_specific* %12, %struct.qib_chip_specific** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load i32, i32* @IB_PMA_SAMPLE_STATUS_STARTED, align 4
  %20 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %7, align 8
  %21 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %7, align 8
  %23 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %22, i32 0, i32 6
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @usecs_to_jiffies(i64 %25)
  %27 = add nsw i64 %24, %26
  %28 = call i32 @mod_timer(i32* %23, i64 %27)
  br label %70

29:                                               ; preds = %15, %3
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %29
  %33 = load i32, i32* @IB_PMA_SAMPLE_STATUS_RUNNING, align 4
  %34 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %7, align 8
  %35 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %37 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %7, align 8
  %38 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %37, i32 0, i32 4
  %39 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %7, align 8
  %40 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %39, i32 0, i32 3
  %41 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %7, align 8
  %42 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %41, i32 0, i32 2
  %43 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %7, align 8
  %44 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %43, i32 0, i32 1
  %45 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %7, align 8
  %46 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %45, i32 0, i32 0
  %47 = call i32 @qib_snapshot_counters(%struct.qib_pportdata* %36, i64* %38, i64* %40, i64* %42, i64* %44, i64* %46)
  %48 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %7, align 8
  %49 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %48, i32 0, i32 6
  %50 = load i64, i64* @jiffies, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i64 @usecs_to_jiffies(i64 %51)
  %53 = add nsw i64 %50, %52
  %54 = call i32 @mod_timer(i32* %49, i64 %53)
  br label %69

55:                                               ; preds = %29
  %56 = load i32, i32* @IB_PMA_SAMPLE_STATUS_DONE, align 4
  %57 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %7, align 8
  %58 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %7, align 8
  %60 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %59, i32 0, i32 4
  store i64 0, i64* %60, align 8
  %61 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %7, align 8
  %62 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %61, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %7, align 8
  %64 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %7, align 8
  %66 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %7, align 8
  %68 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %55, %32
  br label %70

70:                                               ; preds = %69, %18
  ret void
}

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @usecs_to_jiffies(i64) #1

declare dso_local i32 @qib_snapshot_counters(%struct.qib_pportdata*, i64*, i64*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
