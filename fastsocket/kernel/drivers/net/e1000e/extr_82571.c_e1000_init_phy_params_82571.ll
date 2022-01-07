; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_82571.c_e1000_init_phy_params_82571.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_82571.c_e1000_init_phy_params_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.e1000_phy_info }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_phy_info = type { i64, i32, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@e1000_media_type_copper = common dso_local global i64 0, align 8
@e1000_phy_none = common dso_local global i32 0, align 4
@AUTONEG_ADVERTISE_SPEED_DEFAULT = common dso_local global i32 0, align 4
@e1000_power_up_phy_copper = common dso_local global i32 0, align 4
@e1000_power_down_phy_copper_82571 = common dso_local global i32 0, align 4
@e1000_phy_igp_2 = common dso_local global i32 0, align 4
@e1000_phy_m88 = common dso_local global i32 0, align 4
@e1000_phy_bm = common dso_local global i32 0, align 4
@e1000_get_hw_semaphore_82574 = common dso_local global i32 0, align 4
@e1000_put_hw_semaphore_82574 = common dso_local global i32 0, align 4
@e1000_set_d0_lplu_state_82574 = common dso_local global i32 0, align 4
@e1000_set_d3_lplu_state_82574 = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Error getting PHY ID\0A\00", align 1
@IGP01E1000_I_PHY_ID = common dso_local global i32 0, align 4
@M88E1111_I_PHY_ID = common dso_local global i32 0, align 4
@BME1000_E_PHY_ID_R2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"PHY ID unknown: type = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_init_phy_params_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_init_phy_params_82571(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 1
  store %struct.e1000_phy_info* %7, %struct.e1000_phy_info** %4, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @e1000_media_type_copper, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @e1000_phy_none, align 4
  %16 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %17 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  store i64 0, i64* %2, align 8
  br label %125

18:                                               ; preds = %1
  %19 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %20 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %19, i32 0, i32 1
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* @AUTONEG_ADVERTISE_SPEED_DEFAULT, align 4
  %22 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %23 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %25 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %24, i32 0, i32 2
  store i32 100, i32* %25, align 4
  %26 = load i32, i32* @e1000_power_up_phy_copper, align 4
  %27 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %28 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @e1000_power_down_phy_copper_82571, align 4
  %31 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %32 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  store i32 %30, i32* %33, align 4
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %66 [
    i32 132, label %38
    i32 131, label %38
    i32 130, label %42
    i32 129, label %46
    i32 128, label %46
  ]

38:                                               ; preds = %18, %18
  %39 = load i32, i32* @e1000_phy_igp_2, align 4
  %40 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %41 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  br label %69

42:                                               ; preds = %18
  %43 = load i32, i32* @e1000_phy_m88, align 4
  %44 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %45 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  br label %69

46:                                               ; preds = %18, %18
  %47 = load i32, i32* @e1000_phy_bm, align 4
  %48 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %49 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @e1000_get_hw_semaphore_82574, align 4
  %51 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %52 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @e1000_put_hw_semaphore_82574, align 4
  %55 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %56 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @e1000_set_d0_lplu_state_82574, align 4
  %59 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %60 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @e1000_set_d3_lplu_state_82574, align 4
  %63 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %64 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  br label %69

66:                                               ; preds = %18
  %67 = load i64, i64* @E1000_ERR_PHY, align 8
  %68 = sub nsw i64 0, %67
  store i64 %68, i64* %2, align 8
  br label %125

69:                                               ; preds = %46, %42, %38
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %71 = call i64 @e1000_get_phy_id_82571(%struct.e1000_hw* %70)
  store i64 %71, i64* %5, align 8
  %72 = load i64, i64* %5, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %76 = load i64, i64* %5, align 8
  store i64 %76, i64* %2, align 8
  br label %125

77:                                               ; preds = %69
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %79 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %112 [
    i32 132, label %82
    i32 131, label %82
    i32 130, label %92
    i32 129, label %102
    i32 128, label %102
  ]

82:                                               ; preds = %77, %77
  %83 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %84 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @IGP01E1000_I_PHY_ID, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i64, i64* @E1000_ERR_PHY, align 8
  %90 = sub nsw i64 0, %89
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %88, %82
  br label %115

92:                                               ; preds = %77
  %93 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %94 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @M88E1111_I_PHY_ID, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i64, i64* @E1000_ERR_PHY, align 8
  %100 = sub nsw i64 0, %99
  store i64 %100, i64* %5, align 8
  br label %101

101:                                              ; preds = %98, %92
  br label %115

102:                                              ; preds = %77, %77
  %103 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %104 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @BME1000_E_PHY_ID_R2, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i64, i64* @E1000_ERR_PHY, align 8
  %110 = sub nsw i64 0, %109
  store i64 %110, i64* %5, align 8
  br label %111

111:                                              ; preds = %108, %102
  br label %115

112:                                              ; preds = %77
  %113 = load i64, i64* @E1000_ERR_PHY, align 8
  %114 = sub nsw i64 0, %113
  store i64 %114, i64* %5, align 8
  br label %115

115:                                              ; preds = %112, %111, %101, %91
  %116 = load i64, i64* %5, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %120 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %118, %115
  %124 = load i64, i64* %5, align 8
  store i64 %124, i64* %2, align 8
  br label %125

125:                                              ; preds = %123, %74, %66, %14
  %126 = load i64, i64* %2, align 8
  ret i64 %126
}

declare dso_local i64 @e1000_get_phy_id_82571(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
