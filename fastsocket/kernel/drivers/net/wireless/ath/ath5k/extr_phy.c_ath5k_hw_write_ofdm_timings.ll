; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_write_ofdm_timings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_write_ofdm_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i32 }
%struct.ieee80211_channel = type { i64, i32 }

@AR5K_AR5212 = common dso_local global i64 0, align 8
@AR5K_MODE_11B = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AR5K_PHY_TIMING_3 = common dso_local global i32 0, align 4
@AR5K_PHY_TIMING_3_DSC_MAN = common dso_local global i32 0, align 4
@AR5K_PHY_TIMING_3_DSC_EXP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ieee80211_channel*)* @ath5k_hw_write_ofdm_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_write_ofdm_timings(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AR5K_AR5212, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AR5K_MODE_11B, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %17, %2
  %24 = phi i1 [ true, %2 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %28 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %33 [
    i32 129, label %30
    i32 130, label %31
    i32 128, label %32
  ]

30:                                               ; preds = %23
  store i32 80, i32* %11, align 4
  br label %34

31:                                               ; preds = %23
  store i32 20, i32* %11, align 4
  br label %34

32:                                               ; preds = %23
  store i32 10, i32* %11, align 4
  br label %34

33:                                               ; preds = %23
  store i32 40, i32* %11, align 4
  br label %34

34:                                               ; preds = %33, %32, %31, %30
  %35 = load i32, i32* %11, align 4
  %36 = shl i32 %35, 24
  %37 = mul nsw i32 5, %36
  %38 = sdiv i32 %37, 2
  %39 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %38, %41
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @ilog2(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47, %34
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %79

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %54, 24
  %56 = sub nsw i32 14, %55
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 24, %58
  %60 = sub nsw i32 %59, 1
  %61 = shl i32 1, %60
  %62 = add nsw i32 %57, %61
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 24, %64
  %66 = ashr i32 %63, %65
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %7, align 4
  %68 = sub nsw i32 %67, 16
  store i32 %68, i32* %9, align 4
  %69 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %70 = load i32, i32* @AR5K_PHY_TIMING_3, align 4
  %71 = load i32, i32* @AR5K_PHY_TIMING_3_DSC_MAN, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %69, i32 %70, i32 %71, i32 %72)
  %74 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %75 = load i32, i32* @AR5K_PHY_TIMING_3, align 4
  %76 = load i32, i32* @AR5K_PHY_TIMING_3_DSC_EXP, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %74, i32 %75, i32 %76, i32 %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %53, %50
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
