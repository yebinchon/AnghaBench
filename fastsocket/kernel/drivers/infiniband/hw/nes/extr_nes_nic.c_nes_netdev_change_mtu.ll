; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_nic.c_nes_netdev_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_nic.c_nes_netdev_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nes_vnic = type { i32, i64, %struct.nes_device* }
%struct.nes_device = type { i32 }

@ETH_ZLEN = common dso_local global i32 0, align 4
@max_mtu = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i64 0, align 8
@NES_IDX_NIC_MULTICAST_ALL = common dso_local global i32 0, align 4
@NES_IDX_NIC_UNICAST_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @nes_netdev_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_netdev_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nes_vnic*, align 8
  %7 = alloca %struct.nes_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.nes_vnic* @netdev_priv(%struct.net_device* %14)
  store %struct.nes_vnic* %15, %struct.nes_vnic** %6, align 8
  %16 = load %struct.nes_vnic*, %struct.nes_vnic** %6, align 8
  %17 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %16, i32 0, i32 2
  %18 = load %struct.nes_device*, %struct.nes_device** %17, align 8
  store %struct.nes_device* %18, %struct.nes_device** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @ETH_ZLEN, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @max_mtu, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %92

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @VLAN_ETH_HLEN, align 8
  %36 = add nsw i64 %34, %35
  %37 = load %struct.nes_vnic*, %struct.nes_vnic** %6, align 8
  %38 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 1500
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  store i32 1, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %29
  %45 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @nes_nic_init_timer_defaults(%struct.nes_device* %45, i32 %46)
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = call i64 @netif_running(%struct.net_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %90

51:                                               ; preds = %44
  %52 = load %struct.nes_vnic*, %struct.nes_vnic** %6, align 8
  %53 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = shl i32 1, %54
  store i32 %55, i32* %11, align 4
  %56 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %57 = load i32, i32* @NES_IDX_NIC_MULTICAST_ALL, align 4
  %58 = call i32 @nes_read_indexed(%struct.nes_device* %56, i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %13, align 4
  %61 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %62 = load i32, i32* @NES_IDX_NIC_UNICAST_ALL, align 4
  %63 = call i32 @nes_read_indexed(%struct.nes_device* %61, i32 %62)
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %12, align 4
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  %67 = call i32 @nes_netdev_stop(%struct.net_device* %66)
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = call i32 @nes_netdev_open(%struct.net_device* %68)
  %70 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %71 = load i32, i32* @NES_IDX_NIC_MULTICAST_ALL, align 4
  %72 = call i32 @nes_read_indexed(%struct.nes_device* %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %77 = load i32, i32* @NES_IDX_NIC_MULTICAST_ALL, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @nes_write_indexed(%struct.nes_device* %76, i32 %77, i32 %78)
  %80 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %81 = load i32, i32* @NES_IDX_NIC_UNICAST_ALL, align 4
  %82 = call i32 @nes_read_indexed(%struct.nes_device* %80, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %10, align 4
  %86 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %87 = load i32, i32* @NES_IDX_NIC_UNICAST_ALL, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @nes_write_indexed(%struct.nes_device* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %51, %44
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %26
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.nes_vnic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nes_nic_init_timer_defaults(%struct.nes_device*, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @nes_read_indexed(%struct.nes_device*, i32) #1

declare dso_local i32 @nes_netdev_stop(%struct.net_device*) #1

declare dso_local i32 @nes_netdev_open(%struct.net_device*) #1

declare dso_local i32 @nes_write_indexed(%struct.nes_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
