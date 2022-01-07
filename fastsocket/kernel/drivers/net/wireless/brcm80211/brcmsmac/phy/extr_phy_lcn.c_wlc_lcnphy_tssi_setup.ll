; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tssi_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tssi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.phytbl_info = type { i32, i32*, i32, i32, i32 }

@LCNPHY_TBL_ID_TXPWRCTL = common dso_local global i32 0, align 4
@LCNPHY_TSSI_EXT = common dso_local global i32 0, align 4
@RADIO_2064_REG028 = common dso_local global i32 0, align 4
@RADIO_2064_REG086 = common dso_local global i32 0, align 4
@RADIO_2064_REG03A = common dso_local global i32 0, align 4
@RADIO_2064_REG11A = common dso_local global i32 0, align 4
@RADIO_2064_REG025 = common dso_local global i32 0, align 4
@RADIO_2064_REG005 = common dso_local global i32 0, align 4
@LCNPHY_TBL_ID_RFSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_lcnphy_tssi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_tssi_setup(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca %struct.phytbl_info, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %6 = load i32, i32* @LCNPHY_TBL_ID_TXPWRCTL, align 4
  %7 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 4
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 0
  store i32 32, i32* %8, align 8
  %9 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 1
  store i32* %5, i32** %9, align 8
  %10 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 2
  store i32 1, i32* %10, align 8
  %11 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 3
  store i32 0, i32* %11, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %21, %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 128
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %17 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %16, %struct.phytbl_info* %3)
  %18 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %12

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 3
  store i32 704, i32* %25, align 4
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %35, %24
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 128
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %31 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %30, %struct.phytbl_info* %3)
  %32 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %26

38:                                               ; preds = %26
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %40 = call i32 @mod_phy_reg(%struct.brcms_phy* %39, i32 1283, i32 1, i32 0)
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %42 = call i32 @mod_phy_reg(%struct.brcms_phy* %41, i32 1283, i32 4, i32 0)
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %44 = call i32 @mod_phy_reg(%struct.brcms_phy* %43, i32 1283, i32 16, i32 16)
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %46 = load i32, i32* @LCNPHY_TSSI_EXT, align 4
  %47 = call i32 @wlc_lcnphy_set_tssi_mux(%struct.brcms_phy* %45, i32 %46)
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %49 = call i32 @mod_phy_reg(%struct.brcms_phy* %48, i32 1188, i32 16384, i32 0)
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %51 = call i32 @mod_phy_reg(%struct.brcms_phy* %50, i32 1188, i32 32768, i32 32768)
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %53 = call i32 @mod_phy_reg(%struct.brcms_phy* %52, i32 1232, i32 32, i32 0)
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %55 = call i32 @mod_phy_reg(%struct.brcms_phy* %54, i32 1188, i32 511, i32 0)
  %56 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %57 = call i32 @mod_phy_reg(%struct.brcms_phy* %56, i32 1189, i32 255, i32 255)
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %59 = call i32 @mod_phy_reg(%struct.brcms_phy* %58, i32 1189, i32 28672, i32 20480)
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %61 = call i32 @mod_phy_reg(%struct.brcms_phy* %60, i32 1189, i32 1792, i32 0)
  %62 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %63 = call i32 @mod_phy_reg(%struct.brcms_phy* %62, i32 1037, i32 255, i32 64)
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %65 = call i32 @mod_phy_reg(%struct.brcms_phy* %64, i32 1037, i32 1792, i32 1024)
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %67 = call i32 @mod_phy_reg(%struct.brcms_phy* %66, i32 1186, i32 255, i32 64)
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %69 = call i32 @mod_phy_reg(%struct.brcms_phy* %68, i32 1186, i32 1792, i32 1024)
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %71 = call i32 @mod_phy_reg(%struct.brcms_phy* %70, i32 1232, i32 32704, i32 0)
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %73 = call i32 @mod_phy_reg(%struct.brcms_phy* %72, i32 1192, i32 255, i32 1)
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %75 = call i32 @wlc_lcnphy_clear_tx_power_offsets(%struct.brcms_phy* %74)
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %77 = call i32 @mod_phy_reg(%struct.brcms_phy* %76, i32 1190, i32 32768, i32 32768)
  %78 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %79 = call i32 @mod_phy_reg(%struct.brcms_phy* %78, i32 1190, i32 511, i32 255)
  %80 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %81 = call i32 @mod_phy_reg(%struct.brcms_phy* %80, i32 1178, i32 511, i32 255)
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %83 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @LCNREV_IS(i32 %85, i32 2)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %38
  %89 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %90 = load i32, i32* @RADIO_2064_REG028, align 4
  %91 = call i32 @mod_radio_reg(%struct.brcms_phy* %89, i32 %90, i32 15, i32 14)
  %92 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %93 = load i32, i32* @RADIO_2064_REG086, align 4
  %94 = call i32 @mod_radio_reg(%struct.brcms_phy* %92, i32 %93, i32 4, i32 4)
  br label %102

