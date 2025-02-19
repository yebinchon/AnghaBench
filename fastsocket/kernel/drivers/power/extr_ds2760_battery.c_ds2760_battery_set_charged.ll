; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_ds2760_battery.c_ds2760_battery_set_charged.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_ds2760_battery.c_ds2760_battery_set_charged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%struct.ds2760_device_info = type { i32, i32 }

@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.power_supply*)* @ds2760_battery_set_charged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds2760_battery_set_charged(%struct.power_supply* %0) #0 {
  %2 = alloca %struct.power_supply*, align 8
  %3 = alloca %struct.ds2760_device_info*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %2, align 8
  %4 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %5 = call %struct.ds2760_device_info* @to_ds2760_device_info(%struct.power_supply* %4)
  store %struct.ds2760_device_info* %5, %struct.ds2760_device_info** %3, align 8
  %6 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %7 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %6, i32 0, i32 0
  %8 = call i32 @cancel_delayed_work(i32* %7)
  %9 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %10 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %13 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %12, i32 0, i32 0
  %14 = load i32, i32* @HZ, align 4
  %15 = mul nsw i32 %14, 20
  %16 = call i32 @queue_delayed_work(i32 %11, i32* %13, i32 %15)
  ret void
}

declare dso_local %struct.ds2760_device_info* @to_ds2760_device_info(%struct.power_supply*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
