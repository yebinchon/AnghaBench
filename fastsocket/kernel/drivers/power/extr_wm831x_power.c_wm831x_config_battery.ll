; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm831x_power.c_wm831x_config_battery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm831x_power.c_wm831x_config_battery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.wm831x_pdata* }
%struct.wm831x_pdata = type { %struct.wm831x_battery_pdata* }
%struct.wm831x_battery_pdata = type { i32, i32, i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [34 x i8] c"No battery charger configuration\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Battery charger disabled\0A\00", align 1
@WM831X_CHG_ENA = common dso_local global i32 0, align 4
@WM831X_CHG_OFF_MSK = common dso_local global i32 0, align 4
@WM831X_CHG_FAST = common dso_local global i32 0, align 4
@trickle_ilims = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"trickle charge current limit\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"mA\00", align 1
@vsels = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"target voltage\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"mV\00", align 1
@fast_ilims = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"fast charge current limit\00", align 1
@eoc_iterms = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"end of charge current threshold\00", align 1
@chg_times = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"charger timeout\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Failed to unlock registers: %d\0A\00", align 1
@WM831X_CHARGER_CONTROL_1 = common dso_local global i32 0, align 4
@WM831X_CHG_ENA_MASK = common dso_local global i32 0, align 4
@WM831X_CHG_FAST_MASK = common dso_local global i32 0, align 4
@WM831X_CHG_ITERM_MASK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [37 x i8] c"Failed to set charger control 1: %d\0A\00", align 1
@WM831X_CHARGER_CONTROL_2 = common dso_local global i32 0, align 4
@WM831X_CHG_TIME_MASK = common dso_local global i32 0, align 4
@WM831X_CHG_FAST_ILIM_MASK = common dso_local global i32 0, align 4
@WM831X_CHG_TRKL_ILIM_MASK = common dso_local global i32 0, align 4
@WM831X_CHG_VSEL_MASK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [37 x i8] c"Failed to set charger control 2: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm831x*)* @wm831x_config_battery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm831x_config_battery(%struct.wm831x* %0) #0 {
  %2 = alloca %struct.wm831x*, align 8
  %3 = alloca %struct.wm831x_pdata*, align 8
  %4 = alloca %struct.wm831x_battery_pdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wm831x* %0, %struct.wm831x** %2, align 8
  %8 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %9 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %11, align 8
  store %struct.wm831x_pdata* %12, %struct.wm831x_pdata** %3, align 8
  %13 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %3, align 8
  %14 = icmp ne %struct.wm831x_pdata* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %3, align 8
  %17 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %16, i32 0, i32 0
  %18 = load %struct.wm831x_battery_pdata*, %struct.wm831x_battery_pdata** %17, align 8
  %19 = icmp ne %struct.wm831x_battery_pdata* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %22 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call i32 @dev_warn(%struct.TYPE_4__* %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %155

25:                                               ; preds = %15
  %26 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %3, align 8
  %27 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %26, i32 0, i32 0
  %28 = load %struct.wm831x_battery_pdata*, %struct.wm831x_battery_pdata** %27, align 8
  store %struct.wm831x_battery_pdata* %28, %struct.wm831x_battery_pdata** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %29 = load %struct.wm831x_battery_pdata*, %struct.wm831x_battery_pdata** %4, align 8
  %30 = getelementptr inbounds %struct.wm831x_battery_pdata, %struct.wm831x_battery_pdata* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %25
  %34 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %35 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call i32 @dev_info(%struct.TYPE_4__* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %155

38:                                               ; preds = %25
  %39 = load i32, i32* @WM831X_CHG_ENA, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.wm831x_battery_pdata*, %struct.wm831x_battery_pdata** %4, align 8
  %43 = getelementptr inbounds %struct.wm831x_battery_pdata, %struct.wm831x_battery_pdata* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @WM831X_CHG_OFF_MSK, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %38
  %51 = load %struct.wm831x_battery_pdata*, %struct.wm831x_battery_pdata** %4, align 8
  %52 = getelementptr inbounds %struct.wm831x_battery_pdata, %struct.wm831x_battery_pdata* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @WM831X_CHG_FAST, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %61 = load i32, i32* @trickle_ilims, align 4
  %62 = load i32, i32* @trickle_ilims, align 4
  %63 = call i32 @ARRAY_SIZE(i32 %62)
  %64 = load %struct.wm831x_battery_pdata*, %struct.wm831x_battery_pdata** %4, align 8
  %65 = getelementptr inbounds %struct.wm831x_battery_pdata, %struct.wm831x_battery_pdata* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @wm831x_battey_apply_config(%struct.wm831x* %60, i32 %61, i32 %63, i32 %66, i32* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %69 = load i32, i32* @vsels, align 4
  %70 = load i32, i32* @vsels, align 4
  %71 = call i32 @ARRAY_SIZE(i32 %70)
  %72 = load %struct.wm831x_battery_pdata*, %struct.wm831x_battery_pdata** %4, align 8
  %73 = getelementptr inbounds %struct.wm831x_battery_pdata, %struct.wm831x_battery_pdata* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @wm831x_battey_apply_config(%struct.wm831x* %68, i32 %69, i32 %71, i32 %74, i32* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %76 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %77 = load i32, i32* @fast_ilims, align 4
  %78 = load i32, i32* @fast_ilims, align 4
  %79 = call i32 @ARRAY_SIZE(i32 %78)
  %80 = load %struct.wm831x_battery_pdata*, %struct.wm831x_battery_pdata** %4, align 8
  %81 = getelementptr inbounds %struct.wm831x_battery_pdata, %struct.wm831x_battery_pdata* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @wm831x_battey_apply_config(%struct.wm831x* %76, i32 %77, i32 %79, i32 %82, i32* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %84 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %85 = load i32, i32* @eoc_iterms, align 4
  %86 = load i32, i32* @eoc_iterms, align 4
  %87 = call i32 @ARRAY_SIZE(i32 %86)
  %88 = load %struct.wm831x_battery_pdata*, %struct.wm831x_battery_pdata** %4, align 8
  %89 = getelementptr inbounds %struct.wm831x_battery_pdata, %struct.wm831x_battery_pdata* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @wm831x_battey_apply_config(%struct.wm831x* %84, i32 %85, i32 %87, i32 %90, i32* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %92 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %93 = load i32, i32* @chg_times, align 4
  %94 = load i32, i32* @chg_times, align 4
  %95 = call i32 @ARRAY_SIZE(i32 %94)
  %96 = load %struct.wm831x_battery_pdata*, %struct.wm831x_battery_pdata** %4, align 8
  %97 = getelementptr inbounds %struct.wm831x_battery_pdata, %struct.wm831x_battery_pdata* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @wm831x_battey_apply_config(%struct.wm831x* %92, i32 %93, i32 %95, i32 %98, i32* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %100 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %101 = call i32 @wm831x_reg_unlock(%struct.wm831x* %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %59
  %105 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %106 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @dev_err(%struct.TYPE_4__* %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %108)
  br label %155

110:                                              ; preds = %59
  %111 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %112 = load i32, i32* @WM831X_CHARGER_CONTROL_1, align 4
  %113 = load i32, i32* @WM831X_CHG_ENA_MASK, align 4
  %114 = load i32, i32* @WM831X_CHG_FAST_MASK, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @WM831X_CHG_ITERM_MASK, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @WM831X_CHG_ITERM_MASK, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @wm831x_set_bits(%struct.wm831x* %111, i32 %112, i32 %119, i32 %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %110
  %125 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %126 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @dev_err(%struct.TYPE_4__* %127, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %124, %110
  %131 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %132 = load i32, i32* @WM831X_CHARGER_CONTROL_2, align 4
  %133 = load i32, i32* @WM831X_CHG_OFF_MSK, align 4
  %134 = load i32, i32* @WM831X_CHG_TIME_MASK, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @WM831X_CHG_FAST_ILIM_MASK, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @WM831X_CHG_TRKL_ILIM_MASK, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @WM831X_CHG_VSEL_MASK, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @wm831x_set_bits(%struct.wm831x* %131, i32 %132, i32 %141, i32 %142)
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* %5, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %130
  %147 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %148 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %147, i32 0, i32 0
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @dev_err(%struct.TYPE_4__* %149, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %146, %130
  %153 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %154 = call i32 @wm831x_reg_lock(%struct.wm831x* %153)
  br label %155

155:                                              ; preds = %152, %104, %33, %20
  ret void
}

declare dso_local i32 @dev_warn(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @wm831x_battey_apply_config(%struct.wm831x*, i32, i32, i32, i32*, i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @wm831x_reg_unlock(%struct.wm831x*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

declare dso_local i32 @wm831x_reg_lock(%struct.wm831x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
