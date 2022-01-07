; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_vlan_del_empty_slave_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_vlan_del_empty_slave_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device.0*, i32*)* }
%struct.net_device.0 = type opaque
%struct.vlan_group = type { i32, i32, i64 }

@NETIF_F_HW_VLAN_RX = common dso_local global i32 0, align 4
@bond_vlan_rcu_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bond_vlan_del_empty_slave_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bond_vlan_del_empty_slave_group(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_device_ops*, align 8
  %4 = alloca %struct.vlan_group*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 1
  %7 = load %struct.net_device_ops*, %struct.net_device_ops** %6, align 8
  store %struct.net_device_ops* %7, %struct.net_device_ops** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.vlan_group* @vlan_find_group(%struct.net_device* %8)
  store %struct.vlan_group* %9, %struct.vlan_group** %4, align 8
  %10 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %11 = icmp ne %struct.vlan_group* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %14 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %1
  br label %47

18:                                               ; preds = %12
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @vlan_gvrp_uninit_applicant(%struct.net_device* %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @NETIF_F_HW_VLAN_RX, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %18
  %28 = load %struct.net_device_ops*, %struct.net_device_ops** %3, align 8
  %29 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %28, i32 0, i32 0
  %30 = load i32 (%struct.net_device.0*, i32*)*, i32 (%struct.net_device.0*, i32*)** %29, align 8
  %31 = icmp ne i32 (%struct.net_device.0*, i32*)* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.net_device_ops*, %struct.net_device_ops** %3, align 8
  %34 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %33, i32 0, i32 0
  %35 = load i32 (%struct.net_device.0*, i32*)*, i32 (%struct.net_device.0*, i32*)** %34, align 8
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = bitcast %struct.net_device* %36 to %struct.net_device.0*
  %38 = call i32 %35(%struct.net_device.0* %37, i32* null)
  br label %39

39:                                               ; preds = %32, %27, %18
  %40 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %41 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %40, i32 0, i32 1
  %42 = call i32 @hlist_del_rcu(i32* %41)
  %43 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %44 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %43, i32 0, i32 0
  %45 = load i32, i32* @bond_vlan_rcu_free, align 4
  %46 = call i32 @call_rcu(i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %39, %17
  ret void
}

declare dso_local %struct.vlan_group* @vlan_find_group(%struct.net_device*) #1

declare dso_local i32 @vlan_gvrp_uninit_applicant(%struct.net_device*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
