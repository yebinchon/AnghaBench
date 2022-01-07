; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rf5111_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rf5111_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }
%struct.ieee80211_channel = type { i64, i32 }
%struct.ath5k_athchan_2ghz = type { i32, i32 }

@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@AR5K_RF_BUFFER = common dso_local global i32 0, align 4
@AR5K_RF_BUFFER_CONTROL_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ieee80211_channel*)* @ath5k_hw_rf5111_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_rf5111_channel(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.ath5k_athchan_2ghz, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ieee80211_frequency_to_channel(i32 %14)
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %2
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ieee80211_frequency_to_channel(i32 %24)
  %26 = call i32 @ath5k_hw_rf5111_chan2athchan(i32 %25, %struct.ath5k_athchan_2ghz* %6)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %3, align 4
  br label %89

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.ath5k_athchan_2ghz, %struct.ath5k_athchan_2ghz* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = getelementptr inbounds %struct.ath5k_athchan_2ghz, %struct.ath5k_athchan_2ghz* %6, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ath5k_hw_bitswap(i32 %35, i32 8)
  %37 = and i32 %36, 255
  %38 = shl i32 %37, 5
  %39 = or i32 %38, 16
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %31, %2
  %41 = load i32, i32* %7, align 4
  %42 = icmp ult i32 %41, 145
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %43, %40
  store i32 1, i32* %10, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub i32 %48, 24
  %50 = call i32 @ath5k_hw_bitswap(i32 %49, i32 8)
  %51 = and i32 %50, 255
  %52 = shl i32 %51, 2
  %53 = load i32, i32* %10, align 4
  %54 = shl i32 %53, 1
  %55 = or i32 %52, %54
  %56 = or i32 %55, 1024
  %57 = or i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %70

58:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  %59 = load i32, i32* %7, align 4
  %60 = sub i32 %59, 24
  %61 = udiv i32 %60, 2
  %62 = call i32 @ath5k_hw_bitswap(i32 %61, i32 8)
  %63 = and i32 %62, 255
  %64 = shl i32 %63, 2
  %65 = load i32, i32* %10, align 4
  %66 = shl i32 %65, 1
  %67 = or i32 %64, %66
  %68 = or i32 %67, 1024
  %69 = or i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %58, %47
  %71 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, 255
  %74 = load i32, i32* %8, align 4
  %75 = and i32 %74, 255
  %76 = shl i32 %75, 8
  %77 = or i32 %73, %76
  %78 = load i32, i32* @AR5K_RF_BUFFER, align 4
  %79 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %71, i32 %77, i32 %78)
  %80 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %81 = load i32, i32* %9, align 4
  %82 = ashr i32 %81, 8
  %83 = and i32 %82, 255
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, 65280
  %86 = or i32 %83, %85
  %87 = load i32, i32* @AR5K_RF_BUFFER_CONTROL_3, align 4
  %88 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %80, i32 %86, i32 %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %70, %29
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @ath5k_hw_rf5111_chan2athchan(i32, %struct.ath5k_athchan_2ghz*) #1

declare dso_local i32 @ath5k_hw_bitswap(i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
