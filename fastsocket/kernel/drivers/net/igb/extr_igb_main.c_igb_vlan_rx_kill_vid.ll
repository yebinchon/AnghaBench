; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_vlan_rx_kill_vid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_vlan_rx_kill_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.igb_adapter = type { i32, i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@__IGB_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @igb_vlan_rx_kill_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_vlan_rx_kill_vid(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.igb_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.igb_adapter* %10, %struct.igb_adapter** %5, align 8
  %11 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %11, i32 0, i32 3
  store %struct.e1000_hw* %12, %struct.e1000_hw** %6, align 8
  %13 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %17 = call i32 @igb_irq_disable(%struct.igb_adapter* %16)
  %18 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @vlan_group_set_device(i32 %20, i32 %21, i32* null)
  %23 = load i32, i32* @__IGB_DOWN, align 4
  %24 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %24, i32 0, i32 1
  %26 = call i32 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %30 = call i32 @igb_irq_enable(%struct.igb_adapter* %29)
  br label %31

31:                                               ; preds = %28, %2
  %32 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @igb_vlvf_set(%struct.igb_adapter* %32, i32 %33, i32 0, i32 %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @igb_vfta_set(%struct.e1000_hw* %39, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %38, %31
  ret void
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @igb_irq_disable(%struct.igb_adapter*) #1

declare dso_local i32 @vlan_group_set_device(i32, i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @igb_irq_enable(%struct.igb_adapter*) #1

declare dso_local i64 @igb_vlvf_set(%struct.igb_adapter*, i32, i32, i32) #1

declare dso_local i32 @igb_vfta_set(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
