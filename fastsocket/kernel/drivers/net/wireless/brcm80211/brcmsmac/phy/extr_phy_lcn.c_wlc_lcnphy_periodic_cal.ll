; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_periodic_cal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_periodic_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcnphy_rx_iqcomp = type { i32 }
%struct.brcms_phy = type { i32, i32*, %struct.TYPE_6__*, %struct.TYPE_5__, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i64, i32 }
%struct.phytbl_info = type { i32, i32*, i32, i64, i32 }
%struct.brcms_phy_pub = type { i32 }

@maccontrol = common dso_local global i32 0, align 4
@MCTL_EN_MAC = common dso_local global i32 0, align 4
@M_CTS_DURATION = common dso_local global i32 0, align 4
@lcnphy_rx_iqcomp_table_rev0 = common dso_local global %struct.lcnphy_rx_iqcomp* null, align 8
@LCNPHY_TBL_ID_TXPWRCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_lcnphy_periodic_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_periodic_cal(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.lcnphy_rx_iqcomp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.phytbl_info, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %19 = call i32 @wlc_lcnphy_get_tx_pwr_ctrl(%struct.brcms_phy* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %21 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %22, align 8
  store %struct.brcms_phy_lcnphy* %23, %struct.brcms_phy_lcnphy** %17, align 8
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %25 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %30 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %32 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %17, align 8
  %34 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %37 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @CHSPEC_CHANNEL(i32 %38)
  %40 = icmp ne i64 %35, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %4, align 4
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %43 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @CHSPEC_CHANNEL(i32 %44)
  %46 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %17, align 8
  %47 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %17, align 8
  %49 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %8, align 4
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %52 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @maccontrol, align 4
  %55 = call i32 @D11REGOFFS(i32 %54)
  %56 = call i32 @bcma_read32(i32 %53, i32 %55)
  %57 = load i32, i32* @MCTL_EN_MAC, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 0, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %77, label %63

63:                                               ; preds = %1
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %65 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @M_CTS_DURATION, align 4
  %70 = call i32 @wlapi_bmac_write_shm(i32 %68, i32 %69, i32 10000)
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %72 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %71, i32 0, i32 2
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @wlapi_suspend_mac_and_wait(i32 %75)
  br label %77

77:                                               ; preds = %63, %1
  %78 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %79 = call i32 @wlc_lcnphy_deaf_mode(%struct.brcms_phy* %78, i32 1)
  %80 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %81 = call i32 @wlc_lcnphy_txpwrtbl_iqlo_cal(%struct.brcms_phy* %80)
  %82 = load %struct.lcnphy_rx_iqcomp*, %struct.lcnphy_rx_iqcomp** @lcnphy_rx_iqcomp_table_rev0, align 8
  store %struct.lcnphy_rx_iqcomp* %82, %struct.lcnphy_rx_iqcomp** %5, align 8
  %83 = load %struct.lcnphy_rx_iqcomp*, %struct.lcnphy_rx_iqcomp** @lcnphy_rx_iqcomp_table_rev0, align 8
  %84 = call i32 @ARRAY_SIZE(%struct.lcnphy_rx_iqcomp* %83)
  store i32 %84, i32* %6, align 4
  %85 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %86 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @LCNREV_IS(i32 %88, i32 1)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %77
  %92 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %93 = call i32 @wlc_lcnphy_rx_iq_cal(%struct.brcms_phy* %92, i32* null, i32 0, i32 1, i32 0, i32 1, i32 40)
  br label %97

94:                                               ; preds = %77
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %96 = call i32 @wlc_lcnphy_rx_iq_cal(%struct.brcms_phy* %95, i32* null, i32 0, i32 1, i32 0, i32 1, i32 127)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %99 = call i64 @wlc_lcnphy_tssi_based_pwr_ctrl_enabled(%struct.brcms_phy* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %161

101:                                              ; preds = %97
  %102 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %103 = bitcast %struct.brcms_phy* %102 to %struct.brcms_phy_pub*
  %104 = call i32 @wlc_lcnphy_idle_tssi_est(%struct.brcms_phy_pub* %103)
  %105 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %106 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %11, align 4
  %110 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %111 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %12, align 4
  %115 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %116 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @wlc_lcnphy_tssi2dbm(i32 10, i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @wlc_lcnphy_tssi2dbm(i32 125, i32 %124, i32 %125, i32 %126)
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* @LCNPHY_TBL_ID_TXPWRCTL, align 4
  %129 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %9, i32 0, i32 4
  store i32 %128, i32* %129, align 8
  %130 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %9, i32 0, i32 0
  store i32 32, i32* %130, align 8
  %131 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %9, i32 0, i32 1
  store i32* %14, i32** %131, align 8
  %132 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %9, i32 0, i32 2
  store i32 1, i32* %132, align 8
  %133 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %9, i32 0, i32 3
  store i64 0, i64* %133, align 8
  store i32 0, i32* %13, align 4
  br label %134

134:                                              ; preds = %157, %101
  %135 = load i32, i32* %13, align 4
  %136 = icmp slt i32 %135, 128
  br i1 %136, label %137, label %160

137:                                              ; preds = %134
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @wlc_lcnphy_tssi2dbm(i32 %138, i32 %139, i32 %140, i32 %141)
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %16, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %137
  %147 = load i32, i32* %16, align 4
  br label %150

148:                                              ; preds = %137
  %149 = load i32, i32* %14, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %147, %146 ], [ %149, %148 ]
  store i32 %151, i32* %14, align 4
  %152 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %153 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %152, %struct.phytbl_info* %9)
  %154 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %9, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %155, 1
  store i64 %156, i64* %154, align 8
  br label %157

157:                                              ; preds = %150
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %13, align 4
  br label %134

160:                                              ; preds = %134
  br label %161

161:                                              ; preds = %160, %97
  %162 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy* %162, i32 %163)
  %165 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy* %165, i32 %166)
  %168 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %169 = call i32 @wlc_lcnphy_deaf_mode(%struct.brcms_phy* %168, i32 0)
  %170 = load i32, i32* %3, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %161
  %173 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %174 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %173, i32 0, i32 2
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @wlapi_enable_mac(i32 %177)
  br label %179

179:                                              ; preds = %172, %161
  ret void
}

declare dso_local i32 @wlc_lcnphy_get_tx_pwr_ctrl(%struct.brcms_phy*) #1

declare dso_local i64 @CHSPEC_CHANNEL(i32) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @wlapi_bmac_write_shm(i32, i32, i32) #1

declare dso_local i32 @wlapi_suspend_mac_and_wait(i32) #1

declare dso_local i32 @wlc_lcnphy_deaf_mode(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_txpwrtbl_iqlo_cal(%struct.brcms_phy*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.lcnphy_rx_iqcomp*) #1

declare dso_local i64 @LCNREV_IS(i32, i32) #1

declare dso_local i32 @wlc_lcnphy_rx_iq_cal(%struct.brcms_phy*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @wlc_lcnphy_tssi_based_pwr_ctrl_enabled(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_idle_tssi_est(%struct.brcms_phy_pub*) #1

declare dso_local i32 @wlc_lcnphy_tssi2dbm(i32, i32, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_write_table(%struct.brcms_phy*, %struct.phytbl_info*) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlapi_enable_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
