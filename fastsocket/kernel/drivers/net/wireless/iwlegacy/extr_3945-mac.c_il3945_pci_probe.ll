; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_pci_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i64 }
%struct.pci_dev = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.pci_device_id = type { i64 }
%struct.il_priv = type { i64, %struct.ieee80211_hw*, %struct.pci_dev*, i32*, %struct.TYPE_8__, %struct.TYPE_7__*, i32, %struct.il_cfg*, i64, i32, i32, i32*, i32*, i32 }
%struct.ieee80211_hw = type { %struct.il_priv* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32* }
%struct.il_cfg = type { i32 }
%struct.il3945_eeprom = type { i64 }

@il3945_mac_ops = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ENOMEM = common dso_local global i32 0, align 4
@IL39_CMD_QUEUE_NUM = common dso_local global i32 0, align 4
@il3945_mod_params = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [19 x i8] c"Disabling hw_scan\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"*** LOAD DRIVER ***\0A\00", align 1
@il3945_ops = common dso_local global i32 0, align 4
@CSR_INI_SET_MASK = common dso_local global i32 0, align 4
@PCIE_LINK_STATE_L0S = common dso_local global i32 0, align 4
@PCIE_LINK_STATE_L1 = common dso_local global i32 0, align 4
@PCIE_LINK_STATE_CLKPM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"No suitable DMA available.\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"pci_resource_len = 0x%08llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"pci_resource_base = %p\0A\00", align 1
@CSR_RESET = common dso_local global i32 0, align 4
@CSR_RESET_REG_FLAG_NEVO_RESET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Unable to init EEPROM\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"MAC address: %pM\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"failed to set hw settings\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"initializing driver failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Detected Intel Wireless WiFi Link %s\0A\00", align 1
@il_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"Error allocating IRQ %d\0A\00", align 1
@il3945_attribute_group = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [42 x i8] c"failed to create sysfs device attributes\0A\00", align 1
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [52 x i8] c"failed to create debugfs files. Ignoring error: %d\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@il3945_debugfs_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @il3945_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.il_priv*, align 8
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca %struct.il_cfg*, align 8
  %10 = alloca %struct.il3945_eeprom*, align 8
  %11 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %13 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.il_cfg*
  store %struct.il_cfg* %15, %struct.il_cfg** %9, align 8
  %16 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 104, %struct.TYPE_10__* @il3945_mac_ops)
  store %struct.ieee80211_hw* %16, %struct.ieee80211_hw** %8, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %18 = icmp ne %struct.ieee80211_hw* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %303

22:                                               ; preds = %2
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %24 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %23, i32 0, i32 0
  %25 = load %struct.il_priv*, %struct.il_priv** %24, align 8
  store %struct.il_priv* %25, %struct.il_priv** %7, align 8
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %27 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %28 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %27, i32 0, i32 1
  store %struct.ieee80211_hw* %26, %struct.ieee80211_hw** %28, align 8
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 1
  %32 = call i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw* %29, %struct.TYPE_11__* %31)
  %33 = load i32, i32* @IL39_CMD_QUEUE_NUM, align 4
  %34 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %35 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %34, i32 0, i32 13
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @il3945_mod_params, i32 0, i32 0), align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @il3945_mac_ops, i32 0, i32 0), align 8
  br label %40

