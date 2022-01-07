; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000e_set_d3_lplu_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000e_set_d3_lplu_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, i64 }

@IGP02E1000_PHY_POWER_MGMT = common dso_local global i32 0, align 4
@IGP02E1000_PM_D3_LPLU = common dso_local global i32 0, align 4
@e1000_smart_speed_on = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PORT_CONFIG = common dso_local global i32 0, align 4
@IGP01E1000_PSCFR_SMART_SPEED = common dso_local global i32 0, align 4
@e1000_smart_speed_off = common dso_local global i64 0, align 8
@E1000_ALL_SPEED_DUPLEX = common dso_local global i64 0, align 8
@E1000_ALL_NOT_GIG = common dso_local global i64 0, align 8
@E1000_ALL_10_SPEED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_set_d3_lplu_state(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_phy_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  store %struct.e1000_phy_info* %10, %struct.e1000_phy_info** %6, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %12 = load i32, i32* @IGP02E1000_PHY_POWER_MGMT, align 4
  %13 = call i64 @e1e_rphy(%struct.e1000_hw* %11, i32 %12, i32* %8)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* %7, align 8
  store i64 %17, i64* %3, align 8
  br label %141

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %91, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @IGP02E1000_PM_D3_LPLU, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %27 = load i32, i32* @IGP02E1000_PHY_POWER_MGMT, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @e1e_wphy(%struct.e1000_hw* %26, i32 %27, i32 %28)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8
  store i64 %33, i64* %3, align 8
  br label %141

34:                                               ; preds = %21
  %35 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %36 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @e1000_smart_speed_on, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %34
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %42 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %43 = call i64 @e1e_rphy(%struct.e1000_hw* %41, i32 %42, i32* %8)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i64, i64* %7, align 8
  store i64 %47, i64* %3, align 8
  br label %141

48:                                               ; preds = %40
  %49 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %53 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @e1e_wphy(%struct.e1000_hw* %52, i32 %53, i32 %54)
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i64, i64* %7, align 8
  store i64 %59, i64* %3, align 8
  br label %141

60:                                               ; preds = %48
  br label %90

61:                                               ; preds = %34
  %62 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %63 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @e1000_smart_speed_off, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %61
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %69 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %70 = call i64 @e1e_rphy(%struct.e1000_hw* %68, i32 %69, i32* %8)
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i64, i64* %7, align 8
  store i64 %74, i64* %3, align 8
  br label %141

75:                                               ; preds = %67
  %76 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %81 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i64 @e1e_wphy(%struct.e1000_hw* %80, i32 %81, i32 %82)
  store i64 %83, i64* %7, align 8
  %84 = load i64, i64* %7, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %75
  %87 = load i64, i64* %7, align 8
  store i64 %87, i64* %3, align 8
  br label %141

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %88, %61
  br label %90

90:                                               ; preds = %89, %60
  br label %139

91:                                               ; preds = %18
  %92 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %93 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @E1000_ALL_SPEED_DUPLEX, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %109, label %97

97:                                               ; preds = %91
  %98 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %99 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @E1000_ALL_NOT_GIG, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %105 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @E1000_ALL_10_SPEED, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %138

109:                                              ; preds = %103, %97, %91
  %110 = load i32, i32* @IGP02E1000_PM_D3_LPLU, align 4
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  %113 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %114 = load i32, i32* @IGP02E1000_PHY_POWER_MGMT, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i64 @e1e_wphy(%struct.e1000_hw* %113, i32 %114, i32 %115)
  store i64 %116, i64* %7, align 8
  %117 = load i64, i64* %7, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i64, i64* %7, align 8
  store i64 %120, i64* %3, align 8
  br label %141

121:                                              ; preds = %109
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %123 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %124 = call i64 @e1e_rphy(%struct.e1000_hw* %122, i32 %123, i32* %8)
  store i64 %124, i64* %7, align 8
  %125 = load i64, i64* %7, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i64, i64* %7, align 8
  store i64 %128, i64* %3, align 8
  br label %141

129:                                              ; preds = %121
  %130 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %8, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %8, align 4
  %134 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %135 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i64 @e1e_wphy(%struct.e1000_hw* %134, i32 %135, i32 %136)
  store i64 %137, i64* %7, align 8
  br label %138

138:                                              ; preds = %129, %103
  br label %139

139:                                              ; preds = %138, %90
  %140 = load i64, i64* %7, align 8
  store i64 %140, i64* %3, align 8
  br label %141

141:                                              ; preds = %139, %127, %119, %86, %73, %58, %46, %32, %16
  %142 = load i64, i64* %3, align 8
  ret i64 %142
}

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
