; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_copper_link_setup_m88.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_copper_link_setup_m88.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, i32, i64, i64, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_PSCR_ASSERT_CRS_ON_TX = common dso_local global i32 0, align 4
@M88E1000_PSCR_AUTO_X_MODE = common dso_local global i32 0, align 4
@M88E1000_PSCR_MDI_MANUAL_MODE = common dso_local global i32 0, align 4
@M88E1000_PSCR_MDIX_MANUAL_MODE = common dso_local global i32 0, align 4
@M88E1000_PSCR_AUTO_X_1000T = common dso_local global i32 0, align 4
@M88E1000_PSCR_POLARITY_REVERSAL = common dso_local global i32 0, align 4
@E1000_REVISION_4 = common dso_local global i64 0, align 8
@M88E1000_EXT_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_EPSCR_TX_CLK_25 = common dso_local global i32 0, align 4
@E1000_REVISION_2 = common dso_local global i64 0, align 8
@M88E1111_I_PHY_ID = common dso_local global i64 0, align 8
@M88EC018_EPSCR_DOWNSHIFT_COUNTER_MASK = common dso_local global i32 0, align 4
@M88EC018_EPSCR_DOWNSHIFT_COUNTER_5X = common dso_local global i32 0, align 4
@M88E1000_EPSCR_MASTER_DOWNSHIFT_MASK = common dso_local global i32 0, align 4
@M88E1000_EPSCR_SLAVE_DOWNSHIFT_MASK = common dso_local global i32 0, align 4
@M88E1000_EPSCR_MASTER_DOWNSHIFT_1X = common dso_local global i32 0, align 4
@M88E1000_EPSCR_SLAVE_DOWNSHIFT_1X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error committing the PHY changes\0A\00", align 1
@e1000_phy_i210 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_copper_link_setup_m88(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_phy_info* %8, %struct.e1000_phy_info** %4, align 8
  %9 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %169

14:                                               ; preds = %1
  %15 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %16 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %17, align 8
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = bitcast %struct.e1000_hw* %19 to %struct.e1000_hw.1*
  %21 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %22 = call i64 %18(%struct.e1000_hw.1* %20, i32 %21, i32* %6)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %169

26:                                               ; preds = %14
  %27 = load i32, i32* @M88E1000_PSCR_ASSERT_CRS_ON_TX, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @M88E1000_PSCR_AUTO_X_MODE, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %35 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %50 [
    i32 1, label %37
    i32 2, label %41
    i32 3, label %45
    i32 0, label %49
  ]

37:                                               ; preds = %26
  %38 = load i32, i32* @M88E1000_PSCR_MDI_MANUAL_MODE, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %54

41:                                               ; preds = %26
  %42 = load i32, i32* @M88E1000_PSCR_MDIX_MANUAL_MODE, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %54

45:                                               ; preds = %26
  %46 = load i32, i32* @M88E1000_PSCR_AUTO_X_1000T, align 4
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %54

49:                                               ; preds = %26
  br label %50

50:                                               ; preds = %26, %49
  %51 = load i32, i32* @M88E1000_PSCR_AUTO_X_MODE, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %50, %45, %41, %37
  %55 = load i32, i32* @M88E1000_PSCR_POLARITY_REVERSAL, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %60 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load i32, i32* @M88E1000_PSCR_POLARITY_REVERSAL, align 4
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %54
  %68 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %69 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %70, align 8
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %73 = bitcast %struct.e1000_hw* %72 to %struct.e1000_hw.0*
  %74 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i64 %71(%struct.e1000_hw.0* %73, i32 %74, i32 %75)
  store i64 %76, i64* %5, align 8
  %77 = load i64, i64* %5, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  br label %169

80:                                               ; preds = %67
  %81 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %82 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @E1000_REVISION_4, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %147

86:                                               ; preds = %80
  %87 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %88 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %89, align 8
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %92 = bitcast %struct.e1000_hw* %91 to %struct.e1000_hw.1*
  %93 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %94 = call i64 %90(%struct.e1000_hw.1* %92, i32 %93, i32* %6)
  store i64 %94, i64* %5, align 8
  %95 = load i64, i64* %5, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  br label %169

98:                                               ; preds = %86
  %99 = load i32, i32* @M88E1000_EPSCR_TX_CLK_25, align 4
  %100 = load i32, i32* %6, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %6, align 4
  %102 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %103 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @E1000_REVISION_2, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %98
  %108 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %109 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @M88E1111_I_PHY_ID, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %107
  %114 = load i32, i32* @M88EC018_EPSCR_DOWNSHIFT_COUNTER_MASK, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %6, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* @M88EC018_EPSCR_DOWNSHIFT_COUNTER_5X, align 4
  %119 = load i32, i32* %6, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %6, align 4
  br label %133

121:                                              ; preds = %107, %98
  %122 = load i32, i32* @M88E1000_EPSCR_MASTER_DOWNSHIFT_MASK, align 4
  %123 = load i32, i32* @M88E1000_EPSCR_SLAVE_DOWNSHIFT_MASK, align 4
  %124 = or i32 %122, %123
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %6, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* @M88E1000_EPSCR_MASTER_DOWNSHIFT_1X, align 4
  %129 = load i32, i32* @M88E1000_EPSCR_SLAVE_DOWNSHIFT_1X, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* %6, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %121, %113
  %134 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %135 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %136, align 8
  %138 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %139 = bitcast %struct.e1000_hw* %138 to %struct.e1000_hw.0*
  %140 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %141 = load i32, i32* %6, align 4
  %142 = call i64 %137(%struct.e1000_hw.0* %139, i32 %140, i32 %141)
  store i64 %142, i64* %5, align 8
  %143 = load i64, i64* %5, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %133
  br label %169

146:                                              ; preds = %133
  br label %147

147:                                              ; preds = %146, %80
  %148 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %149 = call i64 @igb_phy_sw_reset(%struct.e1000_hw* %148)
  store i64 %149, i64* %5, align 8
  %150 = load i64, i64* %5, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = call i32 @hw_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %169

154:                                              ; preds = %147
  %155 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %156 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @e1000_phy_i210, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %154
  %161 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %162 = call i64 @igb_set_master_slave_mode(%struct.e1000_hw* %161)
  store i64 %162, i64* %5, align 8
  %163 = load i64, i64* %5, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i64, i64* %5, align 8
  store i64 %166, i64* %2, align 8
  br label %171

167:                                              ; preds = %160
  br label %168

168:                                              ; preds = %167, %154
  br label %169

169:                                              ; preds = %168, %152, %145, %97, %79, %25, %13
  %170 = load i64, i64* %5, align 8
  store i64 %170, i64* %2, align 8
  br label %171

171:                                              ; preds = %169, %165
  %172 = load i64, i64* %2, align 8
  ret i64 %172
}

declare dso_local i64 @igb_phy_sw_reset(%struct.e1000_hw*) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i64 @igb_set_master_slave_mode(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
