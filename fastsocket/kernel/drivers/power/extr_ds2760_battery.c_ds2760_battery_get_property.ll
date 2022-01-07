; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_ds2760_battery.c_ds2760_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_ds2760_battery.c_ds2760_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.ds2760_device_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @ds2760_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2760_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.ds2760_device_info*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = call %struct.ds2760_device_info* @to_ds2760_device_info(%struct.power_supply* %9)
  store %struct.ds2760_device_info* %10, %struct.ds2760_device_info** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %18 [
    i32 131, label %12
  ]

12:                                               ; preds = %3
  %13 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %8, align 8
  %14 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 4
  %16 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %17 = bitcast %union.power_supply_propval* %16 to i32*
  store i32 %15, i32* %17, align 4
  store i32 0, i32* %4, align 4
  br label %81

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %8, align 8
  %21 = call i32 @ds2760_battery_read_status(%struct.ds2760_device_info* %20)
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %77 [
    i32 128, label %23
    i32 132, label %29
    i32 134, label %35
    i32 135, label %41
    i32 136, label %47
    i32 133, label %53
    i32 130, label %59
    i32 129, label %65
    i32 137, label %71
  ]

23:                                               ; preds = %19
  %24 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %8, align 8
  %25 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %28 = bitcast %union.power_supply_propval* %27 to i32*
  store i32 %26, i32* %28, align 4
  br label %80

29:                                               ; preds = %19
  %30 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %8, align 8
  %31 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %34 = bitcast %union.power_supply_propval* %33 to i32*
  store i32 %32, i32* %34, align 4
  br label %80

35:                                               ; preds = %19
  %36 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %8, align 8
  %37 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %40 = bitcast %union.power_supply_propval* %39 to i32*
  store i32 %38, i32* %40, align 4
  br label %80

41:                                               ; preds = %19
  %42 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %8, align 8
  %43 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %46 = bitcast %union.power_supply_propval* %45 to i32*
  store i32 %44, i32* %46, align 4
  br label %80

47:                                               ; preds = %19
  %48 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %8, align 8
  %49 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %52 = bitcast %union.power_supply_propval* %51 to i32*
  store i32 %50, i32* %52, align 4
  br label %80

53:                                               ; preds = %19
  %54 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %8, align 8
  %55 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %58 = bitcast %union.power_supply_propval* %57 to i32*
  store i32 %56, i32* %58, align 4
  br label %80

59:                                               ; preds = %19
  %60 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %8, align 8
  %61 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %64 = bitcast %union.power_supply_propval* %63 to i32*
  store i32 %62, i32* %64, align 4
  br label %80

65:                                               ; preds = %19
  %66 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %8, align 8
  %67 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %70 = bitcast %union.power_supply_propval* %69 to i32*
  store i32 %68, i32* %70, align 4
  br label %80

71:                                               ; preds = %19
  %72 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %8, align 8
  %73 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %76 = bitcast %union.power_supply_propval* %75 to i32*
  store i32 %74, i32* %76, align 4
  br label %80

77:                                               ; preds = %19
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %81

80:                                               ; preds = %71, %65, %59, %53, %47, %41, %35, %29, %23
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %77, %12
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.ds2760_device_info* @to_ds2760_device_info(%struct.power_supply*) #1

declare dso_local i32 @ds2760_battery_read_status(%struct.ds2760_device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
