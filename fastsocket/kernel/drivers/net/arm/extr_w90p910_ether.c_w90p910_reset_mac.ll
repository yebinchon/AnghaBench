; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_w90p910_ether.c_w90p910_reset_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_w90p910_ether.c_w90p910_reset_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }
%struct.w90p910_ether = type { i32, i32, i32 }

@jiffies = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @w90p910_reset_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w90p910_reset_mac(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.w90p910_ether*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.w90p910_ether* @netdev_priv(%struct.net_device* %4)
  store %struct.w90p910_ether* %5, %struct.w90p910_ether** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @w90p910_enable_tx(%struct.net_device* %6, i32 0)
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @w90p910_enable_rx(%struct.net_device* %8, i32 0)
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @w90p910_set_fifo_threshold(%struct.net_device* %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @w90p910_return_default_idle(%struct.net_device* %12)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call i64 @netif_queue_stopped(%struct.net_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @netif_stop_queue(%struct.net_device* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @w90p910_init_desc(%struct.net_device* %21)
  %23 = load i8*, i8** @jiffies, align 8
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.w90p910_ether*, %struct.w90p910_ether** %3, align 8
  %27 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.w90p910_ether*, %struct.w90p910_ether** %3, align 8
  %29 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.w90p910_ether*, %struct.w90p910_ether** %3, align 8
  %31 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %30, i32 0, i32 2
  store i32 0, i32* %31, align 4
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = call i32 @w90p910_set_curdest(%struct.net_device* %32)
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = call i32 @w90p910_enable_cam(%struct.net_device* %34)
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = call i32 @w90p910_enable_cam_command(%struct.net_device* %36)
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = call i32 @w90p910_enable_mac_interrupt(%struct.net_device* %38)
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i32 @w90p910_enable_tx(%struct.net_device* %40, i32 1)
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = call i32 @w90p910_enable_rx(%struct.net_device* %42, i32 1)
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = call i32 @w90p910_trigger_tx(%struct.net_device* %44)
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = call i32 @w90p910_trigger_rx(%struct.net_device* %46)
  %48 = load i8*, i8** @jiffies, align 8
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = call i64 @netif_queue_stopped(%struct.net_device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %20
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = call i32 @netif_wake_queue(%struct.net_device* %55)
  br label %57

57:                                               ; preds = %54, %20
  ret void
}

declare dso_local %struct.w90p910_ether* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @w90p910_enable_tx(%struct.net_device*, i32) #1

declare dso_local i32 @w90p910_enable_rx(%struct.net_device*, i32) #1

declare dso_local i32 @w90p910_set_fifo_threshold(%struct.net_device*) #1

declare dso_local i32 @w90p910_return_default_idle(%struct.net_device*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @w90p910_init_desc(%struct.net_device*) #1

declare dso_local i32 @w90p910_set_curdest(%struct.net_device*) #1

declare dso_local i32 @w90p910_enable_cam(%struct.net_device*) #1

declare dso_local i32 @w90p910_enable_cam_command(%struct.net_device*) #1

declare dso_local i32 @w90p910_enable_mac_interrupt(%struct.net_device*) #1

declare dso_local i32 @w90p910_trigger_tx(%struct.net_device*) #1

declare dso_local i32 @w90p910_trigger_rx(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
