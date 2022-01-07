; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_ethtool.c_ixgb_phys_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_ethtool.c_ixgb_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgb_adapter = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@INT_MAX = common dso_local global i32 0, align 4
@ixgb_led_blink_callback = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@IXGB_LED_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ixgb_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgb_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ixgb_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.ixgb_adapter* %7, %struct.ixgb_adapter** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @INT_MAX, align 4
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %10, %2
  %13 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %12
  %19 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %19, i32 0, i32 2
  %21 = call i32 @init_timer(%struct.TYPE_4__* %20)
  %22 = load i64, i64* @ixgb_led_blink_callback, align 8
  %23 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i64 %22, i64* %25, align 8
  %26 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %5, align 8
  %27 = ptrtoint %struct.ixgb_adapter* %26 to i64
  %28 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %5, align 8
  %29 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  br label %31

31:                                               ; preds = %18, %12
  %32 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %5, align 8
  %33 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %32, i32 0, i32 2
  %34 = load i32, i32* @jiffies, align 4
  %35 = call i32 @mod_timer(%struct.TYPE_4__* %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = mul nsw i32 %36, 1000
  %38 = call i32 @msleep_interruptible(i32 %37)
  %39 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %5, align 8
  %40 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %39, i32 0, i32 2
  %41 = call i32 @del_timer_sync(%struct.TYPE_4__* %40)
  %42 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %42, i32 0, i32 1
  %44 = call i32 @ixgb_led_off(i32* %43)
  %45 = load i32, i32* @IXGB_LED_ON, align 4
  %46 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %5, align 8
  %47 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %46, i32 0, i32 0
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  ret i32 0
}

declare dso_local %struct.ixgb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_4__*) #1

declare dso_local i32 @ixgb_led_off(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
