; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_es2lan.c_e1000_phy_force_speed_duplex_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_es2lan.c_e1000_phy_force_speed_duplex_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@GG82563_PSCR_CROSSOVER_MODE_AUTO = common dso_local global i32 0, align 4
@GG82563_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"GG82563 PSCR: %X\0A\00", align 1
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Waiting for forced speed/duplex link on GG82563 phy.\0A\00", align 1
@PHY_FORCE_LIMIT = common dso_local global i32 0, align 4
@GG82563_PHY_MAC_SPEC_CTRL = common dso_local global i32 0, align 4
@GG82563_MSCR_TX_CLK_MASK = common dso_local global i32 0, align 4
@E1000_ALL_10_SPEED = common dso_local global i32 0, align 4
@GG82563_MSCR_TX_CLK_10MBPS_2_5 = common dso_local global i32 0, align 4
@GG82563_MSCR_TX_CLK_100MBPS_25 = common dso_local global i32 0, align 4
@GG82563_MSCR_ASSERT_CRS_ON_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_phy_force_speed_duplex_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_phy_force_speed_duplex_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %9 = call i64 @e1e_rphy(%struct.e1000_hw* %7, i32 %8, i32* %5)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* %2, align 8
  br label %124

14:                                               ; preds = %1
  %15 = load i32, i32* @GG82563_PSCR_CROSSOVER_MODE_AUTO, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = load i32, i32* @GG82563_PHY_SPEC_CTRL, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @e1e_wphy(%struct.e1000_hw* %19, i32 %20, i32 %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i64, i64* %4, align 8
  store i64 %26, i64* %2, align 8
  br label %124

27:                                               ; preds = %14
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = load i32, i32* @MII_BMCR, align 4
  %32 = call i64 @e1e_rphy(%struct.e1000_hw* %30, i32 %31, i32* %5)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i64, i64* %4, align 8
  store i64 %36, i64* %2, align 8
  br label %124

37:                                               ; preds = %27
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = call i32 @e1000e_phy_force_speed_duplex_setup(%struct.e1000_hw* %38, i32* %5)
  %40 = load i32, i32* @BMCR_RESET, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %44 = load i32, i32* @MII_BMCR, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @e1e_wphy(%struct.e1000_hw* %43, i32 %44, i32 %45)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i64, i64* %4, align 8
  store i64 %50, i64* %2, align 8
  br label %124

51:                                               ; preds = %37
  %52 = call i32 @udelay(i32 1)
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %54 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %87

58:                                               ; preds = %51
  %59 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %61 = load i32, i32* @PHY_FORCE_LIMIT, align 4
  %62 = call i64 @e1000e_phy_has_link_generic(%struct.e1000_hw* %60, i32 %61, i32 100000, i32* %6)
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* %4, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i64, i64* %4, align 8
  store i64 %66, i64* %2, align 8
  br label %124

67:                                               ; preds = %58
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %67
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %72 = call i64 @e1000e_phy_reset_dsp(%struct.e1000_hw* %71)
  store i64 %72, i64* %4, align 8
  %73 = load i64, i64* %4, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i64, i64* %4, align 8
  store i64 %76, i64* %2, align 8
  br label %124

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %67
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %80 = load i32, i32* @PHY_FORCE_LIMIT, align 4
  %81 = call i64 @e1000e_phy_has_link_generic(%struct.e1000_hw* %79, i32 %80, i32 100000, i32* %6)
  store i64 %81, i64* %4, align 8
  %82 = load i64, i64* %4, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i64, i64* %4, align 8
  store i64 %85, i64* %2, align 8
  br label %124

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86, %51
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %89 = load i32, i32* @GG82563_PHY_MAC_SPEC_CTRL, align 4
  %90 = call i64 @e1e_rphy(%struct.e1000_hw* %88, i32 %89, i32* %5)
  store i64 %90, i64* %4, align 8
  %91 = load i64, i64* %4, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i64, i64* %4, align 8
  store i64 %94, i64* %2, align 8
  br label %124

95:                                               ; preds = %87
  %96 = load i32, i32* @GG82563_MSCR_TX_CLK_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %5, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %101 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @E1000_ALL_10_SPEED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %95
  %108 = load i32, i32* @GG82563_MSCR_TX_CLK_10MBPS_2_5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %5, align 4
  br label %115

111:                                              ; preds = %95
  %112 = load i32, i32* @GG82563_MSCR_TX_CLK_100MBPS_25, align 4
  %113 = load i32, i32* %5, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %111, %107
  %116 = load i32, i32* @GG82563_MSCR_ASSERT_CRS_ON_TX, align 4
  %117 = load i32, i32* %5, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %5, align 4
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %120 = load i32, i32* @GG82563_PHY_MAC_SPEC_CTRL, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i64 @e1e_wphy(%struct.e1000_hw* %119, i32 %120, i32 %121)
  store i64 %122, i64* %4, align 8
  %123 = load i64, i64* %4, align 8
  store i64 %123, i64* %2, align 8
  br label %124

124:                                              ; preds = %115, %93, %84, %75, %65, %49, %35, %25, %12
  %125 = load i64, i64* %2, align 8
  ret i64 %125
}

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i32 @e1000e_phy_force_speed_duplex_setup(%struct.e1000_hw*, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @e1000e_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i64 @e1000e_phy_reset_dsp(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
