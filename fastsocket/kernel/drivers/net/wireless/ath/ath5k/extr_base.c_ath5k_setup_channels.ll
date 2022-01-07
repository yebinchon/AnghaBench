; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_setup_channels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_setup_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }
%struct.ieee80211_channel = type { i32, i32, i32 }

@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"bad mode, not copying channels\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ieee80211_channel*, i32, i32)* @ath5k_setup_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_setup_channels(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath5k_hw*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %6, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %20 [
    i32 130, label %16
    i32 129, label %18
    i32 128, label %18
  ]

16:                                               ; preds = %4
  store i32 220, i32* %11, align 4
  %17 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  store i32 %17, i32* %14, align 4
  br label %23

18:                                               ; preds = %4, %4
  store i32 26, i32* %11, align 4
  %19 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  store i32 %19, i32* %14, align 4
  br label %23

20:                                               ; preds = %4
  %21 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %22 = call i32 @ATH5K_WARN(%struct.ath5k_hw* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %82

23:                                               ; preds = %18, %16
  store i32 0, i32* %10, align 4
  store i32 1, i32* %13, align 4
  br label %24

24:                                               ; preds = %77, %23
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ule i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ult i32 %29, %30
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  br i1 %33, label %34, label %80

34:                                               ; preds = %32
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @ieee80211_channel_to_frequency(i32 %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %77

41:                                               ; preds = %34
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %43, i64 %45
  %47 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %46, i32 0, i32 0
  store i32 %42, i32* %47, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %49, i64 %51
  %53 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %52, i32 0, i32 1
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %55, i64 %57
  %59 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %58, i32 0, i32 2
  store i32 %54, i32* %59, align 4
  %60 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %61 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %61, i64 %63
  %65 = call i32 @ath5k_channel_ok(%struct.ath5k_hw* %60, %struct.ieee80211_channel* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %41
  br label %77

68:                                               ; preds = %41
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @ath5k_is_standard_channel(i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %77

74:                                               ; preds = %68
  %75 = load i32, i32* %10, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %74, %73, %67, %40
  %78 = load i32, i32* %13, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %24

80:                                               ; preds = %32
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %80, %20
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @ATH5K_WARN(%struct.ath5k_hw*, i8*) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local i32 @ath5k_channel_ok(%struct.ath5k_hw*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ath5k_is_standard_channel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
