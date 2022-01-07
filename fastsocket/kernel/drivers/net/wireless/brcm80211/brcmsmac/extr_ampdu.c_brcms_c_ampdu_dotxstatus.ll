; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_ampdu.c_brcms_c_ampdu_dotxstatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_ampdu.c_brcms_c_ampdu_dotxstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ampdu_info = type { %struct.brcms_c_info* }
%struct.brcms_c_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.scb = type { %struct.scb_ampdu }
%struct.scb_ampdu = type { %struct.scb_ampdu_tid_ini* }
%struct.scb_ampdu_tid_ini = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.tx_status = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.d11txh = type { i32 }

@TX_STATUS_ACK_RCV = common dso_local global i32 0, align 4
@frmtxstatus = common dso_local global i32 0, align 4
@TXS_V = common dso_local global i32 0, align 4
@frmtxstatus2 = common dso_local global i32 0, align 4
@TXFID_QUEUE_MASK = common dso_local global i32 0, align 4
@TXC_AMPDU_MASK = common dso_local global i32 0, align 4
@TXC_AMPDU_SHIFT = common dso_local global i32 0, align 4
@TXC_AMPDU_LAST = common dso_local global i32 0, align 4
@DMA_RANGE_TRANSMITTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_ampdu_dotxstatus(%struct.ampdu_info* %0, %struct.scb* %1, %struct.sk_buff* %2, %struct.tx_status* %3) #0 {
  %5 = alloca %struct.ampdu_info*, align 8
  %6 = alloca %struct.scb*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tx_status*, align 8
  %9 = alloca %struct.scb_ampdu*, align 8
  %10 = alloca %struct.brcms_c_info*, align 8
  %11 = alloca %struct.scb_ampdu_tid_ini*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee80211_tx_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.d11txh*, align 8
  %18 = alloca i32, align 4
  store %struct.ampdu_info* %0, %struct.ampdu_info** %5, align 8
  store %struct.scb* %1, %struct.scb** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.tx_status* %3, %struct.tx_status** %8, align 8
  %19 = load %struct.ampdu_info*, %struct.ampdu_info** %5, align 8
  %20 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %19, i32 0, i32 0
  %21 = load %struct.brcms_c_info*, %struct.brcms_c_info** %20, align 8
  store %struct.brcms_c_info* %21, %struct.brcms_c_info** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %22)
  store %struct.ieee80211_tx_info* %23, %struct.ieee80211_tx_info** %14, align 8
  %24 = load %struct.tx_status*, %struct.tx_status** %8, align 8
  %25 = getelementptr inbounds %struct.tx_status, %struct.tx_status* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TX_STATUS_ACK_RCV, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %69

30:                                               ; preds = %4
  store i32 0, i32* %15, align 4
  %31 = load %struct.brcms_c_info*, %struct.brcms_c_info** %10, align 8
  %32 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* @frmtxstatus, align 4
  %37 = call i32 @D11REGOFFS(i32 %36)
  %38 = call i32 @bcma_read32(%struct.TYPE_4__* %35, i32 %37)
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %51, %30
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @TXS_V, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = call i32 @udelay(i32 1)
  %46 = load i32, i32* %15, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp sgt i32 %48, 10
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %140

51:                                               ; preds = %44
  %52 = load %struct.brcms_c_info*, %struct.brcms_c_info** %10, align 8
  %53 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* @frmtxstatus, align 4
  %58 = call i32 @D11REGOFFS(i32 %57)
  %59 = call i32 @bcma_read32(%struct.TYPE_4__* %56, i32 %58)
  store i32 %59, i32* %12, align 4
  br label %39

60:                                               ; preds = %39
  %61 = load %struct.brcms_c_info*, %struct.brcms_c_info** %10, align 8
  %62 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* @frmtxstatus2, align 4
  %67 = call i32 @D11REGOFFS(i32 %66)
  %68 = call i32 @bcma_read32(%struct.TYPE_4__* %65, i32 %67)
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %60, %4
  %70 = load %struct.scb*, %struct.scb** %6, align 8
  %71 = icmp ne %struct.scb* %70, null
  br i1 %71, label %72, label %89

