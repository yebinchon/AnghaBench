; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_phy_m88_get_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_phy_m88_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64 }
%struct.e1000_phy_info = type { i8*, i8*, i64, i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"e1000_phy_m88_get_info\00", align 1
@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_PSCR_10BT_EXT_DIST_ENABLE = common dso_local global i32 0, align 4
@M88E1000_PSCR_10BT_EXT_DIST_ENABLE_SHIFT = common dso_local global i32 0, align 4
@e1000_10bt_ext_dist_enable_lower = common dso_local global i32 0, align 4
@e1000_10bt_ext_dist_enable_normal = common dso_local global i32 0, align 4
@M88E1000_PSCR_POLARITY_REVERSAL = common dso_local global i32 0, align 4
@M88E1000_PSCR_POLARITY_REVERSAL_SHIFT = common dso_local global i32 0, align 4
@e1000_polarity_reversal_disabled = common dso_local global i32 0, align 4
@e1000_polarity_reversal_enabled = common dso_local global i32 0, align 4
@M88E1000_PHY_SPEC_STATUS = common dso_local global i32 0, align 4
@M88E1000_PSSR_MDIX = common dso_local global i32 0, align 4
@M88E1000_PSSR_MDIX_SHIFT = common dso_local global i32 0, align 4
@M88E1000_PSSR_SPEED = common dso_local global i32 0, align 4
@M88E1000_PSSR_1000MBS = common dso_local global i32 0, align 4
@M88E1000_PSSR_CABLE_LENGTH = common dso_local global i32 0, align 4
@M88E1000_PSSR_CABLE_LENGTH_SHIFT = common dso_local global i32 0, align 4
@PHY_1000T_STATUS = common dso_local global i32 0, align 4
@SR_1000T_LOCAL_RX_STATUS = common dso_local global i32 0, align 4
@SR_1000T_LOCAL_RX_STATUS_SHIFT = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_ok = common dso_local global i8* null, align 8
@e1000_1000t_rx_status_not_ok = common dso_local global i8* null, align 8
@SR_1000T_REMOTE_RX_STATUS = common dso_local global i32 0, align 4
@SR_1000T_REMOTE_RX_STATUS_SHIFT = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, %struct.e1000_phy_info*)* @e1000_phy_m88_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_phy_m88_get_info(%struct.e1000_hw* %0, %struct.e1000_phy_info* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca %struct.e1000_phy_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store %struct.e1000_phy_info* %1, %struct.e1000_phy_info** %5, align 8
  %9 = call i32 @e_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %14 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %13, i32 0, i32 7
  store i64 %12, i64* %14, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %16 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %17 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %15, i32 %16, i32* %7)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  store i64 %21, i64* %3, align 8
  br label %129

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @M88E1000_PSCR_10BT_EXT_DIST_ENABLE, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @M88E1000_PSCR_10BT_EXT_DIST_ENABLE_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @e1000_10bt_ext_dist_enable_lower, align 4
  br label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @e1000_10bt_ext_dist_enable_normal, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %36 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @M88E1000_PSCR_POLARITY_REVERSAL, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @M88E1000_PSCR_POLARITY_REVERSAL_SHIFT, align 4
  %41 = ashr i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @e1000_polarity_reversal_disabled, align 4
  br label %47

45:                                               ; preds = %33
  %46 = load i32, i32* @e1000_polarity_reversal_enabled, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %50 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %52 = call i64 @e1000_check_polarity(%struct.e1000_hw* %51, i32* %8)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i64, i64* %6, align 8
  store i64 %56, i64* %3, align 8
  br label %129

57:                                               ; preds = %47
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %60 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %62 = load i32, i32* @M88E1000_PHY_SPEC_STATUS, align 4
  %63 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %61, i32 %62, i32* %7)
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i64, i64* %6, align 8
  store i64 %67, i64* %3, align 8
  br label %129

68:                                               ; preds = %57
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @M88E1000_PSSR_MDIX, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @M88E1000_PSSR_MDIX_SHIFT, align 4
  %73 = ashr i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %76 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %75, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @M88E1000_PSSR_SPEED, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @M88E1000_PSSR_1000MBS, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %127

82:                                               ; preds = %68
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @M88E1000_PSSR_CABLE_LENGTH, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @M88E1000_PSSR_CABLE_LENGTH_SHIFT, align 4
  %87 = ashr i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %90 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %89, i32 0, i32 2
  store i64 %88, i64* %90, align 8
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %92 = load i32, i32* @PHY_1000T_STATUS, align 4
  %93 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %91, i32 %92, i32* %7)
  store i64 %93, i64* %6, align 8
  %94 = load i64, i64* %6, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %82
  %97 = load i64, i64* %6, align 8
  store i64 %97, i64* %3, align 8
  br label %129

98:                                               ; preds = %82
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @SR_1000T_LOCAL_RX_STATUS, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* @SR_1000T_LOCAL_RX_STATUS_SHIFT, align 4
  %103 = ashr i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %109

107:                                              ; preds = %98
  %108 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i8* [ %106, %105 ], [ %108, %107 ]
  %111 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %112 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @SR_1000T_REMOTE_RX_STATUS, align 4
  %115 = and i32 %113, %114
  %116 = load i32, i32* @SR_1000T_REMOTE_RX_STATUS_SHIFT, align 4
  %117 = ashr i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %123

121:                                              ; preds = %109
  %122 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i8* [ %120, %119 ], [ %122, %121 ]
  %125 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %126 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  br label %127

127:                                              ; preds = %123, %68
  %128 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %128, i64* %3, align 8
  br label %129

129:                                              ; preds = %127, %96, %66, %55, %20
  %130 = load i64, i64* %3, align 8
  ret i64 %130
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_check_polarity(%struct.e1000_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
