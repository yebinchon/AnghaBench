; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.smsc9420_pdata = type { i32, i32, i32, i32 }

@IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"dev_addr is not a valid MAC address\00", align 1
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@INT_CFG = common dso_local global i32 0, align 4
@INT_CFG_IRQ_EN_ = common dso_local global i32 0, align 4
@INT_CTL = common dso_local global i32 0, align 4
@DMAC_INTR_ENA = common dso_local global i32 0, align 4
@INT_STAT = common dso_local global i32 0, align 4
@smsc9420_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unable to use IRQ = %d\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MAC_CR = common dso_local global i32 0, align 4
@GPIO_CFG = common dso_local global i32 0, align 4
@GPIO_CFG_LED_3_ = common dso_local global i32 0, align 4
@GPIO_CFG_LED_2_ = common dso_local global i32 0, align 4
@GPIO_CFG_LED_1_ = common dso_local global i32 0, align 4
@BUS_MODE_DMA_BURST_LENGTH_16 = common dso_local global i32 0, align 4
@BUS_MODE = common dso_local global i32 0, align 4
@BUS_CFG = common dso_local global i32 0, align 4
@BUS_CFG_RXTXWEIGHT_4_1 = common dso_local global i32 0, align 4
@DMAC_CONTROL = common dso_local global i32 0, align 4
@DMAC_CONTROL_SF_ = common dso_local global i32 0, align 4
@DMAC_CONTROL_OSF_ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Testing ISR using IRQ %d\00", align 1
@INT_CFG_INT_DEAS_MASK = common dso_local global i32 0, align 4
@INT_DEAS_TIME = common dso_local global i32 0, align 4
@INT_CTL_SW_INT_EN_ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"ISR failed signaling test\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"ISR passed test using IRQ %d\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to Initialize tx dma ring\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to Initialize rx dma ring\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Failed to initialize Phy\00", align 1
@MAC_CR_TXEN_ = common dso_local global i32 0, align 4
@MAC_CR_RXEN_ = common dso_local global i32 0, align 4
@DMAC_CONTROL_ST_ = common dso_local global i32 0, align 4
@DMAC_CONTROL_SR_ = common dso_local global i32 0, align 4
@DMAC_INTR_ENA_TX_ = common dso_local global i32 0, align 4
@DMAC_INTR_ENA_RX_ = common dso_local global i32 0, align 4
@DMAC_INTR_ENA_NIS_ = common dso_local global i32 0, align 4
@RX_POLL_DEMAND = common dso_local global i32 0, align 4
@BUS_MODE_DBO_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @smsc9420_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc9420_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.smsc9420_pdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = icmp ne %struct.net_device* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call %struct.smsc9420_pdata* @netdev_priv(%struct.net_device* %19)
  store %struct.smsc9420_pdata* %20, %struct.smsc9420_pdata** %4, align 8
  %21 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %22 = icmp ne %struct.smsc9420_pdata* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @is_valid_ether_addr(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @IFUP, align 4
  %33 = call i32 (i32, i8*, ...) @smsc_warn(i32 %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EADDRNOTAVAIL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %12, align 4
  br label %324

36:                                               ; preds = %1
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @netif_carrier_off(%struct.net_device* %37)
  %39 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %40 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %39, i32 0, i32 1
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %44 = load i32, i32* @INT_CFG, align 4
  %45 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %43, i32 %44)
  %46 = load i32, i32* @INT_CFG_IRQ_EN_, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  store i32 %48, i32* %8, align 4
  %49 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %50 = load i32, i32* @INT_CFG, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %49, i32 %50, i32 %51)
  %53 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %54 = load i32, i32* @INT_CTL, align 4
  %55 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %53, i32 %54, i32 0)
  %56 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %57 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %56, i32 0, i32 1
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %61 = load i32, i32* @DMAC_INTR_ENA, align 4
  %62 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %60, i32 %61, i32 0)
  %63 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %64 = load i32, i32* @INT_STAT, align 4
  %65 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %63, i32 %64, i32 -1)
  %66 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %67 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %66)
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @smsc9420_isr, align 4
  %72 = load i32, i32* @IRQF_SHARED, align 4
  %73 = load i32, i32* @IRQF_DISABLED, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @DRV_NAME, align 4
  %76 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %77 = call i64 @request_irq(i32 %70, i32 %71, i32 %74, i32 %75, %struct.smsc9420_pdata* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %36
  %80 = load i32, i32* @IFUP, align 4
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, ...) @smsc_warn(i32 %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %12, align 4
  br label %324

87:                                               ; preds = %36
  %88 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %89 = call i32 @smsc9420_dmac_soft_reset(%struct.smsc9420_pdata* %88)
  %90 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %91 = load i32, i32* @MAC_CR, align 4
  %92 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %90, i32 %91, i32 0)
  %93 = load %struct.net_device*, %struct.net_device** %3, align 8
  %94 = call i32 @smsc9420_set_mac_address(%struct.net_device* %93)
  %95 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %96 = load i32, i32* @GPIO_CFG, align 4
  %97 = load i32, i32* @GPIO_CFG_LED_3_, align 4
  %98 = load i32, i32* @GPIO_CFG_LED_2_, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @GPIO_CFG_LED_1_, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %95, i32 %96, i32 %101)
  %103 = load i32, i32* @BUS_MODE_DMA_BURST_LENGTH_16, align 4
  store i32 %103, i32* %5, align 4
  %104 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %105 = load i32, i32* @BUS_MODE, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %104, i32 %105, i32 %106)
  %108 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %109 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %108)
  %110 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %111 = load i32, i32* @BUS_CFG, align 4
  %112 = load i32, i32* @BUS_CFG_RXTXWEIGHT_4_1, align 4
  %113 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %110, i32 %111, i32 %112)
  %114 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %115 = load i32, i32* @DMAC_CONTROL, align 4
  %116 = load i32, i32* @DMAC_CONTROL_SF_, align 4
  %117 = load i32, i32* @DMAC_CONTROL_OSF_, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %114, i32 %115, i32 %118)
  %120 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %121 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %120)
  %122 = load i32, i32* @IFUP, align 4
  %123 = load %struct.net_device*, %struct.net_device** %3, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @smsc_dbg(i32 %122, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %128 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %127, i32 0, i32 0
  store i32 0, i32* %128, align 4
  %129 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %130 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %129, i32 0, i32 1
  %131 = load i64, i64* %11, align 8
  %132 = call i32 @spin_lock_irqsave(i32* %130, i64 %131)
  %133 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %134 = load i32, i32* @INT_CFG, align 4
  %135 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %133, i32 %134)
  %136 = load i32, i32* @INT_CFG_IRQ_EN_, align 4
  %137 = or i32 %135, %136
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* @INT_CFG_INT_DEAS_MASK, align 4
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %8, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* @INT_DEAS_TIME, align 4
  %143 = load i32, i32* @INT_CFG_INT_DEAS_MASK, align 4
  %144 = and i32 %142, %143
  %145 = load i32, i32* %8, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %8, align 4
  %147 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %148 = load i32, i32* @INT_CFG, align 4
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %147, i32 %148, i32 %149)
  %151 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %152 = load i32, i32* @INT_CTL, align 4
  %153 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %151, i32 %152)
  %154 = load i32, i32* @INT_CTL_SW_INT_EN_, align 4
  %155 = or i32 %153, %154
  store i32 %155, i32* %10, align 4
  %156 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %157 = load i32, i32* @INT_CTL, align 4
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %156, i32 %157, i32 %158)
  %160 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %161 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %160, i32 0, i32 1
  %162 = load i64, i64* %11, align 8
  %163 = call i32 @spin_unlock_irqrestore(i32* %161, i64 %162)
  %164 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %165 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %164)
  store i32 1000, i32* %13, align 4
  br label %166

