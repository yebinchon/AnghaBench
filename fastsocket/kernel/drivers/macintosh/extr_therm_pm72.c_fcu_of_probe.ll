; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_fcu_of_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_fcu_of_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_device = type { i32 }
%struct.of_device_id = type { i32 }

@state_detached = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@therm_pm72_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.of_device*, %struct.of_device_id*)* @fcu_of_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcu_of_probe(%struct.of_device* %0, %struct.of_device_id* %1) #0 {
  %3 = alloca %struct.of_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  store %struct.of_device* %0, %struct.of_device** %3, align 8
  store %struct.of_device_id* %1, %struct.of_device_id** %4, align 8
  %5 = load i32, i32* @state_detached, align 4
  store i32 %5, i32* @state, align 4
  %6 = load %struct.of_device*, %struct.of_device** %3, align 8
  %7 = getelementptr inbounds %struct.of_device, %struct.of_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @fcu_lookup_fans(i32 %8)
  %10 = call i32 @i2c_add_driver(i32* @therm_pm72_driver)
  ret i32 %10
}

declare dso_local i32 @fcu_lookup_fans(i32) #1

declare dso_local i32 @i2c_add_driver(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
