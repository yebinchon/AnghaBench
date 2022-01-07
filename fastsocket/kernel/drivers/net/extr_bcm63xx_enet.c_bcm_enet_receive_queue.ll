; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_receive_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_receive_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bcm_enet_priv = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.sk_buff**, i32, %struct.TYPE_3__*, %struct.bcm_enet_desc* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, %struct.net_device*, i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.bcm_enet_desc = type { i32, i32 }

@DMADESC_OWNER_MASK = common dso_local global i32 0, align 4
@DMADESC_ESOP_MASK = common dso_local global i32 0, align 4
@DMADESC_ERR_MASK = common dso_local global i32 0, align 4
@DMADESC_OVSIZE_MASK = common dso_local global i32 0, align 4
@DMADESC_CRC_MASK = common dso_local global i32 0, align 4
@DMADESC_UNDER_MASK = common dso_local global i32 0, align 4
@DMADESC_OV_MASK = common dso_local global i32 0, align 4
@DMADESC_LENGTH_MASK = common dso_local global i32 0, align 4
@DMADESC_LENGTH_SHIFT = common dso_local global i32 0, align 4
@copybreak = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@ENETDMA_CHANCFG_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @bcm_enet_receive_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_enet_receive_queue(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm_enet_priv*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bcm_enet_desc*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.bcm_enet_priv* %15, %struct.bcm_enet_priv** %5, align 8
  %16 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %17 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %16, i32 0, i32 7
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %6, align 8
  store i32 0, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %22 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %27 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %2
  br label %30

30:                                               ; preds = %245, %29
  %31 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %32 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %35 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %34, i32 0, i32 8
  %36 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %36, i64 %38
  store %struct.bcm_enet_desc* %39, %struct.bcm_enet_desc** %8, align 8
  %40 = call i32 (...) @rmb()
  %41 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %8, align 8
  %42 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @DMADESC_OWNER_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %30
  br label %249

49:                                               ; preds = %30
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  %52 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %53 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %57 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %60 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %49
  %64 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %65 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %49
  %67 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %68 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @DMADESC_ESOP_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @DMADESC_ESOP_MASK, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %66
  %77 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %78 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  br label %245

82:                                               ; preds = %66
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @DMADESC_ERR_MASK, align 4
  %85 = and i32 %83, %84
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %138

88:                                               ; preds = %82
  %89 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %90 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @DMADESC_OVSIZE_MASK, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %88
  %99 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %100 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %98, %88
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @DMADESC_CRC_MASK, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %111 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %109, %104
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @DMADESC_UNDER_MASK, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %122 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %120, %115
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @DMADESC_OV_MASK, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %133 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %131, %126
  br label %245

138:                                              ; preds = %82
  %139 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %140 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %139, i32 0, i32 5
  %141 = load %struct.sk_buff**, %struct.sk_buff*** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %141, i64 %143
  %145 = load %struct.sk_buff*, %struct.sk_buff** %144, align 8
  store %struct.sk_buff* %145, %struct.sk_buff** %9, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @DMADESC_LENGTH_MASK, align 4
  %148 = and i32 %146, %147
  %149 = load i32, i32* @DMADESC_LENGTH_SHIFT, align 4
  %150 = ashr i32 %148, %149
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %12, align 4
  %152 = sub i32 %151, 4
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* @copybreak, align 4
  %155 = icmp ult i32 %153, %154
  br i1 %155, label %156, label %198

156:                                              ; preds = %138
  %157 = load %struct.net_device*, %struct.net_device** %3, align 8
  %158 = load i32, i32* %12, align 4
  %159 = zext i32 %158 to i64
  %160 = load i64, i64* @NET_IP_ALIGN, align 8
  %161 = add nsw i64 %159, %160
  %162 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %157, i64 %161)
  store %struct.sk_buff* %162, %struct.sk_buff** %13, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %164 = icmp ne %struct.sk_buff* %163, null
  br i1 %164, label %171, label %165