166:                                              ; preds = %176, %87
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %13, align 4
  %169 = icmp ne i32 %167, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %166
  %171 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %172 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  br label %178

176:                                              ; preds = %170
  %177 = call i32 @msleep(i32 1)
  br label %166

178:                                              ; preds = %175, %166
  %179 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %180 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %179, i32 0, i32 1
  %181 = load i64, i64* %11, align 8
  %182 = call i32 @spin_lock_irqsave(i32* %180, i64 %181)
  %183 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %184 = load i32, i32* @INT_CFG, align 4
  %185 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %183, i32 %184)
  %186 = load i32, i32* @INT_CFG_IRQ_EN_, align 4
  %187 = xor i32 %186, -1
  %188 = and i32 %185, %187
  store i32 %188, i32* %8, align 4
  %189 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %190 = load i32, i32* @INT_CFG, align 4
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %189, i32 %190, i32 %191)
  %193 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %194 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %193, i32 0, i32 1
  %195 = load i64, i64* %11, align 8
  %196 = call i32 @spin_unlock_irqrestore(i32* %194, i64 %195)
  %197 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %198 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %206, label %201

201:                                              ; preds = %178
  %202 = load i32, i32* @IFUP, align 4
  %203 = call i32 (i32, i8*, ...) @smsc_warn(i32 %202, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %204 = load i32, i32* @ENODEV, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %12, align 4
  br label %318

206:                                              ; preds = %178
  %207 = load i32, i32* @IFUP, align 4
  %208 = load %struct.net_device*, %struct.net_device** %3, align 8
  %209 = getelementptr inbounds %struct.net_device, %struct.net_device* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @smsc_dbg(i32 %207, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %210)
  %212 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %213 = call i32 @smsc9420_alloc_tx_ring(%struct.smsc9420_pdata* %212)
  store i32 %213, i32* %12, align 4
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %206
  %217 = load i32, i32* @IFUP, align 4
  %218 = call i32 (i32, i8*, ...) @smsc_warn(i32 %217, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %219 = load i32, i32* @ENOMEM, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %12, align 4
  br label %318

221:                                              ; preds = %206
  %222 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %223 = call i32 @smsc9420_alloc_rx_ring(%struct.smsc9420_pdata* %222)
  store i32 %223, i32* %12, align 4
  %224 = load i32, i32* %12, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %221
  %227 = load i32, i32* @IFUP, align 4
  %228 = call i32 (i32, i8*, ...) @smsc_warn(i32 %227, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %229 = load i32, i32* @ENOMEM, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %12, align 4
  br label %315

231:                                              ; preds = %221
  %232 = load %struct.net_device*, %struct.net_device** %3, align 8
  %233 = call i32 @smsc9420_mii_init(%struct.net_device* %232)
  store i32 %233, i32* %12, align 4
  %234 = load i32, i32* %12, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %231
  %237 = load i32, i32* @IFUP, align 4
  %238 = call i32 (i32, i8*, ...) @smsc_warn(i32 %237, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %239 = load i32, i32* @ENODEV, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %12, align 4
  br label %312

241:                                              ; preds = %231
  %242 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %243 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @phy_start(i32 %244)
  %246 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %247 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %246, i32 0, i32 2
  %248 = call i32 @napi_enable(i32* %247)
  %249 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %250 = load i32, i32* @MAC_CR, align 4
  %251 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %249, i32 %250)
  %252 = load i32, i32* @MAC_CR_TXEN_, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @MAC_CR_RXEN_, align 4
  %255 = or i32 %253, %254
  store i32 %255, i32* %6, align 4
  %256 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %257 = load i32, i32* @MAC_CR, align 4
  %258 = load i32, i32* %6, align 4
  %259 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %256, i32 %257, i32 %258)
  %260 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %261 = load i32, i32* @DMAC_CONTROL, align 4
  %262 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %260, i32 %261)
  store i32 %262, i32* %7, align 4
  %263 = load i32, i32* @DMAC_CONTROL_ST_, align 4
  %264 = load i32, i32* @DMAC_CONTROL_SR_, align 4
  %265 = or i32 %263, %264
  %266 = load i32, i32* %7, align 4
  %267 = or i32 %266, %265
  store i32 %267, i32* %7, align 4
  %268 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %269 = load i32, i32* @DMAC_CONTROL, align 4
  %270 = load i32, i32* %7, align 4
  %271 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %268, i32 %269, i32 %270)
  %272 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %273 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %272)
  %274 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %275 = load i32, i32* @DMAC_INTR_ENA, align 4
  %276 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %274, i32 %275)
  store i32 %276, i32* %9, align 4
  %277 = load i32, i32* @DMAC_INTR_ENA_TX_, align 4
  %278 = load i32, i32* @DMAC_INTR_ENA_RX_, align 4
  %279 = or i32 %277, %278
  %280 = load i32, i32* @DMAC_INTR_ENA_NIS_, align 4
  %281 = or i32 %279, %280
  %282 = load i32, i32* %9, align 4
  %283 = or i32 %282, %281
  store i32 %283, i32* %9, align 4
  %284 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %285 = load i32, i32* @DMAC_INTR_ENA, align 4
  %286 = load i32, i32* %9, align 4
  %287 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %284, i32 %285, i32 %286)
  %288 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %289 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %288)
  %290 = load %struct.net_device*, %struct.net_device** %3, align 8
  %291 = call i32 @netif_wake_queue(%struct.net_device* %290)
  %292 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %293 = load i32, i32* @RX_POLL_DEMAND, align 4
  %294 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %292, i32 %293, i32 1)
  %295 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %296 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %295, i32 0, i32 1
  %297 = load i64, i64* %11, align 8
  %298 = call i32 @spin_lock_irqsave(i32* %296, i64 %297)
  %299 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %300 = load i32, i32* @INT_CFG, align 4
  %301 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %299, i32 %300)
  %302 = load i32, i32* @INT_CFG_IRQ_EN_, align 4
  %303 = or i32 %301, %302
  store i32 %303, i32* %8, align 4
  %304 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %305 = load i32, i32* @INT_CFG, align 4
  %306 = load i32, i32* %8, align 4
  %307 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %304, i32 %305, i32 %306)
  %308 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %309 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %308, i32 0, i32 1
  %310 = load i64, i64* %11, align 8
  %311 = call i32 @spin_unlock_irqrestore(i32* %309, i64 %310)
  store i32 0, i32* %2, align 4
  br label %326

