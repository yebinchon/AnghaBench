; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_phy_get_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_phy_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i64 }
%struct.e1000_phy_info = type { i8*, i8*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"e1000_phy_get_info\00", align 1
@e1000_cable_length_undefined = common dso_local global i32 0, align 4
@e1000_10bt_ext_dist_enable_undefined = common dso_local global i32 0, align 4
@e1000_rev_polarity_undefined = common dso_local global i32 0, align 4
@e1000_downshift_undefined = common dso_local global i32 0, align 4
@e1000_polarity_reversal_undefined = common dso_local global i32 0, align 4
@e1000_auto_x_mode_undefined = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_undefined = common dso_local global i8* null, align 8
@e1000_media_type_copper = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"PHY info is only valid for copper media\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@PHY_STATUS = common dso_local global i32 0, align 4
@MII_SR_LINK_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"PHY info is only valid if link is up\0A\00", align 1
@e1000_phy_igp = common dso_local global i64 0, align 8
@e1000_phy_8211 = common dso_local global i64 0, align 8
@e1000_phy_8201 = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_phy_get_info(%struct.e1000_hw* %0, %struct.e1000_phy_info* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca %struct.e1000_phy_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store %struct.e1000_phy_info* %1, %struct.e1000_phy_info** %5, align 8
  %8 = call i32 @e_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @e1000_cable_length_undefined, align 4
  %10 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %11 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @e1000_10bt_ext_dist_enable_undefined, align 4
  %13 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %14 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @e1000_rev_polarity_undefined, align 4
  %16 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %17 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @e1000_downshift_undefined, align 4
  %19 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %20 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @e1000_polarity_reversal_undefined, align 4
  %22 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %23 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @e1000_auto_x_mode_undefined, align 4
  %25 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %26 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %28 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %29 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @e1000_1000t_rx_status_undefined, align 8
  %31 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %32 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @e1000_media_type_copper, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %2
  %39 = call i32 @e_dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %41 = sub nsw i64 0, %40
  store i64 %41, i64* %3, align 8
  br label %96

42:                                               ; preds = %2
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %44 = load i32, i32* @PHY_STATUS, align 4
  %45 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %43, i32 %44, i32* %7)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i64, i64* %6, align 8
  store i64 %49, i64* %3, align 8
  br label %96

50:                                               ; preds = %42
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %52 = load i32, i32* @PHY_STATUS, align 4
  %53 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %51, i32 %52, i32* %7)
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i64, i64* %6, align 8
  store i64 %57, i64* %3, align 8
  br label %96

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @MII_SR_LINK_STATUS, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @MII_SR_LINK_STATUS, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = call i32 @e_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %67 = sub nsw i64 0, %66
  store i64 %67, i64* %3, align 8
  br label %96

68:                                               ; preds = %58
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %70 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @e1000_phy_igp, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %76 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %77 = call i64 @e1000_phy_igp_get_info(%struct.e1000_hw* %75, %struct.e1000_phy_info* %76)
  store i64 %77, i64* %3, align 8
  br label %96

78:                                               ; preds = %68
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %80 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @e1000_phy_8211, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %86 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @e1000_phy_8201, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %84, %78
  %91 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %91, i64* %3, align 8
  br label %96

92:                                               ; preds = %84
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %94 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %95 = call i64 @e1000_phy_m88_get_info(%struct.e1000_hw* %93, %struct.e1000_phy_info* %94)
  store i64 %95, i64* %3, align 8
  br label %96

96:                                               ; preds = %92, %90, %74, %64, %56, %48, %38
  %97 = load i64, i64* %3, align 8
  ret i64 %97
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_phy_igp_get_info(%struct.e1000_hw*, %struct.e1000_phy_info*) #1

declare dso_local i64 @e1000_phy_m88_get_info(%struct.e1000_hw*, %struct.e1000_phy_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
