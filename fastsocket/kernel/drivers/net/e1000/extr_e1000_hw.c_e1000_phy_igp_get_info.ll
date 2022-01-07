; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_phy_igp_get_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_phy_igp_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64 }
%struct.e1000_phy_info = type { i32, i8*, i8*, i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"e1000_phy_igp_get_info\00", align 1
@e1000_10bt_ext_dist_enable_normal = common dso_local global i32 0, align 4
@e1000_polarity_reversal_enabled = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PORT_STATUS = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_MDIX = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_MDIX_SHIFT = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_SPEED_MASK = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_SPEED_1000MBPS = common dso_local global i32 0, align 4
@PHY_1000T_STATUS = common dso_local global i32 0, align 4
@SR_1000T_LOCAL_RX_STATUS = common dso_local global i32 0, align 4
@SR_1000T_LOCAL_RX_STATUS_SHIFT = common dso_local global i32 0, align 4
@e1000_1000t_rx_status_ok = common dso_local global i8* null, align 8
@e1000_1000t_rx_status_not_ok = common dso_local global i8* null, align 8
@SR_1000T_REMOTE_RX_STATUS = common dso_local global i32 0, align 4
@SR_1000T_REMOTE_RX_STATUS_SHIFT = common dso_local global i32 0, align 4
@e1000_igp_cable_length_50 = common dso_local global i32 0, align 4
@e1000_cable_length_50 = common dso_local global i32 0, align 4
@e1000_igp_cable_length_80 = common dso_local global i32 0, align 4
@e1000_cable_length_50_80 = common dso_local global i32 0, align 4
@e1000_igp_cable_length_110 = common dso_local global i32 0, align 4
@e1000_cable_length_80_110 = common dso_local global i32 0, align 4
@e1000_igp_cable_length_140 = common dso_local global i32 0, align 4
@e1000_cable_length_110_140 = common dso_local global i32 0, align 4
@e1000_cable_length_140 = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, %struct.e1000_phy_info*)* @e1000_phy_igp_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_phy_igp_get_info(%struct.e1000_hw* %0, %struct.e1000_phy_info* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca %struct.e1000_phy_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store %struct.e1000_phy_info* %1, %struct.e1000_phy_info** %5, align 8
  %12 = call i32 @e_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %17 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %16, i32 0, i32 7
  store i64 %15, i64* %17, align 8
  %18 = load i32, i32* @e1000_10bt_ext_dist_enable_normal, align 4
  %19 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %20 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @e1000_polarity_reversal_enabled, align 4
  %22 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %23 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %25 = call i64 @e1000_check_polarity(%struct.e1000_hw* %24, i32* %11)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %3, align 8
  br label %144

30:                                               ; preds = %2
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %33 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %35 = load i32, i32* @IGP01E1000_PHY_PORT_STATUS, align 4
  %36 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %34, i32 %35, i32* %7)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i64, i64* %6, align 8
  store i64 %40, i64* %3, align 8
  br label %144

41:                                               ; preds = %30
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @IGP01E1000_PSSR_MDIX, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @IGP01E1000_PSSR_MDIX_SHIFT, align 4
  %46 = ashr i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %49 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @IGP01E1000_PSSR_SPEED_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @IGP01E1000_PSSR_SPEED_1000MBPS, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %142

55:                                               ; preds = %41
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %57 = load i32, i32* @PHY_1000T_STATUS, align 4
  %58 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %56, i32 %57, i32* %7)
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i64, i64* %6, align 8
  store i64 %62, i64* %3, align 8
  br label %144

63:                                               ; preds = %55
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @SR_1000T_LOCAL_RX_STATUS, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @SR_1000T_LOCAL_RX_STATUS_SHIFT, align 4
  %68 = ashr i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %74

72:                                               ; preds = %63
  %73 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i8* [ %71, %70 ], [ %73, %72 ]
  %76 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %77 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @SR_1000T_REMOTE_RX_STATUS, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @SR_1000T_REMOTE_RX_STATUS_SHIFT, align 4
  %82 = ashr i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i8*, i8** @e1000_1000t_rx_status_ok, align 8
  br label %88

86:                                               ; preds = %74
  %87 = load i8*, i8** @e1000_1000t_rx_status_not_ok, align 8
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i8* [ %85, %84 ], [ %87, %86 ]
  %90 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %91 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %93 = call i64 @e1000_get_cable_length(%struct.e1000_hw* %92, i32* %8, i32* %9)
  store i64 %93, i64* %6, align 8
  %94 = load i64, i64* %6, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i64, i64* %6, align 8
  store i64 %97, i64* %3, align 8
  br label %144

98:                                               ; preds = %88
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %99, %100
  %102 = sdiv i32 %101, 2
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @e1000_igp_cable_length_50, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = load i32, i32* @e1000_cable_length_50, align 4
  %108 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %109 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  br label %141

110:                                              ; preds = %98
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @e1000_igp_cable_length_80, align 4
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32, i32* @e1000_cable_length_50_80, align 4
  %116 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %117 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %140

118:                                              ; preds = %110
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @e1000_igp_cable_length_110, align 4
  %121 = icmp sle i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32, i32* @e1000_cable_length_80_110, align 4
  %124 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %125 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  br label %139

126:                                              ; preds = %118
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @e1000_igp_cable_length_140, align 4
  %129 = icmp sle i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load i32, i32* @e1000_cable_length_110_140, align 4
  %132 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %133 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  br label %138

134:                                              ; preds = %126
  %135 = load i32, i32* @e1000_cable_length_140, align 4
  %136 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %137 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %134, %130
  br label %139

139:                                              ; preds = %138, %122
  br label %140

140:                                              ; preds = %139, %114
  br label %141

141:                                              ; preds = %140, %106
  br label %142

142:                                              ; preds = %141, %41
  %143 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %143, i64* %3, align 8
  br label %144

144:                                              ; preds = %142, %96, %61, %39, %28
  %145 = load i64, i64* %3, align 8
  ret i64 %145
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_check_polarity(%struct.e1000_hw*, i32*) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_get_cable_length(%struct.e1000_hw*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