312:                                              ; preds = %236
  %313 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %314 = call i32 @smsc9420_free_rx_ring(%struct.smsc9420_pdata* %313)
  br label %315

315:                                              ; preds = %312, %226
  %316 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %317 = call i32 @smsc9420_free_tx_ring(%struct.smsc9420_pdata* %316)
  br label %318

318:                                              ; preds = %315, %216, %201
  %319 = load %struct.net_device*, %struct.net_device** %3, align 8
  %320 = getelementptr inbounds %struct.net_device, %struct.net_device* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %323 = call i32 @free_irq(i32 %321, %struct.smsc9420_pdata* %322)
  br label %324

324:                                              ; preds = %318, %79, %31
  %325 = load i32, i32* %12, align 4
  store i32 %325, i32* %2, align 4
  br label %326

326:                                              ; preds = %324, %241
  %327 = load i32, i32* %2, align 4
  ret i32 %327
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.smsc9420_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @smsc_warn(i32, i8*, ...) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @smsc9420_reg_read(%struct.smsc9420_pdata*, i32) #1

declare dso_local i32 @smsc9420_reg_write(%struct.smsc9420_pdata*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.smsc9420_pdata*) #1

declare dso_local i32 @smsc9420_dmac_soft_reset(%struct.smsc9420_pdata*) #1

declare dso_local i32 @smsc9420_set_mac_address(%struct.net_device*) #1

declare dso_local i32 @smsc_dbg(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @smsc9420_alloc_tx_ring(%struct.smsc9420_pdata*) #1

declare dso_local i32 @smsc9420_alloc_rx_ring(%struct.smsc9420_pdata*) #1

declare dso_local i32 @smsc9420_mii_init(%struct.net_device*) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @smsc9420_free_rx_ring(%struct.smsc9420_pdata*) #1

declare dso_local i32 @smsc9420_free_tx_ring(%struct.smsc9420_pdata*) #1

declare dso_local i32 @free_irq(i32, %struct.smsc9420_pdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
