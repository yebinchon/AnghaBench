; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_apm_power.c___find_main_battery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_apm_power.c___find_main_battery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.find_bat_param = type { i64, i64, %struct.TYPE_5__, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@CHARGE_FULL_DESIGN = common dso_local global i32 0, align 4
@CHARGE_FULL = common dso_local global i32 0, align 4
@ENERGY_FULL_DESIGN = common dso_local global i32 0, align 4
@ENERGY_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @__find_main_battery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__find_main_battery(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.find_bat_param*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.find_bat_param*
  store %struct.find_bat_param* %8, %struct.find_bat_param** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.TYPE_4__* @dev_get_drvdata(%struct.device* %9)
  %11 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %12 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %11, i32 0, i32 3
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %12, align 8
  %13 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %14 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %21 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %24 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %23, i32 0, i32 6
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %24, align 8
  store i32 1, i32* %3, align 4
  br label %107

25:                                               ; preds = %2
  %26 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %27 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* @CHARGE_FULL_DESIGN, align 4
  %30 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %31 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %30, i32 0, i32 2
  %32 = call i32 @PSY_PROP(%struct.TYPE_4__* %28, i32 %29, %struct.TYPE_5__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %36 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* @CHARGE_FULL, align 4
  %39 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %40 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %39, i32 0, i32 2
  %41 = call i32 @PSY_PROP(%struct.TYPE_4__* %37, i32 %38, %struct.TYPE_5__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %65, label %43

43:                                               ; preds = %34, %25
  %44 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %45 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %49 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %43
  %53 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %54 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %57 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %56, i32 0, i32 5
  store %struct.TYPE_4__* %55, %struct.TYPE_4__** %57, align 8
  %58 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %59 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %63 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %52, %43
  br label %106

65:                                               ; preds = %34
  %66 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %67 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %66, i32 0, i32 3
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* @ENERGY_FULL_DESIGN, align 4
  %70 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %71 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %70, i32 0, i32 2
  %72 = call i32 @PSY_PROP(%struct.TYPE_4__* %68, i32 %69, %struct.TYPE_5__* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %65
  %75 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %76 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* @ENERGY_FULL, align 4
  %79 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %80 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %79, i32 0, i32 2
  %81 = call i32 @PSY_PROP(%struct.TYPE_4__* %77, i32 %78, %struct.TYPE_5__* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %105, label %83

83:                                               ; preds = %74, %65
  %84 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %85 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %89 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %87, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %83
  %93 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %94 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %93, i32 0, i32 3
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %97 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %96, i32 0, i32 4
  store %struct.TYPE_4__* %95, %struct.TYPE_4__** %97, align 8
  %98 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %99 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %103 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %92, %83
  br label %105

105:                                              ; preds = %104, %74
  br label %106

106:                                              ; preds = %105, %64
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %19
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.TYPE_4__* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @PSY_PROP(%struct.TYPE_4__*, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
