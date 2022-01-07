; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_fec_enet_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_fec_enet_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fec_enet_private = type { i32, %struct.bufdesc*, i64, %struct.bufdesc*, i32 }
%struct.bufdesc = type { i16, i32, i32 }
%struct.sk_buff = type { i32 }

@BD_ENET_RX_EMPTY = common dso_local global i16 0, align 2
@BD_ENET_RX_LAST = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [28 x i8] c"FEC ENET: rcv is not +last\0A\00", align 1
@BD_ENET_RX_LG = common dso_local global i16 0, align 2
@BD_ENET_RX_SH = common dso_local global i16 0, align 2
@BD_ENET_RX_NO = common dso_local global i16 0, align 2
@BD_ENET_RX_CR = common dso_local global i16 0, align 2
@BD_ENET_RX_OV = common dso_local global i16 0, align 2
@BD_ENET_RX_CL = common dso_local global i16 0, align 2
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: Memory squeeze, dropping packet.\0A\00", align 1
@BD_ENET_RX_STATS = common dso_local global i16 0, align 2
@BD_ENET_RX_WRAP = common dso_local global i16 0, align 2
@FEC_R_DES_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fec_enet_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fec_enet_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fec_enet_private*, align 8
  %4 = alloca %struct.bufdesc*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %9)
  store %struct.fec_enet_private* %10, %struct.fec_enet_private** %3, align 8
  %11 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %12 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %15 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %14, i32 0, i32 1
  %16 = load %struct.bufdesc*, %struct.bufdesc** %15, align 8
  store %struct.bufdesc* %16, %struct.bufdesc** %4, align 8
  br label %17

17:                                               ; preds = %248, %1
  %18 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  %19 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %18, i32 0, i32 0
  %20 = load i16, i16* %19, align 4
  store i16 %20, i16* %5, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* @BD_ENET_RX_EMPTY, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %255

27:                                               ; preds = %17
  %28 = load i16, i16* %5, align 2
  %29 = zext i16 %28 to i32
  %30 = load i16, i16* @BD_ENET_RX_LAST, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %29, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %27
  %37 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %38 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %218

42:                                               ; preds = %36
  %43 = load i16, i16* %5, align 2
  %44 = zext i16 %43 to i32
  %45 = load i16, i16* @BD_ENET_RX_LG, align 2
  %46 = zext i16 %45 to i32
  %47 = load i16, i16* @BD_ENET_RX_SH, align 2
  %48 = zext i16 %47 to i32
  %49 = or i32 %46, %48
  %50 = load i16, i16* @BD_ENET_RX_NO, align 2
  %51 = zext i16 %50 to i32
  %52 = or i32 %49, %51
  %53 = load i16, i16* @BD_ENET_RX_CR, align 2
  %54 = zext i16 %53 to i32
  %55 = or i32 %52, %54
  %56 = load i16, i16* @BD_ENET_RX_OV, align 2
  %57 = zext i16 %56 to i32
  %58 = or i32 %55, %57
  %59 = and i32 %44, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %122

61:                                               ; preds = %42
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load i16, i16* %5, align 2
  %68 = zext i16 %67 to i32
  %69 = load i16, i16* @BD_ENET_RX_LG, align 2
  %70 = zext i16 %69 to i32
  %71 = load i16, i16* @BD_ENET_RX_SH, align 2
  %72 = zext i16 %71 to i32
  %73 = or i32 %70, %72
  %74 = and i32 %68, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %61
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %61
  %83 = load i16, i16* %5, align 2
  %84 = zext i16 %83 to i32
  %85 = load i16, i16* @BD_ENET_RX_NO, align 2
  %86 = zext i16 %85 to i32
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %89, %82
  %96 = load i16, i16* %5, align 2
  %97 = zext i16 %96 to i32
  %98 = load i16, i16* @BD_ENET_RX_CR, align 2
  %99 = zext i16 %98 to i32
  %100 = and i32 %97, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load %struct.net_device*, %struct.net_device** %2, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %95
  %109 = load i16, i16* %5, align 2
  %110 = zext i16 %109 to i32
  %111 = load i16, i16* @BD_ENET_RX_OV, align 2
  %112 = zext i16 %111 to i32
  %113 = and i32 %110, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %108
  %116 = load %struct.net_device*, %struct.net_device** %2, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %115, %108
  br label %122

122:                                              ; preds = %121, %42
  %123 = load i16, i16* %5, align 2
  %124 = zext i16 %123 to i32
  %125 = load i16, i16* @BD_ENET_RX_CL, align 2
  %126 = zext i16 %125 to i32
  %127 = and i32 %124, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %122
  %130 = load %struct.net_device*, %struct.net_device** %2, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load %struct.net_device*, %struct.net_device** %2, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  br label %218

