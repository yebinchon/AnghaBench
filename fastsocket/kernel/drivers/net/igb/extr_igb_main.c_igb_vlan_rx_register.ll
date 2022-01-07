; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_vlan_rx_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_vlan_rx_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_group = type { i32 }
%struct.igb_adapter = type { i32, %struct.vlan_group*, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_VME = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_CFIEN = common dso_local global i32 0, align 4
@__IGB_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.vlan_group*)* @igb_vlan_rx_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_vlan_rx_register(%struct.net_device* %0, %struct.vlan_group* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vlan_group*, align 8
  %5 = alloca %struct.igb_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.vlan_group* %1, %struct.vlan_group** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.igb_adapter* %10, %struct.igb_adapter** %5, align 8
  %11 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %11, i32 0, i32 2
  store %struct.e1000_hw* %12, %struct.e1000_hw** %6, align 8
  %13 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %14 = call i32 @igb_irq_disable(%struct.igb_adapter* %13)
  %15 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %16 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %16, i32 0, i32 1
  store %struct.vlan_group* %15, %struct.vlan_group** %17, align 8
  %18 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %19 = icmp ne %struct.vlan_group* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %2
  %21 = load i32, i32* @E1000_CTRL, align 4
  %22 = call i32 @rd32(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @E1000_CTRL_VME, align 4
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @E1000_CTRL, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @wr32(i32 %26, i32 %27)
  %29 = load i32, i32* @E1000_RCTL, align 4
  %30 = call i32 @rd32(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @E1000_RCTL_CFIEN, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @E1000_RCTL, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @wr32(i32 %35, i32 %36)
  br label %48

38:                                               ; preds = %2
  %39 = load i32, i32* @E1000_CTRL, align 4
  %40 = call i32 @rd32(i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @E1000_CTRL_VME, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @E1000_CTRL, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @wr32(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %38, %20
  %49 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %50 = call i32 @igb_rlpml_set(%struct.igb_adapter* %49)
  %51 = load i32, i32* @__IGB_DOWN, align 4
  %52 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %53 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %52, i32 0, i32 0
  %54 = call i32 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %58 = call i32 @igb_irq_enable(%struct.igb_adapter* %57)
  br label %59

59:                                               ; preds = %56, %48
  ret void
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @igb_irq_disable(%struct.igb_adapter*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @igb_rlpml_set(%struct.igb_adapter*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @igb_irq_enable(%struct.igb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
