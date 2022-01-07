; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_phy_calibrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_phy_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i32 }
%struct.ieee80211_channel = type { i64, i32 }

@AR5K_RF5110 = common dso_local global i64 0, align 8
@ATH5K_DEBUG_CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"No I/Q correction performed (%uMHz)\0A\00", align 1
@AR5K_CALIBRATION_FULL = common dso_local global i32 0, align 4
@AR5K_RF5111 = common dso_local global i64 0, align 8
@AR5K_RF5112 = common dso_local global i64 0, align 8
@AR5K_MODE_11B = common dso_local global i64 0, align 8
@AR5K_CALIBRATION_NF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_phy_calibrate(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %7 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %8 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AR5K_RF5110, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %15 = call i32 @ath5k_hw_rf5110_calibrate(%struct.ath5k_hw* %13, %struct.ieee80211_channel* %14)
  store i32 %15, i32* %3, align 4
  br label %68

16:                                               ; preds = %2
  %17 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %18 = call i32 @ath5k_hw_rf511x_iq_calibrate(%struct.ath5k_hw* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %23 = load i32, i32* @ATH5K_DEBUG_CALIBRATE, align 4
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %22, i32 %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %21, %16
  %29 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %30 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @AR5K_CALIBRATION_FULL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %28
  %36 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %37 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AR5K_RF5111, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %43 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AR5K_RF5112, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41, %35
  %48 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %49 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AR5K_MODE_11B, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %55 = call i32 @ath5k_hw_request_rfgain_probe(%struct.ath5k_hw* %54)
  br label %56

56:                                               ; preds = %53, %47, %41, %28
  %57 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %58 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @AR5K_CALIBRATION_NF, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %65 = call i32 @ath5k_hw_update_noise_floor(%struct.ath5k_hw* %64)
  br label %66

66:                                               ; preds = %63, %56
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %12
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @ath5k_hw_rf5110_calibrate(%struct.ath5k_hw*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ath5k_hw_rf511x_iq_calibrate(%struct.ath5k_hw*) #1

declare dso_local i32 @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw*, i32, i8*, i32) #1

declare dso_local i32 @ath5k_hw_request_rfgain_probe(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_update_noise_floor(%struct.ath5k_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