140:                                              ; preds = %122
  %141 = load %struct.net_device*, %struct.net_device** %2, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  %146 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  %147 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.net_device*, %struct.net_device** %2, align 8
  %151 = getelementptr inbounds %struct.net_device, %struct.net_device* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, %149
  store i32 %154, i32* %152, align 4
  %155 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  %156 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @__va(i32 %157)
  %159 = inttoptr i64 %158 to i32*
  store i32* %159, i32** %8, align 8
  %160 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  %161 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  %164 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %167 = call i32 @dma_unmap_single(i32* null, i32 %162, i32 %165, i32 %166)
  %168 = load i32, i32* %7, align 4
  %169 = sub nsw i32 %168, 4
  %170 = load i32, i32* @NET_IP_ALIGN, align 4
  %171 = add nsw i32 %169, %170
  %172 = call %struct.sk_buff* @dev_alloc_skb(i32 %171)
  store %struct.sk_buff* %172, %struct.sk_buff** %6, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %174 = icmp ne %struct.sk_buff* %173, null
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = call i64 @unlikely(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %140
  %180 = load %struct.net_device*, %struct.net_device** %2, align 8
  %181 = getelementptr inbounds %struct.net_device, %struct.net_device* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %182)
  %184 = load %struct.net_device*, %struct.net_device** %2, align 8
  %185 = getelementptr inbounds %struct.net_device, %struct.net_device* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 4
  br label %209

189:                                              ; preds = %140
  %190 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %191 = load i32, i32* @NET_IP_ALIGN, align 4
  %192 = call i32 @skb_reserve(%struct.sk_buff* %190, i32 %191)
  %193 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sub nsw i32 %194, 4
  %196 = call i32 @skb_put(%struct.sk_buff* %193, i32 %195)
  %197 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %198 = load i32*, i32** %8, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sub nsw i32 %199, 4
  %201 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %197, i32* %198, i32 %200)
  %202 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %203 = load %struct.net_device*, %struct.net_device** %2, align 8
  %204 = call i32 @eth_type_trans(%struct.sk_buff* %202, %struct.net_device* %203)
  %205 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %206 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 4
  %207 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %208 = call i32 @netif_rx(%struct.sk_buff* %207)
  br label %209

209:                                              ; preds = %189, %179
  %210 = load i32*, i32** %8, align 8
  %211 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  %212 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %215 = call i32 @dma_map_single(i32* null, i32* %210, i32 %213, i32 %214)
  %216 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  %217 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 4
  br label %218

218:                                              ; preds = %209, %129, %41
  %219 = load i16, i16* @BD_ENET_RX_STATS, align 2
  %220 = zext i16 %219 to i32
  %221 = xor i32 %220, -1
  %222 = load i16, i16* %5, align 2
  %223 = zext i16 %222 to i32
  %224 = and i32 %223, %221
  %225 = trunc i32 %224 to i16
  store i16 %225, i16* %5, align 2
  %226 = load i16, i16* @BD_ENET_RX_EMPTY, align 2
  %227 = zext i16 %226 to i32
  %228 = load i16, i16* %5, align 2
  %229 = zext i16 %228 to i32
  %230 = or i32 %229, %227
  %231 = trunc i32 %230 to i16
  store i16 %231, i16* %5, align 2
  %232 = load i16, i16* %5, align 2
  %233 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  %234 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %233, i32 0, i32 0
  store i16 %232, i16* %234, align 4
  %235 = load i16, i16* %5, align 2
  %236 = zext i16 %235 to i32
  %237 = load i16, i16* @BD_ENET_RX_WRAP, align 2
  %238 = zext i16 %237 to i32
  %239 = and i32 %236, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %218
  %242 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %243 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %242, i32 0, i32 3
  %244 = load %struct.bufdesc*, %struct.bufdesc** %243, align 8
  store %struct.bufdesc* %244, %struct.bufdesc** %4, align 8
  br label %248

245:                                              ; preds = %218
  %246 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  %247 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %246, i32 1
  store %struct.bufdesc* %247, %struct.bufdesc** %4, align 8
  br label %248

248:                                              ; preds = %245, %241
  %249 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %250 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @FEC_R_DES_ACTIVE, align 8
  %253 = add nsw i64 %251, %252
  %254 = call i32 @writel(i32 0, i64 %253)
  br label %17

255:                                              ; preds = %17
  %256 = load %struct.bufdesc*, %struct.bufdesc** %4, align 8
  %257 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %258 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %257, i32 0, i32 1
  store %struct.bufdesc* %256, %struct.bufdesc** %258, align 8
  %259 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %260 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %259, i32 0, i32 0
  %261 = call i32 @spin_unlock(i32* %260)
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @__va(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32*, i32*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
