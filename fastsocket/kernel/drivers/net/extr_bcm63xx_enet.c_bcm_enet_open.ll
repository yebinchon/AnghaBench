; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.bcm_enet_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.phy_device*, i32, i32, %struct.bcm_enet_desc*, %struct.bcm_enet_desc*, i32*, i32*, i32, i64, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i32, i64, %struct.TYPE_3__* }
%struct.phy_device = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.bcm_enet_desc = type { i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.sockaddr = type { i32 }

@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@PHY_ID_FMT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@bcm_enet_adjust_phy_link = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"could not attach to PHY\0A\00", align 1
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_Pause = common dso_local global i32 0, align 4
@SUPPORTED_MII = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"attached PHY at address %d [%s]\0A\00", align 1
@ENET_IRMASK_REG = common dso_local global i32 0, align 4
@bcm_enet_isr_mac = common dso_local global i32 0, align 4
@bcm_enet_isr_dma = common dso_local global i32 0, align 4
@IRQF_SAMPLE_RANDOM = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"cannot allocate rx ring %u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"cannot allocate tx ring\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"cannot allocate rx skb queue\0A\00", align 1
@ENETDMA_BUFALLOC_FORCE_MASK = common dso_local global i32 0, align 4
@ENET_RXMAXLEN_REG = common dso_local global i32 0, align 4
@ENET_TXMAXLEN_REG = common dso_local global i32 0, align 4
@BCMENET_DMA_MAXBURST = common dso_local global i32 0, align 4
@BCMENET_TX_FIFO_TRESH = common dso_local global i32 0, align 4
@ENET_TXWMARK_REG = common dso_local global i32 0, align 4
@ENET_CTL_ENABLE_MASK = common dso_local global i32 0, align 4
@ENET_CTL_REG = common dso_local global i32 0, align 4
@ENETDMA_CFG_EN_MASK = common dso_local global i32 0, align 4
@ENETDMA_CFG_REG = common dso_local global i32 0, align 4
@ENETDMA_CHANCFG_EN_MASK = common dso_local global i32 0, align 4
@ENET_IR_MIB = common dso_local global i32 0, align 4
@ENET_IR_REG = common dso_local global i32 0, align 4
@ENETDMA_IR_PKTDONE_MASK = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bcm_enet_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_enet_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bcm_enet_priv*, align 8
  %5 = alloca %struct.sockaddr, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bcm_enet_desc*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %17 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %18 = add nsw i32 %17, 3
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %22)
  store %struct.bcm_enet_priv* %23, %struct.bcm_enet_priv** %4, align 8
  %24 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %25 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %24, i32 0, i32 34
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.device* %27, %struct.device** %6, align 8
  %28 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %29 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %28, i32 0, i32 17
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %126

