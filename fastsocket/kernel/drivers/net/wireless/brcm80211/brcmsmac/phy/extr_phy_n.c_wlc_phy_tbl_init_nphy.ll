; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_tbl_init_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_tbl_init_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NPHY_TBL_ID_ANTSWCTRLLUT = common dso_local global i32 0, align 4
@ant_sw_ctrl_tbl_rev8_2o3 = common dso_local global i32* null, align 8
@ant_sw_ctrl_tbl_rev8 = common dso_local global i32* null, align 8
@ant_sw_ctrl_tbl_rev8_2057v7_core0 = common dso_local global i32* null, align 8
@ant_sw_ctrl_tbl_rev8_2057v7_core1 = common dso_local global i32* null, align 8
@mimophytbl_info_sz_rev3_volatile = common dso_local global i64 0, align 8
@ANT_SWCTRL_TBL_REV3_IDX = common dso_local global i64 0, align 8
@mimophytbl_info_rev3_volatile = common dso_local global i32* null, align 8
@mimophytbl_info_rev3_volatile1 = common dso_local global i32* null, align 8
@mimophytbl_info_rev3_volatile2 = common dso_local global i32* null, align 8
@mimophytbl_info_rev3_volatile3 = common dso_local global i32* null, align 8
@mimophytbl_info_sz_rev0_volatile = common dso_local global i64 0, align 8
@mimophytbl_info_rev0_volatile = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_tbl_init_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_tbl_init_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %6 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %11 = call i32 @wlc_phy_static_table_download_nphy(%struct.brcms_phy* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %14 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @NREV_GE(i32 %16, i32 7)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %100

19:                                               ; preds = %12
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %21 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @CHSPEC_IS2G(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %27 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  br label %35

30:                                               ; preds = %19
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %32 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i32 [ %29, %25 ], [ %34, %30 ]
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  switch i32 %37, label %98 [
    i32 0, label %38
    i32 1, label %39
    i32 2, label %67
  ]

38:                                               ; preds = %35
  br label %99

39:                                               ; preds = %35
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %41 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 7
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %46 = load i32, i32* @NPHY_TBL_ID_ANTSWCTRLLUT, align 4
  %47 = load i32*, i32** @ant_sw_ctrl_tbl_rev8_2o3, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %45, i32 %46, i32 2, i32 33, i32 8, i32* %48)
  br label %56

50:                                               ; preds = %39
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %52 = load i32, i32* @NPHY_TBL_ID_ANTSWCTRLLUT, align 4
  %53 = load i32*, i32** @ant_sw_ctrl_tbl_rev8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %51, i32 %52, i32 2, i32 33, i32 8, i32* %54)
  br label %56

56:                                               ; preds = %50, %44
  %57 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %58 = load i32, i32* @NPHY_TBL_ID_ANTSWCTRLLUT, align 4
  %59 = load i32*, i32** @ant_sw_ctrl_tbl_rev8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %57, i32 %58, i32 2, i32 37, i32 8, i32* %60)
  %62 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %63 = load i32, i32* @NPHY_TBL_ID_ANTSWCTRLLUT, align 4
  %64 = load i32*, i32** @ant_sw_ctrl_tbl_rev8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %62, i32 %63, i32 2, i32 41, i32 8, i32* %65)
  br label %99

67:                                               ; preds = %35
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %69 = load i32, i32* @NPHY_TBL_ID_ANTSWCTRLLUT, align 4
  %70 = load i32*, i32** @ant_sw_ctrl_tbl_rev8_2057v7_core0, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %68, i32 %69, i32 2, i32 1, i32 8, i32* %71)
  %73 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %74 = load i32, i32* @NPHY_TBL_ID_ANTSWCTRLLUT, align 4
  %75 = load i32*, i32** @ant_sw_ctrl_tbl_rev8_2057v7_core0, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %73, i32 %74, i32 2, i32 5, i32 8, i32* %76)
  %78 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %79 = load i32, i32* @NPHY_TBL_ID_ANTSWCTRLLUT, align 4
  %80 = load i32*, i32** @ant_sw_ctrl_tbl_rev8_2057v7_core0, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  %82 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %78, i32 %79, i32 2, i32 9, i32 8, i32* %81)
  %83 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %84 = load i32, i32* @NPHY_TBL_ID_ANTSWCTRLLUT, align 4
  %85 = load i32*, i32** @ant_sw_ctrl_tbl_rev8_2057v7_core1, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %83, i32 %84, i32 2, i32 33, i32 8, i32* %86)
  %88 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %89 = load i32, i32* @NPHY_TBL_ID_ANTSWCTRLLUT, align 4
  %90 = load i32*, i32** @ant_sw_ctrl_tbl_rev8_2057v7_core1, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %88, i32 %89, i32 2, i32 37, i32 8, i32* %91)
  %93 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %94 = load i32, i32* @NPHY_TBL_ID_ANTSWCTRLLUT, align 4
  %95 = load i32*, i32** @ant_sw_ctrl_tbl_rev8_2057v7_core1, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  %97 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %93, i32 %94, i32 2, i32 41, i32 8, i32* %96)
  br label %99

