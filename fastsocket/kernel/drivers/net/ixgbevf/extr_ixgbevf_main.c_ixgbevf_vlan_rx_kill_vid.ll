; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_vlan_rx_kill_vid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_vlan_rx_kill_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbevf_adapter = type { i32, i32, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque

@__IXGBEVF_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @ixgbevf_vlan_rx_kill_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_vlan_rx_kill_vid(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbevf_adapter*, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.ixgbevf_adapter* %8, %struct.ixgbevf_adapter** %5, align 8
  %9 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %9, i32 0, i32 3
  store %struct.ixgbe_hw* %10, %struct.ixgbe_hw** %6, align 8
  %11 = load i32, i32* @__IXGBEVF_DOWN, align 4
  %12 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %12, i32 0, i32 1
  %14 = call i32 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %18 = call i32 @ixgbevf_irq_disable(%struct.ixgbevf_adapter* %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @vlan_group_set_device(i32 %22, i32 %23, i32* null)
  %25 = load i32, i32* @__IXGBEVF_DOWN, align 4
  %26 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %26, i32 0, i32 1
  %28 = call i32 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %32 = call i32 @ixgbevf_irq_enable(%struct.ixgbevf_adapter* %31)
  br label %33

33:                                               ; preds = %30, %19
  %34 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_bh(i32* %35)
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %40, align 8
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %43 = bitcast %struct.ixgbe_hw* %42 to %struct.ixgbe_hw.0*
  %44 = load i32, i32* %4, align 4
  %45 = call i32 %41(%struct.ixgbe_hw.0* %43, i32 %44, i32 0, i32 0)
  %46 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %47 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock_bh(i32* %47)
  ret void
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ixgbevf_irq_disable(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @vlan_group_set_device(i32, i32, i32*) #1

declare dso_local i32 @ixgbevf_irq_enable(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
