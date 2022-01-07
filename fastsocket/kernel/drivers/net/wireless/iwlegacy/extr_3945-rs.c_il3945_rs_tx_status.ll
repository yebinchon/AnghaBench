; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-rs.c_il3945_rs_tx_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-rs.c_il3945_rs_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.sk_buff = type { i32 }
%struct.il_priv = type { i32 }
%struct.il3945_rs_sta = type { i32, i32, i64, i32, i64, i64, i32*, i32, i32 }
%struct.ieee80211_tx_info = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@RATE_RETRY_TH = common dso_local global i32 0, align 4
@RATE_COUNT_3945 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"leave: Rate out of bounds: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"leave: No STA il data to update!\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"leave: STA il data uninitialized!\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Update rate %d for %d retries.\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Update rate %d with %s.\0A\00", align 1
@IEEE80211_TX_STAT_ACK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*, %struct.sk_buff*)* @il3945_rs_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il3945_rs_tx_status(i8* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_sta* %2, i8* %3, %struct.sk_buff* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.il_priv*, align 8
  %18 = alloca %struct.il3945_rs_sta*, align 8
  %19 = alloca %struct.ieee80211_tx_info*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.il_priv*
  store %struct.il_priv* %21, %struct.il_priv** %17, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.il3945_rs_sta*
  store %struct.il3945_rs_sta* %23, %struct.il3945_rs_sta** %18, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %25 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %24)
  store %struct.ieee80211_tx_info* %25, %struct.ieee80211_tx_info** %19, align 8
  %26 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %19, align 8
  %28 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @RATE_RETRY_TH, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = load i32, i32* @RATE_RETRY_TH, align 4
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %37, %5
  %40 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %41 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %19, align 8
  %44 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %39
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @RATE_COUNT_3945, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55, %39
  %60 = load i32, i32* %14, align 4
  %61 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %184

62:                                               ; preds = %55
  %63 = load i8*, i8** %9, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %184

67:                                               ; preds = %62
  %68 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %18, align 8
  %69 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %184

74:                                               ; preds = %67
  %75 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %18, align 8
  %76 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %102, %74
  %82 = load i32, i32* %11, align 4
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %120

84:                                               ; preds = %81
  %85 = load i32, i32* %11, align 4
  %86 = sub nsw i32 %85, 1
  %87 = load %struct.il_priv*, %struct.il_priv** %17, align 8
  %88 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load i32, i32* %11, align 4
  %93 = sub nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %15, align 4
  br label %102

95:                                               ; preds = %84
  %96 = load %struct.il_priv*, %struct.il_priv** %17, align 8
  %97 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %12, align 4
  %99 = load %struct.il_priv*, %struct.il_priv** %17, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @il3945_rs_next_rate(%struct.il_priv* %99, i32 %100)
  store i32 %101, i32* %15, align 4
  br label %102

102:                                              ; preds = %95, %91
  %103 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %18, align 8
  %104 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %18, align 8
  %105 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %104, i32 0, i32 6
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @il3945_collect_tx_data(%struct.il3945_rs_sta* %103, i32* %109, i64 0, i32 %110, i32 %111)
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %113, i32 %114)
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %11, align 4
  %118 = sub nsw i32 %117, %116
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %15, align 4
  store i32 %119, i32* %13, align 4
  br label %81

120:                                              ; preds = %81
  %121 = load i32, i32* %15, align 4
  %122 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %19, align 8
  %123 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @IEEE80211_TX_STAT_ACK, align 8
  %126 = and i64 %124, %125
  %127 = icmp ne i64 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)
  %130 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %121, i8* %129)
  %131 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %18, align 8
  %132 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %18, align 8
  %133 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %132, i32 0, i32 6
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %19, align 8
  %139 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @IEEE80211_TX_STAT_ACK, align 8
  %142 = and i64 %140, %141
  %143 = load i32, i32* %15, align 4
  %144 = call i32 @il3945_collect_tx_data(%struct.il3945_rs_sta* %131, i32* %137, i64 %142, i32 1, i32 %143)
  %145 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %18, align 8
  %146 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %145, i32 0, i32 1
  %147 = load i64, i64* %16, align 8
  %148 = call i32 @spin_lock_irqsave(i32* %146, i64 %147)
  %149 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %18, align 8
  %150 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %178, label %153

153:                                              ; preds = %120
  %154 = load i64, i64* @jiffies, align 8
  %155 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %18, align 8
  %156 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %18, align 8
  %159 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %157, %160
  %162 = call i64 @time_after(i64 %154, i64 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %153
  %165 = load i64, i64* @jiffies, align 8
  %166 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %18, align 8
  %167 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %166, i32 0, i32 4
  store i64 %165, i64* %167, align 8
  %168 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %18, align 8
  %169 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %168, i32 0, i32 0
  store i32 1, i32* %169, align 8
  %170 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %18, align 8
  %171 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %170, i32 0, i32 3
  %172 = load i64, i64* @jiffies, align 8
  %173 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %18, align 8
  %174 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %172, %175
  %177 = call i32 @mod_timer(i32* %171, i64 %176)
  br label %178

178:                                              ; preds = %164, %153, %120
  %179 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %18, align 8
  %180 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %179, i32 0, i32 1
  %181 = load i64, i64* %16, align 8
  %182 = call i32 @spin_unlock_irqrestore(i32* %180, i64 %181)
  %183 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %184

184:                                              ; preds = %178, %72, %65, %59
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @D_RATE(i8*, ...) #1

declare dso_local i32 @il3945_rs_next_rate(%struct.il_priv*, i32) #1

declare dso_local i32 @il3945_collect_tx_data(%struct.il3945_rs_sta*, i32*, i64, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
