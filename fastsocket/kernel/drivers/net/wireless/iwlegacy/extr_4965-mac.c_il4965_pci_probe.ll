; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_pci_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i64 }
%struct.il_priv = type { i64, %struct.ieee80211_hw*, %struct.pci_dev*, i32*, %struct.TYPE_5__, i32, i32, %struct.TYPE_4__*, i32, i32, %struct.il_cfg*, i32, i32, i32*, i32* }
%struct.ieee80211_hw = type { %struct.TYPE_6__*, %struct.il_priv* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.il_cfg = type { i32 }

@il4965_mac_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"*** LOAD DRIVER ***\0A\00", align 1
@il4965_ops = common dso_local global i32 0, align 4
@CSR_INI_SET_MASK = common dso_local global i32 0, align 4
@PCIE_LINK_STATE_L0S = common dso_local global i32 0, align 4
@PCIE_LINK_STATE_L1 = common dso_local global i32 0, align 4
@PCIE_LINK_STATE_CLKPM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"No suitable DMA available.\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"pci_resource_len = 0x%08llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"pci_resource_base = %p\0A\00", align 1
@CSR_RESET = common dso_local global i32 0, align 4
@CSR_RESET_REG_FLAG_NEVO_RESET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Detected %s, REV=0x%X\0A\00", align 1
@PCI_CFG_RETRY_TIMEOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Failed, HW not ready\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Unable to init EEPROM\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"MAC address: %pM\0A\00", align 1
@il_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"Error allocating IRQ %d\0A\00", align 1
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_INTX_DISABLE = common dso_local global i32 0, align 4
@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_HW_RF_KILL_SW = common dso_local global i32 0, align 4
@S_RFKILL = common dso_local global i32 0, align 4
@il4965_debugfs_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @il4965_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.il_priv*, align 8
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca %struct.il_cfg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %13 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.il_cfg*
  store %struct.il_cfg* %15, %struct.il_cfg** %9, align 8
  %16 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 96, i32* @il4965_mac_ops)
  store %struct.ieee80211_hw* %16, %struct.ieee80211_hw** %8, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %18 = icmp ne %struct.ieee80211_hw* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %347

