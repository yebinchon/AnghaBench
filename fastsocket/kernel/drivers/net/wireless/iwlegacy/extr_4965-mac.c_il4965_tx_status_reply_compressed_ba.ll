; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_tx_status_reply_compressed_ba.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_tx_status_reply_compressed_ba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.il_ht_agg = type { i32, i32, i32, i32, i64 }
%struct.il_compressed_ba_resp = type { i32, i32, i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Received BA when not expected\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"BA %d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"more frames than bitmap size\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s ON i=%d idx=%d raw=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"NACK\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Bitmap %llx\0A\00", align 1
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_AMPDU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.il_ht_agg*, %struct.il_compressed_ba_resp*)* @il4965_tx_status_reply_compressed_ba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_tx_status_reply_compressed_ba(%struct.il_priv* %0, %struct.il_ht_agg* %1, %struct.il_compressed_ba_resp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca %struct.il_ht_agg*, align 8
  %7 = alloca %struct.il_compressed_ba_resp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee80211_tx_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %5, align 8
  store %struct.il_ht_agg* %1, %struct.il_ht_agg** %6, align 8
  store %struct.il_compressed_ba_resp* %2, %struct.il_compressed_ba_resp** %7, align 8
  %17 = load %struct.il_compressed_ba_resp*, %struct.il_compressed_ba_resp** %7, align 8
  %18 = getelementptr inbounds %struct.il_compressed_ba_resp, %struct.il_compressed_ba_resp* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.il_compressed_ba_resp*, %struct.il_compressed_ba_resp** %7, align 8
  %22 = getelementptr inbounds %struct.il_compressed_ba_resp, %struct.il_compressed_ba_resp* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  store i32 %24, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %25 = load %struct.il_ht_agg*, %struct.il_ht_agg** %6, align 8
  %26 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %3
  %34 = load %struct.il_compressed_ba_resp*, %struct.il_compressed_ba_resp** %7, align 8
  %35 = getelementptr inbounds %struct.il_compressed_ba_resp, %struct.il_compressed_ba_resp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 @IL_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %33
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %167

44:                                               ; preds = %3
  %45 = load %struct.il_ht_agg*, %struct.il_ht_agg** %6, align 8
  %46 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.il_ht_agg*, %struct.il_ht_agg** %6, align 8
  %48 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.il_compressed_ba_resp*, %struct.il_compressed_ba_resp** %7, align 8
  %51 = getelementptr inbounds %struct.il_compressed_ba_resp, %struct.il_compressed_ba_resp* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @D_TX_REPLY(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load %struct.il_ht_agg*, %struct.il_ht_agg** %6, align 8
  %55 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = ashr i32 %57, 4
  %59 = call i32 @SEQ_TO_IDX(i32 %58)
  %60 = sub nsw i32 %56, %59
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %44
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 256
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %44
  %67 = load %struct.il_ht_agg*, %struct.il_ht_agg** %6, align 8
  %68 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sub nsw i32 64, %70
  %72 = icmp sgt i32 %69, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = call i32 (i8*, ...) @D_TX_REPLY(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %167

75:                                               ; preds = %66
  %76 = load %struct.il_compressed_ba_resp*, %struct.il_compressed_ba_resp** %7, align 8
  %77 = getelementptr inbounds %struct.il_compressed_ba_resp, %struct.il_compressed_ba_resp* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le64_to_cpu(i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = ashr i32 %79, %80
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load %struct.il_ht_agg*, %struct.il_ht_agg** %6, align 8
  %84 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %82, %85
  store i32 %86, i32* %16, align 4
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %90, %75
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %119

90:                                               ; preds = %87
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = and i64 %92, 1
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.il_ht_agg*, %struct.il_ht_agg** %6, align 8
  %104 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %105, %106
  %108 = and i32 %107, 255
  %109 = load %struct.il_ht_agg*, %struct.il_ht_agg** %6, align 8
  %110 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %111, %112
  %114 = call i32 (i8*, ...) @D_TX_REPLY(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %101, i32 %102, i32 %108, i32 %113)
  %115 = load i32, i32* %16, align 4
  %116 = ashr i32 %115, 1
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %87

119:                                              ; preds = %87
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = call i32 (i8*, ...) @D_TX_REPLY(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i64 %121)
  %123 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %124 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %123, i32 0, i32 0
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.il_ht_agg*, %struct.il_ht_agg** %6, align 8
  %132 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32 %136)
  store %struct.ieee80211_tx_info* %137, %struct.ieee80211_tx_info** %14, align 8
  %138 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %139 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %138, i32 0, i32 0
  %140 = call i32 @memset(%struct.TYPE_4__* %139, i32 0, i32 8)
  %141 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %142 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %143 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  %146 = load i32, i32* @IEEE80211_TX_STAT_AMPDU, align 4
  %147 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %148 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* %13, align 4
  %152 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %153 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  store i32 %151, i32* %154, align 4
  %155 = load %struct.il_ht_agg*, %struct.il_ht_agg** %6, align 8
  %156 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %159 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  store i32 %157, i32* %160, align 4
  %161 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %162 = load %struct.il_ht_agg*, %struct.il_ht_agg** %6, align 8
  %163 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %166 = call i32 @il4965_hwrate_to_tx_control(%struct.il_priv* %161, i32 %164, %struct.ieee80211_tx_info* %165)
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %119, %73, %41
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @D_TX_REPLY(i8*, ...) #1

declare dso_local i32 @SEQ_TO_IDX(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @il4965_hwrate_to_tx_control(%struct.il_priv*, i32, %struct.ieee80211_tx_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
