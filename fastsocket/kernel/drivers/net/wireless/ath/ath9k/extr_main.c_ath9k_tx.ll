; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { %struct.TYPE_7__, %struct.TYPE_9__*, i32, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_tx_control = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ath_common = type { i32 }
%struct.ath_tx_control = type { %struct.TYPE_8__*, i32 }
%struct.ieee80211_hdr = type { i32 }

@PS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Add PM=1 for a TX frame while in PS mode\0A\00", align 1
@IEEE80211_FCTL_PM = common dso_local global i32 0, align 4
@ATH9K_PM_NETWORK_SLEEP = common dso_local global i64 0, align 8
@ATH9K_HW_CAP_AUTOSLEEP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Sending PS-Poll to pick a buffered frame\0A\00", align 1
@PS_WAIT_FOR_PSPOLL_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Wake up to complete TX\0A\00", align 1
@PS_WAIT_FOR_TX_ACK = common dso_local global i32 0, align 4
@ATH9K_PM_FULL_SLEEP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"TX while HW is in FULL_SLEEP mode\0A\00", align 1
@XMIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"transmitting packet, skb: %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"TX failed\0A\00", align 1
@txfailed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_tx_control*, %struct.sk_buff*)* @ath9k_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ath_softc*, align 8
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.ath_tx_control, align 8
  %10 = alloca %struct.ieee80211_hdr*, align 8
  %11 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.ath_softc*, %struct.ath_softc** %13, align 8
  store %struct.ath_softc* %14, %struct.ath_softc** %7, align 8
  %15 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %16 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_9__* %17)
  store %struct.ath_common* %18, %struct.ath_common** %8, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %22, %struct.ieee80211_hdr** %10, align 8
  %23 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %24 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %3
  %28 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %29 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ieee80211_is_data(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %35 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ieee80211_is_nullfunc(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %33
  %40 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %41 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ieee80211_has_pm(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %39
  %46 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %47 = load i32, i32* @PS, align 4
  %48 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %46, i32 %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @IEEE80211_FCTL_PM, align 4
  %50 = call i32 @cpu_to_le16(i32 %49)
  %51 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %52 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %45, %39, %33, %27
  br label %56

56:                                               ; preds = %55, %3
  %57 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %58 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %57, i32 0, i32 1
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ATH9K_PM_NETWORK_SLEEP, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %119

67:                                               ; preds = %56
  %68 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %69 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %68)
  %70 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %71 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %70, i32 0, i32 2
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  %74 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %75 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @ATH9K_HW_CAP_AUTOSLEEP, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %67
  %84 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %85 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = call i32 @ath9k_hw_setrxabort(%struct.TYPE_9__* %86, i32 0)
  br label %88

88:                                               ; preds = %83, %67
  %89 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %90 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @ieee80211_is_pspoll(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %96 = load i32, i32* @PS, align 4
  %97 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %95, i32 %96, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* @PS_WAIT_FOR_PSPOLL_DATA, align 4
  %99 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %100 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %112

103:                                              ; preds = %88
  %104 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %105 = load i32, i32* @PS, align 4
  %106 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %104, i32 %105, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32, i32* @PS_WAIT_FOR_TX_ACK, align 4
  %108 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %109 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %103, %94
  %113 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %114 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %113, i32 0, i32 2
  %115 = load i64, i64* %11, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* %114, i64 %115)
  %117 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %118 = call i32 @ath9k_ps_restore(%struct.ath_softc* %117)
  br label %119

119:                                              ; preds = %112, %56
  %120 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %121 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %120, i32 0, i32 1
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @ATH9K_PM_FULL_SLEEP, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %119
  %131 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %132 = call i32 @ath_err(%struct.ath_common* %131, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %167

133:                                              ; preds = %119
  %134 = call i32 @memset(%struct.ath_tx_control* %9, i32 0, i32 16)
  %135 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  %136 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %137, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %140 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %139)
  %141 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %138, i64 %140
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.ath_tx_control, %struct.ath_tx_control* %9, i32 0, i32 0
  store %struct.TYPE_8__* %142, %struct.TYPE_8__** %143, align 8
  %144 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %145 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.ath_tx_control, %struct.ath_tx_control* %9, i32 0, i32 1
  store i32 %146, i32* %147, align 8
  %148 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %149 = load i32, i32* @XMIT, align 4
  %150 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %151 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %148, i32 %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), %struct.sk_buff* %150)
  %152 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %154 = call i64 @ath_tx_start(%struct.ieee80211_hw* %152, %struct.sk_buff* %153, %struct.ath_tx_control* %9)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %133
  %157 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %158 = load i32, i32* @XMIT, align 4
  %159 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %157, i32 %158, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %160 = getelementptr inbounds %struct.ath_tx_control, %struct.ath_tx_control* %9, i32 0, i32 0
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @txfailed, align 4
  %165 = call i32 @TX_STAT_INC(i32 %163, i32 %164)
  br label %167

166:                                              ; preds = %133
  br label %171

167:                                              ; preds = %156, %130
  %168 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %170 = call i32 @ieee80211_free_txskb(%struct.ieee80211_hw* %168, %struct.sk_buff* %169)
  br label %171

171:                                              ; preds = %167, %166
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_9__*) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i32 @ieee80211_is_nullfunc(i32) #1

declare dso_local i32 @ieee80211_has_pm(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ath9k_hw_setrxabort(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @ieee80211_is_pspoll(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @memset(%struct.ath_tx_control*, i32, i32) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i64 @ath_tx_start(%struct.ieee80211_hw*, %struct.sk_buff*, %struct.ath_tx_control*) #1

declare dso_local i32 @TX_STAT_INC(i32, i32) #1

declare dso_local i32 @ieee80211_free_txskb(%struct.ieee80211_hw*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
