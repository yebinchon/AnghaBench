; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm97xx_battery.c_wm97xx_bat_get_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm97xx_battery.c_wm97xx_bat_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.wm97xx_pdata* }
%struct.wm97xx_pdata = type { %struct.wm97xx_batt_pdata* }
%struct.wm97xx_batt_pdata = type { i32, i32, i32, i32, i32 }
%union.power_supply_propval = type { i32 }

@bat_status = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @wm97xx_bat_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm97xx_bat_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.wm97xx_pdata*, align 8
  %9 = alloca %struct.wm97xx_batt_pdata*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %11 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.wm97xx_pdata*, %struct.wm97xx_pdata** %15, align 8
  store %struct.wm97xx_pdata* %16, %struct.wm97xx_pdata** %8, align 8
  %17 = load %struct.wm97xx_pdata*, %struct.wm97xx_pdata** %8, align 8
  %18 = getelementptr inbounds %struct.wm97xx_pdata, %struct.wm97xx_pdata* %17, i32 0, i32 0
  %19 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %18, align 8
  store %struct.wm97xx_batt_pdata* %19, %struct.wm97xx_batt_pdata** %9, align 8
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %92 [
    i32 133, label %21
    i32 132, label %25
    i32 128, label %31
    i32 131, label %45
    i32 130, label %59
    i32 129, label %74
    i32 134, label %89
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* @bat_status, align 4
  %23 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %24 = bitcast %union.power_supply_propval* %23 to i32*
  store i32 %22, i32* %24, align 4
  br label %95

25:                                               ; preds = %3
  %26 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %9, align 8
  %27 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %30 = bitcast %union.power_supply_propval* %29 to i32*
  store i32 %28, i32* %30, align 4
  br label %95

31:                                               ; preds = %3
  %32 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %9, align 8
  %33 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %38 = call i32 @wm97xx_read_bat(%struct.power_supply* %37)
  %39 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %40 = bitcast %union.power_supply_propval* %39 to i32*
  store i32 %38, i32* %40, align 4
  br label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %96

44:                                               ; preds = %36
  br label %95

45:                                               ; preds = %3
  %46 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %9, align 8
  %47 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %52 = call i32 @wm97xx_read_temp(%struct.power_supply* %51)
  %53 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %54 = bitcast %union.power_supply_propval* %53 to i32*
  store i32 %52, i32* %54, align 4
  br label %58

55:                                               ; preds = %45
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %96

58:                                               ; preds = %50
  br label %95

59:                                               ; preds = %3
  %60 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %9, align 8
  %61 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %9, align 8
  %66 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %69 = bitcast %union.power_supply_propval* %68 to i32*
  store i32 %67, i32* %69, align 4
  br label %73

70:                                               ; preds = %59
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %96

73:                                               ; preds = %64
  br label %95

74:                                               ; preds = %3
  %75 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %9, align 8
  %76 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %9, align 8
  %81 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %84 = bitcast %union.power_supply_propval* %83 to i32*
  store i32 %82, i32* %84, align 4
  br label %88

85:                                               ; preds = %74
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %96

88:                                               ; preds = %79
  br label %95

89:                                               ; preds = %3
  %90 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %91 = bitcast %union.power_supply_propval* %90 to i32*
  store i32 1, i32* %91, align 4
  br label %95

92:                                               ; preds = %3
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %96

95:                                               ; preds = %89, %88, %73, %58, %44, %25, %21
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %92, %85, %70, %55, %41
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @wm97xx_read_bat(%struct.power_supply*) #1

declare dso_local i32 @wm97xx_read_temp(%struct.power_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
