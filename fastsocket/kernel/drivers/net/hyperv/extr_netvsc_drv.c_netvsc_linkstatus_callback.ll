; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_linkstatus_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_linkstatus_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.net_device = type { i32 }
%struct.net_device_context = type { i32 }
%struct.netvsc_device = type { %struct.net_device* }

@.str = private unnamed_addr constant [52 x i8] c"got link status but net device not initialized yet\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netvsc_linkstatus_callback(%struct.hv_device* %0, i32 %1) #0 {
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device_context*, align 8
  %7 = alloca %struct.netvsc_device*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %9 = call %struct.netvsc_device* @hv_get_drvdata(%struct.hv_device* %8)
  store %struct.netvsc_device* %9, %struct.netvsc_device** %7, align 8
  %10 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %11 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call i32 @netdev_err(%struct.net_device* %16, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %36

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call i32 @netif_carrier_on(%struct.net_device* %22)
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %24)
  store %struct.net_device_context* %25, %struct.net_device_context** %6, align 8
  %26 = load %struct.net_device_context*, %struct.net_device_context** %6, align 8
  %27 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %26, i32 0, i32 0
  %28 = call i32 @schedule_delayed_work(i32* %27, i32 0)
  %29 = load %struct.net_device_context*, %struct.net_device_context** %6, align 8
  %30 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %29, i32 0, i32 0
  %31 = call i32 @msecs_to_jiffies(i32 20)
  %32 = call i32 @schedule_delayed_work(i32* %30, i32 %31)
  br label %36

33:                                               ; preds = %18
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = call i32 @netif_carrier_off(%struct.net_device* %34)
  br label %36

36:                                               ; preds = %15, %33, %21
  ret void
}

declare dso_local %struct.netvsc_device* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
