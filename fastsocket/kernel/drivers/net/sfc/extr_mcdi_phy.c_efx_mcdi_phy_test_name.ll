; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi_phy.c_efx_mcdi_phy_test_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi_phy.c_efx_mcdi_phy_test_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64, %struct.efx_mcdi_phy_data* }
%struct.efx_mcdi_phy_data = type { i32 }

@MC_CMD_GET_PHY_CFG_OUT_BIST_LBN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"bist\00", align 1
@MC_CMD_GET_PHY_CFG_OUT_BIST_CABLE_SHORT_LBN = common dso_local global i32 0, align 4
@MC_CMD_GET_PHY_CFG_OUT_BIST_CABLE_LONG_LBN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"cable\00", align 1
@PHY_TYPE_SFT9001B = common dso_local global i64 0, align 8
@mcdi_sft9001_cable_diag_names = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.efx_nic*, i32)* @efx_mcdi_phy_test_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @efx_mcdi_phy_test_name(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_mcdi_phy_data*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 1
  %9 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %8, align 8
  store %struct.efx_mcdi_phy_data* %9, %struct.efx_mcdi_phy_data** %6, align 8
  %10 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %6, align 8
  %11 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MC_CMD_GET_PHY_CFG_OUT_BIST_LBN, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %65

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = add i32 %22, -1
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %6, align 8
  %26 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MC_CMD_GET_PHY_CFG_OUT_BIST_CABLE_SHORT_LBN, align 4
  %29 = shl i32 1, %28
  %30 = load i32, i32* @MC_CMD_GET_PHY_CFG_OUT_BIST_CABLE_LONG_LBN, align 4
  %31 = shl i32 1, %30
  %32 = or i32 %29, %31
  %33 = and i32 %27, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %24
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %65

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = add i32 %40, -1
  store i32 %41, i32* %5, align 4
  %42 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %43 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PHY_TYPE_SFT9001B, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %39
  %48 = load i32, i32* %5, align 4
  %49 = load i8**, i8*** @mcdi_sft9001_cable_diag_names, align 8
  %50 = call i32 @ARRAY_SIZE(i8** %49)
  %51 = icmp ult i32 %48, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i8**, i8*** @mcdi_sft9001_cable_diag_names, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %3, align 8
  br label %65

58:                                               ; preds = %47
  %59 = load i8**, i8*** @mcdi_sft9001_cable_diag_names, align 8
  %60 = call i32 @ARRAY_SIZE(i8** %59)
  %61 = load i32, i32* %5, align 4
  %62 = sub i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %58, %39
  br label %64

64:                                               ; preds = %63, %24
  store i8* null, i8** %3, align 8
  br label %65

65:                                               ; preds = %64, %52, %38, %20
  %66 = load i8*, i8** %3, align 8
  ret i8* %66
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
