; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_start_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_start_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.mwl8k_ampdu_stream = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AMPDU_STREAM_NEW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Failed to start stream for %pM %d: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Started stream for %pM %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.mwl8k_ampdu_stream*)* @mwl8k_start_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_start_stream(%struct.ieee80211_hw* %0, %struct.mwl8k_ampdu_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.mwl8k_ampdu_stream*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.mwl8k_ampdu_stream* %1, %struct.mwl8k_ampdu_stream** %5, align 8
  %7 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %5, align 8
  %8 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AMPDU_STREAM_NEW, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

13:                                               ; preds = %2
  %14 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %5, align 8
  %15 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %5, align 8
  %18 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ieee80211_start_tx_ba_session(%struct.TYPE_2__* %16, i32 %19, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %13
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %5, align 8
  %28 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %5, align 8
  %33 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i32, i8*, i32, i32, ...) @wiphy_debug(i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i32 %35)
  br label %50

37:                                               ; preds = %13
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %5, align 8
  %42 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %5, align 8
  %47 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i8*, i32, i32, ...) @wiphy_debug(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %37, %23
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %12
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @ieee80211_start_tx_ba_session(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @wiphy_debug(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
