; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm8350_power.c_wm8350_charger_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm8350_power.c_wm8350_charger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32, %struct.wm8350_power }
%struct.wm8350_power = type { i32, i32, i32, %struct.wm8350_charger_policy* }
%struct.wm8350_charger_policy = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"battery failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"charger timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"fast charger ready\0A\00", align 1
@WM8350_BATTERY_CHARGER_CONTROL_1 = common dso_local global i32 0, align 4
@WM8350_CHG_FAST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"battery < 3.9V\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"battery < 3.1V\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"battery < 2.85V\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Unknown interrupt %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm8350*, i32, i8*)* @wm8350_charger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8350_charger_handler(%struct.wm8350* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.wm8350*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wm8350_power*, align 8
  %8 = alloca %struct.wm8350_charger_policy*, align 8
  store %struct.wm8350* %0, %struct.wm8350** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %10 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %9, i32 0, i32 1
  store %struct.wm8350_power* %10, %struct.wm8350_power** %7, align 8
  %11 = load %struct.wm8350_power*, %struct.wm8350_power** %7, align 8
  %12 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %11, i32 0, i32 3
  %13 = load %struct.wm8350_charger_policy*, %struct.wm8350_charger_policy** %12, align 8
  store %struct.wm8350_charger_policy* %13, %struct.wm8350_charger_policy** %8, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %77 [
    i32 139, label %15
    i32 134, label %20
    i32 138, label %28
    i32 140, label %28
    i32 135, label %28
    i32 137, label %28
    i32 136, label %32
    i32 131, label %48
    i32 132, label %53
    i32 133, label %58
    i32 129, label %63
    i32 128, label %63
    i32 130, label %67
  ]

15:                                               ; preds = %3
  %16 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %17 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32, i8*, ...) @dev_err(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %83

20:                                               ; preds = %3
  %21 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %22 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @dev_err(i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.wm8350_power*, %struct.wm8350_power** %7, align 8
  %26 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %25, i32 0, i32 2
  %27 = call i32 @power_supply_changed(i32* %26)
  br label %83

28:                                               ; preds = %3, %3, %3, %3
  %29 = load %struct.wm8350_power*, %struct.wm8350_power** %7, align 8
  %30 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %29, i32 0, i32 2
  %31 = call i32 @power_supply_changed(i32* %30)
  br label %83

32:                                               ; preds = %3
  %33 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %34 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %38 = load %struct.wm8350_charger_policy*, %struct.wm8350_charger_policy** %8, align 8
  %39 = call i32 @wm8350_charger_config(%struct.wm8350* %37, %struct.wm8350_charger_policy* %38)
  %40 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %41 = call i32 @wm8350_reg_unlock(%struct.wm8350* %40)
  %42 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %43 = load i32, i32* @WM8350_BATTERY_CHARGER_CONTROL_1, align 4
  %44 = load i32, i32* @WM8350_CHG_FAST, align 4
  %45 = call i32 @wm8350_set_bits(%struct.wm8350* %42, i32 %43, i32 %44)
  %46 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %47 = call i32 @wm8350_reg_lock(%struct.wm8350* %46)
  br label %83

48:                                               ; preds = %3
  %49 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %50 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_warn(i32 %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %83

53:                                               ; preds = %3
  %54 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %55 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dev_warn(i32 %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %83

58:                                               ; preds = %3
  %59 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %60 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dev_warn(i32 %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %83

63:                                               ; preds = %3, %3
  %64 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %65 = load %struct.wm8350_charger_policy*, %struct.wm8350_charger_policy** %8, align 8
  %66 = call i32 @wm8350_charger_config(%struct.wm8350* %64, %struct.wm8350_charger_policy* %65)
  br label %67

67:                                               ; preds = %3, %63
  %68 = load %struct.wm8350_power*, %struct.wm8350_power** %7, align 8
  %69 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %68, i32 0, i32 2
  %70 = call i32 @power_supply_changed(i32* %69)
  %71 = load %struct.wm8350_power*, %struct.wm8350_power** %7, align 8
  %72 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %71, i32 0, i32 1
  %73 = call i32 @power_supply_changed(i32* %72)
  %74 = load %struct.wm8350_power*, %struct.wm8350_power** %7, align 8
  %75 = getelementptr inbounds %struct.wm8350_power, %struct.wm8350_power* %74, i32 0, i32 0
  %76 = call i32 @power_supply_changed(i32* %75)
  br label %83

77:                                               ; preds = %3
  %78 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %79 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 (i32, i8*, ...) @dev_err(i32 %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %77, %67, %58, %53, %48, %32, %28, %20, %15
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @power_supply_changed(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @wm8350_charger_config(%struct.wm8350*, %struct.wm8350_charger_policy*) #1

declare dso_local i32 @wm8350_reg_unlock(%struct.wm8350*) #1

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_reg_lock(%struct.wm8350*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
