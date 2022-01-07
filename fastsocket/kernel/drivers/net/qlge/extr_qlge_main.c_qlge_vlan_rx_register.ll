; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_qlge_vlan_rx_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_qlge_vlan_rx_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_group = type { i32 }
%struct.ql_adapter = type { %struct.vlan_group* }

@NIC_RCV_CFG = common dso_local global i32 0, align 4
@NIC_RCV_CFG_VLAN_MASK = common dso_local global i32 0, align 4
@NIC_RCV_CFG_VLAN_MATCH_AND_NON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.vlan_group*)* @qlge_vlan_rx_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlge_vlan_rx_register(%struct.net_device* %0, %struct.vlan_group* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vlan_group*, align 8
  %5 = alloca %struct.ql_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.vlan_group* %1, %struct.vlan_group** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ql_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.ql_adapter* %7, %struct.ql_adapter** %5, align 8
  %8 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %9, i32 0, i32 0
  store %struct.vlan_group* %8, %struct.vlan_group** %10, align 8
  %11 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %12 = icmp ne %struct.vlan_group* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %15 = load i32, i32* @NIC_RCV_CFG, align 4
  %16 = load i32, i32* @NIC_RCV_CFG_VLAN_MASK, align 4
  %17 = load i32, i32* @NIC_RCV_CFG_VLAN_MATCH_AND_NON, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @ql_write32(%struct.ql_adapter* %14, i32 %15, i32 %18)
  br label %25

20:                                               ; preds = %2
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %22 = load i32, i32* @NIC_RCV_CFG, align 4
  %23 = load i32, i32* @NIC_RCV_CFG_VLAN_MASK, align 4
  %24 = call i32 @ql_write32(%struct.ql_adapter* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %13
  ret void
}

declare dso_local %struct.ql_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