98:                                               ; preds = %35
  br label %99

99:                                               ; preds = %98, %67, %56, %38
  br label %188

100:                                              ; preds = %12
  %101 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %102 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @NREV_GE(i32 %104, i32 3)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %172

107:                                              ; preds = %100
  store i64 0, i64* %3, align 8
  br label %108

108:                                              ; preds = %168, %107
  %109 = load i64, i64* %3, align 8
  %110 = load i64, i64* @mimophytbl_info_sz_rev3_volatile, align 8
  %111 = icmp ult i64 %109, %110
  br i1 %111, label %112, label %171

112:                                              ; preds = %108
  %113 = load i64, i64* %3, align 8
  %114 = load i64, i64* @ANT_SWCTRL_TBL_REV3_IDX, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %161

116:                                              ; preds = %112
  %117 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %118 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @CHSPEC_IS2G(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %124 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  br label %132

127:                                              ; preds = %116
  %128 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %129 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  br label %132

132:                                              ; preds = %127, %122
  %133 = phi i32 [ %126, %122 ], [ %131, %127 ]
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %4, align 4
  switch i32 %134, label %159 [
    i32 0, label %135
    i32 1, label %141
    i32 2, label %147
    i32 3, label %153
  ]

135:                                              ; preds = %132
  %136 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %137 = load i32*, i32** @mimophytbl_info_rev3_volatile, align 8
  %138 = load i64, i64* %3, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = call i32 @wlc_phy_write_table_nphy(%struct.brcms_phy* %136, i32* %139)
  br label %160

141:                                              ; preds = %132
  %142 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %143 = load i32*, i32** @mimophytbl_info_rev3_volatile1, align 8
  %144 = load i64, i64* %3, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = call i32 @wlc_phy_write_table_nphy(%struct.brcms_phy* %142, i32* %145)
  br label %160

147:                                              ; preds = %132
  %148 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %149 = load i32*, i32** @mimophytbl_info_rev3_volatile2, align 8
  %150 = load i64, i64* %3, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = call i32 @wlc_phy_write_table_nphy(%struct.brcms_phy* %148, i32* %151)
  br label %160

153:                                              ; preds = %132
  %154 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %155 = load i32*, i32** @mimophytbl_info_rev3_volatile3, align 8
  %156 = load i64, i64* %3, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = call i32 @wlc_phy_write_table_nphy(%struct.brcms_phy* %154, i32* %157)
  br label %160

159:                                              ; preds = %132
  br label %160

160:                                              ; preds = %159, %153, %147, %141, %135
  br label %167

161:                                              ; preds = %112
  %162 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %163 = load i32*, i32** @mimophytbl_info_rev3_volatile, align 8
  %164 = load i64, i64* %3, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = call i32 @wlc_phy_write_table_nphy(%struct.brcms_phy* %162, i32* %165)
  br label %167

167:                                              ; preds = %161, %160
  br label %168

168:                                              ; preds = %167
  %169 = load i64, i64* %3, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %3, align 8
  br label %108

171:                                              ; preds = %108
  br label %187

172:                                              ; preds = %100
  store i64 0, i64* %3, align 8
  br label %173

173:                                              ; preds = %183, %172
  %174 = load i64, i64* %3, align 8
  %175 = load i64, i64* @mimophytbl_info_sz_rev0_volatile, align 8
  %176 = icmp ult i64 %174, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %173
  %178 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %179 = load i32*, i32** @mimophytbl_info_rev0_volatile, align 8
  %180 = load i64, i64* %3, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = call i32 @wlc_phy_write_table_nphy(%struct.brcms_phy* %178, i32* %181)
  br label %183

183:                                              ; preds = %177
  %184 = load i64, i64* %3, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %3, align 8
  br label %173

186:                                              ; preds = %173
  br label %187

187:                                              ; preds = %186, %171
  br label %188

188:                                              ; preds = %187, %99
  ret void
}

declare dso_local i32 @wlc_phy_static_table_download_nphy(%struct.brcms_phy*) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @wlc_phy_write_table_nphy(%struct.brcms_phy*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
