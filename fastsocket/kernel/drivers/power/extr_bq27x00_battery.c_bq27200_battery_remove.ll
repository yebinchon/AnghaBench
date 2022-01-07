; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_bq27x00_battery.c_bq27200_battery_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_bq27x00_battery.c_bq27200_battery_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.bq27x00_device_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bq27x00_device_info* }

@battery_mutex = common dso_local global i32 0, align 4
@battery_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @bq27200_battery_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27200_battery_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.bq27x00_device_info*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.bq27x00_device_info* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.bq27x00_device_info* %5, %struct.bq27x00_device_info** %3, align 8
  %6 = load %struct.bq27x00_device_info*, %struct.bq27x00_device_info** %3, align 8
  %7 = getelementptr inbounds %struct.bq27x00_device_info, %struct.bq27x00_device_info* %6, i32 0, i32 1
  %8 = call i32 @power_supply_unregister(%struct.TYPE_2__* %7)
  %9 = load %struct.bq27x00_device_info*, %struct.bq27x00_device_info** %3, align 8
  %10 = getelementptr inbounds %struct.bq27x00_device_info, %struct.bq27x00_device_info* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.bq27x00_device_info*, %struct.bq27x00_device_info** %11, align 8
  %13 = call i32 @kfree(%struct.bq27x00_device_info* %12)
  %14 = call i32 @mutex_lock(i32* @battery_mutex)
  %15 = load %struct.bq27x00_device_info*, %struct.bq27x00_device_info** %3, align 8
  %16 = getelementptr inbounds %struct.bq27x00_device_info, %struct.bq27x00_device_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @idr_remove(i32* @battery_id, i32 %17)
  %19 = call i32 @mutex_unlock(i32* @battery_mutex)
  %20 = load %struct.bq27x00_device_info*, %struct.bq27x00_device_info** %3, align 8
  %21 = call i32 @kfree(%struct.bq27x00_device_info* %20)
  ret i32 0
}

declare dso_local %struct.bq27x00_device_info* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @power_supply_unregister(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.bq27x00_device_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
