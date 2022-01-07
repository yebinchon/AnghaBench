; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_start_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_start_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i64, %struct.TYPE_2__, %struct.pci_dev* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"error in init HW init sequence\0A\00", align 1
@CRB_CMDPEG_STATE = common dso_local global i32 0, align 4
@CRB_DMA_SHIFT = common dso_local global i32 0, align 4
@NETXEN_PEG_HALT_STATUS1 = common dso_local global i32 0, align 4
@NETXEN_PEG_HALT_STATUS2 = common dso_local global i32 0, align 4
@NETXEN_NIC_XGBE = common dso_local global i64 0, align 8
@NETXEN_MAC_ADDR_CNTL_REG = common dso_local global i32 0, align 4
@_NETXEN_NIC_LINUX_MAJOR = common dso_local global i32 0, align 4
@_NETXEN_NIC_LINUX_MINOR = common dso_local global i32 0, align 4
@_NETXEN_NIC_LINUX_SUBVERSION = common dso_local global i32 0, align 4
@CRB_DRIVER_VERSION = common dso_local global i32 0, align 4
@NETXEN_NIC_PEG_TUNE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NX_CRB_DEV_STATE = common dso_local global i32 0, align 4
@NX_DEV_FAILED = common dso_local global i32 0, align 4
@NX_DEV_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*)* @netxen_start_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_start_firmware(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  %9 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %9, i32 0, i32 2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %8, align 8
  %12 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %13 = call i32 @nx_set_dma_mask(%struct.netxen_adapter* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %184

18:                                               ; preds = %1
  %19 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %20 = call i32 @netxen_can_start_firmware(%struct.netxen_adapter* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %184

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %143

29:                                               ; preds = %25
  %30 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %31 = call i32 @NETXEN_CAM_RAM(i32 508)
  %32 = call i32 @NXRD32(%struct.netxen_adapter* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @netxen_check_hw_init(%struct.netxen_adapter* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %184

43:                                               ; preds = %29
  %44 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %45 = call i32 @netxen_request_firmware(%struct.netxen_adapter* %44)
  %46 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %47 = call i32 @netxen_need_fw_reset(%struct.netxen_adapter* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %180

51:                                               ; preds = %43
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %132

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 1431655765
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %60 = load i32, i32* @CRB_CMDPEG_STATE, align 4
  %61 = call i32 @NXWR32(%struct.netxen_adapter* %59, i32 %60, i32 0)
  %62 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %63 = call i32 @netxen_pinit_from_rom(%struct.netxen_adapter* %62)
  %64 = call i32 @msleep(i32 1)
  br label %65

65:                                               ; preds = %58, %55
  %66 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %67 = load i32, i32* @CRB_DMA_SHIFT, align 4
  %68 = call i32 @NXWR32(%struct.netxen_adapter* %66, i32 %67, i32 1431655765)
  %69 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %70 = load i32, i32* @NETXEN_PEG_HALT_STATUS1, align 4
  %71 = call i32 @NXWR32(%struct.netxen_adapter* %69, i32 %70, i32 0)
  %72 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %73 = load i32, i32* @NETXEN_PEG_HALT_STATUS2, align 4
  %74 = call i32 @NXWR32(%struct.netxen_adapter* %72, i32 %73, i32 0)
  %75 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @NX_IS_REVISION_P3(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %65
  %82 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %83 = call i32 @netxen_set_port_mode(%struct.netxen_adapter* %82)
  br label %84

84:                                               ; preds = %81, %65
  %85 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %86 = call i32 @netxen_load_firmware(%struct.netxen_adapter* %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %180

90:                                               ; preds = %84
  %91 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %92 = call i32 @netxen_release_firmware(%struct.netxen_adapter* %91)
  %93 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @NX_IS_REVISION_P2(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %90
  store i32 30292, i32* %4, align 4
  %100 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @NETXEN_NIC_XGBE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i32, i32* %4, align 4
  %108 = or i32 %107, 251658240
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %106, %99
  %110 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %111 = load i32, i32* @NETXEN_MAC_ADDR_CNTL_REG, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @NXWR32(%struct.netxen_adapter* %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %109, %90
  %115 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %116 = call i32 @netxen_init_dummy_dma(%struct.netxen_adapter* %115)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %180

120:                                              ; preds = %114
  %121 = load i32, i32* @_NETXEN_NIC_LINUX_MAJOR, align 4
  %122 = shl i32 %121, 16
  %123 = load i32, i32* @_NETXEN_NIC_LINUX_MINOR, align 4
  %124 = shl i32 %123, 8
  %125 = or i32 %122, %124
  %126 = load i32, i32* @_NETXEN_NIC_LINUX_SUBVERSION, align 4
  %127 = or i32 %125, %126
  store i32 %127, i32* %4, align 4
  %128 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %129 = load i32, i32* @CRB_DRIVER_VERSION, align 4
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @NXWR32(%struct.netxen_adapter* %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %120, %54
  %133 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %134 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @NX_IS_REVISION_P3(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %141 = call i32 @netxen_pcie_strap_init(%struct.netxen_adapter* %140)
  br label %142

142:                                              ; preds = %139, %132
  br label %143

143:                                              ; preds = %142, %28
  %144 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %145 = load i32, i32* @NETXEN_NIC_PEG_TUNE, align 4
  %146 = call i32 @netxen_phantom_init(%struct.netxen_adapter* %144, i32 %145)
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %5, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %151 = call i32 @netxen_free_dummy_dma(%struct.netxen_adapter* %150)
  br label %180

152:                                              ; preds = %143
  %153 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %154 = call i64 @netxen_api_lock(%struct.netxen_adapter* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i32, i32* @EIO, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %184

159:                                              ; preds = %152
  %160 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %161 = load i32, i32* @NX_CRB_DEV_STATE, align 4
  %162 = call i32 @NXRD32(%struct.netxen_adapter* %160, i32 %161)
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @NX_DEV_FAILED, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  store i32 1, i32* %2, align 4
  br label %184

167:                                              ; preds = %159
  %168 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %169 = load i32, i32* @NX_CRB_DEV_STATE, align 4
  %170 = load i32, i32* @NX_DEV_READY, align 4
  %171 = call i32 @NXWR32(%struct.netxen_adapter* %168, i32 %169, i32 %170)
  %172 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %173 = call i32 @netxen_api_unlock(%struct.netxen_adapter* %172)
  %174 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %175 = call i32 @nx_update_dma_mask(%struct.netxen_adapter* %174)
  %176 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %177 = call i32 @netxen_check_options(%struct.netxen_adapter* %176)
  %178 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %179 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %178, i32 0, i32 0
  store i64 0, i64* %179, align 8
  br label %180

180:                                              ; preds = %167, %149, %119, %89, %50
  %181 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %182 = call i32 @netxen_release_firmware(%struct.netxen_adapter* %181)
  %183 = load i32, i32* %5, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %180, %166, %156, %38, %23, %16
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @nx_set_dma_mask(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_can_start_firmware(%struct.netxen_adapter*) #1

declare dso_local i32 @NXRD32(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @NETXEN_CAM_RAM(i32) #1

declare dso_local i32 @netxen_check_hw_init(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @netxen_request_firmware(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_need_fw_reset(%struct.netxen_adapter*) #1

declare dso_local i32 @NXWR32(%struct.netxen_adapter*, i32, i32) #1

declare dso_local i32 @netxen_pinit_from_rom(%struct.netxen_adapter*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @NX_IS_REVISION_P3(i32) #1

declare dso_local i32 @netxen_set_port_mode(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_load_firmware(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_release_firmware(%struct.netxen_adapter*) #1

declare dso_local i64 @NX_IS_REVISION_P2(i32) #1

declare dso_local i32 @netxen_init_dummy_dma(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_pcie_strap_init(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_phantom_init(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @netxen_free_dummy_dma(%struct.netxen_adapter*) #1

declare dso_local i64 @netxen_api_lock(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_api_unlock(%struct.netxen_adapter*) #1

declare dso_local i32 @nx_update_dma_mask(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_check_options(%struct.netxen_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
