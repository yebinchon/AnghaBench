; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00dev.c_rt2x00lib_rxdone_check_ps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00dev.c_rt2x00lib_rxdone_check_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.rxdone_entry_desc = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tim_ie = type { i32 }

@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@FCS_LEN = common dso_local global i64 0, align 8
@RXDONE_MY_BSS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@WLAN_EID_TIM = common dso_local global i32 0, align 4
@CONFIG_POWERSAVING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.sk_buff*, %struct.rxdone_entry_desc*)* @rt2x00lib_rxdone_check_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00lib_rxdone_check_ps(%struct.rt2x00_dev* %0, %struct.sk_buff* %1, %struct.rxdone_entry_desc* %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rxdone_entry_desc*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.ieee80211_tim_ie*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.rxdone_entry_desc* %2, %struct.rxdone_entry_desc** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %16, %struct.ieee80211_hdr** %7, align 8
  %17 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ieee80211_is_beacon(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %24 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %23, i32 0, i32 5
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %22, %3
  %34 = phi i1 [ true, %3 ], [ %32, %22 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %118

39:                                               ; preds = %33
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FCS_LEN, align 8
  %44 = add nsw i64 40, %43
  %45 = icmp sle i64 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %118

47:                                               ; preds = %39
  %48 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %6, align 8
  %49 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RXDONE_MY_BSS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %56 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54, %47
  br label %118

60:                                               ; preds = %54
  %61 = load i32, i32* @jiffies, align 4
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %63 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @FCS_LEN, align 8
  %71 = sub nsw i64 %69, %70
  %72 = load i32, i32* @WLAN_EID_TIM, align 4
  %73 = call i32* @rt2x00lib_find_ie(i64 %66, i64 %71, i32 %72)
  store i32* %73, i32** %9, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %60
  br label %118

77:                                               ; preds = %60
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp ult i64 %81, 4
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %118

84:                                               ; preds = %77
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %10, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = bitcast i32* %89 to %struct.ieee80211_tim_ie*
  store %struct.ieee80211_tim_ie* %90, %struct.ieee80211_tim_ie** %8, align 8
  %91 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %8, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %94 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ieee80211_check_tim(%struct.ieee80211_tim_ie* %91, i32 %92, i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %8, align 8
  %98 = getelementptr inbounds %struct.ieee80211_tim_ie, %struct.ieee80211_tim_ie* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 1
  %101 = load i32, i32* %11, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %84
  %106 = load i32, i32* @CONFIG_POWERSAVING, align 4
  %107 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %108 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %107, i32 0, i32 2
  %109 = call i32 @test_bit(i32 %106, i32* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %105
  %112 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %113 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %116 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %115, i32 0, i32 0
  %117 = call i32 @queue_work(i32 %114, i32* %116)
  br label %118

118:                                              ; preds = %38, %46, %59, %76, %83, %111, %105, %84
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ieee80211_is_beacon(i32) #1

declare dso_local i32* @rt2x00lib_find_ie(i64, i64, i32) #1

declare dso_local i32 @ieee80211_check_tim(%struct.ieee80211_tim_ie*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
