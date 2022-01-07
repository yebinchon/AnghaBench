; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_target_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_target_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.txpwr_limits = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.brcms_phy = type { %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@TXP_FIRST_CCK = common dso_local global i64 0, align 8
@BRCMS_NUM_RATES_CCK = common dso_local global i32 0, align 4
@TXP_FIRST_OFDM = common dso_local global i64 0, align 8
@BRCMS_NUM_RATES_OFDM = common dso_local global i32 0, align 4
@TXP_FIRST_OFDM_20_CDD = common dso_local global i64 0, align 8
@TXP_FIRST_OFDM_40_SISO = common dso_local global i64 0, align 8
@TXP_FIRST_OFDM_40_CDD = common dso_local global i64 0, align 8
@TXP_FIRST_MCS_20_SISO = common dso_local global i64 0, align 8
@BRCMS_NUM_RATES_MCS_1_STREAM = common dso_local global i32 0, align 4
@TXP_FIRST_MCS_20_CDD = common dso_local global i64 0, align 8
@TXP_FIRST_MCS_20_STBC = common dso_local global i64 0, align 8
@TXP_FIRST_MCS_20_SDM = common dso_local global i64 0, align 8
@BRCMS_NUM_RATES_MCS_2_STREAM = common dso_local global i32 0, align 4
@TXP_FIRST_MCS_40_SISO = common dso_local global i64 0, align 8
@TXP_FIRST_MCS_40_CDD = common dso_local global i64 0, align 8
@TXP_FIRST_MCS_40_STBC = common dso_local global i64 0, align 8
@TXP_FIRST_MCS_40_SDM = common dso_local global i64 0, align 8
@maccontrol = common dso_local global i32 0, align 4
@MCTL_EN_MAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_txpower_target_set(%struct.brcms_phy_pub* %0, %struct.txpwr_limits* %1) #0 {
  %3 = alloca %struct.brcms_phy_pub*, align 8
  %4 = alloca %struct.txpwr_limits*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcms_phy*, align 8
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %3, align 8
  store %struct.txpwr_limits* %1, %struct.txpwr_limits** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %3, align 8
  %8 = bitcast %struct.brcms_phy_pub* %7 to %struct.brcms_phy*
  store %struct.brcms_phy* %8, %struct.brcms_phy** %6, align 8
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %10 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @TXP_FIRST_CCK, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load %struct.txpwr_limits*, %struct.txpwr_limits** %4, align 8
  %15 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %14, i32 0, i32 12
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* @BRCMS_NUM_RATES_CCK, align 4
  %19 = call i32 @memcpy(i32* %13, i32* %17, i32 %18)
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %21 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @TXP_FIRST_OFDM, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load %struct.txpwr_limits*, %struct.txpwr_limits** %4, align 8
  %26 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %25, i32 0, i32 11
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* @BRCMS_NUM_RATES_OFDM, align 4
  %30 = call i32 @memcpy(i32* %24, i32* %28, i32 %29)
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %32 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @TXP_FIRST_OFDM_20_CDD, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load %struct.txpwr_limits*, %struct.txpwr_limits** %4, align 8
  %37 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %36, i32 0, i32 10
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* @BRCMS_NUM_RATES_OFDM, align 4
  %41 = call i32 @memcpy(i32* %35, i32* %39, i32 %40)
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %43 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @TXP_FIRST_OFDM_40_SISO, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load %struct.txpwr_limits*, %struct.txpwr_limits** %4, align 8
  %48 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %47, i32 0, i32 9
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* @BRCMS_NUM_RATES_OFDM, align 4
  %52 = call i32 @memcpy(i32* %46, i32* %50, i32 %51)
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %54 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @TXP_FIRST_OFDM_40_CDD, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load %struct.txpwr_limits*, %struct.txpwr_limits** %4, align 8
  %59 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %58, i32 0, i32 8
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* @BRCMS_NUM_RATES_OFDM, align 4
  %63 = call i32 @memcpy(i32* %57, i32* %61, i32 %62)
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %65 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @TXP_FIRST_MCS_20_SISO, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load %struct.txpwr_limits*, %struct.txpwr_limits** %4, align 8
  %70 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %69, i32 0, i32 7
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* @BRCMS_NUM_RATES_MCS_1_STREAM, align 4
  %74 = call i32 @memcpy(i32* %68, i32* %72, i32 %73)
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %76 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @TXP_FIRST_MCS_20_CDD, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load %struct.txpwr_limits*, %struct.txpwr_limits** %4, align 8
  %81 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %80, i32 0, i32 6
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* @BRCMS_NUM_RATES_MCS_1_STREAM, align 4
  %85 = call i32 @memcpy(i32* %79, i32* %83, i32 %84)
  %86 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %87 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @TXP_FIRST_MCS_20_STBC, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load %struct.txpwr_limits*, %struct.txpwr_limits** %4, align 8
  %92 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %91, i32 0, i32 5
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* @BRCMS_NUM_RATES_MCS_1_STREAM, align 4
  %96 = call i32 @memcpy(i32* %90, i32* %94, i32 %95)
  %97 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %98 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @TXP_FIRST_MCS_20_SDM, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load %struct.txpwr_limits*, %struct.txpwr_limits** %4, align 8
  %103 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* @BRCMS_NUM_RATES_MCS_2_STREAM, align 4
  %107 = call i32 @memcpy(i32* %101, i32* %105, i32 %106)
  %108 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %109 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* @TXP_FIRST_MCS_40_SISO, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load %struct.txpwr_limits*, %struct.txpwr_limits** %4, align 8
  %114 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* @BRCMS_NUM_RATES_MCS_1_STREAM, align 4
  %118 = call i32 @memcpy(i32* %112, i32* %116, i32 %117)
  %119 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %120 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* @TXP_FIRST_MCS_40_CDD, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load %struct.txpwr_limits*, %struct.txpwr_limits** %4, align 8
  %125 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* @BRCMS_NUM_RATES_MCS_1_STREAM, align 4
  %129 = call i32 @memcpy(i32* %123, i32* %127, i32 %128)
  %130 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %131 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* @TXP_FIRST_MCS_40_STBC, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load %struct.txpwr_limits*, %struct.txpwr_limits** %4, align 8
  %136 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* @BRCMS_NUM_RATES_MCS_1_STREAM, align 4
  %140 = call i32 @memcpy(i32* %134, i32* %138, i32 %139)
  %141 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %142 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* @TXP_FIRST_MCS_40_SDM, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load %struct.txpwr_limits*, %struct.txpwr_limits** %4, align 8
  %147 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* @BRCMS_NUM_RATES_MCS_2_STREAM, align 4
  %151 = call i32 @memcpy(i32* %145, i32* %149, i32 %150)
  %152 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %153 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @maccontrol, align 4
  %156 = call i32 @D11REGOFFS(i32 %155)
  %157 = call i32 @bcma_read32(i32 %154, i32 %156)
  %158 = load i32, i32* @MCTL_EN_MAC, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %2
  store i32 1, i32* %5, align 4
  br label %162

162:                                              ; preds = %161, %2
  %163 = load i32, i32* %5, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %162
  %166 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %167 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %166, i32 0, i32 0
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @wlapi_suspend_mac_and_wait(i32 %170)
  br label %172

172:                                              ; preds = %165, %162
  %173 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %174 = call i32 @wlc_phy_txpower_recalc_target(%struct.brcms_phy* %173)
  %175 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %176 = call i32 @wlc_phy_cal_txpower_recalc_sw(%struct.brcms_phy* %175)
  %177 = load i32, i32* %5, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %172
  %180 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %181 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %180, i32 0, i32 0
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @wlapi_enable_mac(i32 %184)
  br label %186

186:                                              ; preds = %179, %172
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @wlapi_suspend_mac_and_wait(i32) #1

declare dso_local i32 @wlc_phy_txpower_recalc_target(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_cal_txpower_recalc_sw(%struct.brcms_phy*) #1

declare dso_local i32 @wlapi_enable_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
