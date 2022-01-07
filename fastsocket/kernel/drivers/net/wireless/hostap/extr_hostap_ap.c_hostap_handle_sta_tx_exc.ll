; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_hostap_handle_sta_tx_exc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_hostap_handle_sta_tx_exc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.sta_info = type { i64, i32, i64, i32, i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.hostap_skb_tx_data = type { i64 }

@DEBUG_AP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"%s: Could not find STA %pM for this TX error (@%lu)\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@WLAN_RATE_DECREASE_THRESHOLD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: STA %pM TX rate lowered to %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostap_handle_sta_tx_exc(%struct.TYPE_7__* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca %struct.hostap_skb_tx_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %13, %struct.ieee80211_hdr** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.hostap_skb_tx_data*
  store %struct.hostap_skb_tx_data* %17, %struct.hostap_skb_tx_data** %7, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.sta_info* @ap_get_sta(%struct.TYPE_8__* %25, i32 %28)
  store %struct.sta_info* %29, %struct.sta_info** %5, align 8
  %30 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %31 = icmp ne %struct.sta_info* %30, null
  br i1 %31, label %49, label %32

32:                                               ; preds = %2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load i32, i32* @DEBUG_AP, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @jiffies, align 4
  %48 = call i32 @PDEBUG(i32 %38, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46, i32 %47)
  br label %143

49:                                               ; preds = %2
  %50 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %51 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %53 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %53, align 8
  %56 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %57 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @WLAN_RATE_DECREASE_THRESHOLD, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %137

61:                                               ; preds = %49
  %62 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %63 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %137

66:                                               ; preds = %61
  %67 = load %struct.hostap_skb_tx_data*, %struct.hostap_skb_tx_data** %7, align 8
  %68 = getelementptr inbounds %struct.hostap_skb_tx_data, %struct.hostap_skb_tx_data* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %71 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp sle i64 %69, %72
  br i1 %73, label %74, label %137

74:                                               ; preds = %66
  %75 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %76 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %9, align 4
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %93, %74
  %79 = load i32, i32* %9, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = call i64 @ap_tx_rate_ok(i32 %84, %struct.sta_info* %85, %struct.TYPE_7__* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %92 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  br label %94

93:                                               ; preds = %81
  br label %78

94:                                               ; preds = %89, %78
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %97 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %95, %98
  br i1 %99, label %100, label %134

100:                                              ; preds = %94
  %101 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %102 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  switch i32 %103, label %116 [
    i32 0, label %104
    i32 1, label %107
    i32 2, label %110
    i32 3, label %113
  ]

104:                                              ; preds = %100
  %105 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %106 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %105, i32 0, i32 2
  store i64 10, i64* %106, align 8
  br label %119

107:                                              ; preds = %100
  %108 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %109 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %108, i32 0, i32 2
  store i64 20, i64* %109, align 8
  br label %119

110:                                              ; preds = %100
  %111 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %112 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %111, i32 0, i32 2
  store i64 55, i64* %112, align 8
  br label %119

113:                                              ; preds = %100
  %114 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %115 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %114, i32 0, i32 2
  store i64 110, i64* %115, align 8
  br label %119

116:                                              ; preds = %100
  %117 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %118 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %117, i32 0, i32 2
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %116, %113, %110, %107, %104
  %120 = load i32, i32* @DEBUG_AP, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %127 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %130 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = call i32 @PDEBUG(i32 %120, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %128, i32 %132)
  br label %134

134:                                              ; preds = %119, %94
  %135 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %136 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %135, i32 0, i32 0
  store i64 0, i64* %136, align 8
  br label %137

137:                                              ; preds = %134, %66, %61, %49
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = call i32 @spin_unlock(i32* %141)
  br label %143

143:                                              ; preds = %137, %32
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.sta_info* @ap_get_sta(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @ap_tx_rate_ok(i32, %struct.sta_info*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
