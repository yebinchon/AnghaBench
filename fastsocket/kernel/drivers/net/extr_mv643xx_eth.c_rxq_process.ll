; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_rxq_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_rxq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_queue = type { i64, i64, i32, i32, i64, %struct.sk_buff**, %struct.rx_desc* }
%struct.sk_buff = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rx_desc = type { i32, i32, i32, i32 }
%struct.mv643xx_eth_private = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.net_device_stats }
%struct.TYPE_6__ = type { i32 }
%struct.net_device_stats = type { i32, i32, i32, i32 }

@BUFFER_OWNED_BY_DMA = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@RX_FIRST_DESC = common dso_local global i32 0, align 4
@RX_LAST_DESC = common dso_local global i32 0, align 4
@ERROR_SUMMARY = common dso_local global i32 0, align 4
@LAYER_4_CHECKSUM_OK = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i64 0, align 8
@NETIF_F_LRO = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"received packet spanning multiple descriptors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rx_queue*, i32)* @rxq_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxq_process(%struct.rx_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.rx_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv643xx_eth_private*, align 8
  %6 = alloca %struct.net_device_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rx_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  store %struct.rx_queue* %0, %struct.rx_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %14 = call %struct.mv643xx_eth_private* @rxq_to_mp(%struct.rx_queue* %13)
  store %struct.mv643xx_eth_private* %14, %struct.mv643xx_eth_private** %5, align 8
  %15 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %16 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store %struct.net_device_stats* %18, %struct.net_device_stats** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %214, %178, %2
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %25 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %19
  %29 = phi i1 [ false, %19 ], [ %27, %23 ]
  br i1 %29, label %30, label %217

30:                                               ; preds = %28
  %31 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %32 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %31, i32 0, i32 6
  %33 = load %struct.rx_desc*, %struct.rx_desc** %32, align 8
  %34 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %35 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %33, i64 %36
  store %struct.rx_desc* %37, %struct.rx_desc** %9, align 8
  %38 = load %struct.rx_desc*, %struct.rx_desc** %9, align 8
  %39 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @BUFFER_OWNED_BY_DMA, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  br label %217

46:                                               ; preds = %30
  %47 = call i32 (...) @rmb()
  %48 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %49 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %48, i32 0, i32 5
  %50 = load %struct.sk_buff**, %struct.sk_buff*** %49, align 8
  %51 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %52 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %50, i64 %53
  %55 = load %struct.sk_buff*, %struct.sk_buff** %54, align 8
  store %struct.sk_buff* %55, %struct.sk_buff** %11, align 8
  %56 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %57 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %56, i32 0, i32 5
  %58 = load %struct.sk_buff**, %struct.sk_buff*** %57, align 8
  %59 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %60 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %58, i64 %61
  store %struct.sk_buff* null, %struct.sk_buff** %62, align 8
  %63 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %64 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %68 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %71 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %46
  %75 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %76 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %74, %46
  %78 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %79 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %78, i32 0, i32 2
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.rx_desc*, %struct.rx_desc** %9, align 8
  %85 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.rx_desc*, %struct.rx_desc** %9, align 8
  %88 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %91 = call i32 @dma_unmap_single(i32 %83, i32 %86, i32 %89, i32 %90)
  %92 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %93 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, -1
  store i64 %95, i64* %93, align 8
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  %98 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %99 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = shl i32 1, %100
  %102 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %103 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.rx_desc*, %struct.rx_desc** %9, align 8
  %107 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %12, align 4
  %109 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %110 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* %12, align 4
  %114 = sub nsw i32 %113, 2
  %115 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %116 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @RX_FIRST_DESC, align 4
  %121 = load i32, i32* @RX_LAST_DESC, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @ERROR_SUMMARY, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %119, %124
  %126 = load i32, i32* @RX_FIRST_DESC, align 4
  %127 = load i32, i32* @RX_LAST_DESC, align 4
  %128 = or i32 %126, %127
  %129 = icmp ne i32 %125, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %77
  br label %179

131:                                              ; preds = %77
  %132 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sub nsw i32 %133, 2
  %135 = sub nsw i32 %134, 4
  %136 = call i32 @skb_put(%struct.sk_buff* %132, i32 %135)
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @LAYER_4_CHECKSUM_OK, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %131
  %142 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %143 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %141, %131
  %146 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %147 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %148 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %147, i32 0, i32 2
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = call i32 @eth_type_trans(%struct.sk_buff* %146, %struct.TYPE_5__* %149)
  %151 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 1
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @NETIF_F_LRO, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %175

161:                                              ; preds = %145
  %162 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %161
  %168 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %169 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %168, i32 0, i32 3
  %170 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %171 = load i32, i32* %10, align 4
  %172 = zext i32 %171 to i64
  %173 = inttoptr i64 %172 to i8*
  %174 = call i32 @lro_receive_skb(i32* %169, %struct.sk_buff* %170, i8* %173)
  store i32 1, i32* %7, align 4
  br label %178

175:                                              ; preds = %161, %145
  %176 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %177 = call i32 @netif_receive_skb(%struct.sk_buff* %176)
  br label %178

178:                                              ; preds = %175, %167
  br label %19

179:                                              ; preds = %130
  %180 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %181 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* @RX_FIRST_DESC, align 4
  %186 = load i32, i32* @RX_LAST_DESC, align 4
  %187 = or i32 %185, %186
  %188 = and i32 %184, %187
  %189 = load i32, i32* @RX_FIRST_DESC, align 4
  %190 = load i32, i32* @RX_LAST_DESC, align 4
  %191 = or i32 %189, %190
  %192 = icmp ne i32 %188, %191
  br i1 %192, label %193, label %204

193:                                              ; preds = %179
  %194 = call i64 (...) @net_ratelimit()
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %193
  %197 = load i32, i32* @KERN_ERR, align 4
  %198 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %199 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %198, i32 0, i32 2
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = call i32 @dev_printk(i32 %197, %struct.TYPE_6__* %201, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %203

203:                                              ; preds = %196, %193
  br label %204

204:                                              ; preds = %203, %179
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* @ERROR_SUMMARY, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %204
  %210 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %211 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %209, %204
  %215 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %216 = call i32 @dev_kfree_skb(%struct.sk_buff* %215)
  br label %19

217:                                              ; preds = %45, %28
  %218 = load i32, i32* %7, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %217
  %221 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %222 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %221, i32 0, i32 3
  %223 = call i32 @lro_flush_all(i32* %222)
  br label %224

224:                                              ; preds = %220, %217
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* %4, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %238

228:                                              ; preds = %224
  %229 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %230 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = shl i32 1, %231
  %233 = xor i32 %232, -1
  %234 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %235 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = and i32 %236, %233
  store i32 %237, i32* %235, align 4
  br label %238

238:                                              ; preds = %228, %224
  %239 = load i32, i32* %8, align 4
  ret i32 %239
}

declare dso_local %struct.mv643xx_eth_private* @rxq_to_mp(%struct.rx_queue*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_5__*) #1

declare dso_local i32 @lro_receive_skb(i32*, %struct.sk_buff*, i8*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_printk(i32, %struct.TYPE_6__*, i8*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @lro_flush_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