95:                                               ; preds = %38
  %96 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %97 = load i32, i32* @RADIO_2064_REG03A, align 4
  %98 = call i32 @mod_radio_reg(%struct.brcms_phy* %96, i32 %97, i32 1, i32 1)
  %99 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %100 = load i32, i32* @RADIO_2064_REG11A, align 4
  %101 = call i32 @mod_radio_reg(%struct.brcms_phy* %99, i32 %100, i32 8, i32 8)
  br label %102

102:                                              ; preds = %95, %88
  %103 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %104 = load i32, i32* @RADIO_2064_REG025, align 4
  %105 = call i32 @write_radio_reg(%struct.brcms_phy* %103, i32 %104, i32 12)
  %106 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %107 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @LCNREV_IS(i32 %109, i32 2)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %102
  %113 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %114 = load i32, i32* @RADIO_2064_REG03A, align 4
  %115 = call i32 @mod_radio_reg(%struct.brcms_phy* %113, i32 %114, i32 1, i32 1)
  br label %131

116:                                              ; preds = %102
  %117 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %118 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @CHSPEC_IS2G(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %124 = load i32, i32* @RADIO_2064_REG03A, align 4
  %125 = call i32 @mod_radio_reg(%struct.brcms_phy* %123, i32 %124, i32 2, i32 2)
  br label %130

126:                                              ; preds = %116
  %127 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %128 = load i32, i32* @RADIO_2064_REG03A, align 4
  %129 = call i32 @mod_radio_reg(%struct.brcms_phy* %127, i32 %128, i32 2, i32 0)
  br label %130

130:                                              ; preds = %126, %122
  br label %131

131:                                              ; preds = %130, %112
  %132 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %133 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @LCNREV_IS(i32 %135, i32 2)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %131
  %139 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %140 = load i32, i32* @RADIO_2064_REG03A, align 4
  %141 = call i32 @mod_radio_reg(%struct.brcms_phy* %139, i32 %140, i32 2, i32 2)
  br label %146

142:                                              ; preds = %131
  %143 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %144 = load i32, i32* @RADIO_2064_REG03A, align 4
  %145 = call i32 @mod_radio_reg(%struct.brcms_phy* %143, i32 %144, i32 4, i32 4)
  br label %146

146:                                              ; preds = %142, %138
  %147 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %148 = load i32, i32* @RADIO_2064_REG11A, align 4
  %149 = call i32 @mod_radio_reg(%struct.brcms_phy* %147, i32 %148, i32 1, i32 1)
  %150 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %151 = load i32, i32* @RADIO_2064_REG005, align 4
  %152 = call i32 @mod_radio_reg(%struct.brcms_phy* %150, i32 %151, i32 8, i32 8)
  %153 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %154 = call i32 @wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(%struct.brcms_phy* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %146
  %157 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %158 = call i32 @mod_phy_reg(%struct.brcms_phy* %157, i32 1239, i32 28680, i32 8192)
  br label %159

159:                                              ; preds = %156, %146
  %160 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %161 = call i32 @wlc_lcnphy_rfseq_tbl_adc_pwrup(%struct.brcms_phy* %160)
  store i32 %161, i32* %4, align 4
  %162 = load i32, i32* @LCNPHY_TBL_ID_RFSEQ, align 4
  %163 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 4
  store i32 %162, i32* %163, align 8
  %164 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 0
  store i32 16, i32* %164, align 8
  %165 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 1
  store i32* %4, i32** %165, align 8
  %166 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 2
  store i32 1, i32* %166, align 8
  %167 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 3
  store i32 6, i32* %167, align 4
  %168 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %169 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %168, %struct.phytbl_info* %3)
  %170 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %171 = call i32 @mod_phy_reg(%struct.brcms_phy* %170, i32 2360, i32 4, i32 4)
  %172 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %173 = call i32 @mod_phy_reg(%struct.brcms_phy* %172, i32 2361, i32 4, i32 4)
  %174 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %175 = call i32 @mod_phy_reg(%struct.brcms_phy* %174, i32 1188, i32 4096, i32 4096)
  %176 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %177 = call i32 @mod_phy_reg(%struct.brcms_phy* %176, i32 1239, i32 4, i32 4)
  %178 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %179 = call i32 @mod_phy_reg(%struct.brcms_phy* %178, i32 1239, i32 3840, i32 0)
  %180 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %181 = call i32 @wlc_lcnphy_pwrctrl_rssiparams(%struct.brcms_phy* %180)
  ret void
}

declare dso_local i32 @wlc_lcnphy_write_table(%struct.brcms_phy*, %struct.phytbl_info*) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_set_tssi_mux(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_clear_tx_power_offsets(%struct.brcms_phy*) #1

declare dso_local i64 @LCNREV_IS(i32, i32) #1

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_rfseq_tbl_adc_pwrup(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_pwrctrl_rssiparams(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
