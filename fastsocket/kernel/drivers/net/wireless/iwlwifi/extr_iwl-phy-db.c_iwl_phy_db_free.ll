; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-phy-db.c_iwl_phy_db_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-phy-db.c_iwl_phy_db_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_phy_db = type { i32 }

@IWL_PHY_DB_CFG = common dso_local global i32 0, align 4
@IWL_PHY_DB_CALIB_NCH = common dso_local global i32 0, align 4
@IWL_PHY_DB_CALIB_CH = common dso_local global i32 0, align 4
@IWL_NUM_PAPD_CH_GROUPS = common dso_local global i32 0, align 4
@IWL_PHY_DB_CALIB_CHG_PAPD = common dso_local global i32 0, align 4
@IWL_NUM_TXP_CH_GROUPS = common dso_local global i32 0, align 4
@IWL_PHY_DB_CALIB_CHG_TXP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_phy_db_free(%struct.iwl_phy_db* %0) #0 {
  %2 = alloca %struct.iwl_phy_db*, align 8
  %3 = alloca i32, align 4
  store %struct.iwl_phy_db* %0, %struct.iwl_phy_db** %2, align 8
  %4 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %2, align 8
  %5 = icmp ne %struct.iwl_phy_db* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %45

7:                                                ; preds = %1
  %8 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %2, align 8
  %9 = load i32, i32* @IWL_PHY_DB_CFG, align 4
  %10 = call i32 @iwl_phy_db_free_section(%struct.iwl_phy_db* %8, i32 %9, i32 0)
  %11 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %2, align 8
  %12 = load i32, i32* @IWL_PHY_DB_CALIB_NCH, align 4
  %13 = call i32 @iwl_phy_db_free_section(%struct.iwl_phy_db* %11, i32 %12, i32 0)
  %14 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %2, align 8
  %15 = load i32, i32* @IWL_PHY_DB_CALIB_CH, align 4
  %16 = call i32 @iwl_phy_db_free_section(%struct.iwl_phy_db* %14, i32 %15, i32 0)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %26, %7
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @IWL_NUM_PAPD_CH_GROUPS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %2, align 8
  %23 = load i32, i32* @IWL_PHY_DB_CALIB_CHG_PAPD, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @iwl_phy_db_free_section(%struct.iwl_phy_db* %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %17

29:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %39, %29
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @IWL_NUM_TXP_CH_GROUPS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %2, align 8
  %36 = load i32, i32* @IWL_PHY_DB_CALIB_CHG_TXP, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @iwl_phy_db_free_section(%struct.iwl_phy_db* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %30

42:                                               ; preds = %30
  %43 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %2, align 8
  %44 = call i32 @kfree(%struct.iwl_phy_db* %43)
  br label %45

45:                                               ; preds = %42, %6
  ret void
}

declare dso_local i32 @iwl_phy_db_free_section(%struct.iwl_phy_db*, i32, i32) #1

declare dso_local i32 @kfree(%struct.iwl_phy_db*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