40:                                               ; preds = %38, %22
  %41 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.il_cfg*, %struct.il_cfg** %9, align 8
  %43 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %44 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %43, i32 0, i32 7
  store %struct.il_cfg* %42, %struct.il_cfg** %44, align 8
  %45 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %46 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %45, i32 0, i32 12
  store i32* @il3945_ops, i32** %46, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %49 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %48, i32 0, i32 2
  store %struct.pci_dev* %47, %struct.pci_dev** %49, align 8
  %50 = load i32, i32* @CSR_INI_SET_MASK, align 4
  %51 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %52 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %51, i32 0, i32 10
  store i32 %50, i32* %52, align 4
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = load i32, i32* @PCIE_LINK_STATE_L0S, align 4
  %55 = load i32, i32* @PCIE_LINK_STATE_L1, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @PCIE_LINK_STATE_CLKPM, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @pci_disable_link_state(%struct.pci_dev* %53, i32 %58)
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = call i64 @pci_enable_device(%struct.pci_dev* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %40
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %298

66:                                               ; preds = %40
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = call i32 @pci_set_master(%struct.pci_dev* %67)
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = call i32 @DMA_BIT_MASK(i32 32)
  %71 = call i32 @pci_set_dma_mask(%struct.pci_dev* %69, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %66
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = call i32 @DMA_BIT_MASK(i32 32)
  %77 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %75, i32 %76)
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %74, %66
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = call i32 @IL_WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %293

83:                                               ; preds = %78
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %86 = call i32 @pci_set_drvdata(%struct.pci_dev* %84, %struct.il_priv* %85)
  %87 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %88 = load i32, i32* @DRV_NAME, align 4
  %89 = call i32 @pci_request_regions(%struct.pci_dev* %87, i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %293

93:                                               ; preds = %83
  %94 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %95 = call i64 @pci_ioremap_bar(%struct.pci_dev* %94, i32 0)
  %96 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %97 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %99 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %93
  %103 = load i32, i32* @ENODEV, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  br label %290

105:                                              ; preds = %93
  %106 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %107 = call i64 @pci_resource_len(%struct.pci_dev* %106, i32 0)
  %108 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %107)
  %109 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %110 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %111)
  %113 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %114 = call i32 @pci_write_config_byte(%struct.pci_dev* %113, i32 65, i32 0)
  %115 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %116 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %115, i32 0, i32 9
  %117 = call i32 @spin_lock_init(i32* %116)
  %118 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %119 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %118, i32 0, i32 6
  %120 = call i32 @spin_lock_init(i32* %119)
  %121 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %122 = load i32, i32* @CSR_RESET, align 4
  %123 = load i32, i32* @CSR_RESET_REG_FLAG_NEVO_RESET, align 4
  %124 = call i32 @_il_wr(%struct.il_priv* %121, i32 %122, i32 %123)
  %125 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %126 = call i32 @il_eeprom_init(%struct.il_priv* %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %105
  %130 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %285

131:                                              ; preds = %105
  %132 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %133 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %132, i32 0, i32 8
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to %struct.il3945_eeprom*
  store %struct.il3945_eeprom* %135, %struct.il3945_eeprom** %10, align 8
  %136 = load %struct.il3945_eeprom*, %struct.il3945_eeprom** %10, align 8
  %137 = getelementptr inbounds %struct.il3945_eeprom, %struct.il3945_eeprom* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i64 %138)
  %140 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %141 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %140, i32 0, i32 1
  %142 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %141, align 8
  %143 = load %struct.il3945_eeprom*, %struct.il3945_eeprom** %10, align 8
  %144 = getelementptr inbounds %struct.il3945_eeprom, %struct.il3945_eeprom* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw* %142, i64 %145)
  %147 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %148 = call i64 @il3945_hw_set_hw_params(%struct.il_priv* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %131
  %151 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %282

152:                                              ; preds = %131
  %153 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %154 = call i32 @il3945_init_drv(%struct.il_priv* %153)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %279

159:                                              ; preds = %152
  %160 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %161 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %160, i32 0, i32 7
  %162 = load %struct.il_cfg*, %struct.il_cfg** %161, align 8
  %163 = getelementptr inbounds %struct.il_cfg, %struct.il_cfg* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @IL_INFO(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %164)
  %166 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %167 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %166, i32 0, i32 6
  %168 = load i64, i64* %11, align 8
  %169 = call i32 @spin_lock_irqsave(i32* %167, i64 %168)
  %170 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %171 = call i32 @il_disable_interrupts(%struct.il_priv* %170)
  %172 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %173 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %172, i32 0, i32 6
  %174 = load i64, i64* %11, align 8
  %175 = call i32 @spin_unlock_irqrestore(i32* %173, i64 %174)
  %176 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %177 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %176, i32 0, i32 2
  %178 = load %struct.pci_dev*, %struct.pci_dev** %177, align 8
  %179 = call i32 @pci_enable_msi(%struct.pci_dev* %178)
  %180 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %181 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %180, i32 0, i32 2
  %182 = load %struct.pci_dev*, %struct.pci_dev** %181, align 8
  %183 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @il_isr, align 4
  %186 = load i32, i32* @IRQF_SHARED, align 4
  %187 = load i32, i32* @DRV_NAME, align 4
  %188 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %189 = call i32 @request_irq(i32 %184, i32 %185, i32 %186, i32 %187, %struct.il_priv* %188)
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %159
  %193 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %194 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %193, i32 0, i32 2
  %195 = load %struct.pci_dev*, %struct.pci_dev** %194, align 8
  %196 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %197)
  br label %270

199:                                              ; preds = %159
  %200 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %201 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  %203 = call i32 @sysfs_create_group(i32* %202, i32* @il3945_attribute_group)
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* %6, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %199
  %207 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  br label %262

208:                                              ; preds = %199
  %209 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %210 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %211 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %210, i32 0, i32 5
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %211, align 8
  %213 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 5
  %218 = call i32 @il_set_rxon_channel(%struct.il_priv* %209, i32* %217)
  %219 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %220 = call i32 @il3945_setup_deferred_work(%struct.il_priv* %219)
  %221 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %222 = call i32 @il3945_setup_handlers(%struct.il_priv* %221)
  %223 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %224 = call i32 @il_power_initialize(%struct.il_priv* %223)
  %225 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %226 = call i32 @il_enable_interrupts(%struct.il_priv* %225)
  %227 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %228 = call i32 @il3945_setup_mac(%struct.il_priv* %227)
  store i32 %228, i32* %6, align 4
  %229 = load i32, i32* %6, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %208
  br label %251

