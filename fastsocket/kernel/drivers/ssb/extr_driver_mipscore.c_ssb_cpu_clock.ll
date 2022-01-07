; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_driver_mipscore.c_ssb_cpu_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_driver_mipscore.c_ssb_cpu_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_mipscore = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ssb_bus* }
%struct.ssb_bus = type { i32, %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64 }

@SSB_CHIPCO_CAP_PMU = common dso_local global i32 0, align 4
@SSB_PLLTYPE_5 = common dso_local global i64 0, align 8
@SSB_PLLTYPE_6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ssb_cpu_clock(%struct.ssb_mipscore* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ssb_mipscore*, align 8
  %4 = alloca %struct.ssb_bus*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ssb_mipscore* %0, %struct.ssb_mipscore** %3, align 8
  %9 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %3, align 8
  %10 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.ssb_bus*, %struct.ssb_bus** %12, align 8
  store %struct.ssb_bus* %13, %struct.ssb_bus** %4, align 8
  store i64 0, i64* %8, align 8
  %14 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %15 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SSB_CHIPCO_CAP_PMU, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %23 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %22, i32 0, i32 1
  %24 = call i64 @ssb_pmu_get_cpu_clock(%struct.TYPE_6__* %23)
  store i64 %24, i64* %2, align 8
  br label %71

25:                                               ; preds = %1
  %26 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %27 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %33 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %32, i32 0, i32 2
  %34 = call i32 @ssb_extif_get_clockcontrol(%struct.TYPE_7__* %33, i64* %5, i64* %6, i64* %7)
  br label %47

35:                                               ; preds = %25
  %36 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %37 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %43 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %42, i32 0, i32 1
  %44 = call i32 @ssb_chipco_get_clockcpu(%struct.TYPE_6__* %43, i64* %5, i64* %6, i64* %7)
  br label %46

45:                                               ; preds = %35
  store i64 0, i64* %2, align 8
  br label %71

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %31
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @SSB_PLLTYPE_5, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %53 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 21349
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %47
  store i64 200000000, i64* %8, align 8
  br label %62

57:                                               ; preds = %51
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @ssb_calc_clock_rate(i64 %58, i64 %59, i64 %60)
  store i64 %61, i64* %8, align 8
  br label %62

62:                                               ; preds = %57, %56
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @SSB_PLLTYPE_6, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i64, i64* %8, align 8
  %68 = mul nsw i64 %67, 2
  store i64 %68, i64* %8, align 8
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i64, i64* %8, align 8
  store i64 %70, i64* %2, align 8
  br label %71

71:                                               ; preds = %69, %45, %21
  %72 = load i64, i64* %2, align 8
  ret i64 %72
}

declare dso_local i64 @ssb_pmu_get_cpu_clock(%struct.TYPE_6__*) #1

declare dso_local i32 @ssb_extif_get_clockcontrol(%struct.TYPE_7__*, i64*, i64*, i64*) #1

declare dso_local i32 @ssb_chipco_get_clockcpu(%struct.TYPE_6__*, i64*, i64*, i64*) #1

declare dso_local i64 @ssb_calc_clock_rate(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
