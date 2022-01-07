; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_override_ini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_override_ini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }

@AR_DIAG_SW = common dso_local global i32 0, align 4
@AR_DIAG_RX_DIS = common dso_local global i32 0, align 4
@AR_DIAG_RX_ABORT = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2 = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2_HWWAR1 = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2_HWWAR2 = common dso_local global i32 0, align 4
@AR_PHY_CCK_DETECT = common dso_local global i32 0, align 4
@AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV = common dso_local global i32 0, align 4
@AR_PHY_HEAVY_CLIP_FACTOR_RIFS = common dso_local global i32 0, align 4
@AR_PHY_RIFS_INIT_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ar5008_hw_override_ini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5008_hw_override_ini(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = load i32, i32* @AR_DIAG_SW, align 4
  %8 = load i32, i32* @AR_DIAG_RX_DIS, align 4
  %9 = load i32, i32* @AR_DIAG_RX_ABORT, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @REG_SET_BIT(%struct.ath_hw* %6, i32 %7, i32 %10)
  %12 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %13 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %2
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = load i32, i32* @AR_PCU_MISC_MODE2, align 4
  %18 = call i32 @REG_READ(%struct.ath_hw* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %20 = call i32 @AR_SREV_9271(%struct.ath_hw* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @AR_PCU_MISC_MODE2_HWWAR1, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %22, %15
  %28 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %29 = call i64 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @AR_PCU_MISC_MODE2_HWWAR2, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %31, %27
  %37 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %38 = load i32, i32* @AR_PCU_MISC_MODE2, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @REG_WRITE(%struct.ath_hw* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %2
  %42 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %43 = load i32, i32* @AR_PHY_CCK_DETECT, align 4
  %44 = load i32, i32* @AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV, align 4
  %45 = call i32 @REG_SET_BIT(%struct.ath_hw* %42, i32 %43, i32 %44)
  %46 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %47 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %72

50:                                               ; preds = %41
  %51 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %52 = call i32 @REG_WRITE(%struct.ath_hw* %51, i32 41516, i32 17)
  %53 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %54 = call i64 @AR_SREV_9100(%struct.ath_hw* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %58 = call i64 @AR_SREV_9160(%struct.ath_hw* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %56, %50
  %61 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %62 = load i32, i32* @AR_PHY_HEAVY_CLIP_FACTOR_RIFS, align 4
  %63 = call i32 @REG_READ(%struct.ath_hw* %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @AR_PHY_RIFS_INIT_DELAY, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %69 = load i32, i32* @AR_PHY_HEAVY_CLIP_FACTOR_RIFS, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @REG_WRITE(%struct.ath_hw* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %49, %60, %56
  ret void
}

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @AR_SREV_9271(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9160(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
