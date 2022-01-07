; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_apm_power.c_find_main_battery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_apm_power.c_find_main_battery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.find_bat_param = type { i32, i32, i32*, i32*, i32*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@main_battery = common dso_local global i32* null, align 8
@power_supply_class = common dso_local global i32 0, align 4
@__find_main_battery = common dso_local global i32 0, align 4
@VOLTAGE_MAX_DESIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @find_main_battery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_main_battery() #0 {
  %1 = alloca %struct.find_bat_param, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @memset(%struct.find_bat_param* %1, i32 0, i32 48)
  store i32* null, i32** @main_battery, align 8
  %4 = load i32*, i32** @main_battery, align 8
  %5 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 6
  store i32* %4, i32** %5, align 8
  %6 = load i32, i32* @power_supply_class, align 4
  %7 = load i32, i32* @__find_main_battery, align 4
  %8 = call i32 @class_for_each_device(i32 %6, i32* null, %struct.find_bat_param* %1, i32 %7)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 6
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** @main_battery, align 8
  br label %100

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %81

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %81

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %24, %26
  br i1 %27, label %28, label %81

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @VOLTAGE_MAX_DESIGN, align 4
  %32 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 5
  %33 = call i32 @PSY_PROP(i32* %30, i32 %31, %struct.TYPE_2__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %39, %42
  %44 = icmp sgt i32 %37, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** @main_battery, align 8
  br label %51

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** @main_battery, align 8
  br label %51

51:                                               ; preds = %48, %45
  br label %80

52:                                               ; preds = %28
  %53 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @VOLTAGE_MAX_DESIGN, align 4
  %56 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 5
  %57 = call i32 @PSY_PROP(i32* %54, i32 %55, %struct.TYPE_2__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sdiv i32 %63, %66
  %68 = icmp sgt i32 %61, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** @main_battery, align 8
  br label %75

72:                                               ; preds = %59
  %73 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** @main_battery, align 8
  br label %75

75:                                               ; preds = %72, %69
  br label %79

76:                                               ; preds = %52
  %77 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** @main_battery, align 8
  br label %79

79:                                               ; preds = %76, %75
  br label %80

80:                                               ; preds = %79, %51
  br label %100

81:                                               ; preds = %22, %18, %14
  %82 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** @main_battery, align 8
  br label %99

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** @main_battery, align 8
  br label %98

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %1, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  store i32* %97, i32** @main_battery, align 8
  br label %98

98:                                               ; preds = %95, %92
  br label %99

99:                                               ; preds = %98, %85
  br label %100

100:                                              ; preds = %11, %99, %80
  ret void
}

declare dso_local i32 @memset(%struct.find_bat_param*, i32, i32) #1

declare dso_local i32 @class_for_each_device(i32, i32*, %struct.find_bat_param*, i32) #1

declare dso_local i32 @PSY_PROP(i32*, i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
