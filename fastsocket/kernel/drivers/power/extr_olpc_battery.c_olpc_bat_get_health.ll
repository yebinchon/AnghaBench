; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_olpc_battery.c_olpc_bat_get_health.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_olpc_battery.c_olpc_bat_get_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.power_supply_propval = type { i32 }

@EC_BAT_ERRCODE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERVOLTAGE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.power_supply_propval*)* @olpc_bat_get_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @olpc_bat_get_health(%union.power_supply_propval* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.power_supply_propval*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %union.power_supply_propval* %0, %union.power_supply_propval** %3, align 8
  %6 = load i32, i32* @EC_BAT_ERRCODE, align 4
  %7 = call i32 @olpc_ec_cmd(i32 %6, i32* null, i32 0, i32* %4, i32 1)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %30 [
    i32 0, label %14
    i32 129, label %18
    i32 128, label %22
    i32 131, label %26
    i32 130, label %26
    i32 132, label %26
    i32 133, label %26
  ]

14:                                               ; preds = %12
  %15 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  %16 = load %union.power_supply_propval*, %union.power_supply_propval** %3, align 8
  %17 = bitcast %union.power_supply_propval* %16 to i32*
  store i32 %15, i32* %17, align 4
  br label %33

18:                                               ; preds = %12
  %19 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  %20 = load %union.power_supply_propval*, %union.power_supply_propval** %3, align 8
  %21 = bitcast %union.power_supply_propval* %20 to i32*
  store i32 %19, i32* %21, align 4
  br label %33

22:                                               ; preds = %12
  %23 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERVOLTAGE, align 4
  %24 = load %union.power_supply_propval*, %union.power_supply_propval** %3, align 8
  %25 = bitcast %union.power_supply_propval* %24 to i32*
  store i32 %23, i32* %25, align 4
  br label %33

26:                                               ; preds = %12, %12, %12, %12
  %27 = load i32, i32* @POWER_SUPPLY_HEALTH_UNSPEC_FAILURE, align 4
  %28 = load %union.power_supply_propval*, %union.power_supply_propval** %3, align 8
  %29 = bitcast %union.power_supply_propval* %28 to i32*
  store i32 %27, i32* %29, align 4
  br label %33

30:                                               ; preds = %12
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %26, %22, %18, %14
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %10
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @olpc_ec_cmd(i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