22:                                               ; preds = %2
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %24 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %23, i32 0, i32 1
  %25 = load %struct.il_priv*, %struct.il_priv** %24, align 8
  store %struct.il_priv* %25, %struct.il_priv** %7, align 8
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %27 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %28 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %27, i32 0, i32 1
  store %struct.ieee80211_hw* %26, %struct.ieee80211_hw** %28, align 8
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 1
  %32 = call i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw* %29, i32* %31)
  %33 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.il_cfg*, %struct.il_cfg** %9, align 8
  %35 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %36 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %35, i32 0, i32 10
  store %struct.il_cfg* %34, %struct.il_cfg** %36, align 8
  %37 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %38 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %37, i32 0, i32 14
  store i32* @il4965_ops, i32** %38, align 8
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %41 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %40, i32 0, i32 2
  store %struct.pci_dev* %39, %struct.pci_dev** %41, align 8
  %42 = load i32, i32* @CSR_INI_SET_MASK, align 4
  %43 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %44 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %43, i32 0, i32 12
  store i32 %42, i32* %44, align 4
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = load i32, i32* @PCIE_LINK_STATE_L0S, align 4
  %47 = load i32, i32* @PCIE_LINK_STATE_L1, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @PCIE_LINK_STATE_CLKPM, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @pci_disable_link_state(%struct.pci_dev* %45, i32 %50)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = call i64 @pci_enable_device(%struct.pci_dev* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %22
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %342

58:                                               ; preds = %22
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = call i32 @pci_set_master(%struct.pci_dev* %59)
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = call i32 @DMA_BIT_MASK(i32 36)
  %63 = call i32 @pci_set_dma_mask(%struct.pci_dev* %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %58
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = call i32 @DMA_BIT_MASK(i32 36)
  %69 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %67, i32 %68)
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %66, %58
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %70
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = call i32 @DMA_BIT_MASK(i32 32)
  %76 = call i32 @pci_set_dma_mask(%struct.pci_dev* %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %73
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = call i32 @DMA_BIT_MASK(i32 32)
  %82 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %80, i32 %81)
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %79, %73
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 @IL_WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %339

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %70
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = load i32, i32* @DRV_NAME, align 4
  %92 = call i32 @pci_request_regions(%struct.pci_dev* %90, i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %339

96:                                               ; preds = %89
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %99 = call i32 @pci_set_drvdata(%struct.pci_dev* %97, %struct.il_priv* %98)
  %100 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %101 = call i64 @pci_ioremap_bar(%struct.pci_dev* %100, i32 0)
  %102 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %103 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %105 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %96
  %109 = load i32, i32* @ENODEV, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %6, align 4
  br label %334

111:                                              ; preds = %96
  %112 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %113 = call i64 @pci_resource_len(%struct.pci_dev* %112, i32 0)
  %114 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %113)
  %115 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %116 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %117)
  %119 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %120 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %119, i32 0, i32 11
  %121 = call i32 @spin_lock_init(i32* %120)
  %122 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %123 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %122, i32 0, i32 6
  %124 = call i32 @spin_lock_init(i32* %123)
  %125 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %126 = load i32, i32* @CSR_RESET, align 4
  %127 = load i32, i32* @CSR_RESET_REG_FLAG_NEVO_RESET, align 4
  %128 = call i32 @_il_wr(%struct.il_priv* %125, i32 %126, i32 %127)
  %129 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %130 = call i32 @il4965_hw_detect(%struct.il_priv* %129)
  %131 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %132 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %131, i32 0, i32 10
  %133 = load %struct.il_cfg*, %struct.il_cfg** %132, align 8
  %134 = getelementptr inbounds %struct.il_cfg, %struct.il_cfg* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %137 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %136, i32 0, i32 9
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @IL_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %135, i32 %138)
  %140 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %141 = load i32, i32* @PCI_CFG_RETRY_TIMEOUT, align 4
  %142 = call i32 @pci_write_config_byte(%struct.pci_dev* %140, i32 %141, i32 0)
  %143 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %144 = call i32 @il4965_prepare_card_hw(%struct.il_priv* %143)
  %145 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %146 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %111
  %150 = call i32 @IL_WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %151 = load i32, i32* @EIO, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %6, align 4
  br label %329

153:                                              ; preds = %111
  %154 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %155 = call i32 @il_eeprom_init(%struct.il_priv* %154)
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* %6, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %329

160:                                              ; preds = %153
  %161 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %162 = call i32 @il4965_eeprom_check_version(%struct.il_priv* %161)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %326

166:                                              ; preds = %160
  %167 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %168 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %169 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %168, i32 0, i32 7
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @il4965_eeprom_get_mac(%struct.il_priv* %167, i64 %173)
  %175 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %176 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %175, i32 0, i32 7
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i64 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i64 %180)
  %182 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %183 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %182, i32 0, i32 7
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %186 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %185, i32 0, i32 1
  %187 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %186, align 8
  %188 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %187, i32 0, i32 0
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  store %struct.TYPE_4__* %184, %struct.TYPE_4__** %190, align 8
  %191 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %192 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %191, i32 0, i32 1
  %193 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %192, align 8
  %194 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %193, i32 0, i32 0
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  store i32 1, i32* %196, align 8
  %197 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %198 = call i32 @il4965_set_hw_params(%struct.il_priv* %197)
  %199 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %200 = call i32 @il4965_init_drv(%struct.il_priv* %199)
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* %6, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %166
  br label %326

