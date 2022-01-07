; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_hw.c_atl1c_phy_setup_adv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_hw.c_atl1c_phy_setup_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i32, i32 }

@ADVERTISE_DEFAULT_CAP = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@GIGA_CR_1000T_DEFAULT_CAP = common dso_local global i32 0, align 4
@GIGA_CR_1000T_SPEED_MASK = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@ATL1C_LINK_CAP_1000M = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_1000HALF = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1c_hw*)* @atl1c_phy_setup_adv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_phy_setup_adv(%struct.atl1c_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1c_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %3, align 8
  %6 = load i32, i32* @ADVERTISE_DEFAULT_CAP, align 4
  %7 = load i32, i32* @ADVERTISE_ALL, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @GIGA_CR_1000T_DEFAULT_CAP, align 4
  %11 = load i32, i32* @GIGA_CR_1000T_SPEED_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %15 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @ADVERTISE_10HALF, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %26 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* @ADVERTISE_10FULL, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %24
  %36 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %37 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @ADVERTISE_100HALF, align 4
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %35
  %47 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %48 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @ADVERTISE_100FULL, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %46
  %58 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %59 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %57
  %65 = load i32, i32* @ADVERTISE_10HALF, align 4
  %66 = load i32, i32* @ADVERTISE_10FULL, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @ADVERTISE_100HALF, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @ADVERTISE_100FULL, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %64, %57
  %75 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %76 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ATL1C_LINK_CAP_1000M, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %117

81:                                               ; preds = %74
  %82 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %83 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %88, %81
  %93 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %94 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %101 = load i32, i32* %5, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %99, %92
  %104 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %105 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %112 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %5, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %110, %103
  br label %117

117:                                              ; preds = %116, %74
  %118 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %119 = load i32, i32* @MII_ADVERTISE, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i64 @atl1c_write_phy_reg(%struct.atl1c_hw* %118, i32 %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %117
  %124 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %125 = load i32, i32* @MII_CTRL1000, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i64 @atl1c_write_phy_reg(%struct.atl1c_hw* %124, i32 %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123, %117
  store i32 -1, i32* %2, align 4
  br label %131

130:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %129
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i64 @atl1c_write_phy_reg(%struct.atl1c_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