232:                                              ; preds = %208
  %233 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %234 = load i32, i32* @DRV_NAME, align 4
  %235 = call i32 @il_dbgfs_register(%struct.il_priv* %233, i32 %234)
  store i32 %235, i32* %6, align 4
  %236 = load i32, i32* %6, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %232
  %239 = load i32, i32* %6, align 4
  %240 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0), i32 %239)
  br label %241

241:                                              ; preds = %238, %232
  %242 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %243 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %242, i32 0, i32 3
  %244 = load i32*, i32** %243, align 8
  %245 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %246 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %245, i32 0, i32 4
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 0
  %248 = load i32, i32* @HZ, align 4
  %249 = mul nsw i32 2, %248
  %250 = call i32 @queue_delayed_work(i32* %244, i32* %247, i32 %249)
  store i32 0, i32* %3, align 4
  br label %305

251:                                              ; preds = %231
  %252 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %253 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %252, i32 0, i32 3
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 @destroy_workqueue(i32* %254)
  %256 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %257 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %256, i32 0, i32 3
  store i32* null, i32** %257, align 8
  %258 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %259 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 0
  %261 = call i32 @sysfs_remove_group(i32* %260, i32* @il3945_attribute_group)
  br label %262

262:                                              ; preds = %251, %206
  %263 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %264 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %263, i32 0, i32 2
  %265 = load %struct.pci_dev*, %struct.pci_dev** %264, align 8
  %266 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %269 = call i32 @free_irq(i32 %267, %struct.il_priv* %268)
  br label %270

270:                                              ; preds = %262, %192
  %271 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %272 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %271, i32 0, i32 2
  %273 = load %struct.pci_dev*, %struct.pci_dev** %272, align 8
  %274 = call i32 @pci_disable_msi(%struct.pci_dev* %273)
  %275 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %276 = call i32 @il_free_geos(%struct.il_priv* %275)
  %277 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %278 = call i32 @il_free_channel_map(%struct.il_priv* %277)
  br label %279

279:                                              ; preds = %270, %157
  %280 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %281 = call i32 @il3945_unset_hw_params(%struct.il_priv* %280)
  br label %282

282:                                              ; preds = %279, %150
  %283 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %284 = call i32 @il_eeprom_free(%struct.il_priv* %283)
  br label %285

285:                                              ; preds = %282, %129
  %286 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %287 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = call i32 @iounmap(i64 %288)
  br label %290

290:                                              ; preds = %285, %102
  %291 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %292 = call i32 @pci_release_regions(%struct.pci_dev* %291)
  br label %293

293:                                              ; preds = %290, %92, %81
  %294 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %295 = call i32 @pci_set_drvdata(%struct.pci_dev* %294, %struct.il_priv* null)
  %296 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %297 = call i32 @pci_disable_device(%struct.pci_dev* %296)
  br label %298

298:                                              ; preds = %293, %63
  %299 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %300 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %299, i32 0, i32 1
  %301 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %300, align 8
  %302 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %301)
  br label %303

303:                                              ; preds = %298, %19
  %304 = load i32, i32* %6, align 4
  store i32 %304, i32* %3, align 4
  br label %305

305:                                              ; preds = %303, %241
  %306 = load i32, i32* %3, align 4
  ret i32 %306
}

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw*, %struct.TYPE_11__*) #1

declare dso_local i32 @D_INFO(i8*, ...) #1

declare dso_local i32 @pci_disable_link_state(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @IL_WARN(i8*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.il_priv*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @_il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @il_eeprom_init(%struct.il_priv*) #1

declare dso_local i32 @IL_ERR(i8*, ...) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw*, i64) #1

declare dso_local i64 @il3945_hw_set_hw_params(%struct.il_priv*) #1

declare dso_local i32 @il3945_init_drv(%struct.il_priv*) #1

declare dso_local i32 @IL_INFO(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @il_disable_interrupts(%struct.il_priv*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.il_priv*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @il_set_rxon_channel(%struct.il_priv*, i32*) #1

declare dso_local i32 @il3945_setup_deferred_work(%struct.il_priv*) #1

declare dso_local i32 @il3945_setup_handlers(%struct.il_priv*) #1

declare dso_local i32 @il_power_initialize(%struct.il_priv*) #1

declare dso_local i32 @il_enable_interrupts(%struct.il_priv*) #1

declare dso_local i32 @il3945_setup_mac(%struct.il_priv*) #1

declare dso_local i32 @il_dbgfs_register(%struct.il_priv*, i32) #1

declare dso_local i32 @queue_delayed_work(i32*, i32*, i32) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.il_priv*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @il_free_geos(%struct.il_priv*) #1

declare dso_local i32 @il_free_channel_map(%struct.il_priv*) #1

declare dso_local i32 @il3945_unset_hw_params(%struct.il_priv*) #1

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