32:                                               ; preds = %1
  %33 = trunc i64 %19 to i32
  %34 = load i8*, i8** @PHY_ID_FMT, align 8
  %35 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %36 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %35, i32 0, i32 33
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %41 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %42 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %41, i32 0, i32 32
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @snprintf(i8* %21, i32 %33, i8* %34, i8* %40, i32 %43)
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  %47 = call %struct.phy_device* @phy_connect(%struct.net_device* %45, i8* %21, i32* @bcm_enet_adjust_phy_link, i32 0, i32 %46)
  store %struct.phy_device* %47, %struct.phy_device** %7, align 8
  %48 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %49 = call i64 @IS_ERR(%struct.phy_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %32
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %55 = call i32 @PTR_ERR(%struct.phy_device* %54)
  store i32 %55, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %626

56:                                               ; preds = %32
  %57 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %58 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @SUPPORTED_Pause, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @SUPPORTED_MII, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %71 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %75 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %78 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %80 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %79, i32 0, i32 31
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %56
  %84 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %85 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %84, i32 0, i32 30
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %90 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %89, i32 0, i32 29
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i32, i32* @SUPPORTED_Pause, align 4
  %95 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %96 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %106

99:                                               ; preds = %88, %83, %56
  %100 = load i32, i32* @SUPPORTED_Pause, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %103 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %99, %93
  %107 = load %struct.device*, %struct.device** %6, align 8
  %108 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %109 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %112 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %111, i32 0, i32 2
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dev_info(%struct.device* %107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %110, i32 %115)
  %117 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %118 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %117, i32 0, i32 28
  store i64 0, i64* %118, align 8
  %119 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %120 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %119, i32 0, i32 0
  store i32 -1, i32* %120, align 8
  %121 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %122 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %121, i32 0, i32 1
  store i32 -1, i32* %122, align 4
  %123 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %124 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %125 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %124, i32 0, i32 9
  store %struct.phy_device* %123, %struct.phy_device** %125, align 8
  br label %126

126:                                              ; preds = %106, %1
  %127 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %128 = load i32, i32* @ENET_IRMASK_REG, align 4
  %129 = call i32 @enet_writel(%struct.bcm_enet_priv* %127, i32 0, i32 %128)
  %130 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %131 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %132 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %131, i32 0, i32 19
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ENETDMA_IRMASK_REG(i32 %133)
  %135 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %130, i32 0, i32 %134)
  %136 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %137 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %138 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %137, i32 0, i32 18
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @ENETDMA_IRMASK_REG(i32 %139)
  %141 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %136, i32 0, i32 %140)
  %142 = load %struct.net_device*, %struct.net_device** %3, align 8
  %143 = getelementptr inbounds %struct.net_device, %struct.net_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @bcm_enet_isr_mac, align 4
  %146 = load %struct.net_device*, %struct.net_device** %3, align 8
  %147 = getelementptr inbounds %struct.net_device, %struct.net_device* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.net_device*, %struct.net_device** %3, align 8
  %150 = call i32 @request_irq(i32 %144, i32 %145, i32 0, i32 %148, %struct.net_device* %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %126
  br label %620

154:                                              ; preds = %126
  %155 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %156 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %155, i32 0, i32 10
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @bcm_enet_isr_dma, align 4
  %159 = load i32, i32* @IRQF_SAMPLE_RANDOM, align 4
  %160 = load i32, i32* @IRQF_DISABLED, align 4
  %161 = or i32 %159, %160
  %162 = load %struct.net_device*, %struct.net_device** %3, align 8
  %163 = getelementptr inbounds %struct.net_device, %struct.net_device* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.net_device*, %struct.net_device** %3, align 8
  %166 = call i32 @request_irq(i32 %157, i32 %158, i32 %161, i32 %164, %struct.net_device* %165)
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %154
  br label %614

170:                                              ; preds = %154
  %171 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %172 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %171, i32 0, i32 11
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @bcm_enet_isr_dma, align 4
  %175 = load i32, i32* @IRQF_DISABLED, align 4
  %176 = load %struct.net_device*, %struct.net_device** %3, align 8
  %177 = getelementptr inbounds %struct.net_device, %struct.net_device* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.net_device*, %struct.net_device** %3, align 8
  %180 = call i32 @request_irq(i32 %173, i32 %174, i32 %175, i32 %178, %struct.net_device* %179)
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* %9, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %170
  br label %608

184:                                              ; preds = %170
  store i32 0, i32* %8, align 4
  br label %185

185:                                              ; preds = %197, %184
  %186 = load i32, i32* %8, align 4
  %187 = icmp slt i32 %186, 4
  br i1 %187, label %188, label %200

188:                                              ; preds = %185
  %189 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @ENET_PML_REG(i32 %190)
  %192 = call i32 @enet_writel(%struct.bcm_enet_priv* %189, i32 0, i32 %191)
  %193 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %194 = load i32, i32* %8, align 4
  %195 = call i32 @ENET_PMH_REG(i32 %194)
  %196 = call i32 @enet_writel(%struct.bcm_enet_priv* %193, i32 0, i32 %195)
  br label %197

197:                                              ; preds = %188
  %198 = load i32, i32* %8, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %8, align 4
  br label %185

200:                                              ; preds = %185
  %201 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %5, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.net_device*, %struct.net_device** %3, align 8
  %204 = getelementptr inbounds %struct.net_device, %struct.net_device* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @ETH_ALEN, align 4
  %207 = call i32 @memcpy(i32 %202, i32 %205, i32 %206)
  %208 = load %struct.net_device*, %struct.net_device** %3, align 8
  %209 = call i32 @bcm_enet_set_mac_address(%struct.net_device* %208, %struct.sockaddr* %5)
  %210 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %211 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = sext i32 %212 to i64
  %214 = mul i64 %213, 4
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %10, align 4
  %216 = load %struct.device*, %struct.device** %6, align 8
  %217 = load i32, i32* %10, align 4
  %218 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %219 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %218, i32 0, i32 3
  %220 = load i32, i32* @GFP_KERNEL, align 4
  %221 = call i8* @dma_alloc_coherent(%struct.device* %216, i32 %217, i32* %219, i32 %220)
  store i8* %221, i8** %13, align 8
  %222 = load i8*, i8** %13, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %230, label %224

224:                                              ; preds = %200
  %225 = load %struct.device*, %struct.device** %6, align 8
  %226 = load i32, i32* %10, align 4
  %227 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %225, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %226)
  %228 = load i32, i32* @ENOMEM, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %9, align 4
  br label %602

