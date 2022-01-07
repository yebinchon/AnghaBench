; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ibm_newemac/extr_core.c_emac_resize_rx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ibm_newemac/extr_core.c_emac_resize_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_instance = type { i32, i32, i32, i32, i64, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.sk_buff**, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.sk_buff* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i64 }

@NUM_RX_BUFF = common dso_local global i32 0, align 4
@MAL_RX_CTRL_FIRST = common dso_local global i32 0, align 4
@MAL_RX_CTRL_EMPTY = common dso_local global i32 0, align 4
@MAL_RX_CTRL_WRAP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EMAC_RX_SKB_HEADROOM = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@MAL_COMMAC_RX_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_instance*, i32)* @emac_resize_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_resize_rx_ring(%struct.emac_instance* %0, i32 %1) #0 {
  %3 = alloca %struct.emac_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.emac_instance* %0, %struct.emac_instance** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @emac_rx_sync_size(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @emac_rx_skb_size(i32 %12)
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %15 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %18 = call i32 @emac_netif_stop(%struct.emac_instance* %17)
  %19 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %20 = call i32 @emac_rx_disable(%struct.emac_instance* %19)
  %21 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %22 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %25 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mal_disable_rx_channel(i32 %23, i32 %26)
  %28 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %29 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %28, i32 0, i32 11
  %30 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %2
  %33 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %34 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %33, i32 0, i32 10
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %39 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %38, i32 0, i32 11
  %40 = load %struct.sk_buff*, %struct.sk_buff** %39, align 8
  %41 = call i32 @dev_kfree_skb(%struct.sk_buff* %40)
  %42 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %43 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %42, i32 0, i32 11
  store %struct.sk_buff* null, %struct.sk_buff** %43, align 8
  br label %44

44:                                               ; preds = %32, %2
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %93, %44
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @NUM_RX_BUFF, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %96

49:                                               ; preds = %45
  %50 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %51 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %50, i32 0, i32 9
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @MAL_RX_CTRL_FIRST, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %49
  %62 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %63 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %62, i32 0, i32 10
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %61, %49
  %68 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %69 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %68, i32 0, i32 9
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @MAL_RX_CTRL_EMPTY, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @NUM_RX_BUFF, align 4
  %78 = sub nsw i32 %77, 1
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %67
  %81 = load i32, i32* @MAL_RX_CTRL_WRAP, align 4
  br label %83

82:                                               ; preds = %67
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %82 ]
  %85 = or i32 %75, %84
  %86 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %87 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %86, i32 0, i32 9
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i32 %85, i32* %92, align 8
  br label %93

93:                                               ; preds = %83
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %45

96:                                               ; preds = %45
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %99 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp sle i32 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %171

103:                                              ; preds = %96
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %167, %103
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @NUM_RX_BUFF, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %170

108:                                              ; preds = %104
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @GFP_ATOMIC, align 4
  %111 = call %struct.sk_buff* @alloc_skb(i32 %109, i32 %110)
  store %struct.sk_buff* %111, %struct.sk_buff** %9, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %113 = icmp ne %struct.sk_buff* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %8, align 4
  br label %209

117:                                              ; preds = %108
  %118 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %119 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %118, i32 0, i32 7
  %120 = load %struct.sk_buff**, %struct.sk_buff*** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %120, i64 %122
  %124 = load %struct.sk_buff*, %struct.sk_buff** %123, align 8
  %125 = icmp ne %struct.sk_buff* %124, null
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = call i32 @BUG_ON(i32 %127)
  %129 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %130 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %129, i32 0, i32 7
  %131 = load %struct.sk_buff**, %struct.sk_buff*** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %131, i64 %133
  %135 = load %struct.sk_buff*, %struct.sk_buff** %134, align 8
  %136 = call i32 @dev_kfree_skb(%struct.sk_buff* %135)
  %137 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %138 = load i64, i64* @EMAC_RX_SKB_HEADROOM, align 8
  %139 = add nsw i64 %138, 2
  %140 = call i32 @skb_reserve(%struct.sk_buff* %137, i64 %139)
  %141 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %142 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %141, i32 0, i32 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = sub nsw i64 %147, 2
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %151 = call i64 @dma_map_single(i32* %144, i64 %148, i32 %149, i32 %150)
  %152 = add nsw i64 %151, 2
  %153 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %154 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %153, i32 0, i32 9
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  store i64 %152, i64* %159, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %161 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %162 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %161, i32 0, i32 7
  %163 = load %struct.sk_buff**, %struct.sk_buff*** %162, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %163, i64 %165
  store %struct.sk_buff* %160, %struct.sk_buff** %166, align 8
  br label %167

167:                                              ; preds = %117
  %168 = load i32, i32* %7, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %7, align 4
  br label %104

170:                                              ; preds = %104
  br label %171

171:                                              ; preds = %170, %102
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* @ETH_DATA_LEN, align 4
  %174 = icmp sgt i32 %172, %173
  %175 = zext i1 %174 to i32
  %176 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %177 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %176, i32 0, i32 6
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @ETH_DATA_LEN, align 4
  %182 = icmp sgt i32 %180, %181
  %183 = zext i1 %182 to i32
  %184 = xor i32 %175, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %199

186:                                              ; preds = %171
  %187 = load i32, i32* @MAL_COMMAC_RX_STOPPED, align 4
  %188 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %189 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %188, i32 0, i32 5
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = call i32 @set_bit(i32 %187, i32* %190)
  %192 = load i32, i32* %4, align 4
  %193 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %194 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %193, i32 0, i32 6
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  store i32 %192, i32* %196, align 4
  %197 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %198 = call i32 @emac_full_tx_reset(%struct.emac_instance* %197)
  br label %199

199:                                              ; preds = %186, %171
  %200 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %201 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %204 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* %4, align 4
  %207 = call i32 @emac_rx_size(i32 %206)
  %208 = call i32 @mal_set_rcbs(i32 %202, i32 %205, i32 %207)
  br label %209

209:                                              ; preds = %199, %114
  %210 = load i32, i32* @MAL_COMMAC_RX_STOPPED, align 4
  %211 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %212 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = call i32 @clear_bit(i32 %210, i32* %213)
  %215 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %216 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %215, i32 0, i32 4
  store i64 0, i64* %216, align 8
  %217 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %218 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %221 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @mal_enable_rx_channel(i32 %219, i32 %222)
  %224 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %225 = call i32 @emac_rx_enable(%struct.emac_instance* %224)
  %226 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %227 = call i32 @emac_netif_start(%struct.emac_instance* %226)
  %228 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %229 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %228, i32 0, i32 1
  %230 = call i32 @mutex_unlock(i32* %229)
  %231 = load i32, i32* %8, align 4
  ret i32 %231
}

declare dso_local i32 @emac_rx_sync_size(i32) #1

declare dso_local i32 @emac_rx_skb_size(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @emac_netif_stop(%struct.emac_instance*) #1

declare dso_local i32 @emac_rx_disable(%struct.emac_instance*) #1

declare dso_local i32 @mal_disable_rx_channel(i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @dma_map_single(i32*, i64, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @emac_full_tx_reset(%struct.emac_instance*) #1

declare dso_local i32 @mal_set_rcbs(i32, i32, i32) #1

declare dso_local i32 @emac_rx_size(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mal_enable_rx_channel(i32, i32) #1

declare dso_local i32 @emac_rx_enable(%struct.emac_instance*) #1

declare dso_local i32 @emac_netif_start(%struct.emac_instance*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
