; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_ds2782_battery.c_ds2782_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_ds2782_battery.c_ds2782_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.ds2782_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @ds2782_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2782_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.ds2782_info*, align 8
  %8 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %10 = call %struct.ds2782_info* @to_ds2782_info(%struct.power_supply* %9)
  store %struct.ds2782_info* %10, %struct.ds2782_info** %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %37 [
    i32 130, label %12
    i32 132, label %17
    i32 128, label %22
    i32 131, label %27
    i32 129, label %32
  ]

12:                                               ; preds = %3
  %13 = load %struct.ds2782_info*, %struct.ds2782_info** %7, align 8
  %14 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %15 = bitcast %union.power_supply_propval* %14 to i32*
  %16 = call i32 @ds2782_get_status(%struct.ds2782_info* %13, i32* %15)
  store i32 %16, i32* %8, align 4
  br label %40

17:                                               ; preds = %3
  %18 = load %struct.ds2782_info*, %struct.ds2782_info** %7, align 8
  %19 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %20 = bitcast %union.power_supply_propval* %19 to i32*
  %21 = call i32 @ds2782_get_capacity(%struct.ds2782_info* %18, i32* %20)
  store i32 %21, i32* %8, align 4
  br label %40

22:                                               ; preds = %3
  %23 = load %struct.ds2782_info*, %struct.ds2782_info** %7, align 8
  %24 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %25 = bitcast %union.power_supply_propval* %24 to i32*
  %26 = call i32 @ds2782_get_voltage(%struct.ds2782_info* %23, i32* %25)
  store i32 %26, i32* %8, align 4
  br label %40

27:                                               ; preds = %3
  %28 = load %struct.ds2782_info*, %struct.ds2782_info** %7, align 8
  %29 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %30 = bitcast %union.power_supply_propval* %29 to i32*
  %31 = call i32 @ds2782_get_current(%struct.ds2782_info* %28, i32* %30)
  store i32 %31, i32* %8, align 4
  br label %40

32:                                               ; preds = %3
  %33 = load %struct.ds2782_info*, %struct.ds2782_info** %7, align 8
  %34 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %35 = bitcast %union.power_supply_propval* %34 to i32*
  %36 = call i32 @ds2782_get_temp(%struct.ds2782_info* %33, i32* %35)
  store i32 %36, i32* %8, align 4
  br label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %37, %32, %27, %22, %17, %12
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local %struct.ds2782_info* @to_ds2782_info(%struct.power_supply*) #1

declare dso_local i32 @ds2782_get_status(%struct.ds2782_info*, i32*) #1

declare dso_local i32 @ds2782_get_capacity(%struct.ds2782_info*, i32*) #1

declare dso_local i32 @ds2782_get_voltage(%struct.ds2782_info*, i32*) #1

declare dso_local i32 @ds2782_get_current(%struct.ds2782_info*, i32*) #1

declare dso_local i32 @ds2782_get_temp(%struct.ds2782_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
