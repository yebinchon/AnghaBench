; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_tx_queue_reclaim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_tx_queue_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_2__*, %struct.il_tx_queue* }
%struct.TYPE_2__ = type { i32 (%struct.il_priv*, %struct.il_tx_queue*)* }
%struct.il_tx_queue = type { %struct.il_queue, %struct.sk_buff** }
%struct.il_queue = type { i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }

@.str = private unnamed_addr constant [75 x i8] c"Read idx for DMA queue txq id (%d), idx %d, is out of range [0-%d] %d %d.\0A\00", align 1
@IL4965_FIRST_AMPDU_QUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il4965_tx_queue_reclaim(%struct.il_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.il_tx_queue*, align 8
  %9 = alloca %struct.il_queue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %14 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %13, i32 0, i32 1
  %15 = load %struct.il_tx_queue*, %struct.il_tx_queue** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %15, i64 %17
  store %struct.il_tx_queue* %18, %struct.il_tx_queue** %8, align 8
  %19 = load %struct.il_tx_queue*, %struct.il_tx_queue** %8, align 8
  %20 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %19, i32 0, i32 0
  store %struct.il_queue* %20, %struct.il_queue** %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.il_queue*, %struct.il_queue** %9, align 8
  %23 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %3
  %27 = load %struct.il_queue*, %struct.il_queue** %9, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @il_queue_used(%struct.il_queue* %27, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26, %3
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.il_queue*, %struct.il_queue** %9, align 8
  %35 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.il_queue*, %struct.il_queue** %9, align 8
  %38 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.il_queue*, %struct.il_queue** %9, align 8
  %41 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @IL_ERR(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %36, i32 %39, i32 %42)
  store i32 0, i32* %4, align 4
  br label %125

44:                                               ; preds = %26
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.il_queue*, %struct.il_queue** %9, align 8
  %47 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @il_queue_inc_wrap(i32 %45, i32 %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %112, %44
  %52 = load %struct.il_queue*, %struct.il_queue** %9, align 8
  %53 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %123

57:                                               ; preds = %51
  %58 = load %struct.il_tx_queue*, %struct.il_tx_queue** %8, align 8
  %59 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %58, i32 0, i32 1
  %60 = load %struct.sk_buff**, %struct.sk_buff*** %59, align 8
  %61 = load %struct.il_tx_queue*, %struct.il_tx_queue** %8, align 8
  %62 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %60, i64 %65
  %67 = load %struct.sk_buff*, %struct.sk_buff** %66, align 8
  store %struct.sk_buff* %67, %struct.sk_buff** %12, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %69 = icmp eq %struct.sk_buff* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i64 @WARN_ON_ONCE(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %57
  br label %112

74:                                               ; preds = %57
  %75 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %78, %struct.ieee80211_hdr** %11, align 8
  %79 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %80 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @ieee80211_is_data_qos(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %84, %74
  %88 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @IL4965_FIRST_AMPDU_QUEUE, align 4
  %92 = icmp sge i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @il4965_tx_status(%struct.il_priv* %88, %struct.sk_buff* %89, i32 %93)
  %95 = load %struct.il_tx_queue*, %struct.il_tx_queue** %8, align 8
  %96 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %95, i32 0, i32 1
  %97 = load %struct.sk_buff**, %struct.sk_buff*** %96, align 8
  %98 = load %struct.il_tx_queue*, %struct.il_tx_queue** %8, align 8
  %99 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %97, i64 %102
  store %struct.sk_buff* null, %struct.sk_buff** %103, align 8
  %104 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %105 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32 (%struct.il_priv*, %struct.il_tx_queue*)*, i32 (%struct.il_priv*, %struct.il_tx_queue*)** %107, align 8
  %109 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %110 = load %struct.il_tx_queue*, %struct.il_tx_queue** %8, align 8
  %111 = call i32 %108(%struct.il_priv* %109, %struct.il_tx_queue* %110)
  br label %112

112:                                              ; preds = %87, %73
  %113 = load %struct.il_queue*, %struct.il_queue** %9, align 8
  %114 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.il_queue*, %struct.il_queue** %9, align 8
  %117 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @il_queue_inc_wrap(i32 %115, i32 %118)
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.il_queue*, %struct.il_queue** %9, align 8
  %122 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  br label %51

123:                                              ; preds = %51
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %123, %31
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i64 @il_queue_used(%struct.il_queue*, i32) #1

declare dso_local i32 @IL_ERR(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @il_queue_inc_wrap(i32, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @il4965_tx_status(%struct.il_priv*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
