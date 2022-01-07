; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_main.c_ssb_clockspeed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_main.c_ssb_clockspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@SSB_CHIPCO_CAP_PMU = common dso_local global i32 0, align 4
@SSB_PLLTYPE_3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ssb_clockspeed(%struct.ssb_bus* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ssb_bus* %0, %struct.ssb_bus** %3, align 8
  %8 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %9 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SSB_CHIPCO_CAP_PMU, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %17 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %16, i32 0, i32 1
  %18 = call i64 @ssb_pmu_get_controlclock(%struct.TYPE_3__* %17)
  store i64 %18, i64* %2, align 8
  br label %60

19:                                               ; preds = %1
  %20 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %21 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %20, i32 0, i32 2
  %22 = call i64 @ssb_extif_available(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %26 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %25, i32 0, i32 2
  %27 = call i32 @ssb_extif_get_clockcontrol(i32* %26, i64* %5, i64* %6, i64* %7)
  br label %40

28:                                               ; preds = %19
  %29 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %30 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %36 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %35, i32 0, i32 1
  %37 = call i32 @ssb_chipco_get_clockcontrol(%struct.TYPE_3__* %36, i64* %5, i64* %6, i64* %7)
  br label %39

38:                                               ; preds = %28
  store i64 0, i64* %2, align 8
  br label %60

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %24
  %41 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %42 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 21349
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i64 100000000, i64* %4, align 8
  br label %58

46:                                               ; preds = %40
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @ssb_calc_clock_rate(i64 %47, i64 %48, i64 %49)
  store i64 %50, i64* %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @SSB_PLLTYPE_3, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i64, i64* %4, align 8
  %56 = sdiv i64 %55, 2
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %54, %46
  br label %58

58:                                               ; preds = %57, %45
  %59 = load i64, i64* %4, align 8
  store i64 %59, i64* %2, align 8
  br label %60

60:                                               ; preds = %58, %38, %15
  %61 = load i64, i64* %2, align 8
  ret i64 %61
}

declare dso_local i64 @ssb_pmu_get_controlclock(%struct.TYPE_3__*) #1

declare dso_local i64 @ssb_extif_available(i32*) #1

declare dso_local i32 @ssb_extif_get_clockcontrol(i32*, i64*, i64*, i64*) #1

declare dso_local i32 @ssb_chipco_get_clockcontrol(%struct.TYPE_3__*, i64*, i64*, i64*) #1

declare dso_local i64 @ssb_calc_clock_rate(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