230:                                              ; preds = %200
  %231 = load i8*, i8** %13, align 8
  %232 = load i32, i32* %10, align 4
  %233 = call i32 @memset(i8* %231, i32 0, i32 %232)
  %234 = load i32, i32* %10, align 4
  %235 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %236 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %235, i32 0, i32 4
  store i32 %234, i32* %236, align 8
  %237 = load i8*, i8** %13, align 8
  %238 = bitcast i8* %237 to %struct.bcm_enet_desc*
  %239 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %240 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %239, i32 0, i32 12
  store %struct.bcm_enet_desc* %238, %struct.bcm_enet_desc** %240, align 8
  %241 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %242 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = mul i64 %244, 4
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %10, align 4
  %247 = load %struct.device*, %struct.device** %6, align 8
  %248 = load i32, i32* %10, align 4
  %249 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %250 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %249, i32 0, i32 6
  %251 = load i32, i32* @GFP_KERNEL, align 4
  %252 = call i8* @dma_alloc_coherent(%struct.device* %247, i32 %248, i32* %250, i32 %251)
  store i8* %252, i8** %13, align 8
  %253 = load i8*, i8** %13, align 8
  %254 = icmp ne i8* %253, null
  br i1 %254, label %260, label %255

255:                                              ; preds = %230
  %256 = load %struct.device*, %struct.device** %6, align 8
  %257 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %258 = load i32, i32* @ENOMEM, align 4
  %259 = sub nsw i32 0, %258
  store i32 %259, i32* %9, align 4
  br label %590

260:                                              ; preds = %230
  %261 = load i8*, i8** %13, align 8
  %262 = load i32, i32* %10, align 4
  %263 = call i32 @memset(i8* %261, i32 0, i32 %262)
  %264 = load i32, i32* %10, align 4
  %265 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %266 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %265, i32 0, i32 7
  store i32 %264, i32* %266, align 4
  %267 = load i8*, i8** %13, align 8
  %268 = bitcast i8* %267 to %struct.bcm_enet_desc*
  %269 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %270 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %269, i32 0, i32 13
  store %struct.bcm_enet_desc* %268, %struct.bcm_enet_desc** %270, align 8
  %271 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %272 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 4
  %274 = sext i32 %273 to i64
  %275 = mul i64 8, %274
  %276 = trunc i64 %275 to i32
  %277 = load i32, i32* @GFP_KERNEL, align 4
  %278 = call i8* @kzalloc(i32 %276, i32 %277)
  %279 = bitcast i8* %278 to i32*
  %280 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %281 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %280, i32 0, i32 14
  store i32* %279, i32** %281, align 8
  %282 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %283 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %282, i32 0, i32 14
  %284 = load i32*, i32** %283, align 8
  %285 = icmp ne i32* %284, null
  br i1 %285, label %291, label %286

286:                                              ; preds = %260
  %287 = load %struct.device*, %struct.device** %6, align 8
  %288 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %287, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %289 = load i32, i32* @ENOMEM, align 4
  %290 = sub nsw i32 0, %289
  store i32 %290, i32* %9, align 4
  br label %578

