; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rf5110_calibrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rf5110_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }
%struct.ieee80211_channel = type { i32 }

@AR5K_CALIBRATION_FULL = common dso_local global i32 0, align 4
@AR5K_DIAG_SW_5210 = common dso_local global i32 0, align 4
@AR5K_DIAG_SW_DIS_TX_5210 = common dso_local global i32 0, align 4
@AR5K_DIAG_SW_DIS_RX_5210 = common dso_local global i32 0, align 4
@AR5K_BEACON_5210 = common dso_local global i32 0, align 4
@AR5K_BEACON_ENABLE = common dso_local global i32 0, align 4
@AR5K_PHY_AGC = common dso_local global i32 0, align 4
@AR5K_PHY_AGC_DISABLE = common dso_local global i32 0, align 4
@AR5K_PHY_ACT_ENABLE = common dso_local global i32 0, align 4
@AR5K_PHY_ACT = common dso_local global i32 0, align 4
@AR5K_PHY_SIG = common dso_local global i32 0, align 4
@AR5K_PHY_AGCCOARSE = common dso_local global i32 0, align 4
@AR5K_PHY_ADCSAT = common dso_local global i32 0, align 4
@AR5K_PHY_SIG_FIRPWR = common dso_local global i32 0, align 4
@AR5K_PHY_AGCCOARSE_HI = common dso_local global i32 0, align 4
@AR5K_PHY_AGCCOARSE_LO = common dso_local global i32 0, align 4
@AR5K_PHY_ADCSAT_ICNT = common dso_local global i32 0, align 4
@AR5K_PHY_ADCSAT_THR = common dso_local global i32 0, align 4
@AR5K_PHY_RFSTG_DISABLE = common dso_local global i32 0, align 4
@AR5K_PHY_RFSTG = common dso_local global i32 0, align 4
@AR5K_PHY_AGCCTL = common dso_local global i32 0, align 4
@AR5K_PHY_AGCCTL_CAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"calibration timeout (%uMHz)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ieee80211_channel*)* @ath5k_hw_rf5110_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_rf5110_calibrate(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AR5K_CALIBRATION_FULL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %162

18:                                               ; preds = %2
  %19 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %20 = load i32, i32* @AR5K_DIAG_SW_5210, align 4
  %21 = load i32, i32* @AR5K_DIAG_SW_DIS_TX_5210, align 4
  %22 = load i32, i32* @AR5K_DIAG_SW_DIS_RX_5210, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %19, i32 %20, i32 %23)
  %25 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %26 = load i32, i32* @AR5K_BEACON_5210, align 4
  %27 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @AR5K_BEACON_ENABLE, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = load i32, i32* @AR5K_BEACON_5210, align 4
  %34 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %28, i32 %32, i32 %33)
  %35 = call i32 @usleep_range(i32 2000, i32 2500)
  %36 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %37 = load i32, i32* @AR5K_PHY_AGC, align 4
  %38 = load i32, i32* @AR5K_PHY_AGC_DISABLE, align 4
  %39 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %36, i32 %37, i32 %38)
  %40 = call i32 @udelay(i32 10)
  %41 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %42 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %43 = call i32 @ath5k_hw_channel(%struct.ath5k_hw* %41, %struct.ieee80211_channel* %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %45 = load i32, i32* @AR5K_PHY_ACT_ENABLE, align 4
  %46 = load i32, i32* @AR5K_PHY_ACT, align 4
  %47 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %44, i32 %45, i32 %46)
  %48 = call i32 @usleep_range(i32 1000, i32 1500)
  %49 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %50 = load i32, i32* @AR5K_PHY_AGC, align 4
  %51 = load i32, i32* @AR5K_PHY_AGC_DISABLE, align 4
  %52 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %49, i32 %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %18
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %3, align 4
  br label %162

