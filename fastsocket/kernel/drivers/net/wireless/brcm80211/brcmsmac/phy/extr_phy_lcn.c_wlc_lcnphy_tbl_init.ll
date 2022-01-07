; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tbl_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tbl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phytbl_info = type { i32, i32*, i32, i32, i8* }
%struct.brcms_phy = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@dot11lcnphytbl_info_sz_rev0 = common dso_local global i64 0, align 8
@dot11lcnphytbl_info_rev0 = common dso_local global %struct.phytbl_info* null, align 8
@BFL_FEM_BT = common dso_local global i32 0, align 4
@LCNPHY_TBL_ID_RFSEQ = common dso_local global i8* null, align 8
@BFL_FEM = common dso_local global i32 0, align 4
@dot11lcnphy_2GHz_extPA_gaintable_rev0 = common dso_local global i32 0, align 4
@dot11lcnphy_2GHz_gaintable_rev0 = common dso_local global i32 0, align 4
@dot11lcnphytbl_rx_gain_info_2G_rev2_sz = common dso_local global i32 0, align 4
@BFL_EXTLNA = common dso_local global i32 0, align 4
@dot11lcnphytbl_rx_gain_info_extlna_2G_rev2 = common dso_local global %struct.phytbl_info* null, align 8
@dot11lcnphytbl_rx_gain_info_2G_rev2 = common dso_local global %struct.phytbl_info* null, align 8
@dot11lcnphytbl_rx_gain_info_5G_rev2_sz = common dso_local global i32 0, align 4
@BFL_EXTLNA_5GHz = common dso_local global i32 0, align 4
@dot11lcnphytbl_rx_gain_info_extlna_5G_rev2 = common dso_local global %struct.phytbl_info* null, align 8
@dot11lcnphytbl_rx_gain_info_5G_rev2 = common dso_local global %struct.phytbl_info* null, align 8
@dot11lcn_sw_ctrl_tbl_info_4313_epa = common dso_local global %struct.phytbl_info zeroinitializer, align 8
@dot11lcn_sw_ctrl_tbl_info_4313_bt_epa = common dso_local global %struct.phytbl_info zeroinitializer, align 8
@dot11lcn_sw_ctrl_tbl_info_4313_bt_epa_p250 = common dso_local global %struct.phytbl_info zeroinitializer, align 8
@dot11lcn_sw_ctrl_tbl_info_4313 = common dso_local global %struct.phytbl_info zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_lcnphy_tbl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_tbl_init(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.phytbl_info, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.phytbl_info*, align 8
  %8 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %10 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @CHSPEC_IS40(i32 %11)
  store i32 %12, i32* %4, align 4
  store i64 0, i64* %3, align 8
  br label %13

13:                                               ; preds = %23, %1
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @dot11lcnphytbl_info_sz_rev0, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %19 = load %struct.phytbl_info*, %struct.phytbl_info** @dot11lcnphytbl_info_rev0, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %19, i64 %20
  %22 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %18, %struct.phytbl_info* %21)
  br label %23

23:                                               ; preds = %17
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %3, align 8
  br label %13

26:                                               ; preds = %13
  %27 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %28 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BFL_FEM_BT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = load i8*, i8** @LCNPHY_TBL_ID_RFSEQ, align 8
  %37 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 4
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 0
  store i32 16, i32* %38, align 8
  %39 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 1
  store i32* %6, i32** %39, align 8
  %40 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 2
  store i32 1, i32* %40, align 8
  store i32 100, i32* %6, align 4
  %41 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 3
  store i32 4, i32* %41, align 4
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %43 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %42, %struct.phytbl_info* %5)
  br label %44