291:                                              ; preds = %260
  %292 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %293 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %292, i32 0, i32 5
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %296 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %295, i32 0, i32 8
  store i32 %294, i32* %296, align 8
  %297 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %298 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %297, i32 0, i32 27
  store i64 0, i64* %298, align 8
  %299 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %300 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %299, i32 0, i32 26
  store i64 0, i64* %300, align 8
  %301 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %302 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %301, i32 0, i32 25
  %303 = call i32 @spin_lock_init(i32* %302)
  %304 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %305 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = sext i32 %306 to i64
  %308 = mul i64 8, %307
  %309 = trunc i64 %308 to i32
  %310 = load i32, i32* @GFP_KERNEL, align 4
  %311 = call i8* @kzalloc(i32 %309, i32 %310)
  %312 = bitcast i8* %311 to i32*
  %313 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %314 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %313, i32 0, i32 15
  store i32* %312, i32** %314, align 8
  %315 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %316 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %315, i32 0, i32 15
  %317 = load i32*, i32** %316, align 8
  %318 = icmp ne i32* %317, null
  br i1 %318, label %324, label %319

319:                                              ; preds = %291
  %320 = load %struct.device*, %struct.device** %6, align 8
  %321 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %320, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %322 = load i32, i32* @ENOMEM, align 4
  %323 = sub nsw i32 0, %322
  store i32 %323, i32* %9, align 4
  br label %573

