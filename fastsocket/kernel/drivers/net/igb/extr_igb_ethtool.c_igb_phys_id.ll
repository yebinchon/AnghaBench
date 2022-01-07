; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_phys_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.igb_adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@UINT_MAX = common dso_local global i64 0, align 8
@IGB_LED_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @igb_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.igb_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.igb_adapter* %9, %struct.igb_adapter** %5, align 8
  %10 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %10, i32 0, i32 1
  store %struct.e1000_hw* %11, %struct.e1000_hw** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = mul nsw i32 %12, 1000
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @UINT_MAX, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %2
  %22 = load i64, i64* @UINT_MAX, align 8
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %21, %17
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %25 = call i32 @igb_blink_led(%struct.e1000_hw* %24)
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @msleep_interruptible(i64 %26)
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %29 = call i32 @igb_led_off(%struct.e1000_hw* %28)
  %30 = load i32, i32* @IGB_LED_ON, align 4
  %31 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %31, i32 0, i32 0
  %33 = call i32 @clear_bit(i32 %30, i32* %32)
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %35 = call i32 @igb_cleanup_led(%struct.e1000_hw* %34)
  ret i32 0
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @igb_blink_led(%struct.e1000_hw*) #1

declare dso_local i32 @msleep_interruptible(i64) #1

declare dso_local i32 @igb_led_off(%struct.e1000_hw*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @igb_cleanup_led(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
