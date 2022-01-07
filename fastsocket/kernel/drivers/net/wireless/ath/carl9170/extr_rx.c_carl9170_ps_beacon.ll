; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_ps_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_ps_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_tim_ie = type { i32, i32 }

@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@FCS_LEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@WLAN_EID_TIM = common dso_local global i32 0, align 4
@PS_OFF_BCN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*, i8*, i32)* @carl9170_ps_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_ps_beacon(%struct.ar9170* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.ieee80211_tim_ie*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %13, %struct.ieee80211_hdr** %7, align 8
  %14 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %15 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %149

28:                                               ; preds = %3
  %29 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ieee80211_is_beacon(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %149

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @FCS_LEN, align 4
  %38 = add nsw i32 40, %37
  %39 = icmp ule i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %149

41:                                               ; preds = %35
  %42 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %43 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %46 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ether_addr_equal(i32 %44, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %53 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51, %41
  br label %149

58:                                               ; preds = %51
  %59 = load i32, i32* @jiffies, align 4
  %60 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %61 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @FCS_LEN, align 4
  %66 = sub i32 %64, %65
  %67 = load i32, i32* @WLAN_EID_TIM, align 4
  %68 = call i32* @carl9170_find_ie(i8* %63, i32 %66, i32 %67)
  store i32* %68, i32** %9, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %58
  br label %149

72:                                               ; preds = %58
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp ult i64 %76, 8
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %149

79:                                               ; preds = %72
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %10, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = bitcast i32* %84 to %struct.ieee80211_tim_ie*
  store %struct.ieee80211_tim_ie* %85, %struct.ieee80211_tim_ie** %8, align 8
  %86 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %87 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %86, i32 0, i32 2
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 @WARN_ON_ONCE(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %112, label %97

97:                                               ; preds = %79
  %98 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %8, align 8
  %99 = getelementptr inbounds %struct.ieee80211_tim_ie, %struct.ieee80211_tim_ie* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %100, 1
  %102 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %103 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %102, i32 0, i32 2
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = srem i32 %101, %107
  %109 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %110 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  br label %112

112:                                              ; preds = %97, %79
  %113 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %8, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %116 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ieee80211_check_tim(%struct.ieee80211_tim_ie* %113, i32 %114, i32 %118)
  store i32 %119, i32* %11, align 4
  %120 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %8, align 8
  %121 = getelementptr inbounds %struct.ieee80211_tim_ie, %struct.ieee80211_tim_ie* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 1
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %11, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %142, label %132

132:                                              ; preds = %112
  %133 = load i32, i32* @PS_OFF_BCN, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %136 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, %134
  store i32 %139, i32* %137, align 4
  %140 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %141 = call i32 @carl9170_ps_check(%struct.ar9170* %140)
  br label %149

142:                                              ; preds = %112
  %143 = load i32, i32* @PS_OFF_BCN, align 4
  %144 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %145 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %143
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %27, %34, %40, %57, %71, %78, %142, %132
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ieee80211_is_beacon(i32) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32* @carl9170_find_ie(i8*, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ieee80211_check_tim(%struct.ieee80211_tim_ie*, i32, i32) #1

declare dso_local i32 @carl9170_ps_check(%struct.ar9170*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