324:                                              ; preds = %291
  %325 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %326 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %325, i32 0, i32 24
  store i64 0, i64* %326, align 8
  %327 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %328 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %327, i32 0, i32 23
  store i64 0, i64* %328, align 8
  %329 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %330 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %329, i32 0, i32 22
  store i64 0, i64* %330, align 8
  %331 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %332 = load i32, i32* @ENETDMA_BUFALLOC_FORCE_MASK, align 4
  %333 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %334 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %333, i32 0, i32 19
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @ENETDMA_BUFALLOC_REG(i32 %335)
  %337 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %331, i32 %332, i32 %336)
  %338 = load %struct.net_device*, %struct.net_device** %3, align 8
  %339 = call i64 @bcm_enet_refill_rx(%struct.net_device* %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %346

341:                                              ; preds = %324
  %342 = load %struct.device*, %struct.device** %6, align 8
  %343 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %342, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %344 = load i32, i32* @ENOMEM, align 4
  %345 = sub nsw i32 0, %344
  store i32 %345, i32* %9, align 4
  br label %524

346:                                              ; preds = %324
  %347 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %348 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %349 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %352 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %351, i32 0, i32 19
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @ENETDMA_RSTART_REG(i32 %353)
  %355 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %347, i32 %350, i32 %354)
  %356 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %357 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %358 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %357, i32 0, i32 6
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %361 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %360, i32 0, i32 18
  %362 = load i32, i32* %361, align 8
  %363 = call i32 @ENETDMA_RSTART_REG(i32 %362)
  %364 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %356, i32 %359, i32 %363)
  %365 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %366 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %367 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %366, i32 0, i32 19
  %368 = load i32, i32* %367, align 4
  %369 = call i32 @ENETDMA_SRAM2_REG(i32 %368)
  %370 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %365, i32 0, i32 %369)
  %371 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %372 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %373 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %372, i32 0, i32 18
  %374 = load i32, i32* %373, align 8
  %375 = call i32 @ENETDMA_SRAM2_REG(i32 %374)
  %376 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %371, i32 0, i32 %375)
  %377 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %378 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %379 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %378, i32 0, i32 19
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @ENETDMA_SRAM3_REG(i32 %380)
  %382 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %377, i32 0, i32 %381)
  %383 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %384 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %385 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %384, i32 0, i32 18
  %386 = load i32, i32* %385, align 8
  %387 = call i32 @ENETDMA_SRAM3_REG(i32 %386)
  %388 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %383, i32 0, i32 %387)
  %389 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %390 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %391 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %390, i32 0, i32 19
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @ENETDMA_SRAM4_REG(i32 %392)
  %394 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %389, i32 0, i32 %393)
  %395 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %396 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %397 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %396, i32 0, i32 18
  %398 = load i32, i32* %397, align 8
  %399 = call i32 @ENETDMA_SRAM4_REG(i32 %398)
  %400 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %395, i32 0, i32 %399)
  %401 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %402 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %403 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %402, i32 0, i32 21
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* @ENET_RXMAXLEN_REG, align 4
  %406 = call i32 @enet_writel(%struct.bcm_enet_priv* %401, i32 %404, i32 %405)
  %407 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %408 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %409 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %408, i32 0, i32 21
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* @ENET_TXMAXLEN_REG, align 4
  %412 = call i32 @enet_writel(%struct.bcm_enet_priv* %407, i32 %410, i32 %411)
  %413 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %414 = load i32, i32* @BCMENET_DMA_MAXBURST, align 4
  %415 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %416 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %415, i32 0, i32 19
  %417 = load i32, i32* %416, align 4
  %418 = call i32 @ENETDMA_MAXBURST_REG(i32 %417)
  %419 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %413, i32 %414, i32 %418)
  %420 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %421 = load i32, i32* @BCMENET_DMA_MAXBURST, align 4
  %422 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %423 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %422, i32 0, i32 18
  %424 = load i32, i32* %423, align 8
  %425 = call i32 @ENETDMA_MAXBURST_REG(i32 %424)
  %426 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %420, i32 %421, i32 %425)
  %427 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %428 = load i32, i32* @BCMENET_TX_FIFO_TRESH, align 4
  %429 = load i32, i32* @ENET_TXWMARK_REG, align 4
  %430 = call i32 @enet_writel(%struct.bcm_enet_priv* %427, i32 %428, i32 %429)
  %431 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %432 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 8
  %434 = sdiv i32 %433, 3
  store i32 %434, i32* %14, align 4
  %435 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %436 = load i32, i32* %14, align 4
  %437 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %438 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %437, i32 0, i32 19
  %439 = load i32, i32* %438, align 4
  %440 = call i32 @ENETDMA_FLOWCL_REG(i32 %439)
  %441 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %435, i32 %436, i32 %440)
  %442 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %443 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %442, i32 0, i32 2
  %444 = load i32, i32* %443, align 8
  %445 = mul nsw i32 %444, 2
  %446 = sdiv i32 %445, 3
  store i32 %446, i32* %14, align 4
  %447 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %448 = load i32, i32* %14, align 4
  %449 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %450 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %449, i32 0, i32 19
  %451 = load i32, i32* %450, align 4
  %452 = call i32 @ENETDMA_FLOWCH_REG(i32 %451)
  %453 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %447, i32 %448, i32 %452)
  %454 = call i32 (...) @wmb()
  %455 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %456 = load i32, i32* @ENET_CTL_ENABLE_MASK, align 4
  %457 = load i32, i32* @ENET_CTL_REG, align 4
  %458 = call i32 @enet_writel(%struct.bcm_enet_priv* %455, i32 %456, i32 %457)
  %459 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %460 = load i32, i32* @ENETDMA_CFG_EN_MASK, align 4
  %461 = load i32, i32* @ENETDMA_CFG_REG, align 4
  %462 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %459, i32 %460, i32 %461)
  %463 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %464 = load i32, i32* @ENETDMA_CHANCFG_EN_MASK, align 4
  %465 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %466 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %465, i32 0, i32 19
  %467 = load i32, i32* %466, align 4
  %468 = call i32 @ENETDMA_CHANCFG_REG(i32 %467)
  %469 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %463, i32 %464, i32 %468)
  %470 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %471 = load i32, i32* @ENET_IR_MIB, align 4
  %472 = load i32, i32* @ENET_IR_REG, align 4
  %473 = call i32 @enet_writel(%struct.bcm_enet_priv* %470, i32 %471, i32 %472)
  %474 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %475 = load i32, i32* @ENET_IR_MIB, align 4
  %476 = load i32, i32* @ENET_IRMASK_REG, align 4
  %477 = call i32 @enet_writel(%struct.bcm_enet_priv* %474, i32 %475, i32 %476)
  %478 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %479 = load i32, i32* @ENETDMA_IR_PKTDONE_MASK, align 4
  %480 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %481 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %480, i32 0, i32 19
  %482 = load i32, i32* %481, align 4
  %483 = call i32 @ENETDMA_IR_REG(i32 %482)
  %484 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %478, i32 %479, i32 %483)
  %485 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %486 = load i32, i32* @ENETDMA_IR_PKTDONE_MASK, align 4
  %487 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %488 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %487, i32 0, i32 18
  %489 = load i32, i32* %488, align 8
  %490 = call i32 @ENETDMA_IR_REG(i32 %489)
  %491 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %485, i32 %486, i32 %490)
  %492 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %493 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %492, i32 0, i32 20
  %494 = call i32 @napi_enable(i32* %493)
  %495 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %496 = load i32, i32* @ENETDMA_IR_PKTDONE_MASK, align 4
  %497 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %498 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %497, i32 0, i32 19
  %499 = load i32, i32* %498, align 4
  %500 = call i32 @ENETDMA_IRMASK_REG(i32 %499)
  %501 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %495, i32 %496, i32 %500)
  %502 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %503 = load i32, i32* @ENETDMA_IR_PKTDONE_MASK, align 4
  %504 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %505 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %504, i32 0, i32 18
  %506 = load i32, i32* %505, align 8
  %507 = call i32 @ENETDMA_IRMASK_REG(i32 %506)
  %508 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %502, i32 %503, i32 %507)
  %509 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %510 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %509, i32 0, i32 17
  %511 = load i64, i64* %510, align 8
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %513, label %518