44:                                               ; preds = %35, %26
  %45 = load i8*, i8** @LCNPHY_TBL_ID_RFSEQ, align 8
  %46 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 4
  store i8* %45, i8** %46, align 8
  %47 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 0
  store i32 16, i32* %47, align 8
  %48 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 1
  store i32* %6, i32** %48, align 8
  %49 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 2
  store i32 1, i32* %49, align 8
  store i32 114, i32* %6, align 4
  %50 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 3
  store i32 0, i32* %50, align 4
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %52 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %51, %struct.phytbl_info* %5)
  store i32 130, i32* %6, align 4
  %53 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 3
  store i32 1, i32* %53, align 4
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %55 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %54, %struct.phytbl_info* %5)
  store i32 6, i32* %6, align 4
  %56 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 3
  store i32 8, i32* %56, align 4
  %57 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %58 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %57, %struct.phytbl_info* %5)
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %60 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @CHSPEC_IS2G(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %44
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %66 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @BFL_FEM, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %75 = load i32, i32* @dot11lcnphy_2GHz_extPA_gaintable_rev0, align 4
  %76 = call i32 @wlc_lcnphy_load_tx_gain_table(%struct.brcms_phy* %74, i32 %75)
  br label %81

77:                                               ; preds = %64
  %78 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %79 = load i32, i32* @dot11lcnphy_2GHz_gaintable_rev0, align 4
  %80 = call i32 @wlc_lcnphy_load_tx_gain_table(%struct.brcms_phy* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %73
  br label %82

82:                                               ; preds = %81, %44
  %83 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %84 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @LCNREV_IS(i32 %86, i32 2)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %141

89:                                               ; preds = %82
  %90 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %91 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @CHSPEC_IS2G(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %89
  %96 = load i32, i32* @dot11lcnphytbl_rx_gain_info_2G_rev2_sz, align 4
  store i32 %96, i32* %8, align 4
  %97 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %98 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @BFL_EXTLNA, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load %struct.phytbl_info*, %struct.phytbl_info** @dot11lcnphytbl_rx_gain_info_extlna_2G_rev2, align 8
  store %struct.phytbl_info* %106, %struct.phytbl_info** %7, align 8
  br label %109

107:                                              ; preds = %95
  %108 = load %struct.phytbl_info*, %struct.phytbl_info** @dot11lcnphytbl_rx_gain_info_2G_rev2, align 8
  store %struct.phytbl_info* %108, %struct.phytbl_info** %7, align 8
  br label %109

109:                                              ; preds = %107, %105
  br label %125

110:                                              ; preds = %89
  %111 = load i32, i32* @dot11lcnphytbl_rx_gain_info_5G_rev2_sz, align 4
  store i32 %111, i32* %8, align 4
  %112 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %113 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @BFL_EXTLNA_5GHz, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %110
  %121 = load %struct.phytbl_info*, %struct.phytbl_info** @dot11lcnphytbl_rx_gain_info_extlna_5G_rev2, align 8
  store %struct.phytbl_info* %121, %struct.phytbl_info** %7, align 8
  br label %124

122:                                              ; preds = %110
  %123 = load %struct.phytbl_info*, %struct.phytbl_info** @dot11lcnphytbl_rx_gain_info_5G_rev2, align 8
  store %struct.phytbl_info* %123, %struct.phytbl_info** %7, align 8
  br label %124

124:                                              ; preds = %122, %120
  br label %125

125:                                              ; preds = %124, %109
  store i64 0, i64* %3, align 8
  br label %126

126:                                              ; preds = %137, %125
  %127 = load i64, i64* %3, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = icmp ult i64 %127, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %126
  %132 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %133 = load %struct.phytbl_info*, %struct.phytbl_info** %7, align 8
  %134 = load i64, i64* %3, align 8
  %135 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %133, i64 %134
  %136 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %132, %struct.phytbl_info* %135)
  br label %137

137:                                              ; preds = %131
  %138 = load i64, i64* %3, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %3, align 8
  br label %126

140:                                              ; preds = %126
  br label %141

141:                                              ; preds = %140, %82
  %142 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %143 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @BFL_FEM, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %141
  %151 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %152 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %151, i32 0, i32 0
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @BFL_FEM_BT, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %150
  %160 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %161 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %160, %struct.phytbl_info* @dot11lcn_sw_ctrl_tbl_info_4313_epa)
  br label %189

162:                                              ; preds = %150, %141
  %163 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %164 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %163, i32 0, i32 0
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @BFL_FEM_BT, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %185

171:                                              ; preds = %162
  %172 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %173 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %172, i32 0, i32 0
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp slt i32 %176, 4688
  br i1 %177, label %178, label %181

178:                                              ; preds = %171
  %179 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %180 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %179, %struct.phytbl_info* @dot11lcn_sw_ctrl_tbl_info_4313_bt_epa)
  br label %184

181:                                              ; preds = %171
  %182 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %183 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %182, %struct.phytbl_info* @dot11lcn_sw_ctrl_tbl_info_4313_bt_epa_p250)
  br label %184

184:                                              ; preds = %181, %178
  br label %188

185:                                              ; preds = %162
  %186 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %187 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %186, %struct.phytbl_info* @dot11lcn_sw_ctrl_tbl_info_4313)
  br label %188

188:                                              ; preds = %185, %184
  br label %189

189:                                              ; preds = %188, %159
  %190 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %191 = call i32 @wlc_lcnphy_load_rfpower(%struct.brcms_phy* %190)
  %192 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %193 = call i32 @wlc_lcnphy_clear_papd_comptable(%struct.brcms_phy* %192)
  ret void
}

declare dso_local i32 @CHSPEC_IS40(i32) #1

declare dso_local i32 @wlc_lcnphy_write_table(%struct.brcms_phy*, %struct.phytbl_info*) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @wlc_lcnphy_load_tx_gain_table(%struct.brcms_phy*, i32) #1

declare dso_local i64 @LCNREV_IS(i32, i32) #1

declare dso_local i32 @wlc_lcnphy_load_rfpower(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_clear_papd_comptable(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
