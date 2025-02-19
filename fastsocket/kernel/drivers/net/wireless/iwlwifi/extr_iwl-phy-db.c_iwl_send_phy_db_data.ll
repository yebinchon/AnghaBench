; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-phy-db.c_iwl_send_phy_db_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-phy-db.c_iwl_send_phy_db_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_phy_db = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"Sending phy db data and configuration to runtime image\0A\00", align 1
@IWL_PHY_DB_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot get Phy DB cfg section\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Cannot send HCMD of  Phy DB cfg section\0A\00", align 1
@IWL_PHY_DB_CALIB_NCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Cannot get Phy DB non specific channel section\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Cannot send HCMD of Phy DB non specific channel section\0A\00", align 1
@IWL_PHY_DB_CALIB_CHG_PAPD = common dso_local global i32 0, align 4
@IWL_NUM_PAPD_CH_GROUPS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Cannot send channel specific PAPD groups\00", align 1
@IWL_PHY_DB_CALIB_CHG_TXP = common dso_local global i32 0, align 4
@IWL_NUM_TXP_CH_GROUPS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"Cannot send channel specific TX power groups\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Finished sending phy db non channel data\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_send_phy_db_data(%struct.iwl_phy_db* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_phy_db*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iwl_phy_db* %0, %struct.iwl_phy_db** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %3, align 8
  %8 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @IWL_DEBUG_INFO(i32 %9, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %3, align 8
  %12 = load i32, i32* @IWL_PHY_DB_CFG, align 4
  %13 = call i32 @iwl_phy_db_get_section_data(%struct.iwl_phy_db* %11, i32 %12, i32** %4, i32* %5, i32 0)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %3, align 8
  %18 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @IWL_ERR(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %93

22:                                               ; preds = %1
  %23 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %3, align 8
  %24 = load i32, i32* @IWL_PHY_DB_CFG, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @iwl_send_phy_db_cmd(%struct.iwl_phy_db* %23, i32 %24, i32 %25, i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %3, align 8
  %32 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @IWL_ERR(i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %93

36:                                               ; preds = %22
  %37 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %3, align 8
  %38 = load i32, i32* @IWL_PHY_DB_CALIB_NCH, align 4
  %39 = call i32 @iwl_phy_db_get_section_data(%struct.iwl_phy_db* %37, i32 %38, i32** %4, i32* %5, i32 0)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %3, align 8
  %44 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @IWL_ERR(i32 %45, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %93

48:                                               ; preds = %36
  %49 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %3, align 8
  %50 = load i32, i32* @IWL_PHY_DB_CALIB_NCH, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @iwl_send_phy_db_cmd(%struct.iwl_phy_db* %49, i32 %50, i32 %51, i32* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %3, align 8
  %58 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @IWL_ERR(i32 %59, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %93

62:                                               ; preds = %48
  %63 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %3, align 8
  %64 = load i32, i32* @IWL_PHY_DB_CALIB_CHG_PAPD, align 4
  %65 = load i32, i32* @IWL_NUM_PAPD_CH_GROUPS, align 4
  %66 = call i32 @iwl_phy_db_send_all_channel_groups(%struct.iwl_phy_db* %63, i32 %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %3, align 8
  %71 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @IWL_ERR(i32 %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %93

75:                                               ; preds = %62
  %76 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %3, align 8
  %77 = load i32, i32* @IWL_PHY_DB_CALIB_CHG_TXP, align 4
  %78 = load i32, i32* @IWL_NUM_TXP_CH_GROUPS, align 4
  %79 = call i32 @iwl_phy_db_send_all_channel_groups(%struct.iwl_phy_db* %76, i32 %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %3, align 8
  %84 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @IWL_ERR(i32 %85, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %93

88:                                               ; preds = %75
  %89 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %3, align 8
  %90 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @IWL_DEBUG_INFO(i32 %91, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %88, %82, %69, %56, %42, %30, %16
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @IWL_DEBUG_INFO(i32, i8*) #1

declare dso_local i32 @iwl_phy_db_get_section_data(%struct.iwl_phy_db*, i32, i32**, i32*, i32) #1

declare dso_local i32 @IWL_ERR(i32, i8*) #1

declare dso_local i32 @iwl_send_phy_db_cmd(%struct.iwl_phy_db*, i32, i32, i32*) #1

declare dso_local i32 @iwl_phy_db_send_all_channel_groups(%struct.iwl_phy_db*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
