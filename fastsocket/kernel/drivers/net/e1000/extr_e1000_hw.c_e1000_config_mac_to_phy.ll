; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_config_mac_to_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_config_mac_to_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"e1000_config_mac_to_phy\00", align 1
@e1000_82544 = common dso_local global i64 0, align 8
@e1000_ce4100 = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_FRCDPX = common dso_local global i32 0, align 4
@E1000_CTRL_SPD_SEL = common dso_local global i32 0, align 4
@E1000_CTRL_ILOS = common dso_local global i32 0, align 4
@PHY_CTRL = common dso_local global i32 0, align 4
@RTL_PHY_CTRL_FD = common dso_local global i32 0, align 4
@E1000_CTRL_FD = common dso_local global i32 0, align 4
@RTL_PHY_CTRL_SPD_100 = common dso_local global i32 0, align 4
@E1000_CTRL_SPD_100 = common dso_local global i32 0, align 4
@E1000_CTRL_SPD_10 = common dso_local global i32 0, align 4
@M88E1000_PHY_SPEC_STATUS = common dso_local global i32 0, align 4
@M88E1000_PSSR_DPLX = common dso_local global i32 0, align 4
@M88E1000_PSSR_SPEED = common dso_local global i32 0, align 4
@M88E1000_PSSR_1000MBS = common dso_local global i32 0, align 4
@E1000_CTRL_SPD_1000 = common dso_local global i32 0, align 4
@M88E1000_PSSR_100MBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_config_mac_to_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_config_mac_to_phy(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = call i32 @e_dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @e1000_82544, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @e1000_ce4100, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %20, i32* %2, align 4
  br label %127

21:                                               ; preds = %13, %1
  %22 = load i32, i32* @CTRL, align 4
  %23 = call i32 @er32(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %25 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @E1000_CTRL_SPD_SEL, align 4
  %30 = load i32, i32* @E1000_CTRL_ILOS, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %36 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %76 [
    i32 128, label %38
  ]

38:                                               ; preds = %21
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %40 = load i32, i32* @PHY_CTRL, align 4
  %41 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %39, i32 %40, i32* %6)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %127

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @RTL_PHY_CTRL_FD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @E1000_CTRL_FD, align 4
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  br label %60

55:                                               ; preds = %46
  %56 = load i32, i32* @E1000_CTRL_FD, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %55, %51
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @RTL_PHY_CTRL_SPD_100, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @E1000_CTRL_SPD_100, align 4
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  br label %73

69:                                               ; preds = %60
  %70 = load i32, i32* @E1000_CTRL_SPD_10, align 4
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %69, %65
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %75 = call i32 @e1000_config_collision_dist(%struct.e1000_hw* %74)
  br label %122

76:                                               ; preds = %21
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %78 = load i32, i32* @M88E1000_PHY_SPEC_STATUS, align 4
  %79 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %77, i32 %78, i32* %6)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %127

84:                                               ; preds = %76
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @M88E1000_PSSR_DPLX, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* @E1000_CTRL_FD, align 4
  %91 = load i32, i32* %4, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %4, align 4
  br label %98

93:                                               ; preds = %84
  %94 = load i32, i32* @E1000_CTRL_FD, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %4, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %93, %89
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %100 = call i32 @e1000_config_collision_dist(%struct.e1000_hw* %99)
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @M88E1000_PSSR_SPEED, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* @M88E1000_PSSR_1000MBS, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = load i32, i32* @E1000_CTRL_SPD_1000, align 4
  %108 = load i32, i32* %4, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %4, align 4
  br label %121

110:                                              ; preds = %98
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @M88E1000_PSSR_SPEED, align 4
  %113 = and i32 %111, %112
  %114 = load i32, i32* @M88E1000_PSSR_100MBS, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load i32, i32* @E1000_CTRL_SPD_100, align 4
  %118 = load i32, i32* %4, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %116, %110
  br label %121

121:                                              ; preds = %120, %106
  br label %122

122:                                              ; preds = %121, %73
  %123 = load i32, i32* @CTRL, align 4
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @ew32(i32 %123, i32 %124)
  %126 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %122, %82, %44, %19
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_config_collision_dist(%struct.e1000_hw*) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
