; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_wait_for_synth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_wait_for_synth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i64 }
%struct.ieee80211_channel = type { i64 }

@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_PHY_RX_DELAY = common dso_local global i32 0, align 4
@AR5K_PHY_RX_DELAY_M = common dso_local global i32 0, align 4
@AR5K_MODE_11B = common dso_local global i64 0, align 8
@AR5K_BWMODE_10MHZ = common dso_local global i64 0, align 8
@AR5K_BWMODE_5MHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, %struct.ieee80211_channel*)* @ath5k_hw_wait_for_synth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_hw_wait_for_synth(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %6 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AR5K_AR5210, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %55

11:                                               ; preds = %2
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %13 = load i32, i32* @AR5K_PHY_RX_DELAY, align 4
  %14 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %12, i32 %13)
  %15 = load i32, i32* @AR5K_PHY_RX_DELAY_M, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AR5K_MODE_11B, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %11
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 %23, 2
  %25 = sdiv i32 %24, 22
  br label %29

26:                                               ; preds = %11
  %27 = load i32, i32* %5, align 4
  %28 = sdiv i32 %27, 10
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i32 [ %25, %22 ], [ %28, %26 ]
  store i32 %30, i32* %5, align 4
  %31 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %32 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AR5K_BWMODE_10MHZ, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = shl i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %29
  %40 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %41 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AR5K_BWMODE_5MHZ, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = shl i32 %46, 2
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %39
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 100, %49
  %51 = load i32, i32* %5, align 4
  %52 = mul nsw i32 2, %51
  %53 = add nsw i32 100, %52
  %54 = call i32 @usleep_range(i32 %50, i32 %53)
  br label %57

55:                                               ; preds = %2
  %56 = call i32 @usleep_range(i32 1000, i32 1500)
  br label %57

57:                                               ; preds = %55, %48
  ret void
}

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
