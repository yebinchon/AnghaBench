; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_phys_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.e1000_adapter = type { i32, %struct.TYPE_4__, %struct.e1000_hw }
%struct.TYPE_4__ = type { i64, i64 }
%struct.e1000_hw = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@e1000_led_blink_callback = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@E1000_LED_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @e1000_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.e1000_adapter* %8, %struct.e1000_adapter** %5, align 8
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 2
  store %struct.e1000_hw* %10, %struct.e1000_hw** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @INT_MAX, align 4
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %13, %2
  %16 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %15
  %22 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %23 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %22, i32 0, i32 1
  %24 = call i32 @init_timer(%struct.TYPE_4__* %23)
  %25 = load i64, i64* @e1000_led_blink_callback, align 8
  %26 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i64 %25, i64* %28, align 8
  %29 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %30 = ptrtoint %struct.e1000_adapter* %29 to i64
  %31 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  br label %34

34:                                               ; preds = %21, %15
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %36 = call i32 @e1000_setup_led(%struct.e1000_hw* %35)
  %37 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %38 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %37, i32 0, i32 1
  %39 = load i32, i32* @jiffies, align 4
  %40 = call i32 @mod_timer(%struct.TYPE_4__* %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = mul nsw i32 %41, 1000
  %43 = call i32 @msleep_interruptible(i32 %42)
  %44 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %45 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %44, i32 0, i32 1
  %46 = call i32 @del_timer_sync(%struct.TYPE_4__* %45)
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %48 = call i32 @e1000_led_off(%struct.e1000_hw* %47)
  %49 = load i32, i32* @E1000_LED_ON, align 4
  %50 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %51 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %50, i32 0, i32 0
  %52 = call i32 @clear_bit(i32 %49, i32* %51)
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %54 = call i32 @e1000_cleanup_led(%struct.e1000_hw* %53)
  ret i32 0
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @e1000_setup_led(%struct.e1000_hw*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_4__*) #1

declare dso_local i32 @e1000_led_off(%struct.e1000_hw*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @e1000_cleanup_led(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
