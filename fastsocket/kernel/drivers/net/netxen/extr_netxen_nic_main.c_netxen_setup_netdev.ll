; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_setup_netdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_setup_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32, i32, i32, i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__, i64, %struct.pci_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32, i32, i32, i32, i32, i32* }

@netxen_netdev_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@netxen_nic_ethtool_ops = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@NX_FW_CAPABILITY_FVLANTX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_RX = common dso_local global i32 0, align 4
@NX_FW_CAPABILITY_HW_LRO = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@netxen_tx_timeout_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to read mac addr\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to register net device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*, %struct.net_device*)* @netxen_setup_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_setup_netdev(%struct.netxen_adapter* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netxen_adapter*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %8, i32 0, i32 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %7, align 8
  %11 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %13, i32 0, i32 7
  store i64 0, i64* %14, align 8
  %15 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @NX_IS_REVISION_P3(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %22, i32 0, i32 1
  store i32 38, i32* %23, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %25, i32 0, i32 1
  store i32 16, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 5
  store i32* @netxen_netdev_ops, i32** %29, align 8
  %30 = load i32, i32* @HZ, align 4
  %31 = mul nsw i32 5, %30
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @netxen_nic_change_mtu(%struct.net_device* %34, i32 %37)
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = call i32 @SET_ETHTOOL_OPS(%struct.net_device* %39, i32* @netxen_nic_ethtool_ops)
  %41 = load i32, i32* @NETIF_F_SG, align 4
  %42 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @NETIF_F_TSO, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @NETIF_F_GRO, align 4
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* @NETIF_F_SG, align 4
  %56 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @NETIF_F_TSO, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %65 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @NX_IS_REVISION_P3(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %27
  %71 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %72 = load i32, i32* @NETIF_F_TSO6, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %79 = load i32, i32* @NETIF_F_TSO6, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %70, %27
  %86 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %87 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %92 = load %struct.net_device*, %struct.net_device** %5, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %97 = load %struct.net_device*, %struct.net_device** %5, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %90, %85
  %102 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %103 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @NX_FW_CAPABILITY_FVLANTX, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load i32, i32* @NETIF_F_HW_VLAN_TX, align 4
  %110 = load %struct.net_device*, %struct.net_device** %5, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %108, %101
  %115 = load i32, i32* @NETIF_F_HW_VLAN_RX, align 4
  %116 = load %struct.net_device*, %struct.net_device** %5, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %121 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @NX_FW_CAPABILITY_HW_LRO, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %114
  %127 = load i32, i32* @NETIF_F_LRO, align 4
  %128 = load %struct.net_device*, %struct.net_device** %5, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %126, %114
  %133 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %134 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %133, i32 0, i32 4
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.net_device*, %struct.net_device** %5, align 8
  %140 = getelementptr inbounds %struct.net_device, %struct.net_device* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  %141 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %142 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %141, i32 0, i32 3
  %143 = load i32, i32* @netxen_tx_timeout_task, align 4
  %144 = call i32 @INIT_WORK(i32* %142, i32 %143)
  %145 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %146 = call i64 @netxen_read_mac_addr(%struct.netxen_adapter* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %132
  %149 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %150 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %149, i32 0, i32 0
  %151 = call i32 @dev_warn(i32* %150, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %152

152:                                              ; preds = %148, %132
  %153 = load %struct.net_device*, %struct.net_device** %5, align 8
  %154 = call i32 @netif_carrier_off(%struct.net_device* %153)
  %155 = load %struct.net_device*, %struct.net_device** %5, align 8
  %156 = call i32 @register_netdev(%struct.net_device* %155)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %152
  %160 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %161 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %160, i32 0, i32 0
  %162 = call i32 @dev_err(i32* %161, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %163 = load i32, i32* %6, align 4
  store i32 %163, i32* %3, align 4
  br label %165

164:                                              ; preds = %152
  store i32 0, i32* %3, align 4
  br label %165

165:                                              ; preds = %164, %159
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i64 @NX_IS_REVISION_P3(i32) #1

declare dso_local i32 @netxen_nic_change_mtu(%struct.net_device*, i32) #1

declare dso_local i32 @SET_ETHTOOL_OPS(%struct.net_device*, i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @netxen_read_mac_addr(%struct.netxen_adapter*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
