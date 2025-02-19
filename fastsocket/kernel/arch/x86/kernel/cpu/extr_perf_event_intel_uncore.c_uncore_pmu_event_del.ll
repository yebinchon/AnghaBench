; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_uncore_pmu_event_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_uncore_pmu_event_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.intel_uncore_box = type { i32, %struct.perf_event** }

@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @uncore_pmu_event_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uncore_pmu_event_del(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_uncore_box*, align 8
  %6 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = call %struct.intel_uncore_box* @uncore_event_to_box(%struct.perf_event* %7)
  store %struct.intel_uncore_box* %8, %struct.intel_uncore_box** %5, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = load i32, i32* @PERF_EF_UPDATE, align 4
  %11 = call i32 @uncore_pmu_event_stop(%struct.perf_event* %9, i32 %10)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %60, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %15 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %63

18:                                               ; preds = %12
  %19 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %20 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %21 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %20, i32 0, i32 1
  %22 = load %struct.perf_event**, %struct.perf_event*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %22, i64 %24
  %26 = load %struct.perf_event*, %struct.perf_event** %25, align 8
  %27 = icmp eq %struct.perf_event* %19, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %18
  %29 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %30 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %31 = call i32 @uncore_put_event_constraint(%struct.intel_uncore_box* %29, %struct.perf_event* %30)
  br label %32

32:                                               ; preds = %39, %28
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %36 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %41 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %40, i32 0, i32 1
  %42 = load %struct.perf_event**, %struct.perf_event*** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %42, i64 %44
  %46 = load %struct.perf_event*, %struct.perf_event** %45, align 8
  %47 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %48 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %47, i32 0, i32 1
  %49 = load %struct.perf_event**, %struct.perf_event*** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %49, i64 %52
  store %struct.perf_event* %46, %struct.perf_event** %53, align 8
  br label %32

54:                                               ; preds = %32
  %55 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %56 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 8
  br label %63

59:                                               ; preds = %18
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %12

63:                                               ; preds = %54, %12
  %64 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %65 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 -1, i32* %66, align 8
  %67 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %68 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i64 -1, i64* %69, align 8
  ret void
}

declare dso_local %struct.intel_uncore_box* @uncore_event_to_box(%struct.perf_event*) #1

declare dso_local i32 @uncore_pmu_event_stop(%struct.perf_event*, i32) #1

declare dso_local i32 @uncore_put_event_constraint(%struct.intel_uncore_box*, %struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