204:                                              ; preds = %166
  %205 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %206 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %205, i32 0, i32 6
  %207 = load i64, i64* %10, align 8
  %208 = call i32 @spin_lock_irqsave(i32* %206, i64 %207)
  %209 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %210 = call i32 @il_disable_interrupts(%struct.il_priv* %209)
  %211 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %212 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %211, i32 0, i32 6
  %213 = load i64, i64* %10, align 8
  %214 = call i32 @spin_unlock_irqrestore(i32* %212, i64 %213)
  %215 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %216 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %215, i32 0, i32 2
  %217 = load %struct.pci_dev*, %struct.pci_dev** %216, align 8
  %218 = call i32 @pci_enable_msi(%struct.pci_dev* %217)
  %219 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %220 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %219, i32 0, i32 2
  %221 = load %struct.pci_dev*, %struct.pci_dev** %220, align 8
  %222 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @il_isr, align 4
  %225 = load i32, i32* @IRQF_SHARED, align 4
  %226 = load i32, i32* @DRV_NAME, align 4
  %227 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %228 = call i32 @request_irq(i32 %223, i32 %224, i32 %225, i32 %226, %struct.il_priv* %227)
  store i32 %228, i32* %6, align 4
  %229 = load i32, i32* %6, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %204
  %232 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %233 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %232, i32 0, i32 2
  %234 = load %struct.pci_dev*, %struct.pci_dev** %233, align 8
  %235 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %236)
  br label %319

238:                                              ; preds = %204
  %239 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %240 = call i32 @il4965_setup_deferred_work(%struct.il_priv* %239)
  %241 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %242 = call i32 @il4965_setup_handlers(%struct.il_priv* %241)
  %243 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %244 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %243, i32 0, i32 2
  %245 = load %struct.pci_dev*, %struct.pci_dev** %244, align 8
  %246 = load i32, i32* @PCI_COMMAND, align 4
  %247 = call i32 @pci_read_config_word(%struct.pci_dev* %245, i32 %246, i32* %11)
  %248 = load i32, i32* %11, align 4
  %249 = load i32, i32* @PCI_COMMAND_INTX_DISABLE, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %263

252:                                              ; preds = %238
  %253 = load i32, i32* @PCI_COMMAND_INTX_DISABLE, align 4
  %254 = xor i32 %253, -1
  %255 = load i32, i32* %11, align 4
  %256 = and i32 %255, %254
  store i32 %256, i32* %11, align 4
  %257 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %258 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %257, i32 0, i32 2
  %259 = load %struct.pci_dev*, %struct.pci_dev** %258, align 8
  %260 = load i32, i32* @PCI_COMMAND, align 4
  %261 = load i32, i32* %11, align 4
  %262 = call i32 @pci_write_config_word(%struct.pci_dev* %259, i32 %260, i32 %261)
  br label %263

263:                                              ; preds = %252, %238
  %264 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %265 = call i32 @il_enable_rfkill_int(%struct.il_priv* %264)
  %266 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %267 = load i32, i32* @CSR_GP_CNTRL, align 4
  %268 = call i32 @_il_rd(%struct.il_priv* %266, i32 %267)
  %269 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_HW_RF_KILL_SW, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %263
  %273 = load i32, i32* @S_RFKILL, align 4
  %274 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %275 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %274, i32 0, i32 5
  %276 = call i32 @clear_bit(i32 %273, i32* %275)
  br label %282

277:                                              ; preds = %263
  %278 = load i32, i32* @S_RFKILL, align 4
  %279 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %280 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %279, i32 0, i32 5
  %281 = call i32 @set_bit(i32 %278, i32* %280)
  br label %282

282:                                              ; preds = %277, %272
  %283 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %284 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %283, i32 0, i32 1
  %285 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %284, align 8
  %286 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %285, i32 0, i32 0
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %286, align 8
  %288 = load i32, i32* @S_RFKILL, align 4
  %289 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %290 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %289, i32 0, i32 5
  %291 = call i32 @test_bit(i32 %288, i32* %290)
  %292 = call i32 @wiphy_rfkill_set_hw_state(%struct.TYPE_6__* %287, i32 %291)
  %293 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %294 = call i32 @il_power_initialize(%struct.il_priv* %293)
  %295 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %296 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %295, i32 0, i32 4
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 0
  %298 = call i32 @init_completion(i32* %297)
  %299 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %300 = call i32 @il4965_request_firmware(%struct.il_priv* %299, i32 1)
  store i32 %300, i32* %6, align 4
  %301 = load i32, i32* %6, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %282
  br label %305

