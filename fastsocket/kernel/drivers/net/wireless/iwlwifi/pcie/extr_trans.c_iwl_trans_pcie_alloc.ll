; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32, i32, i64, i32, i32*, i32, i32, %struct.iwl_cfg*, i32* }
%struct.pci_dev = type { i32, i32, i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.iwl_cfg = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32, %struct.pci_dev*, i32, i32, i32, i32, %struct.iwl_trans* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@trans_ops_pcie = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PCIE_LINK_STATE_L0S = common dso_local global i32 0, align 4
@PCIE_LINK_STATE_L1 = common dso_local global i32 0, align 4
@PCIE_LINK_STATE_CLKPM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"No suitable DMA available\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"pci_request_regions failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"pci_ioremap_bar failed\0A\00", align 1
@PCI_CFG_RETRY_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"pci_enable_msi failed(0X%x)\0A\00", align 1
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_INTX_DISABLE = common dso_local global i32 0, align 4
@CSR_HW_REV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"PCI ID: 0x%04X:0x%04X\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"iwl_cmd_pool:%s\00", align 1
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@CSR_INI_SET_MASK = common dso_local global i32 0, align 4
@iwl_pcie_isr_ict = common dso_local global i32 0, align 4
@iwl_pcie_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Error allocating IRQ %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iwl_trans* @iwl_trans_pcie_alloc(%struct.pci_dev* %0, %struct.pci_device_id* %1, %struct.iwl_cfg* %2) #0 {
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_device_id*, align 8
  %7 = alloca %struct.iwl_cfg*, align 8
  %8 = alloca %struct.iwl_trans_pcie*, align 8
  %9 = alloca %struct.iwl_trans*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %6, align 8
  store %struct.iwl_cfg* %2, %struct.iwl_cfg** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.iwl_trans* @kzalloc(i32 96, i32 %12)
  store %struct.iwl_trans* %13, %struct.iwl_trans** %9, align 8
  %14 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %15 = icmp ne %struct.iwl_trans* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.iwl_trans* null, %struct.iwl_trans** %4, align 8
  br label %249

17:                                               ; preds = %3
  %18 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %19 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %18)
  store %struct.iwl_trans_pcie* %19, %struct.iwl_trans_pcie** %8, align 8
  %20 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %21 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %20, i32 0, i32 8
  store i32* @trans_ops_pcie, i32** %21, align 8
  %22 = load %struct.iwl_cfg*, %struct.iwl_cfg** %7, align 8
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %24 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %23, i32 0, i32 7
  store %struct.iwl_cfg* %22, %struct.iwl_cfg** %24, align 8
  %25 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %26 = call i32 @trans_lockdep_init(%struct.iwl_trans* %25)
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %28 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %29 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %28, i32 0, i32 7
  store %struct.iwl_trans* %27, %struct.iwl_trans** %29, align 8
  %30 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %31 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %30, i32 0, i32 6
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %34 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %33, i32 0, i32 5
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %37 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %36, i32 0, i32 4
  %38 = call i32 @init_waitqueue_head(i32* %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %40 = call i64 @pci_enable_device(%struct.pci_dev* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %17
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %11, align 4
  br label %246

45:                                               ; preds = %17
  %46 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %47 = load i32, i32* @PCIE_LINK_STATE_L0S, align 4
  %48 = load i32, i32* @PCIE_LINK_STATE_L1, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @PCIE_LINK_STATE_CLKPM, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @pci_disable_link_state(%struct.pci_dev* %46, i32 %51)
  %53 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %54 = call i32 @pci_set_master(%struct.pci_dev* %53)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %56 = call i32 @DMA_BIT_MASK(i32 36)
  %57 = call i32 @pci_set_dma_mask(%struct.pci_dev* %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %45
  %61 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %62 = call i32 @DMA_BIT_MASK(i32 36)
  %63 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %61, i32 %62)
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %60, %45
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  %68 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %69 = call i32 @DMA_BIT_MASK(i32 32)
  %70 = call i32 @pci_set_dma_mask(%struct.pci_dev* %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %67
  %74 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %75 = call i32 @DMA_BIT_MASK(i32 32)
  %76 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %74, i32 %75)
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %73, %67
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 3
  %83 = call i32 (i32*, i8*, ...) @dev_err(i32* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %243

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %64
  %86 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %87 = load i32, i32* @DRV_NAME, align 4
  %88 = call i32 @pci_request_regions(%struct.pci_dev* %86, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 3
  %94 = call i32 (i32*, i8*, ...) @dev_err(i32* %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %243

95:                                               ; preds = %85
  %96 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %97 = call i32 @pci_ioremap_bar(%struct.pci_dev* %96, i32 0)
  %98 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %99 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 8
  %100 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %101 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %95
  %105 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %106 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %105, i32 0, i32 3
  %107 = call i32 (i32*, i8*, ...) @dev_err(i32* %106, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i32, i32* @ENODEV, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %11, align 4
  br label %240

110:                                              ; preds = %95
  %111 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %112 = load i32, i32* @PCI_CFG_RETRY_TIMEOUT, align 4
  %113 = call i32 @pci_write_config_byte(%struct.pci_dev* %111, i32 %112, i32 0)
  %114 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %115 = call i32 @pci_enable_msi(%struct.pci_dev* %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %140

118:                                              ; preds = %110
  %119 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %120 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %119, i32 0, i32 3
  %121 = load i32, i32* %11, align 4
  %122 = call i32 (i32*, i8*, ...) @dev_err(i32* %120, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  %123 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %124 = load i32, i32* @PCI_COMMAND, align 4
  %125 = call i32 @pci_read_config_word(%struct.pci_dev* %123, i32 %124, i32* %10)
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @PCI_COMMAND_INTX_DISABLE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %118
  %131 = load i32, i32* @PCI_COMMAND_INTX_DISABLE, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %10, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %10, align 4
  %135 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %136 = load i32, i32* @PCI_COMMAND, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @pci_write_config_word(%struct.pci_dev* %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %130, %118
  br label %140

140:                                              ; preds = %139, %110
  %141 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %142 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %141, i32 0, i32 3
  %143 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %144 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %143, i32 0, i32 4
  store i32* %142, i32** %144, align 8
  %145 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %146 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %147 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %146, i32 0, i32 2
  store %struct.pci_dev* %145, %struct.pci_dev** %147, align 8
  %148 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %149 = load i32, i32* @CSR_HW_REV, align 4
  %150 = call i32 @iwl_read32(%struct.iwl_trans* %148, i32 %149)
  %151 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %152 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %151, i32 0, i32 6
  store i32 %150, i32* %152, align 4
  %153 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %154 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = shl i32 %155, 16
  %157 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %158 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %156, %159
  %161 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %162 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %164 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %167 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %170 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %165, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %168, i32 %171)
  %173 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %174 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %173, i32 0, i32 1
  %175 = call i32 @init_waitqueue_head(i32* %174)
  %176 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %177 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %180 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %179, i32 0, i32 4
  %181 = load i32*, i32** %180, align 8
  %182 = call i8* @dev_name(i32* %181)
  %183 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %178, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %182)
  %184 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %185 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %184, i32 0, i32 2
  store i64 0, i64* %185, align 8
  %186 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %187 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %190 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = add i64 4, %191
  %193 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %194 = call i32 @kmem_cache_create(i32 %188, i64 %192, i32 8, i32 %193, i32* null)
  %195 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %196 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %198 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %140
  br label %237

202:                                              ; preds = %140
  %203 = load i32, i32* @CSR_INI_SET_MASK, align 4
  %204 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %205 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %207 = call i64 @iwl_pcie_alloc_ict(%struct.iwl_trans* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %202
  br label %232

210:                                              ; preds = %202
  %211 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %212 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @iwl_pcie_isr_ict, align 4
  %215 = load i32, i32* @iwl_pcie_irq_handler, align 4
  %216 = load i32, i32* @IRQF_SHARED, align 4
  %217 = load i32, i32* @DRV_NAME, align 4
  %218 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %219 = call i64 @request_threaded_irq(i32 %213, i32 %214, i32 %215, i32 %216, i32 %217, %struct.iwl_trans* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %210
  %222 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %223 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %224 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @IWL_ERR(%struct.iwl_trans* %222, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %225)
  br label %229

227:                                              ; preds = %210
  %228 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  store %struct.iwl_trans* %228, %struct.iwl_trans** %4, align 8
  br label %249

229:                                              ; preds = %221
  %230 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %231 = call i32 @iwl_pcie_free_ict(%struct.iwl_trans* %230)
  br label %232

232:                                              ; preds = %229, %209
  %233 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %234 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @kmem_cache_destroy(i32 %235)
  br label %237

237:                                              ; preds = %232, %201
  %238 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %239 = call i32 @pci_disable_msi(%struct.pci_dev* %238)
  br label %240

240:                                              ; preds = %237, %104
  %241 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %242 = call i32 @pci_release_regions(%struct.pci_dev* %241)
  br label %243

243:                                              ; preds = %240, %91, %80
  %244 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %245 = call i32 @pci_disable_device(%struct.pci_dev* %244)
  br label %246

246:                                              ; preds = %243, %42
  %247 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %248 = call i32 @kfree(%struct.iwl_trans* %247)
  store %struct.iwl_trans* null, %struct.iwl_trans** %4, align 8
  br label %249

249:                                              ; preds = %246, %227, %16
  %250 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  ret %struct.iwl_trans* %250
}

declare dso_local %struct.iwl_trans* @kzalloc(i32, i32) #1

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @trans_lockdep_init(%struct.iwl_trans*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_link_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @kmem_cache_create(i32, i64, i32, i32, i32*) #1

declare dso_local i64 @iwl_pcie_alloc_ict(%struct.iwl_trans*) #1

declare dso_local i64 @request_threaded_irq(i32, i32, i32, i32, i32, %struct.iwl_trans*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @iwl_pcie_free_ict(%struct.iwl_trans*) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.iwl_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
