; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_phy.c_ar9002_hw_spectral_scan_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_phy.c_ar9002_hw_spectral_scan_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_spec_scan = type { i32, i32, i32, i64, i64, i32 }

@AR_PHY_SPECTRAL_SCAN = common dso_local global i32 0, align 4
@AR_PHY_SPECTRAL_SCAN_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0 = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_FFT_ENA = common dso_local global i32 0, align 4
@AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT = common dso_local global i32 0, align 4
@AR_PHY_SPECTRAL_SCAN_COUNT = common dso_local global i32 0, align 4
@AR_PHY_SPECTRAL_SCAN_PERIOD = common dso_local global i32 0, align 4
@AR_PHY_SPECTRAL_SCAN_FFT_PERIOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath_spec_scan*)* @ar9002_hw_spectral_scan_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9002_hw_spectral_scan_config(%struct.ath_hw* %0, %struct.ath_spec_scan* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_spec_scan*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath_spec_scan* %1, %struct.ath_spec_scan** %4, align 8
  %6 = load %struct.ath_spec_scan*, %struct.ath_spec_scan** %4, align 8
  %7 = getelementptr inbounds %struct.ath_spec_scan, %struct.ath_spec_scan* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = load i32, i32* @AR_PHY_SPECTRAL_SCAN, align 4
  %13 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_ENABLE, align 4
  %14 = call i32 @REG_CLR_BIT(%struct.ath_hw* %11, i32 %12, i32 %13)
  br label %73

15:                                               ; preds = %2
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = load i32, i32* @AR_PHY_RADAR_0, align 4
  %18 = load i32, i32* @AR_PHY_RADAR_0_FFT_ENA, align 4
  %19 = call i32 @REG_SET_BIT(%struct.ath_hw* %16, i32 %17, i32 %18)
  %20 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %21 = load i32, i32* @AR_PHY_SPECTRAL_SCAN, align 4
  %22 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_ENABLE, align 4
  %23 = call i32 @REG_SET_BIT(%struct.ath_hw* %20, i32 %21, i32 %22)
  %24 = load %struct.ath_spec_scan*, %struct.ath_spec_scan** %4, align 8
  %25 = getelementptr inbounds %struct.ath_spec_scan, %struct.ath_spec_scan* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %15
  %29 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %30 = load i32, i32* @AR_PHY_SPECTRAL_SCAN, align 4
  %31 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT, align 4
  %32 = call i32 @REG_SET_BIT(%struct.ath_hw* %29, i32 %30, i32 %31)
  br label %38

33:                                               ; preds = %15
  %34 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %35 = load i32, i32* @AR_PHY_SPECTRAL_SCAN, align 4
  %36 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT, align 4
  %37 = call i32 @REG_CLR_BIT(%struct.ath_hw* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.ath_spec_scan*, %struct.ath_spec_scan** %4, align 8
  %40 = getelementptr inbounds %struct.ath_spec_scan, %struct.ath_spec_scan* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %5, align 4
  %42 = load %struct.ath_spec_scan*, %struct.ath_spec_scan** %4, align 8
  %43 = getelementptr inbounds %struct.ath_spec_scan, %struct.ath_spec_scan* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 128, i32* %5, align 4
  br label %53

47:                                               ; preds = %38
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, 128
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 127, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %47
  br label %53

53:                                               ; preds = %52, %46
  %54 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %55 = load i32, i32* @AR_PHY_SPECTRAL_SCAN, align 4
  %56 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_COUNT, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %60 = load i32, i32* @AR_PHY_SPECTRAL_SCAN, align 4
  %61 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_PERIOD, align 4
  %62 = load %struct.ath_spec_scan*, %struct.ath_spec_scan** %4, align 8
  %63 = getelementptr inbounds %struct.ath_spec_scan, %struct.ath_spec_scan* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %59, i32 %60, i32 %61, i32 %64)
  %66 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %67 = load i32, i32* @AR_PHY_SPECTRAL_SCAN, align 4
  %68 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_FFT_PERIOD, align 4
  %69 = load %struct.ath_spec_scan*, %struct.ath_spec_scan** %4, align 8
  %70 = getelementptr inbounds %struct.ath_spec_scan, %struct.ath_spec_scan* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %66, i32 %67, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %53, %10
  ret void
}

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