165:                                              ; preds = %156
  %166 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %167 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 8
  br label %245

171:                                              ; preds = %156
  %172 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %173 = load i64, i64* @NET_IP_ALIGN, align 8
  %174 = call i32 @skb_reserve(%struct.sk_buff* %172, i64 %173)
  %175 = load %struct.device*, %struct.device** %6, align 8
  %176 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %8, align 8
  %177 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %181 = call i32 @dma_sync_single_for_cpu(%struct.device* %175, i32 %178, i32 %179, i32 %180)
  %182 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %183 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %186 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %12, align 4
  %189 = call i32 @memcpy(i32 %184, i32 %187, i32 %188)
  %190 = load %struct.device*, %struct.device** %6, align 8
  %191 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %8, align 8
  %192 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %196 = call i32 @dma_sync_single_for_device(%struct.device* %190, i32 %193, i32 %194, i32 %195)
  %197 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %197, %struct.sk_buff** %9, align 8
  br label %217

198:                                              ; preds = %138
  %199 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %200 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %199, i32 0, i32 7
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %8, align 8
  %204 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %207 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %210 = call i32 @dma_unmap_single(%struct.device* %202, i32 %205, i32 %208, i32 %209)
  %211 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %212 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %211, i32 0, i32 5
  %213 = load %struct.sk_buff**, %struct.sk_buff*** %212, align 8
  %214 = load i32, i32* %10, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %213, i64 %215
  store %struct.sk_buff* null, %struct.sk_buff** %216, align 8
  br label %217

217:                                              ; preds = %198, %171
  %218 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @skb_put(%struct.sk_buff* %218, i32 %219)
  %221 = load %struct.net_device*, %struct.net_device** %3, align 8
  %222 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %223 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %222, i32 0, i32 1
  store %struct.net_device* %221, %struct.net_device** %223, align 8
  %224 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %225 = load %struct.net_device*, %struct.net_device** %3, align 8
  %226 = call i32 @eth_type_trans(%struct.sk_buff* %224, %struct.net_device* %225)
  %227 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %228 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 8
  %229 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %230 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 4
  %234 = load i32, i32* %12, align 4
  %235 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %236 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = add i32 %238, %234
  store i32 %239, i32* %237, align 8
  %240 = load i32, i32* @jiffies, align 4
  %241 = load %struct.net_device*, %struct.net_device** %3, align 8
  %242 = getelementptr inbounds %struct.net_device, %struct.net_device* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 4
  %243 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %244 = call i32 @netif_receive_skb(%struct.sk_buff* %243)
  br label %245

245:                                              ; preds = %217, %165, %137, %76
  %246 = load i32, i32* %4, align 4
  %247 = add nsw i32 %246, -1
  store i32 %247, i32* %4, align 4
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %30, label %249

249:                                              ; preds = %245, %48
  %250 = load i32, i32* %7, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %257, label %252

252:                                              ; preds = %249
  %253 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %254 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %267, label %257

257:                                              ; preds = %252, %249
  %258 = load %struct.net_device*, %struct.net_device** %3, align 8
  %259 = call i32 @bcm_enet_refill_rx(%struct.net_device* %258)
  %260 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %261 = load i32, i32* @ENETDMA_CHANCFG_EN_MASK, align 4
  %262 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %263 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @ENETDMA_CHANCFG_REG(i32 %264)
  %266 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %260, i32 %261, i32 %265)
  br label %267

267:                                              ; preds = %257, %252
  %268 = load i32, i32* %7, align 4
  ret i32 %268
}

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @dma_sync_single_for_cpu(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @bcm_enet_refill_rx(%struct.net_device*) #1

declare dso_local i32 @enet_dma_writel(%struct.bcm_enet_priv*, i32, i32) #1

declare dso_local i32 @ENETDMA_CHANCFG_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