513:                                              ; preds = %346
  %514 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %515 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %514, i32 0, i32 9
  %516 = load %struct.phy_device*, %struct.phy_device** %515, align 8
  %517 = call i32 @phy_start(%struct.phy_device* %516)
  br label %521

518:                                              ; preds = %346
  %519 = load %struct.net_device*, %struct.net_device** %3, align 8
  %520 = call i32 @bcm_enet_adjust_link(%struct.net_device* %519)
  br label %521

521:                                              ; preds = %518, %513
  %522 = load %struct.net_device*, %struct.net_device** %3, align 8
  %523 = call i32 @netif_start_queue(%struct.net_device* %522)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %626

524:                                              ; preds = %341
  store i32 0, i32* %8, align 4
  br label %525

525:                                              ; preds = %565, %524
  %526 = load i32, i32* %8, align 4
  %527 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %528 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %527, i32 0, i32 2
  %529 = load i32, i32* %528, align 8
  %530 = icmp slt i32 %526, %529
  br i1 %530, label %531, label %568

531:                                              ; preds = %525
  %532 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %533 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %532, i32 0, i32 15
  %534 = load i32*, i32** %533, align 8
  %535 = load i32, i32* %8, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds i32, i32* %534, i64 %536
  %538 = load i32, i32* %537, align 4
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %541, label %540

540:                                              ; preds = %531
  br label %565

541:                                              ; preds = %531
  %542 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %543 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %542, i32 0, i32 12
  %544 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %543, align 8
  %545 = load i32, i32* %8, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %544, i64 %546
  store %struct.bcm_enet_desc* %547, %struct.bcm_enet_desc** %16, align 8
  %548 = load %struct.device*, %struct.device** %6, align 8
  %549 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %16, align 8
  %550 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 4
  %552 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %553 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %552, i32 0, i32 16
  %554 = load i32, i32* %553, align 8
  %555 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %556 = call i32 @dma_unmap_single(%struct.device* %548, i32 %551, i32 %554, i32 %555)
  %557 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %558 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %557, i32 0, i32 15
  %559 = load i32*, i32** %558, align 8
  %560 = load i32, i32* %8, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i32, i32* %559, i64 %561
  %563 = load i32, i32* %562, align 4
  %564 = call i32 @kfree_skb(i32 %563)
  br label %565

565:                                              ; preds = %541, %540
  %566 = load i32, i32* %8, align 4
  %567 = add nsw i32 %566, 1
  store i32 %567, i32* %8, align 4
  br label %525

568:                                              ; preds = %525
  %569 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %570 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %569, i32 0, i32 15
  %571 = load i32*, i32** %570, align 8
  %572 = call i32 @kfree(i32* %571)
  br label %573

573:                                              ; preds = %568, %319
  %574 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %575 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %574, i32 0, i32 14
  %576 = load i32*, i32** %575, align 8
  %577 = call i32 @kfree(i32* %576)
  br label %578

578:                                              ; preds = %573, %286
  %579 = load %struct.device*, %struct.device** %6, align 8
  %580 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %581 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %580, i32 0, i32 7
  %582 = load i32, i32* %581, align 4
  %583 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %584 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %583, i32 0, i32 13
  %585 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %584, align 8
  %586 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %587 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %586, i32 0, i32 6
  %588 = load i32, i32* %587, align 8
  %589 = call i32 @dma_free_coherent(%struct.device* %579, i32 %582, %struct.bcm_enet_desc* %585, i32 %588)
  br label %590