304:                                              ; preds = %282
  store i32 0, i32* %3, align 4
  br label %349

305:                                              ; preds = %303
  %306 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %307 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %306, i32 0, i32 3
  %308 = load i32*, i32** %307, align 8
  %309 = call i32 @destroy_workqueue(i32* %308)
  %310 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %311 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %310, i32 0, i32 3
  store i32* null, i32** %311, align 8
  %312 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %313 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %312, i32 0, i32 2
  %314 = load %struct.pci_dev*, %struct.pci_dev** %313, align 8
  %315 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %318 = call i32 @free_irq(i32 %316, %struct.il_priv* %317)
  br label %319

319:                                              ; preds = %305, %231
  %320 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %321 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %320, i32 0, i32 2
  %322 = load %struct.pci_dev*, %struct.pci_dev** %321, align 8
  %323 = call i32 @pci_disable_msi(%struct.pci_dev* %322)
  %324 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %325 = call i32 @il4965_uninit_drv(%struct.il_priv* %324)
  br label %326

326:                                              ; preds = %319, %203, %165
  %327 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %328 = call i32 @il_eeprom_free(%struct.il_priv* %327)
  br label %329

329:                                              ; preds = %326, %158, %149
  %330 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %331 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = call i32 @iounmap(i64 %332)
  br label %334

334:                                              ; preds = %329, %108
  %335 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %336 = call i32 @pci_set_drvdata(%struct.pci_dev* %335, %struct.il_priv* null)
  %337 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %338 = call i32 @pci_release_regions(%struct.pci_dev* %337)
  br label %339

339:                                              ; preds = %334, %95, %86
  %340 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %341 = call i32 @pci_disable_device(%struct.pci_dev* %340)
  br label %342

342:                                              ; preds = %339, %55
  %343 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %344 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %343, i32 0, i32 1
  %345 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %344, align 8
  %346 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %345)
  br label %347

347:                                              ; preds = %342, %19
  %348 = load i32, i32* %6, align 4
  store i32 %348, i32* %3, align 4
  br label %349

349:                                              ; preds = %347, %304
  %350 = load i32, i32* %3, align 4
  ret i32 %350
}

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32*) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @D_INFO(i8*, ...) #1

declare dso_local i32 @pci_disable_link_state(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @IL_WARN(i8*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.il_priv*) #1

declare dso_local i64 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @_il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @il4965_hw_detect(%struct.il_priv*) #1

declare dso_local i32 @IL_INFO(i8*, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @il4965_prepare_card_hw(%struct.il_priv*) #1

declare dso_local i32 @il_eeprom_init(%struct.il_priv*) #1

declare dso_local i32 @IL_ERR(i8*, ...) #1

declare dso_local i32 @il4965_eeprom_check_version(%struct.il_priv*) #1

declare dso_local i32 @il4965_eeprom_get_mac(%struct.il_priv*, i64) #1

declare dso_local i32 @il4965_set_hw_params(%struct.il_priv*) #1

declare dso_local i32 @il4965_init_drv(%struct.il_priv*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @il_disable_interrupts(%struct.il_priv*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.il_priv*) #1

declare dso_local i32 @il4965_setup_deferred_work(%struct.il_priv*) #1

declare dso_local i32 @il4965_setup_handlers(%struct.il_priv*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @il_enable_rfkill_int(%struct.il_priv*) #1

declare dso_local i32 @_il_rd(%struct.il_priv*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wiphy_rfkill_set_hw_state(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @il_power_initialize(%struct.il_priv*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @il4965_request_firmware(%struct.il_priv*, i32) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.il_priv*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @il4965_uninit_drv(%struct.il_priv*) #1

declare dso_local i32 @il_eeprom_free(%struct.il_priv*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