57:                                               ; preds = %18
  %58 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %59 = load i32, i32* @AR5K_PHY_SIG, align 4
  %60 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %62 = load i32, i32* @AR5K_PHY_AGCCOARSE, align 4
  %63 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %65 = load i32, i32* @AR5K_PHY_ADCSAT, align 4
  %66 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @AR5K_PHY_SIG_FIRPWR, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = load i32, i32* @AR5K_PHY_SIG_FIRPWR, align 4
  %73 = call i32 @AR5K_REG_SM(i32 -1, i32 %72)
  %74 = or i32 %71, %73
  %75 = load i32, i32* @AR5K_PHY_SIG, align 4
  %76 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %67, i32 %74, i32 %75)
  %77 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @AR5K_PHY_AGCCOARSE_HI, align 4
  %80 = load i32, i32* @AR5K_PHY_AGCCOARSE_LO, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = and i32 %78, %82
  %84 = load i32, i32* @AR5K_PHY_AGCCOARSE_HI, align 4
  %85 = call i32 @AR5K_REG_SM(i32 -1, i32 %84)
  %86 = or i32 %83, %85
  %87 = load i32, i32* @AR5K_PHY_AGCCOARSE_LO, align 4
  %88 = call i32 @AR5K_REG_SM(i32 -127, i32 %87)
  %89 = or i32 %86, %88
  %90 = load i32, i32* @AR5K_PHY_AGCCOARSE, align 4
  %91 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %77, i32 %89, i32 %90)
  %92 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @AR5K_PHY_ADCSAT_ICNT, align 4
  %95 = load i32, i32* @AR5K_PHY_ADCSAT_THR, align 4
  %96 = or i32 %94, %95
  %97 = xor i32 %96, -1
  %98 = and i32 %93, %97
  %99 = load i32, i32* @AR5K_PHY_ADCSAT_ICNT, align 4
  %100 = call i32 @AR5K_REG_SM(i32 2, i32 %99)
  %101 = or i32 %98, %100
  %102 = load i32, i32* @AR5K_PHY_ADCSAT_THR, align 4
  %103 = call i32 @AR5K_REG_SM(i32 12, i32 %102)
  %104 = or i32 %101, %103
  %105 = load i32, i32* @AR5K_PHY_ADCSAT, align 4
  %106 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %92, i32 %104, i32 %105)
  %107 = call i32 @udelay(i32 20)
  %108 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %109 = load i32, i32* @AR5K_PHY_AGC, align 4
  %110 = load i32, i32* @AR5K_PHY_AGC_DISABLE, align 4
  %111 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %108, i32 %109, i32 %110)
  %112 = call i32 @udelay(i32 10)
  %113 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %114 = load i32, i32* @AR5K_PHY_RFSTG_DISABLE, align 4
  %115 = load i32, i32* @AR5K_PHY_RFSTG, align 4
  %116 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %113, i32 %114, i32 %115)
  %117 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %118 = load i32, i32* @AR5K_PHY_AGC, align 4
  %119 = load i32, i32* @AR5K_PHY_AGC_DISABLE, align 4
  %120 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %117, i32 %118, i32 %119)
  %121 = call i32 @usleep_range(i32 1000, i32 1500)
  %122 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %123 = load i32, i32* @AR5K_PHY_AGCCTL, align 4
  %124 = load i32, i32* @AR5K_PHY_AGCCTL_CAL, align 4
  %125 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %122, i32 %123, i32 %124)
  %126 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %127 = load i32, i32* @AR5K_PHY_AGCCTL, align 4
  %128 = load i32, i32* @AR5K_PHY_AGCCTL_CAL, align 4
  %129 = call i32 @ath5k_hw_register_timeout(%struct.ath5k_hw* %126, i32 %127, i32 %128, i32 0, i32 0)
  store i32 %129, i32* %10, align 4
  %130 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @AR5K_PHY_SIG, align 4
  %133 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %130, i32 %131, i32 %132)
  %134 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @AR5K_PHY_AGCCOARSE, align 4
  %137 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %134, i32 %135, i32 %136)
  %138 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @AR5K_PHY_ADCSAT, align 4
  %141 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %138, i32 %139, i32 %140)
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %57
  %145 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %146 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %147 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %145, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %10, align 4
  store i32 %150, i32* %3, align 4
  br label %162

151:                                              ; preds = %57
  %152 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %153 = load i32, i32* @AR5K_DIAG_SW_5210, align 4
  %154 = load i32, i32* @AR5K_DIAG_SW_DIS_TX_5210, align 4
  %155 = load i32, i32* @AR5K_DIAG_SW_DIS_RX_5210, align 4
  %156 = or i32 %154, %155
  %157 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %152, i32 %153, i32 %156)
  %158 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @AR5K_BEACON_5210, align 4
  %161 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %158, i32 %159, i32 %160)
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %151, %144, %55, %17
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ath5k_hw_channel(%struct.ath5k_hw*, %struct.ieee80211_channel*) #1

declare dso_local i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_SM(i32, i32) #1

declare dso_local i32 @ath5k_hw_register_timeout(%struct.ath5k_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @ATH5K_ERR(%struct.ath5k_hw*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
