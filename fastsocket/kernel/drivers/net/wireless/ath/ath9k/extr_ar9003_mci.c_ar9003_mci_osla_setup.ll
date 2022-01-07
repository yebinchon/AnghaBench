; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_osla_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_osla_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i32 }

@AR_BTCOEX_CTRL = common dso_local global i32 0, align 4
@AR_BTCOEX_CTRL_ONE_STEP_LOOK_AHEAD_EN = common dso_local global i32 0, align 4
@AR_MCI_SCHD_TABLE_2 = common dso_local global i32 0, align 4
@AR_MCI_SCHD_TABLE_2_HW_BASED = common dso_local global i32 0, align 4
@AR_MCI_SCHD_TABLE_2_MEM_BASED = common dso_local global i32 0, align 4
@AR_MCI_MISC = common dso_local global i32 0, align 4
@AR_MCI_MISC_HW_FIX_EN = common dso_local global i32 0, align 4
@ATH_MCI_CONFIG_DISABLE_AGGR_THRESH = common dso_local global i32 0, align 4
@ATH_MCI_CONFIG_AGGR_THRESH = common dso_local global i32 0, align 4
@AR_BTCOEX_CTRL_AGGR_THRESH = common dso_local global i32 0, align 4
@AR_BTCOEX_CTRL_TIME_TO_NEXT_BT_THRESH_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar9003_mci_osla_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_mci_osla_setup(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath9k_hw_mci*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.ath9k_hw_mci* %9, %struct.ath9k_hw_mci** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %14 = load i32, i32* @AR_BTCOEX_CTRL, align 4
  %15 = load i32, i32* @AR_BTCOEX_CTRL_ONE_STEP_LOOK_AHEAD_EN, align 4
  %16 = call i32 @REG_CLR_BIT(%struct.ath_hw* %13, i32 %14, i32 %15)
  br label %66

17:                                               ; preds = %2
  %18 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %19 = load i32, i32* @AR_MCI_SCHD_TABLE_2, align 4
  %20 = load i32, i32* @AR_MCI_SCHD_TABLE_2_HW_BASED, align 4
  %21 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %18, i32 %19, i32 %20, i32 1)
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = load i32, i32* @AR_MCI_SCHD_TABLE_2, align 4
  %24 = load i32, i32* @AR_MCI_SCHD_TABLE_2_MEM_BASED, align 4
  %25 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %22, i32 %23, i32 %24, i32 1)
  %26 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %27 = call i64 @AR_SREV_9565(%struct.ath_hw* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %31 = load i32, i32* @AR_MCI_MISC, align 4
  %32 = load i32, i32* @AR_MCI_MISC_HW_FIX_EN, align 4
  %33 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %30, i32 %31, i32 %32, i32 1)
  br label %34

34:                                               ; preds = %29, %17
  %35 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %36 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ATH_MCI_CONFIG_DISABLE_AGGR_THRESH, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %34
  %42 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %43 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ATH_MCI_CONFIG_AGGR_THRESH, align 4
  %46 = call i32 @MS(i32 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %48 = load i32, i32* @AR_BTCOEX_CTRL, align 4
  %49 = load i32, i32* @AR_BTCOEX_CTRL_AGGR_THRESH, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %53 = load i32, i32* @AR_BTCOEX_CTRL, align 4
  %54 = load i32, i32* @AR_BTCOEX_CTRL_TIME_TO_NEXT_BT_THRESH_EN, align 4
  %55 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %52, i32 %53, i32 %54, i32 1)
  br label %61

56:                                               ; preds = %34
  %57 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %58 = load i32, i32* @AR_BTCOEX_CTRL, align 4
  %59 = load i32, i32* @AR_BTCOEX_CTRL_TIME_TO_NEXT_BT_THRESH_EN, align 4
  %60 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %57, i32 %58, i32 %59, i32 0)
  br label %61

61:                                               ; preds = %56, %41
  %62 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %63 = load i32, i32* @AR_BTCOEX_CTRL, align 4
  %64 = load i32, i32* @AR_BTCOEX_CTRL_ONE_STEP_LOOK_AHEAD_EN, align 4
  %65 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %62, i32 %63, i32 %64, i32 1)
  br label %66

66:                                               ; preds = %61, %12
  ret void
}

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
