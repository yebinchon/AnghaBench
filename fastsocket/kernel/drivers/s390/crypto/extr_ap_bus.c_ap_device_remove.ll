; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_device_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ap_device = type { i32, i32, i32, i32, %struct.ap_driver* }
%struct.ap_driver = type { i32 (%struct.ap_device.0*)* }
%struct.ap_device.0 = type opaque

@ap_device_list_lock = common dso_local global i32 0, align 4
@ap_poll_requests = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ap_device_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_device_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ap_device*, align 8
  %4 = alloca %struct.ap_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.ap_device* @to_ap_dev(%struct.device* %5)
  store %struct.ap_device* %6, %struct.ap_device** %3, align 8
  %7 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %8 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %7, i32 0, i32 4
  %9 = load %struct.ap_driver*, %struct.ap_driver** %8, align 8
  store %struct.ap_driver* %9, %struct.ap_driver** %4, align 8
  %10 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %11 = call i32 @ap_flush_queue(%struct.ap_device* %10)
  %12 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %13 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %12, i32 0, i32 3
  %14 = call i32 @del_timer_sync(i32* %13)
  %15 = call i32 @spin_lock_bh(i32* @ap_device_list_lock)
  %16 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %17 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %16, i32 0, i32 2
  %18 = call i32 @list_del_init(i32* %17)
  %19 = call i32 @spin_unlock_bh(i32* @ap_device_list_lock)
  %20 = load %struct.ap_driver*, %struct.ap_driver** %4, align 8
  %21 = getelementptr inbounds %struct.ap_driver, %struct.ap_driver* %20, i32 0, i32 0
  %22 = load i32 (%struct.ap_device.0*)*, i32 (%struct.ap_device.0*)** %21, align 8
  %23 = icmp ne i32 (%struct.ap_device.0*)* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.ap_driver*, %struct.ap_driver** %4, align 8
  %26 = getelementptr inbounds %struct.ap_driver, %struct.ap_driver* %25, i32 0, i32 0
  %27 = load i32 (%struct.ap_device.0*)*, i32 (%struct.ap_device.0*)** %26, align 8
  %28 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %29 = bitcast %struct.ap_device* %28 to %struct.ap_device.0*
  %30 = call i32 %27(%struct.ap_device.0* %29)
  br label %31

31:                                               ; preds = %24, %1
  %32 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %33 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_bh(i32* %33)
  %35 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %36 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @atomic_sub(i32 %37, i32* @ap_poll_requests)
  %39 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %40 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock_bh(i32* %40)
  ret i32 0
}

declare dso_local %struct.ap_device* @to_ap_dev(%struct.device*) #1

declare dso_local i32 @ap_flush_queue(%struct.ap_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
