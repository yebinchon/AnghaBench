; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_olpc_battery.c_olpc_bat_get_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_olpc_battery.c_olpc_bat_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%union.power_supply_propval = type { i8* }

@olpc_platform_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@BAT_STAT_CHARGING = common dso_local global i32 0, align 4
@BAT_STAT_TRICKLE = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i8* null, align 8
@BAT_STAT_DISCHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i8* null, align 8
@BAT_STAT_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i8* null, align 8
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i8* null, align 8
@BAT_STAT_AC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.power_supply_propval*, i32)* @olpc_bat_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @olpc_bat_get_status(%union.power_supply_propval* %0, i32 %1) #0 {
  %3 = alloca %union.power_supply_propval*, align 8
  %4 = alloca i32, align 4
  store %union.power_supply_propval* %0, %union.power_supply_propval** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @olpc_platform_info, i32 0, i32 0), align 4
  %6 = icmp sgt i32 %5, 68
  br i1 %6, label %7, label %43

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @BAT_STAT_CHARGING, align 4
  %10 = load i32, i32* @BAT_STAT_TRICKLE, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = load i8*, i8** @POWER_SUPPLY_STATUS_CHARGING, align 8
  %16 = load %union.power_supply_propval*, %union.power_supply_propval** %3, align 8
  %17 = bitcast %union.power_supply_propval* %16 to i8**
  store i8* %15, i8** %17, align 8
  br label %42

18:                                               ; preds = %7
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @BAT_STAT_DISCHARGING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i8*, i8** @POWER_SUPPLY_STATUS_DISCHARGING, align 8
  %25 = load %union.power_supply_propval*, %union.power_supply_propval** %3, align 8
  %26 = bitcast %union.power_supply_propval* %25 to i8**
  store i8* %24, i8** %26, align 8
  br label %41

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @BAT_STAT_FULL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i8*, i8** @POWER_SUPPLY_STATUS_FULL, align 8
  %34 = load %union.power_supply_propval*, %union.power_supply_propval** %3, align 8
  %35 = bitcast %union.power_supply_propval* %34 to i8**
  store i8* %33, i8** %35, align 8
  br label %40

36:                                               ; preds = %27
  %37 = load i8*, i8** @POWER_SUPPLY_STATUS_NOT_CHARGING, align 8
  %38 = load %union.power_supply_propval*, %union.power_supply_propval** %3, align 8
  %39 = bitcast %union.power_supply_propval* %38 to i8**
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %36, %32
  br label %41

41:                                               ; preds = %40, %23
  br label %42

42:                                               ; preds = %41, %14
  br label %67

43:                                               ; preds = %2
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @BAT_STAT_AC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** @POWER_SUPPLY_STATUS_DISCHARGING, align 8
  %50 = load %union.power_supply_propval*, %union.power_supply_propval** %3, align 8
  %51 = bitcast %union.power_supply_propval* %50 to i8**
  store i8* %49, i8** %51, align 8
  br label %66

52:                                               ; preds = %43
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @BAT_STAT_FULL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i8*, i8** @POWER_SUPPLY_STATUS_FULL, align 8
  %59 = load %union.power_supply_propval*, %union.power_supply_propval** %3, align 8
  %60 = bitcast %union.power_supply_propval* %59 to i8**
  store i8* %58, i8** %60, align 8
  br label %65

61:                                               ; preds = %52
  %62 = load i8*, i8** @POWER_SUPPLY_STATUS_CHARGING, align 8
  %63 = load %union.power_supply_propval*, %union.power_supply_propval** %3, align 8
  %64 = bitcast %union.power_supply_propval* %63 to i8**
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %65, %48
  br label %67

67:                                               ; preds = %66, %42
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
