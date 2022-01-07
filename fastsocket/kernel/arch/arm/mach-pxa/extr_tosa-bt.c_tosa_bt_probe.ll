; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_tosa-bt.c_tosa_bt_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_tosa-bt.c_tosa_bt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tosa_bt_data* }
%struct.tosa_bt_data = type { i32, i32 }
%struct.rfkill = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Bluetooth reset\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Bluetooth power\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"tosa-bt\00", align 1
@RFKILL_TYPE_BLUETOOTH = common dso_local global i32 0, align 4
@tosa_bt_rfkill_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tosa_bt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tosa_bt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rfkill*, align 8
  %6 = alloca %struct.tosa_bt_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.tosa_bt_data*, %struct.tosa_bt_data** %9, align 8
  store %struct.tosa_bt_data* %10, %struct.tosa_bt_data** %6, align 8
  %11 = load %struct.tosa_bt_data*, %struct.tosa_bt_data** %6, align 8
  %12 = getelementptr inbounds %struct.tosa_bt_data, %struct.tosa_bt_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @gpio_request(i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %82

18:                                               ; preds = %1
  %19 = load %struct.tosa_bt_data*, %struct.tosa_bt_data** %6, align 8
  %20 = getelementptr inbounds %struct.tosa_bt_data, %struct.tosa_bt_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @gpio_direction_output(i32 %21, i32 0)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %77

26:                                               ; preds = %18
  %27 = load %struct.tosa_bt_data*, %struct.tosa_bt_data** %6, align 8
  %28 = getelementptr inbounds %struct.tosa_bt_data, %struct.tosa_bt_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @gpio_request(i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %76

34:                                               ; preds = %26
  %35 = load %struct.tosa_bt_data*, %struct.tosa_bt_data** %6, align 8
  %36 = getelementptr inbounds %struct.tosa_bt_data, %struct.tosa_bt_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @gpio_direction_output(i32 %37, i32 0)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %71

42:                                               ; preds = %34
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load i32, i32* @RFKILL_TYPE_BLUETOOTH, align 4
  %46 = load %struct.tosa_bt_data*, %struct.tosa_bt_data** %6, align 8
  %47 = call %struct.rfkill* @rfkill_alloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_2__* %44, i32 %45, i32* @tosa_bt_rfkill_ops, %struct.tosa_bt_data* %46)
  store %struct.rfkill* %47, %struct.rfkill** %5, align 8
  %48 = load %struct.rfkill*, %struct.rfkill** %5, align 8
  %49 = icmp ne %struct.rfkill* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %68

53:                                               ; preds = %42
  %54 = load %struct.rfkill*, %struct.rfkill** %5, align 8
  %55 = call i32 @rfkill_set_led_trigger_name(%struct.rfkill* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.rfkill*, %struct.rfkill** %5, align 8
  %57 = call i32 @rfkill_register(%struct.rfkill* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %65

61:                                               ; preds = %53
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = load %struct.rfkill*, %struct.rfkill** %5, align 8
  %64 = call i32 @platform_set_drvdata(%struct.platform_device* %62, %struct.rfkill* %63)
  store i32 0, i32* %2, align 4
  br label %84

65:                                               ; preds = %60
  %66 = load %struct.rfkill*, %struct.rfkill** %5, align 8
  %67 = call i32 @rfkill_destroy(%struct.rfkill* %66)
  br label %68

68:                                               ; preds = %65, %50
  %69 = load %struct.tosa_bt_data*, %struct.tosa_bt_data** %6, align 8
  %70 = call i32 @tosa_bt_off(%struct.tosa_bt_data* %69)
  br label %71

71:                                               ; preds = %68, %41
  %72 = load %struct.tosa_bt_data*, %struct.tosa_bt_data** %6, align 8
  %73 = getelementptr inbounds %struct.tosa_bt_data, %struct.tosa_bt_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @gpio_free(i32 %74)
  br label %76

76:                                               ; preds = %71, %33
  br label %77

77:                                               ; preds = %76, %25
  %78 = load %struct.tosa_bt_data*, %struct.tosa_bt_data** %6, align 8
  %79 = getelementptr inbounds %struct.tosa_bt_data, %struct.tosa_bt_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @gpio_free(i32 %80)
  br label %82

82:                                               ; preds = %77, %17
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %61
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local %struct.rfkill* @rfkill_alloc(i8*, %struct.TYPE_2__*, i32, i32*, %struct.tosa_bt_data*) #1

declare dso_local i32 @rfkill_set_led_trigger_name(%struct.rfkill*, i8*) #1

declare dso_local i32 @rfkill_register(%struct.rfkill*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rfkill*) #1

declare dso_local i32 @rfkill_destroy(%struct.rfkill*) #1

declare dso_local i32 @tosa_bt_off(%struct.tosa_bt_data*) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
