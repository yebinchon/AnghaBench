; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_beacon_dtim_pending_cab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_beacon_dtim_pending_cab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32*, i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.ieee80211_tim_ie = type { i64, i32 }

@WLAN_EID_TIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ath_beacon_dtim_pending_cab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_beacon_dtim_pending_cab(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ieee80211_mgmt*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_tim_ie*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = bitcast i32* %12 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %13, %struct.ieee80211_mgmt** %4, align 8
  %14 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  store i32* %26, i32** %6, align 8
  br label %27

27:                                               ; preds = %68, %1
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32*, i32** %6, align 8
  %31 = icmp ult i32* %29, %30
  br i1 %31, label %32, label %73

32:                                               ; preds = %27
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %5, align 8
  %35 = load i32, i32* %33, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %5, align 8
  %38 = load i32, i32* %36, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32*, i32** %6, align 8
  %44 = icmp ugt i32* %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %73

46:                                               ; preds = %32
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @WLAN_EID_TIM, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ult i64 %52, 16
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %73

55:                                               ; preds = %50
  %56 = load i32*, i32** %5, align 8
  %57 = bitcast i32* %56 to %struct.ieee80211_tim_ie*
  store %struct.ieee80211_tim_ie* %57, %struct.ieee80211_tim_ie** %9, align 8
  %58 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %9, align 8
  %59 = getelementptr inbounds %struct.ieee80211_tim_ie, %struct.ieee80211_tim_ie* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %73

63:                                               ; preds = %55
  %64 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %9, align 8
  %65 = getelementptr inbounds %struct.ieee80211_tim_ie, %struct.ieee80211_tim_ie* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, 1
  store i32 %67, i32* %2, align 4
  br label %74

68:                                               ; preds = %46
  %69 = load i32, i32* %8, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %5, align 8
  br label %27

73:                                               ; preds = %62, %54, %45, %27
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %63
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
