; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ixgbe_adapter = type { i32, i64, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, %struct.net_device*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_4__ = type { i32 }

@IXGBE_VMOLR_BAM = common dso_local global i32 0, align 4
@IXGBE_VMOLR_AUPE = common dso_local global i32 0, align 4
@IXGBE_FCTRL = common dso_local global i32 0, align 4
@IXGBE_FCTRL_BAM = common dso_local global i32 0, align 4
@IXGBE_FCTRL_DPF = common dso_local global i32 0, align 4
@IXGBE_FCTRL_PMCF = common dso_local global i32 0, align 4
@IXGBE_FCTRL_UPE = common dso_local global i32 0, align 4
@IXGBE_FCTRL_MPE = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IXGBE_VMOLR_ROPE = common dso_local global i32 0, align 4
@IXGBE_VMOLR_MPE = common dso_local global i32 0, align 4
@IXGBE_FLAG_VMDQ_ENABLED = common dso_local global i32 0, align 4
@IXGBE_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IXGBE_VMOLR_ROMPE = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@NETIF_F_HW_VLAN_RX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ixgbe_adapter* %9, %struct.ixgbe_adapter** %3, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 2
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %4, align 8
  %12 = load i32, i32* @IXGBE_VMOLR_BAM, align 4
  %13 = load i32, i32* @IXGBE_VMOLR_AUPE, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %16 = load i32, i32* @IXGBE_FCTRL, align 4
  %17 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @IXGBE_FCTRL_BAM, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @IXGBE_FCTRL_DPF, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @IXGBE_FCTRL_PMCF, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @IXGBE_FCTRL_UPE, align 4
  %28 = load i32, i32* @IXGBE_FCTRL_MPE, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IFF_PROMISC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %1
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load i32, i32* @IXGBE_FCTRL_UPE, align 4
  %44 = load i32, i32* @IXGBE_FCTRL_MPE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @IXGBE_VMOLR_ROPE, align 4
  %49 = load i32, i32* @IXGBE_VMOLR_MPE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @IXGBE_FLAG_VMDQ_ENABLED, align 4
  %57 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %39
  %62 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %63 = call i32 @ixgbe_vlan_filter_disable(%struct.ixgbe_adapter* %62)
  br label %67

64:                                               ; preds = %39
  %65 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %66 = call i32 @ixgbe_vlan_filter_enable(%struct.ixgbe_adapter* %65)
  br label %67

67:                                               ; preds = %64, %61
  br label %88

68:                                               ; preds = %1
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IFF_ALLMULTI, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load i32, i32* @IXGBE_FCTRL_MPE, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* @IXGBE_VMOLR_MPE, align 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %75, %68
  %83 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %84 = call i32 @ixgbe_vlan_filter_enable(%struct.ixgbe_adapter* %83)
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %86 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  br label %88

88:                                               ; preds = %82, %67
  %89 = load %struct.net_device*, %struct.net_device** %2, align 8
  %90 = call i32 @ixgbe_write_uc_addr_list(%struct.net_device* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load i32, i32* @IXGBE_FCTRL_UPE, align 4
  %95 = load i32, i32* %5, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* @IXGBE_VMOLR_ROPE, align 4
  %98 = load i32, i32* %6, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %93, %88
  %101 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %102 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32 (%struct.ixgbe_hw.0*, %struct.net_device*)*, i32 (%struct.ixgbe_hw.0*, %struct.net_device*)** %104, align 8
  %106 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %107 = bitcast %struct.ixgbe_hw* %106 to %struct.ixgbe_hw.0*
  %108 = load %struct.net_device*, %struct.net_device** %2, align 8
  %109 = call i32 %105(%struct.ixgbe_hw.0* %107, %struct.net_device* %108)
  %110 = load i32, i32* @IXGBE_VMOLR_ROMPE, align 4
  %111 = load i32, i32* %6, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %6, align 4
  %113 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %114 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %100
  %118 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %119 = call i32 @ixgbe_restore_vf_multicasts(%struct.ixgbe_adapter* %118)
  br label %120

120:                                              ; preds = %117, %100
  %121 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %122 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %146

127:                                              ; preds = %120
  %128 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %129 = call i32 @VMDQ_P(i32 0)
  %130 = call i32 @IXGBE_VMOLR(i32 %129)
  %131 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %128, i32 %130)
  %132 = load i32, i32* @IXGBE_VMOLR_MPE, align 4
  %133 = load i32, i32* @IXGBE_VMOLR_ROMPE, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @IXGBE_VMOLR_ROPE, align 4
  %136 = or i32 %134, %135
  %137 = xor i32 %136, -1
  %138 = and i32 %131, %137
  %139 = load i32, i32* %6, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %6, align 4
  %141 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %142 = call i32 @VMDQ_P(i32 0)
  %143 = call i32 @IXGBE_VMOLR(i32 %142)
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %141, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %127, %120
  %147 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %148 = load i32, i32* @IXGBE_FCTRL, align 4
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %147, i32 %148, i32 %149)
  %151 = load %struct.net_device*, %struct.net_device** %2, align 8
  %152 = getelementptr inbounds %struct.net_device, %struct.net_device* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @NETIF_F_HW_VLAN_RX, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %146
  %158 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %159 = call i32 @ixgbe_vlan_strip_enable(%struct.ixgbe_adapter* %158)
  br label %163

160:                                              ; preds = %146
  %161 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %162 = call i32 @ixgbe_vlan_strip_disable(%struct.ixgbe_adapter* %161)
  br label %163

163:                                              ; preds = %160, %157
  ret void
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_vlan_filter_disable(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_vlan_filter_enable(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_write_uc_addr_list(%struct.net_device*) #1

declare dso_local i32 @ixgbe_restore_vf_multicasts(%struct.ixgbe_adapter*) #1

declare dso_local i32 @IXGBE_VMOLR(i32) #1

declare dso_local i32 @VMDQ_P(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_vlan_strip_enable(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_vlan_strip_disable(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
