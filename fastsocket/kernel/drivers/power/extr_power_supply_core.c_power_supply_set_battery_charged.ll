; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_power_supply_core.c_power_supply_set_battery_charged.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_power_supply_core.c_power_supply_set_battery_charged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i64, {}* }

@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @power_supply_set_battery_charged(%struct.power_supply* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.power_supply*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %3, align 8
  %4 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %5 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @POWER_SUPPLY_TYPE_BATTERY, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %11 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %10, i32 0, i32 1
  %12 = bitcast {}** %11 to i32 (%struct.power_supply*)**
  %13 = load i32 (%struct.power_supply*)*, i32 (%struct.power_supply*)** %12, align 8
  %14 = icmp ne i32 (%struct.power_supply*)* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %17 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %16, i32 0, i32 1
  %18 = bitcast {}** %17 to i32 (%struct.power_supply*)**
  %19 = load i32 (%struct.power_supply*)*, i32 (%struct.power_supply*)** %18, align 8
  %20 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %21 = call i32 %19(%struct.power_supply* %20)
  store i32 0, i32* %2, align 4
  br label %25

22:                                               ; preds = %9, %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %15
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
