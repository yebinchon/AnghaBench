; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_gainf_calibrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_gainf_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, %struct.TYPE_4__, i32*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i64 }

@AR5K_RFGAIN_INACTIVE = common dso_local global i64 0, align 8
@AR5K_RFGAIN_READ_REQUESTED = common dso_local global i64 0, align 8
@AR5K_PHY_PAPD_PROBE = common dso_local global i32 0, align 4
@AR5K_PHY_PAPD_PROBE_TX_NEXT = common dso_local global i64 0, align 8
@AR5K_PHY_PAPD_PROBE_GAINF_S = common dso_local global i64 0, align 8
@AR5K_PHY_PAPD_PROBE_TYPE = common dso_local global i32 0, align 4
@AR5K_PHY_PAPD_PROBE_TYPE_CCK = common dso_local global i64 0, align 8
@AR5K_SREV_RAD_5112A = common dso_local global i64 0, align 8
@AR5K_GAIN_CCK_PROBE_CORR = common dso_local global i64 0, align 8
@AR5K_RFGAIN_NEED_CHANGE = common dso_local global i64 0, align 8
@AR5K_RFGAIN_ACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_gainf_calibrate(%struct.ath5k_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ath5k_eeprom_info*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  %7 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %9, %struct.ath5k_eeprom_info** %6, align 8
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AR5K_RFGAIN_INACTIVE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %14, %1
  %22 = load i64, i64* @AR5K_RFGAIN_INACTIVE, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %2, align 4
  br label %141

24:                                               ; preds = %14
  %25 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %26 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AR5K_RFGAIN_READ_REQUESTED, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %135

32:                                               ; preds = %24
  %33 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %34 = load i32, i32* @AR5K_PHY_PAPD_PROBE, align 4
  %35 = call i64 @ath5k_hw_reg_read(%struct.ath5k_hw* %33, i32 %34)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @AR5K_PHY_PAPD_PROBE_TX_NEXT, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %134, label %40

40:                                               ; preds = %32
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @AR5K_PHY_PAPD_PROBE_GAINF_S, align 8
  %43 = ashr i64 %41, %42
  %44 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %45 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i64 %43, i64* %46, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i32, i32* @AR5K_PHY_PAPD_PROBE_TYPE, align 4
  %49 = call i64 @AR5K_REG_MS(i64 %47, i32 %48)
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @AR5K_PHY_PAPD_PROBE_TYPE_CCK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %40
  %54 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %55 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AR5K_SREV_RAD_5112A, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %61 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %64 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, %62
  store i64 %67, i64* %65, align 8
  br label %75

68:                                               ; preds = %53
  %69 = load i64, i64* @AR5K_GAIN_CCK_PROBE_CORR, align 8
  %70 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %71 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, %69
  store i64 %74, i64* %72, align 8
  br label %75

75:                                               ; preds = %68, %59
  br label %76

76:                                               ; preds = %75, %40
  %77 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %78 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @AR5K_SREV_RAD_5112A, align 8
  %81 = icmp sge i64 %79, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %76
  %83 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %84 = call i32 @ath5k_hw_rf_gainf_corr(%struct.ath5k_hw* %83)
  %85 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %86 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %90 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sge i64 %88, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %82
  %95 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %96 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %100 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %98, %102
  br label %105

104:                                              ; preds = %82
  br label %105

105:                                              ; preds = %104, %94
  %106 = phi i64 [ %103, %94 ], [ 0, %104 ]
  %107 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %108 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  store i64 %106, i64* %109, align 8
  br label %110

110:                                              ; preds = %105, %76
  %111 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %112 = call i64 @ath5k_hw_rf_check_gainf_readback(%struct.ath5k_hw* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %110
  %115 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %116 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %115, i32 0, i32 1
  %117 = call i64 @AR5K_GAIN_CHECK_ADJUST(%struct.TYPE_4__* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %114
  %120 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %121 = call i64 @ath5k_hw_rf_gainf_adjust(%struct.ath5k_hw* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i64, i64* @AR5K_RFGAIN_NEED_CHANGE, align 8
  %125 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %126 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  store i64 %124, i64* %127, align 8
  br label %133

128:                                              ; preds = %119, %114, %110
  %129 = load i64, i64* @AR5K_RFGAIN_ACTIVE, align 8
  %130 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %131 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  store i64 %129, i64* %132, align 8
  br label %133

133:                                              ; preds = %128, %123
  br label %134

134:                                              ; preds = %133, %32
  br label %135

135:                                              ; preds = %134, %31
  %136 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %137 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %135, %21
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i64 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i64 @AR5K_REG_MS(i64, i32) #1

declare dso_local i32 @ath5k_hw_rf_gainf_corr(%struct.ath5k_hw*) #1

declare dso_local i64 @ath5k_hw_rf_check_gainf_readback(%struct.ath5k_hw*) #1

declare dso_local i64 @AR5K_GAIN_CHECK_ADJUST(%struct.TYPE_4__*) #1

declare dso_local i64 @ath5k_hw_rf_gainf_adjust(%struct.ath5k_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