72:                                               ; preds = %69
  %73 = load %struct.scb*, %struct.scb** %6, align 8
  %74 = getelementptr inbounds %struct.scb, %struct.scb* %73, i32 0, i32 0
  store %struct.scb_ampdu* %74, %struct.scb_ampdu** %9, align 8
  %75 = load %struct.scb_ampdu*, %struct.scb_ampdu** %9, align 8
  %76 = getelementptr inbounds %struct.scb_ampdu, %struct.scb_ampdu* %75, i32 0, i32 0
  %77 = load %struct.scb_ampdu_tid_ini*, %struct.scb_ampdu_tid_ini** %76, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.scb_ampdu_tid_ini, %struct.scb_ampdu_tid_ini* %77, i64 %80
  store %struct.scb_ampdu_tid_ini* %81, %struct.scb_ampdu_tid_ini** %11, align 8
  %82 = load %struct.ampdu_info*, %struct.ampdu_info** %5, align 8
  %83 = load %struct.scb*, %struct.scb** %6, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = load %struct.tx_status*, %struct.tx_status** %8, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @brcms_c_ampdu_dotxstatus_complete(%struct.ampdu_info* %82, %struct.scb* %83, %struct.sk_buff* %84, %struct.tx_status* %85, i32 %86, i32 %87)
  br label %140

89:                                               ; preds = %69
  %90 = load %struct.tx_status*, %struct.tx_status** %8, align 8
  %91 = getelementptr inbounds %struct.tx_status, %struct.tx_status* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @TXFID_QUEUE_MASK, align 4
  %94 = and i32 %92, %93
  store i32 %94, i32* %16, align 4
  br label %95

95:                                               ; preds = %127, %89
  %96 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %97 = icmp ne %struct.sk_buff* %96, null
  br i1 %97, label %98, label %139

98:                                               ; preds = %95
  %99 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %100 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %99)
  store %struct.ieee80211_tx_info* %100, %struct.ieee80211_tx_info** %14, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to %struct.d11txh*
  store %struct.d11txh* %104, %struct.d11txh** %17, align 8
  %105 = load %struct.brcms_c_info*, %struct.brcms_c_info** %10, align 8
  %106 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %105, i32 0, i32 0
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load %struct.d11txh*, %struct.d11txh** %17, align 8
  %112 = call i32 @trace_brcms_txdesc(i32* %110, %struct.d11txh* %111, i32 4)
  %113 = load %struct.d11txh*, %struct.d11txh** %17, align 8
  %114 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le16_to_cpu(i32 %115)
  store i32 %116, i32* %18, align 4
  %117 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %118 = call i32 @brcmu_pkt_buf_free_skb(%struct.sk_buff* %117)
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* @TXC_AMPDU_MASK, align 4
  %121 = and i32 %119, %120
  %122 = load i32, i32* @TXC_AMPDU_SHIFT, align 4
  %123 = ashr i32 %121, %122
  %124 = load i32, i32* @TXC_AMPDU_LAST, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %98
  br label %139

127:                                              ; preds = %98
  %128 = load %struct.brcms_c_info*, %struct.brcms_c_info** %10, align 8
  %129 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %128, i32 0, i32 0
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @DMA_RANGE_TRANSMITTED, align 4
  %138 = call %struct.sk_buff* @dma_getnexttxp(i32 %136, i32 %137)
  store %struct.sk_buff* %138, %struct.sk_buff** %7, align 8
  br label %95

139:                                              ; preds = %126, %95
  br label %140

140:                                              ; preds = %50, %139, %72
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @bcma_read32(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @brcms_c_ampdu_dotxstatus_complete(%struct.ampdu_info*, %struct.scb*, %struct.sk_buff*, %struct.tx_status*, i32, i32) #1

declare dso_local i32 @trace_brcms_txdesc(i32*, %struct.d11txh*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @brcmu_pkt_buf_free_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @dma_getnexttxp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
