; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_82571.c_e1000_set_d0_lplu_state_82571.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_82571.c_e1000_set_d0_lplu_state_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64 }

@IGP02E1000_PHY_POWER_MGMT = common dso_local global i32 0, align 4
@IGP02E1000_PM_D0_LPLU = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PORT_CONFIG = common dso_local global i32 0, align 4
@IGP01E1000_PSCFR_SMART_SPEED = common dso_local global i32 0, align 4
@e1000_smart_speed_on = common dso_local global i64 0, align 8
@e1000_smart_speed_off = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32)* @e1000_set_d0_lplu_state_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_set_d0_lplu_state_82571(%struct.e1000_hw* %0, i32 %1) #0 {
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
  br label %121

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %18
  %22 = load i32, i32* @IGP02E1000_PM_D0_LPLU, align 4
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %26 = load i32, i32* @IGP02E1000_PHY_POWER_MGMT, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @e1e_wphy(%struct.e1000_hw* %25, i32 %26, i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i64, i64* %7, align 8
  store i64 %32, i64* %3, align 8
  br label %121

33:                                               ; preds = %21
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %35 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %36 = call i64 @e1e_rphy(%struct.e1000_hw* %34, i32 %35, i32* %8)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i64, i64* %7, align 8
  store i64 %40, i64* %3, align 8
  br label %121

41:                                               ; preds = %33
  %42 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %47 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @e1e_wphy(%struct.e1000_hw* %46, i32 %47, i32 %48)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i64, i64* %7, align 8
  store i64 %53, i64* %3, align 8
  br label %121

54:                                               ; preds = %41
  br label %120

55:                                               ; preds = %18
  %56 = load i32, i32* @IGP02E1000_PM_D0_LPLU, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %61 = load i32, i32* @IGP02E1000_PHY_POWER_MGMT, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @e1e_wphy(%struct.e1000_hw* %60, i32 %61, i32 %62)
  store i64 %63, i64* %7, align 8
  %64 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %65 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @e1000_smart_speed_on, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %55
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %71 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %72 = call i64 @e1e_rphy(%struct.e1000_hw* %70, i32 %71, i32* %8)
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %7, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i64, i64* %7, align 8
  store i64 %76, i64* %3, align 8
  br label %121

77:                                               ; preds = %69
  %78 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %82 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i64 @e1e_wphy(%struct.e1000_hw* %81, i32 %82, i32 %83)
  store i64 %84, i64* %7, align 8
  %85 = load i64, i64* %7, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i64, i64* %7, align 8
  store i64 %88, i64* %3, align 8
  br label %121

89:                                               ; preds = %77
  br label %119

90:                                               ; preds = %55
  %91 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %92 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @e1000_smart_speed_off, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %118

96:                                               ; preds = %90
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %98 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %99 = call i64 @e1e_rphy(%struct.e1000_hw* %97, i32 %98, i32* %8)
  store i64 %99, i64* %7, align 8
  %100 = load i64, i64* %7, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i64, i64* %7, align 8
  store i64 %103, i64* %3, align 8
  br label %121

104:                                              ; preds = %96
  %105 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %8, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %8, align 4
  %109 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %110 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i64 @e1e_wphy(%struct.e1000_hw* %109, i32 %110, i32 %111)
  store i64 %112, i64* %7, align 8
  %113 = load i64, i64* %7, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %104
  %116 = load i64, i64* %7, align 8
  store i64 %116, i64* %3, align 8
  br label %121

117:                                              ; preds = %104
  br label %118

118:                                              ; preds = %117, %90
  br label %119

119:                                              ; preds = %118, %89
  br label %120

120:                                              ; preds = %119, %54
  store i64 0, i64* %3, align 8
  br label %121

121:                                              ; preds = %120, %115, %102, %87, %75, %52, %39, %31, %16
  %122 = load i64, i64* %3, align 8
  ret i64 %122
}

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
