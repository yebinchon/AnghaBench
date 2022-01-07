; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_setup_netdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_setup_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.pci_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32, i32, i32, i32, i32, i32* }

@QLCNIC_MAX_MC_COUNT = common dso_local global i32 0, align 4
@qlcnic_netdev_ops = common dso_local global i32 0, align 4
@QLCNIC_WATCHDOG_TIMEOUTVALUE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@qlcnic_sriov_vf_ethtool_ops = common dso_local global i32 0, align 4
@qlcnic_ethtool_ops = common dso_local global i32 0, align 4
@qlcnic_ethtool_ops_ext = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_RX = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_FILTER = common dso_local global i32 0, align 4
@QLCNIC_FW_CAPABILITY_HW_LRO = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to register net device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_setup_netdev(%struct.qlcnic_adapter* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 3
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %9, align 8
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @QLCNIC_MAX_MC_COUNT, align 4
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 %19, i32* %23, align 4
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 5
  store i32* @qlcnic_netdev_ops, i32** %25, align 8
  %26 = load i32, i32* @QLCNIC_WATCHDOG_TIMEOUTVALUE, align 4
  %27 = load i32, i32* @HZ, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.net_device*, %struct.net_device** %6, align 8
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @qlcnic_change_mtu(%struct.net_device* %31, i32 %34)
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %37 = call i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %3
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = call i32 @SET_ETHTOOL_OPS(%struct.net_device* %40, i32* @qlcnic_sriov_vf_ethtool_ops)
  br label %45

42:                                               ; preds = %3
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = call i32 @SET_ETHTOOL_OPS(%struct.net_device* %43, i32* @qlcnic_ethtool_ops)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = call i32 @set_ethtool_ops_ext(%struct.net_device* %46, i32* @qlcnic_ethtool_ops_ext)
  %48 = load i32, i32* @NETIF_F_SG, align 4
  %49 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @NETIF_F_GRO, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @NETIF_F_HW_VLAN_RX, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* @NETIF_F_SG, align 4
  %62 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @NETIF_F_GRO, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.net_device*, %struct.net_device** %6, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %73 = call i64 @QLCNIC_IS_TSO_CAPABLE(%struct.qlcnic_adapter* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %45
  %76 = load i32, i32* @NETIF_F_TSO, align 4
  %77 = load i32, i32* @NETIF_F_TSO6, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.net_device*, %struct.net_device** %6, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* @NETIF_F_TSO, align 4
  %84 = load i32, i32* @NETIF_F_TSO6, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.net_device*, %struct.net_device** %6, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %75, %45
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %95 = load %struct.net_device*, %struct.net_device** %6, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %100 = load %struct.net_device*, %struct.net_device** %6, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %93, %90
  %105 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %106 = call i64 @qlcnic_vlan_tx_check(%struct.qlcnic_adapter* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load i32, i32* @NETIF_F_HW_VLAN_TX, align 4
  %110 = load %struct.net_device*, %struct.net_device** %6, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %108, %104
  %115 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %116 = call i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = load i32, i32* @NETIF_F_HW_VLAN_FILTER, align 4
  %120 = load %struct.net_device*, %struct.net_device** %6, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %118, %114
  %125 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %126 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %125, i32 0, i32 2
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @QLCNIC_FW_CAPABILITY_HW_LRO, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %124
  %134 = load i32, i32* @NETIF_F_LRO, align 4
  %135 = load %struct.net_device*, %struct.net_device** %6, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %133, %124
  %140 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %141 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %140, i32 0, i32 1
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.net_device*, %struct.net_device** %6, align 8
  %147 = getelementptr inbounds %struct.net_device, %struct.net_device* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 4
  %148 = load %struct.net_device*, %struct.net_device** %6, align 8
  %149 = call i32 @register_netdev(%struct.net_device* %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %139
  %153 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %154 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %153, i32 0, i32 0
  %155 = call i32 @dev_err(i32* %154, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %4, align 4
  br label %158

157:                                              ; preds = %139
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %157, %152
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @qlcnic_change_mtu(%struct.net_device*, i32) #1

declare dso_local i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @SET_ETHTOOL_OPS(%struct.net_device*, i32*) #1

declare dso_local i32 @set_ethtool_ops_ext(%struct.net_device*, i32*) #1

declare dso_local i64 @QLCNIC_IS_TSO_CAPABLE(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_vlan_tx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
