; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_set_d0_lplu_state_82575.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_set_d0_lplu_state_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@IGP02E1000_PHY_POWER_MGMT = common dso_local global i32 0, align 4
@IGP02E1000_PM_D0_LPLU = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PORT_CONFIG = common dso_local global i32 0, align 4
@IGP01E1000_PSCFR_SMART_SPEED = common dso_local global i32 0, align 4
@e1000_smart_speed_on = common dso_local global i64 0, align 8
@e1000_smart_speed_off = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32)* @igb_set_d0_lplu_state_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_set_d0_lplu_state_82575(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_phy_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %5, align 8
  %10 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %11 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %12, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = bitcast %struct.e1000_hw* %14 to %struct.e1000_hw.1*
  %16 = load i32, i32* @IGP02E1000_PHY_POWER_MGMT, align 4
  %17 = call i64 %13(%struct.e1000_hw.1* %15, i32 %16, i32* %7)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %153

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %66

24:                                               ; preds = %21
  %25 = load i32, i32* @IGP02E1000_PM_D0_LPLU, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %29 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %30, align 8
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = bitcast %struct.e1000_hw* %32 to %struct.e1000_hw.0*
  %34 = load i32, i32* @IGP02E1000_PHY_POWER_MGMT, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i64 %31(%struct.e1000_hw.0* %33, i32 %34, i32 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  br label %153

40:                                               ; preds = %24
  %41 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %42 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %43, align 8
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %46 = bitcast %struct.e1000_hw* %45 to %struct.e1000_hw.1*
  %47 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %48 = call i64 %44(%struct.e1000_hw.1* %46, i32 %47, i32* %7)
  store i64 %48, i64* %6, align 8
  %49 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %54 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %55, align 8
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %58 = bitcast %struct.e1000_hw* %57 to %struct.e1000_hw.0*
  %59 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i64 %56(%struct.e1000_hw.0* %58, i32 %59, i32 %60)
  store i64 %61, i64* %6, align 8
  %62 = load i64, i64* %6, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %40
  br label %153

65:                                               ; preds = %40
  br label %152

66:                                               ; preds = %21
  %67 = load i32, i32* @IGP02E1000_PM_D0_LPLU, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %72 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %73, align 8
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %76 = bitcast %struct.e1000_hw* %75 to %struct.e1000_hw.0*
  %77 = load i32, i32* @IGP02E1000_PHY_POWER_MGMT, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i64 %74(%struct.e1000_hw.0* %76, i32 %77, i32 %78)
  store i64 %79, i64* %6, align 8
  %80 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %81 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @e1000_smart_speed_on, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %114

85:                                               ; preds = %66
  %86 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %87 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %88, align 8
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %91 = bitcast %struct.e1000_hw* %90 to %struct.e1000_hw.1*
  %92 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %93 = call i64 %89(%struct.e1000_hw.1* %91, i32 %92, i32* %7)
  store i64 %93, i64* %6, align 8
  %94 = load i64, i64* %6, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %153

97:                                               ; preds = %85
  %98 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %99 = load i32, i32* %7, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %7, align 4
  %101 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %102 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %103, align 8
  %105 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %106 = bitcast %struct.e1000_hw* %105 to %struct.e1000_hw.0*
  %107 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i64 %104(%struct.e1000_hw.0* %106, i32 %107, i32 %108)
  store i64 %109, i64* %6, align 8
  %110 = load i64, i64* %6, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %97
  br label %153

113:                                              ; preds = %97
  br label %151

114:                                              ; preds = %66
  %115 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %116 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @e1000_smart_speed_off, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %150

120:                                              ; preds = %114
  %121 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %122 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %123, align 8
  %125 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %126 = bitcast %struct.e1000_hw* %125 to %struct.e1000_hw.1*
  %127 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %128 = call i64 %124(%struct.e1000_hw.1* %126, i32 %127, i32* %7)
  store i64 %128, i64* %6, align 8
  %129 = load i64, i64* %6, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  br label %153

132:                                              ; preds = %120
  %133 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %7, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %7, align 4
  %137 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %138 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %139, align 8
  %141 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %142 = bitcast %struct.e1000_hw* %141 to %struct.e1000_hw.0*
  %143 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %144 = load i32, i32* %7, align 4
  %145 = call i64 %140(%struct.e1000_hw.0* %142, i32 %143, i32 %144)
  store i64 %145, i64* %6, align 8
  %146 = load i64, i64* %6, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %132
  br label %153

149:                                              ; preds = %132
  br label %150

150:                                              ; preds = %149, %114
  br label %151

151:                                              ; preds = %150, %113
  br label %152

152:                                              ; preds = %151, %65
  br label %153

153:                                              ; preds = %152, %148, %131, %112, %96, %64, %39, %20
  %154 = load i64, i64* %6, align 8
  ret i64 %154
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
