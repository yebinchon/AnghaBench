; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm97xx_battery.c_wm97xx_read_temp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm97xx_battery.c_wm97xx_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.wm97xx_pdata* }
%struct.wm97xx_pdata = type { %struct.wm97xx_batt_pdata* }
%struct.wm97xx_batt_pdata = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.power_supply*)* @wm97xx_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wm97xx_read_temp(%struct.power_supply* %0) #0 {
  %2 = alloca %struct.power_supply*, align 8
  %3 = alloca %struct.wm97xx_pdata*, align 8
  %4 = alloca %struct.wm97xx_batt_pdata*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %2, align 8
  %5 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %6 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.wm97xx_pdata*, %struct.wm97xx_pdata** %10, align 8
  store %struct.wm97xx_pdata* %11, %struct.wm97xx_pdata** %3, align 8
  %12 = load %struct.wm97xx_pdata*, %struct.wm97xx_pdata** %3, align 8
  %13 = getelementptr inbounds %struct.wm97xx_pdata, %struct.wm97xx_pdata* %12, i32 0, i32 0
  %14 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %13, align 8
  store %struct.wm97xx_batt_pdata* %14, %struct.wm97xx_batt_pdata** %4, align 8
  %15 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %16 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = call i32 @dev_get_drvdata(%struct.TYPE_4__* %19)
  %21 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %4, align 8
  %22 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @wm97xx_read_aux_adc(i32 %20, i32 %23)
  %25 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %4, align 8
  %26 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = mul i64 %24, %27
  %29 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %4, align 8
  %30 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = udiv i64 %28, %31
  ret i64 %32
}

declare dso_local i64 @wm97xx_read_aux_adc(i32, i32) #1

declare dso_local i32 @dev_get_drvdata(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