590:                                              ; preds = %578, %255
  %591 = load %struct.device*, %struct.device** %6, align 8
  %592 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %593 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %592, i32 0, i32 4
  %594 = load i32, i32* %593, align 8
  %595 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %596 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %595, i32 0, i32 12
  %597 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %596, align 8
  %598 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %599 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %598, i32 0, i32 3
  %600 = load i32, i32* %599, align 4
  %601 = call i32 @dma_free_coherent(%struct.device* %591, i32 %594, %struct.bcm_enet_desc* %597, i32 %600)
  br label %602

602:                                              ; preds = %590, %224
  %603 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %604 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %603, i32 0, i32 11
  %605 = load i32, i32* %604, align 4
  %606 = load %struct.net_device*, %struct.net_device** %3, align 8
  %607 = call i32 @free_irq(i32 %605, %struct.net_device* %606)
  br label %608

608:                                              ; preds = %602, %183
  %609 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %610 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %609, i32 0, i32 10
  %611 = load i32, i32* %610, align 8
  %612 = load %struct.net_device*, %struct.net_device** %3, align 8
  %613 = call i32 @free_irq(i32 %611, %struct.net_device* %612)
  br label %614

614:                                              ; preds = %608, %169
  %615 = load %struct.net_device*, %struct.net_device** %3, align 8
  %616 = getelementptr inbounds %struct.net_device, %struct.net_device* %615, i32 0, i32 0
  %617 = load i32, i32* %616, align 4
  %618 = load %struct.net_device*, %struct.net_device** %3, align 8
  %619 = call i32 @free_irq(i32 %617, %struct.net_device* %618)
  br label %620

620:                                              ; preds = %614, %153
  %621 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %622 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %621, i32 0, i32 9
  %623 = load %struct.phy_device*, %struct.phy_device** %622, align 8
  %624 = call i32 @phy_disconnect(%struct.phy_device* %623)
  %625 = load i32, i32* %9, align 4
  store i32 %625, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %626

626:                                              ; preds = %620, %521, %51
  %627 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %627)
  %628 = load i32, i32* %2, align 4
  ret i32 %628
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local %struct.phy_device* @phy_connect(%struct.net_device*, i8*, i32*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.phy_device*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #2

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #2

declare dso_local i32 @enet_writel(%struct.bcm_enet_priv*, i32, i32) #2

declare dso_local i32 @enet_dma_writel(%struct.bcm_enet_priv*, i32, i32) #2

declare dso_local i32 @ENETDMA_IRMASK_REG(i32) #2

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #2

declare dso_local i32 @ENET_PML_REG(i32) #2

declare dso_local i32 @ENET_PMH_REG(i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @bcm_enet_set_mac_address(%struct.net_device*, %struct.sockaddr*) #2

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @ENETDMA_BUFALLOC_REG(i32) #2

declare dso_local i64 @bcm_enet_refill_rx(%struct.net_device*) #2

declare dso_local i32 @ENETDMA_RSTART_REG(i32) #2

declare dso_local i32 @ENETDMA_SRAM2_REG(i32) #2

declare dso_local i32 @ENETDMA_SRAM3_REG(i32) #2

declare dso_local i32 @ENETDMA_SRAM4_REG(i32) #2

declare dso_local i32 @ENETDMA_MAXBURST_REG(i32) #2

declare dso_local i32 @ENETDMA_FLOWCL_REG(i32) #2

declare dso_local i32 @ENETDMA_FLOWCH_REG(i32) #2

declare dso_local i32 @wmb(...) #2

declare dso_local i32 @ENETDMA_CHANCFG_REG(i32) #2

declare dso_local i32 @ENETDMA_IR_REG(i32) #2

declare dso_local i32 @napi_enable(i32*) #2

declare dso_local i32 @phy_start(%struct.phy_device*) #2

declare dso_local i32 @bcm_enet_adjust_link(%struct.net_device*) #2

declare dso_local i32 @netif_start_queue(%struct.net_device*) #2

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #2

declare dso_local i32 @kfree_skb(i32) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, %struct.bcm_enet_desc*, i32) #2

declare dso_local i32 @free_irq(i32, %struct.net_device*) #2

declare dso_local i32 @phy_disconnect(%struct.phy_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
