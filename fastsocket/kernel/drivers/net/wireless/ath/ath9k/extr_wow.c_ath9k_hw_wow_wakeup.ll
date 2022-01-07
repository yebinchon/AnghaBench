; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_wow.c_ath9k_hw_wow_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_wow.c_ath9k_hw_wow_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i64 }

@AR_WOW_PATTERN = common dso_local global i32 0, align 4
@AR_WOW_MAGIC_PAT_FOUND = common dso_local global i32 0, align 4
@AH_WOW_MAGIC_PATTERN_EN = common dso_local global i32 0, align 4
@AH_WOW_USER_PATTERN_EN = common dso_local global i32 0, align 4
@AR_WOW_KEEP_ALIVE_FAIL = common dso_local global i32 0, align 4
@AH_WOW_LINK_CHANGE = common dso_local global i32 0, align 4
@AR_WOW_BEACON_FAIL = common dso_local global i32 0, align 4
@AH_WOW_BEACON_MISS = common dso_local global i32 0, align 4
@AR_PCIE_PM_CTRL = common dso_local global i32 0, align 4
@AR_PMCTRL_WOW_PME_CLR = common dso_local global i32 0, align 4
@AR_PMCTRL_PWR_STATE_D1D3 = common dso_local global i32 0, align 4
@AR_WA = common dso_local global i32 0, align 4
@AR_WA_UNTIE_RESET_EN = common dso_local global i32 0, align 4
@AR_WA_POR_SHORT = common dso_local global i32 0, align 4
@AR_WA_RESET_EN = common dso_local global i32 0, align 4
@AR_RSSI_THR = common dso_local global i32 0, align 4
@INIT_RSSI_THR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_wow_wakeup(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %7 = load i32, i32* @AR_WOW_PATTERN, align 4
  %8 = call i32 @REG_READ(%struct.ath_hw* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @AR_WOW_STATUS(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %54

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @AR_WOW_MAGIC_PAT_FOUND, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @AH_WOW_MAGIC_PATTERN_EN, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @AR_WOW_PATTERN_FOUND(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @AH_WOW_USER_PATTERN_EN, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @AR_WOW_KEEP_ALIVE_FAIL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @AH_WOW_LINK_CHANGE, align 4
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @AR_WOW_BEACON_FAIL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @AH_WOW_BEACON_MISS, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %44
  br label %54

54:                                               ; preds = %53, %1
  %55 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %56 = load i32, i32* @AR_PCIE_PM_CTRL, align 4
  %57 = load i32, i32* @AR_PMCTRL_WOW_PME_CLR, align 4
  %58 = load i32, i32* @AR_PMCTRL_PWR_STATE_D1D3, align 4
  %59 = call i32 @REG_RMW(%struct.ath_hw* %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %61 = load i32, i32* @AR_WOW_PATTERN, align 4
  %62 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %63 = load i32, i32* @AR_WOW_PATTERN, align 4
  %64 = call i32 @REG_READ(%struct.ath_hw* %62, i32 %63)
  %65 = call i32 @AR_WOW_CLEAR_EVENTS(i32 %64)
  %66 = call i32 @REG_WRITE(%struct.ath_hw* %60, i32 %61, i32 %65)
  %67 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %68 = call i32 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %54
  %71 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %72 = load i32, i32* @AR_WA, align 4
  %73 = load i32, i32* @AR_WA_UNTIE_RESET_EN, align 4
  %74 = load i32, i32* @AR_WA_POR_SHORT, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @AR_WA_RESET_EN, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @REG_SET_BIT(%struct.ath_hw* %71, i32 %72, i32 %77)
  br label %79

79:                                               ; preds = %70, %54
  %80 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %81 = load i32, i32* @AR_RSSI_THR, align 4
  %82 = load i32, i32* @INIT_RSSI_THR, align 4
  %83 = call i32 @REG_WRITE(%struct.ath_hw* %80, i32 %81, i32 %82)
  %84 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %85 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %79
  %88 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %89 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %94 = call i32 @ath9k_hw_configpcipowersave(%struct.ath_hw* %93, i32 0)
  br label %95

95:                                               ; preds = %92, %87, %79
  %96 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %97 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @AR_WOW_STATUS(i32) #1

declare dso_local i64 @AR_WOW_PATTERN_FOUND(i32) #1

declare dso_local i32 @REG_RMW(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @AR_WOW_CLEAR_EVENTS(i32) #1

declare dso_local i32 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_configpcipowersave(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
