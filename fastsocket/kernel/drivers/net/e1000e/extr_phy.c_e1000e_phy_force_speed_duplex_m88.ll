; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000e_phy_force_speed_duplex_m88.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000e_phy_force_speed_duplex_m88.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque

@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_PSCR_AUTO_X_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"M88E1000 PSCR: %X\0A\00", align 1
@MII_BMCR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Waiting for forced speed/duplex link on M88 phy.\0A\00", align 1
@PHY_FORCE_LIMIT = common dso_local global i32 0, align 4
@e1000_phy_m88 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Link taking longer than expected.\0A\00", align 1
@M88E1000_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@M88E1000_EXT_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_EPSCR_TX_CLK_25 = common dso_local global i32 0, align 4
@M88E1000_PSCR_ASSERT_CRS_ON_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_phy_force_speed_duplex_m88(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %4, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %12 = call i64 @e1e_rphy(%struct.e1000_hw* %10, i32 %11, i32* %6)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %2, align 8
  br label %169

17:                                               ; preds = %1
  %18 = load i32, i32* @M88E1000_PSCR_AUTO_X_MODE, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %23 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @e1e_wphy(%struct.e1000_hw* %22, i32 %23, i32 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i64, i64* %5, align 8
  store i64 %29, i64* %2, align 8
  br label %169

30:                                               ; preds = %17
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %34 = load i32, i32* @MII_BMCR, align 4
  %35 = call i64 @e1e_rphy(%struct.e1000_hw* %33, i32 %34, i32* %6)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i64, i64* %5, align 8
  store i64 %39, i64* %2, align 8
  br label %169

40:                                               ; preds = %30
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %42 = call i32 @e1000e_phy_force_speed_duplex_setup(%struct.e1000_hw* %41, i32* %6)
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %44 = load i32, i32* @MII_BMCR, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @e1e_wphy(%struct.e1000_hw* %43, i32 %44, i32 %45)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i64, i64* %5, align 8
  store i64 %50, i64* %2, align 8
  br label %169

51:                                               ; preds = %40
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %55, align 8
  %57 = icmp ne i64 (%struct.e1000_hw.0*)* %56, null
  br i1 %57, label %58, label %72

58:                                               ; preds = %51
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %60 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %62, align 8
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %65 = bitcast %struct.e1000_hw* %64 to %struct.e1000_hw.0*
  %66 = call i64 %63(%struct.e1000_hw.0* %65)
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %5, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i64, i64* %5, align 8
  store i64 %70, i64* %2, align 8
  br label %169

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %51
  %73 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %74 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %124

77:                                               ; preds = %72
  %78 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %80 = load i32, i32* @PHY_FORCE_LIMIT, align 4
  %81 = call i64 @e1000e_phy_has_link_generic(%struct.e1000_hw* %79, i32 %80, i32 100000, i32* %7)
  store i64 %81, i64* %5, align 8
  %82 = load i64, i64* %5, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i64, i64* %5, align 8
  store i64 %85, i64* %2, align 8
  br label %169

86:                                               ; preds = %77
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %115, label %89

89:                                               ; preds = %86
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %91 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @e1000_phy_m88, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %114

98:                                               ; preds = %89
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %100 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %101 = call i64 @e1e_wphy(%struct.e1000_hw* %99, i32 %100, i32 29)
  store i64 %101, i64* %5, align 8
  %102 = load i64, i64* %5, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i64, i64* %5, align 8
  store i64 %105, i64* %2, align 8
  br label %169

106:                                              ; preds = %98
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %108 = call i64 @e1000e_phy_reset_dsp(%struct.e1000_hw* %107)
  store i64 %108, i64* %5, align 8
  %109 = load i64, i64* %5, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i64, i64* %5, align 8
  store i64 %112, i64* %2, align 8
  br label %169

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113, %96
  br label %115

115:                                              ; preds = %114, %86
  %116 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %117 = load i32, i32* @PHY_FORCE_LIMIT, align 4
  %118 = call i64 @e1000e_phy_has_link_generic(%struct.e1000_hw* %116, i32 %117, i32 100000, i32* %7)
  store i64 %118, i64* %5, align 8
  %119 = load i64, i64* %5, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i64, i64* %5, align 8
  store i64 %122, i64* %2, align 8
  br label %169

123:                                              ; preds = %115
  br label %124

124:                                              ; preds = %123, %72
  %125 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %126 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @e1000_phy_m88, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  store i64 0, i64* %2, align 8
  br label %169

132:                                              ; preds = %124
  %133 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %134 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %135 = call i64 @e1e_rphy(%struct.e1000_hw* %133, i32 %134, i32* %6)
  store i64 %135, i64* %5, align 8
  %136 = load i64, i64* %5, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i64, i64* %5, align 8
  store i64 %139, i64* %2, align 8
  br label %169

140:                                              ; preds = %132
  %141 = load i32, i32* @M88E1000_EPSCR_TX_CLK_25, align 4
  %142 = load i32, i32* %6, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %6, align 4
  %144 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %145 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %146 = load i32, i32* %6, align 4
  %147 = call i64 @e1e_wphy(%struct.e1000_hw* %144, i32 %145, i32 %146)
  store i64 %147, i64* %5, align 8
  %148 = load i64, i64* %5, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %140
  %151 = load i64, i64* %5, align 8
  store i64 %151, i64* %2, align 8
  br label %169

152:                                              ; preds = %140
  %153 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %154 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %155 = call i64 @e1e_rphy(%struct.e1000_hw* %153, i32 %154, i32* %6)
  store i64 %155, i64* %5, align 8
  %156 = load i64, i64* %5, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = load i64, i64* %5, align 8
  store i64 %159, i64* %2, align 8
  br label %169

160:                                              ; preds = %152
  %161 = load i32, i32* @M88E1000_PSCR_ASSERT_CRS_ON_TX, align 4
  %162 = load i32, i32* %6, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %6, align 4
  %164 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %165 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %166 = load i32, i32* %6, align 4
  %167 = call i64 @e1e_wphy(%struct.e1000_hw* %164, i32 %165, i32 %166)
  store i64 %167, i64* %5, align 8
  %168 = load i64, i64* %5, align 8
  store i64 %168, i64* %2, align 8
  br label %169

169:                                              ; preds = %160, %158, %150, %138, %131, %121, %111, %104, %84, %69, %49, %38, %28, %15
  %170 = load i64, i64* %2, align 8
  ret i64 %170
}

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i32 @e1000e_phy_force_speed_duplex_setup(%struct.e1000_hw*, i32*) #1

declare dso_local i64 @e1000e_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i64 @e1000e_phy_reset_dsp(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
