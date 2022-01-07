; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_copper_link_setup_m88_gen2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_copper_link_setup_m88_gen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, i64, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_PSCR_AUTO_X_MODE = common dso_local global i32 0, align 4
@M88E1000_PSCR_MDI_MANUAL_MODE = common dso_local global i32 0, align 4
@M88E1000_PSCR_MDIX_MANUAL_MODE = common dso_local global i32 0, align 4
@M88E1112_E_PHY_ID = common dso_local global i64 0, align 8
@M88E1000_PSCR_AUTO_X_1000T = common dso_local global i32 0, align 4
@M88E1000_PSCR_POLARITY_REVERSAL = common dso_local global i32 0, align 4
@M88E1543_E_PHY_ID = common dso_local global i64 0, align 8
@I347AT4_PSCR_DOWNSHIFT_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error committing the PHY changes\0A\00", align 1
@I347AT4_PSCR_DOWNSHIFT_MASK = common dso_local global i32 0, align 4
@I347AT4_PSCR_DOWNSHIFT_6X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_copper_link_setup_m88_gen2(%struct.e1000_hw* %0) #0 {
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
  %10 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %138

14:                                               ; preds = %1
  %15 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %16 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %17, align 8
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = bitcast %struct.e1000_hw* %19 to %struct.e1000_hw.1*
  %21 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %22 = call i64 %18(%struct.e1000_hw.1* %20, i32 %21, i32* %6)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i64, i64* %5, align 8
  store i64 %26, i64* %2, align 8
  br label %138

27:                                               ; preds = %14
  %28 = load i32, i32* @M88E1000_PSCR_AUTO_X_MODE, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %33 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %55 [
    i32 1, label %35
    i32 2, label %39
    i32 3, label %43
    i32 0, label %54
  ]

35:                                               ; preds = %27
  %36 = load i32, i32* @M88E1000_PSCR_MDI_MANUAL_MODE, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %59

39:                                               ; preds = %27
  %40 = load i32, i32* @M88E1000_PSCR_MDIX_MANUAL_MODE, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %59

43:                                               ; preds = %27
  %44 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %45 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @M88E1112_E_PHY_ID, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @M88E1000_PSCR_AUTO_X_1000T, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %59

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %27, %53
  br label %55

55:                                               ; preds = %27, %54
  %56 = load i32, i32* @M88E1000_PSCR_AUTO_X_MODE, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %55, %49, %39, %35
  %60 = load i32, i32* @M88E1000_PSCR_POLARITY_REVERSAL, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %65 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i32, i32* @M88E1000_PSCR_POLARITY_REVERSAL, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %68, %59
  %73 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %74 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @M88E1543_E_PHY_ID, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %105

78:                                               ; preds = %72
  %79 = load i32, i32* @I347AT4_PSCR_DOWNSHIFT_ENABLE, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %84 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %85, align 8
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %88 = bitcast %struct.e1000_hw* %87 to %struct.e1000_hw.0*
  %89 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i64 %86(%struct.e1000_hw.0* %88, i32 %89, i32 %90)
  store i64 %91, i64* %5, align 8
  %92 = load i64, i64* %5, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %78
  %95 = load i64, i64* %5, align 8
  store i64 %95, i64* %2, align 8
  br label %138

96:                                               ; preds = %78
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %98 = call i64 @igb_phy_sw_reset(%struct.e1000_hw* %97)
  store i64 %98, i64* %5, align 8
  %99 = load i64, i64* %5, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = call i32 @hw_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %103 = load i64, i64* %5, align 8
  store i64 %103, i64* %2, align 8
  br label %138

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %72
  %106 = load i32, i32* @I347AT4_PSCR_DOWNSHIFT_MASK, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %6, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* @I347AT4_PSCR_DOWNSHIFT_6X, align 4
  %111 = load i32, i32* %6, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* @I347AT4_PSCR_DOWNSHIFT_ENABLE, align 4
  %114 = load i32, i32* %6, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %6, align 4
  %116 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %117 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %118, align 8
  %120 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %121 = bitcast %struct.e1000_hw* %120 to %struct.e1000_hw.0*
  %122 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %123 = load i32, i32* %6, align 4
  %124 = call i64 %119(%struct.e1000_hw.0* %121, i32 %122, i32 %123)
  store i64 %124, i64* %5, align 8
  %125 = load i64, i64* %5, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %105
  %128 = load i64, i64* %5, align 8
  store i64 %128, i64* %2, align 8
  br label %138

129:                                              ; preds = %105
  %130 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %131 = call i64 @igb_phy_sw_reset(%struct.e1000_hw* %130)
  store i64 %131, i64* %5, align 8
  %132 = load i64, i64* %5, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = call i32 @hw_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %136 = load i64, i64* %5, align 8
  store i64 %136, i64* %2, align 8
  br label %138

137:                                              ; preds = %129
  store i64 0, i64* %2, align 8
  br label %138

138:                                              ; preds = %137, %134, %127, %101, %94, %25, %13
  %139 = load i64, i64* %2, align 8
  ret i64 %139
}

declare dso_local i64 @igb_phy_sw_reset(%struct.e1000_hw*) #1

declare dso_local i32 @hw_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
