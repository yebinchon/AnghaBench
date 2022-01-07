; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_efx_enqueue_skb_tso.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_efx_enqueue_skb_tso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i64, i64, i32, %struct.efx_nic* }
%struct.efx_nic = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.tso_state = type { i64, i64, i64, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i32, i64 }

@EFX_TSO_MAX_SEGS = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Out of memory for TSO headers, or DMA mapping error\0A\00", align 1
@EFX_TX_BUF_MAP_SINGLE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_tx_queue*, %struct.sk_buff*)* @efx_enqueue_skb_tso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_enqueue_skb_tso(%struct.efx_tx_queue* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_tx_queue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tso_state, align 8
  %10 = alloca i32, align 4
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %12 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %11, i32 0, i32 3
  %13 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  store %struct.efx_nic* %13, %struct.efx_nic** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @EFX_TSO_MAX_SEGS, align 8
  %19 = icmp sgt i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @EFX_TSO_MAX_SEGS, align 8
  %29 = sub nsw i64 %27, %28
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = mul nsw i64 %29, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = sub nsw i64 %39, %41
  %43 = call i64 @__pskb_trim(%struct.sk_buff* %36, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %23
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %46)
  %48 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %48, i32* %3, align 4
  br label %202

49:                                               ; preds = %23
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = call i32 @efx_tso_check_protocol(%struct.sk_buff* %51)
  %53 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %9, i32 0, i32 6
  store i32 %52, i32* %53, align 4
  %54 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %55 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %58 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @EFX_BUG_ON_PARANOID(i32 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call i32 @tso_start(%struct.tso_state* %9, %struct.sk_buff* %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = call i64 @skb_headlen(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %9, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %66, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %50
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %74, 1
  %76 = zext i1 %75 to i32
  %77 = call i32 @EFX_BUG_ON_PARANOID(i32 %76)
  store i32 0, i32* %7, align 4
  %78 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %79)
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = call i32 @tso_get_fragment(%struct.tso_state* %9, %struct.efx_nic* %78, i64 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %70
  br label %157

90:                                               ; preds = %70
  br label %99

91:                                               ; preds = %50
  %92 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = call i32 @tso_get_head_fragment(%struct.tso_state* %9, %struct.efx_nic* %92, %struct.sk_buff* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %157

98:                                               ; preds = %91
  store i32 -1, i32* %7, align 4
  br label %99

99:                                               ; preds = %98, %90
  %100 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = call i64 @tso_start_new_packet(%struct.efx_tx_queue* %100, %struct.sk_buff* %101, %struct.tso_state* %9)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %157

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105, %146
  %107 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %109 = call i32 @tso_fill_packet_with_fragment(%struct.efx_tx_queue* %107, %struct.sk_buff* %108, %struct.tso_state* %9)
  %110 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %9, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %136

113:                                              ; preds = %106
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %117 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %116)
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp sge i32 %115, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %147

122:                                              ; preds = %113
  %123 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %125 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %124)
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %127, %129
  %131 = call i32 @tso_get_fragment(%struct.tso_state* %9, %struct.efx_nic* %123, i64 %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %122
  br label %157

135:                                              ; preds = %122
  br label %136

136:                                              ; preds = %135, %106
  %137 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %9, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %143 = call i64 @tso_start_new_packet(%struct.efx_tx_queue* %141, %struct.sk_buff* %142, %struct.tso_state* %9)
  %144 = icmp slt i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %157

146:                                              ; preds = %140, %136
  br label %106

147:                                              ; preds = %121
  %148 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %149 = call i32 @efx_nic_push_buffers(%struct.efx_tx_queue* %148)
  %150 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %151 = call i32 @efx_tx_maybe_stop_queue(%struct.efx_tx_queue* %150)
  %152 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %153 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 8
  %156 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %156, i32* %3, align 4
  br label %202

157:                                              ; preds = %145, %134, %104, %97, %89
  %158 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %159 = load i32, i32* @tx_err, align 4
  %160 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %161 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @netif_err(%struct.efx_nic* %158, i32 %159, i32 %162, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %164 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %165 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %164)
  %166 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %9, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %198

169:                                              ; preds = %157
  %170 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %9, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @EFX_TX_BUF_MAP_SINGLE, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %169
  %176 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %177 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %176, i32 0, i32 0
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %9, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %9, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = load i32, i32* @DMA_TO_DEVICE, align 4
  %185 = call i32 @dma_unmap_single(i32* %179, i32 %181, i64 %183, i32 %184)
  br label %197

186:                                              ; preds = %169
  %187 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %188 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %187, i32 0, i32 0
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %9, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %9, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* @DMA_TO_DEVICE, align 4
  %196 = call i32 @dma_unmap_page(i32* %190, i32 %192, i64 %194, i32 %195)
  br label %197

197:                                              ; preds = %186, %175
  br label %198

198:                                              ; preds = %197, %157
  %199 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %200 = call i32 @efx_enqueue_unwind(%struct.efx_tx_queue* %199)
  %201 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %201, i32* %3, align 4
  br label %202

202:                                              ; preds = %198, %147, %45
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @__pskb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @efx_tso_check_protocol(%struct.sk_buff*) #1

declare dso_local i32 @EFX_BUG_ON_PARANOID(i32) #1

declare dso_local i32 @tso_start(%struct.tso_state*, %struct.sk_buff*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @tso_get_fragment(%struct.tso_state*, %struct.efx_nic*, i64) #1

declare dso_local i32 @tso_get_head_fragment(%struct.tso_state*, %struct.efx_nic*, %struct.sk_buff*) #1

declare dso_local i64 @tso_start_new_packet(%struct.efx_tx_queue*, %struct.sk_buff*, %struct.tso_state*) #1

declare dso_local i32 @tso_fill_packet_with_fragment(%struct.efx_tx_queue*, %struct.sk_buff*, %struct.tso_state*) #1

declare dso_local i32 @efx_nic_push_buffers(%struct.efx_tx_queue*) #1

declare dso_local i32 @efx_tx_maybe_stop_queue(%struct.efx_tx_queue*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i64, i32) #1

declare dso_local i32 @efx_enqueue_unwind(%struct.efx_tx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
