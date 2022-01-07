; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_fixed.c_regulator_fixed_voltage_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_fixed.c_regulator_fixed_voltage_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fixed_voltage_data = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.fixed_voltage_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @regulator_fixed_voltage_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regulator_fixed_voltage_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fixed_voltage_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.fixed_voltage_data* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.fixed_voltage_data* %5, %struct.fixed_voltage_data** %3, align 8
  %6 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %3, align 8
  %7 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @regulator_unregister(i32 %8)
  %10 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %3, align 8
  %11 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @gpio_is_valid(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %3, align 8
  %17 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @gpio_free(i32 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %3, align 8
  %22 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %23, align 8
  %25 = call i32 @kfree(%struct.fixed_voltage_data* %24)
  %26 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %3, align 8
  %27 = call i32 @kfree(%struct.fixed_voltage_data* %26)
  ret i32 0
}

declare dso_local %struct.fixed_voltage_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @regulator_unregister(i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @kfree(%struct.fixed_voltage_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
