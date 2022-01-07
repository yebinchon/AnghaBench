; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_set_antenna.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_set_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath5k_hw* }
%struct.ath5k_hw = type { i32 }

@AR5K_ANTMODE_FIXED_A = common dso_local global i32 0, align 4
@AR5K_ANTMODE_FIXED_B = common dso_local global i32 0, align 4
@AR5K_ANTMODE_DEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32)* @ath5k_set_antenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_set_antenna(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath5k_hw*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  store %struct.ath5k_hw* %11, %struct.ath5k_hw** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %19 = load i32, i32* @AR5K_ANTMODE_FIXED_A, align 4
  %20 = call i32 @ath5k_hw_set_antenna_mode(%struct.ath5k_hw* %18, i32 %19)
  br label %48

21:                                               ; preds = %14, %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %29 = load i32, i32* @AR5K_ANTMODE_FIXED_B, align 4
  %30 = call i32 @ath5k_hw_set_antenna_mode(%struct.ath5k_hw* %28, i32 %29)
  br label %47

31:                                               ; preds = %24, %21
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 3
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 3
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %41 = load i32, i32* @AR5K_ANTMODE_DEFAULT, align 4
  %42 = call i32 @ath5k_hw_set_antenna_mode(%struct.ath5k_hw* %40, i32 %41)
  br label %46

43:                                               ; preds = %35, %31
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %49

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %27
  br label %48

48:                                               ; preds = %47, %17
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @ath5k_hw_set_antenna_mode(%struct.ath5k_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
