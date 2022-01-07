; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000e_copper_link_setup_igp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000e_copper_link_setup_igp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.e1000_phy_info }
%struct.TYPE_4__ = type { i64 }
%struct.e1000_phy_info = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32)* }
%struct.e1000_hw.0 = type opaque

@.str = private unnamed_addr constant [26 x i8] c"Error resetting the PHY.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Error Disabling LPLU D0\0A\00", align 1
@IGP01E1000_PHY_PORT_CTRL = common dso_local global i32 0, align 4
@IGP01E1000_PSCR_AUTO_MDIX = common dso_local global i32 0, align 4
@IGP01E1000_PSCR_FORCE_MDI_MDIX = common dso_local global i32 0, align 4
@ADVERTISE_1000_FULL = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PORT_CONFIG = common dso_local global i32 0, align 4
@IGP01E1000_PSCFR_SMART_SPEED = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@CTL1000_ENABLE_MASTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_copper_link_setup_igp(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  store %struct.e1000_phy_info* %8, %struct.e1000_phy_info** %4, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = call i64 @e1000_phy_hw_reset(%struct.e1000_hw* %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = call i32 @e_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %2, align 8
  br label %138

16:                                               ; preds = %1
  %17 = call i32 @msleep(i32 100)
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64 (%struct.e1000_hw.0*, i32)*, i64 (%struct.e1000_hw.0*, i32)** %21, align 8
  %23 = icmp ne i64 (%struct.e1000_hw.0*, i32)* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %16
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %26 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64 (%struct.e1000_hw.0*, i32)*, i64 (%struct.e1000_hw.0*, i32)** %28, align 8
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = bitcast %struct.e1000_hw* %30 to %struct.e1000_hw.0*
  %32 = call i64 %29(%struct.e1000_hw.0* %31, i32 0)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = call i32 @e_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i64, i64* %5, align 8
  store i64 %37, i64* %2, align 8
  br label %138

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %16
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %41 = load i32, i32* @IGP01E1000_PHY_PORT_CTRL, align 4
  %42 = call i64 @e1e_rphy(%struct.e1000_hw* %40, i32 %41, i32* %6)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i64, i64* %5, align 8
  store i64 %46, i64* %2, align 8
  br label %138

47:                                               ; preds = %39
  %48 = load i32, i32* @IGP01E1000_PSCR_AUTO_MDIX, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %53 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %65 [
    i32 1, label %55
    i32 2, label %60
    i32 0, label %64
  ]

55:                                               ; preds = %47
  %56 = load i32, i32* @IGP01E1000_PSCR_FORCE_MDI_MDIX, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %69

60:                                               ; preds = %47
  %61 = load i32, i32* @IGP01E1000_PSCR_FORCE_MDI_MDIX, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %69

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %47, %64
  %66 = load i32, i32* @IGP01E1000_PSCR_AUTO_MDIX, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %60, %55
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %71 = load i32, i32* @IGP01E1000_PHY_PORT_CTRL, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i64 @e1e_wphy(%struct.e1000_hw* %70, i32 %71, i32 %72)
  store i64 %73, i64* %5, align 8
  %74 = load i64, i64* %5, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i64, i64* %5, align 8
  store i64 %77, i64* %2, align 8
  br label %138

78:                                               ; preds = %69
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %80 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %136

84:                                               ; preds = %78
  %85 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %86 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ADVERTISE_1000_FULL, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %133

90:                                               ; preds = %84
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %92 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %93 = call i64 @e1e_rphy(%struct.e1000_hw* %91, i32 %92, i32* %6)
  store i64 %93, i64* %5, align 8
  %94 = load i64, i64* %5, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i64, i64* %5, align 8
  store i64 %97, i64* %2, align 8
  br label %138

98:                                               ; preds = %90
  %99 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %6, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %104 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i64 @e1e_wphy(%struct.e1000_hw* %103, i32 %104, i32 %105)
  store i64 %106, i64* %5, align 8
  %107 = load i64, i64* %5, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %98
  %110 = load i64, i64* %5, align 8
  store i64 %110, i64* %2, align 8
  br label %138

111:                                              ; preds = %98
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %113 = load i32, i32* @MII_CTRL1000, align 4
  %114 = call i64 @e1e_rphy(%struct.e1000_hw* %112, i32 %113, i32* %6)
  store i64 %114, i64* %5, align 8
  %115 = load i64, i64* %5, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i64, i64* %5, align 8
  store i64 %118, i64* %2, align 8
  br label %138

119:                                              ; preds = %111
  %120 = load i32, i32* @CTL1000_ENABLE_MASTER, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %6, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %6, align 4
  %124 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %125 = load i32, i32* @MII_CTRL1000, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i64 @e1e_wphy(%struct.e1000_hw* %124, i32 %125, i32 %126)
  store i64 %127, i64* %5, align 8
  %128 = load i64, i64* %5, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %119
  %131 = load i64, i64* %5, align 8
  store i64 %131, i64* %2, align 8
  br label %138

132:                                              ; preds = %119
  br label %133

133:                                              ; preds = %132, %84
  %134 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %135 = call i64 @e1000_set_master_slave_mode(%struct.e1000_hw* %134)
  store i64 %135, i64* %5, align 8
  br label %136

136:                                              ; preds = %133, %78
  %137 = load i64, i64* %5, align 8
  store i64 %137, i64* %2, align 8
  br label %138

138:                                              ; preds = %136, %130, %117, %109, %96, %76, %45, %35, %13
  %139 = load i64, i64* %2, align 8
  ret i64 %139
}

declare dso_local i64 @e1000_phy_hw_reset(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_set_master_slave_mode(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
