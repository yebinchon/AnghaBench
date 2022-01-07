; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_clockrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_clockrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_conf = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.ath_common = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.ieee80211_conf }

@ATH9K_CLOCK_RATE_CCK = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@ATH9K_CLOCK_RATE_2GHZ_OFDM = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_FASTCLOCK = common dso_local global i32 0, align 4
@ATH9K_CLOCK_FAST_RATE_5GHZ_OFDM = common dso_local global i32 0, align 4
@ATH9K_CLOCK_RATE_5GHZ_OFDM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_hw_set_clockrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_set_clockrate(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ieee80211_conf*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %7 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %6)
  %8 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store %struct.ieee80211_conf* %10, %struct.ieee80211_conf** %3, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %11)
  store %struct.ath_common* %12, %struct.ath_common** %4, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %14 = call i64 @AR_SREV_9287(%struct.ath_hw* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %18 = call i64 @AR_SREV_9287_13_OR_LATER(%struct.ath_hw* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 117, i32* %5, align 4
  br label %54

21:                                               ; preds = %16, %1
  %22 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %23 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ATH9K_CLOCK_RATE_CCK, align 4
  store i32 %27, i32* %5, align 4
  br label %53

28:                                               ; preds = %21
  %29 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %3, align 8
  %30 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @ATH9K_CLOCK_RATE_2GHZ_OFDM, align 4
  store i32 %38, i32* %5, align 4
  br label %52

39:                                               ; preds = %28
  %40 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %41 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ATH9K_HW_CAP_FASTCLOCK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @ATH9K_CLOCK_FAST_RATE_5GHZ_OFDM, align 4
  store i32 %48, i32* %5, align 4
  br label %51

49:                                               ; preds = %39
  %50 = load i32, i32* @ATH9K_CLOCK_RATE_5GHZ_OFDM, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %47
  br label %52

52:                                               ; preds = %51, %37
  br label %53

53:                                               ; preds = %52, %26
  br label %54

54:                                               ; preds = %53, %20
  %55 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %3, align 8
  %56 = call i64 @conf_is_ht40(%struct.ieee80211_conf* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = mul i32 %59, 2
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %58, %54
  %62 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %63 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %61
  %67 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %68 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @IS_CHAN_HALF_RATE(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %5, align 4
  %74 = udiv i32 %73, 2
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %72, %66
  %76 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %77 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @IS_CHAN_QUARTER_RATE(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* %5, align 4
  %83 = udiv i32 %82, 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %81, %75
  br label %85

85:                                               ; preds = %84, %61
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %88 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9287(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9287_13_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @conf_is_ht40(%struct.ieee80211_conf*) #1

declare dso_local i64 @IS_CHAN_HALF_RATE(i64) #1

declare dso_local i64 @IS_CHAN_QUARTER_RATE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
