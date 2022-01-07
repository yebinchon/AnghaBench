; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_txpwrtbl_iqlo_cal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_txpwrtbl_iqlo_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i64, i64, i64 }
%struct.lcnphy_txgains = type { i32, i32, i32, i64 }
%struct.phytbl_info = type { i32, i32*, i32, i64, i32 }

@LCNPHY_TX_PWR_CTRL_OFF = common dso_local global i64 0, align 8
@LCNPHY_CAL_RECAL = common dso_local global i32 0, align 4
@LCNPHY_CAL_FULL = common dso_local global i32 0, align 4
@LCNPHY_TBL_ID_TXPWRCTL = common dso_local global i32 0, align 4
@LCNPHY_TX_PWR_CTRL_RATE_OFFSET = common dso_local global i64 0, align 8
@LCNPHY_TX_PWR_CTRL_IQ_OFFSET = common dso_local global i64 0, align 8
@LCNPHY_TX_PWR_CTRL_LO_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_lcnphy_txpwrtbl_iqlo_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_txpwrtbl_iqlo_cal(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca %struct.lcnphy_txgains, align 8
  %4 = alloca %struct.lcnphy_txgains, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.phytbl_info, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  store i64 0, i64* %9, align 8
  store i32 255, i32* %11, align 4
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %21 = call i64 @wlc_lcnphy_get_tx_pwr_ctrl(%struct.brcms_phy* %20)
  store i64 %21, i64* %13, align 8
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %23 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %24, align 8
  store %struct.brcms_phy_lcnphy* %25, %struct.brcms_phy_lcnphy** %19, align 8
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %27 = call i32 @wlc_lcnphy_get_tx_gain(%struct.brcms_phy* %26, %struct.lcnphy_txgains* %4)
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %29 = call i64 @wlc_lcnphy_get_pa_gain(%struct.brcms_phy* %28)
  store i64 %29, i64* %9, align 8
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %31 = call i8* @wlc_lcnphy_get_bbmult(%struct.brcms_phy* %30)
  store i8* %31, i8** %5, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* @LCNPHY_TX_PWR_CTRL_OFF, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %37 = call i32 @wlc_lcnphy_get_current_tx_pwr_idx(%struct.brcms_phy* %36)
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %35, %1
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %40 = load i64, i64* @LCNPHY_TX_PWR_CTRL_OFF, align 8
  %41 = call i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy* %39, i64 %40)
  %42 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %3, i32 0, i32 0
  store i32 7, i32* %42, align 8
  %43 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %3, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %3, i32 0, i32 2
  store i32 21, i32* %44, align 8
  %45 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %3, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %47 = call i32 @wlc_lcnphy_set_tx_gain(%struct.brcms_phy* %46, %struct.lcnphy_txgains* %3)
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %49 = call i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy* %48, i32 16)
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %51 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @LCNREV_IS(i32 %53, i32 1)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %38
  %57 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %19, align 8
  %58 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %56, %38
  %62 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %63 = call i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy* %62, i32 30)
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %65 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %19, align 8
  %66 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @LCNPHY_CAL_RECAL, align 4
  br label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @LCNPHY_CAL_FULL, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = call i32 @wlc_lcnphy_tx_iqlo_cal(%struct.brcms_phy* %64, %struct.lcnphy_txgains* %3, i32 %74, i32 0)
  br label %79

76:                                               ; preds = %56
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %78 = call i32 @wlc_lcnphy_tx_iqlo_soft_cal_full(%struct.brcms_phy* %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %81 = call i32 @wlc_lcnphy_get_radio_loft(%struct.brcms_phy* %80, i8** %15, i8** %16, i8** %17, i8** %18)
  %82 = load i8*, i8** %17, align 8
  %83 = ptrtoint i8* %82 to i32
  %84 = call i32 @abs(i32 %83) #3
  %85 = icmp eq i32 %84, 15
  br i1 %85, label %86, label %131

86:                                               ; preds = %79
  %87 = load i8*, i8** %18, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = call i32 @abs(i32 %88) #3
  %90 = icmp eq i32 %89, 15
  br i1 %90, label %91, label %131

91:                                               ; preds = %86
  %92 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %93 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @CHSPEC_IS5G(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %3, i32 0, i32 0
  store i32 255, i32* %98, align 8
  %99 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %3, i32 0, i32 1
  store i32 255, i32* %99, align 4
  %100 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %3, i32 0, i32 2
  store i32 240, i32* %100, align 8
  %101 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %3, i32 0, i32 3
  store i64 0, i64* %101, align 8
  br label %107

102:                                              ; preds = %91
  %103 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %3, i32 0, i32 0
  store i32 7, i32* %103, align 8
  %104 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %3, i32 0, i32 1
  store i32 45, i32* %104, align 4
  %105 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %3, i32 0, i32 2
  store i32 186, i32* %105, align 8
  %106 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %3, i32 0, i32 3
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %102, %97
  %108 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %109 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @LCNREV_IS(i32 %111, i32 1)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %107
  %115 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %19, align 8
  %116 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %114, %107
  %120 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %3, i32 0, i32 1
  store i32 0, i32* %120, align 4
  %121 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %3, i32 0, i32 2
  store i32 30, i32* %121, align 8
  %122 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %123 = call i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy* %122, i32 16)
  %124 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %125 = load i32, i32* @LCNPHY_CAL_FULL, align 4
  %126 = call i32 @wlc_lcnphy_tx_iqlo_cal(%struct.brcms_phy* %124, %struct.lcnphy_txgains* %3, i32 %125, i32 0)
  br label %130

127:                                              ; preds = %114
  %128 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %129 = call i32 @wlc_lcnphy_tx_iqlo_soft_cal_full(%struct.brcms_phy* %128)
  br label %130

130:                                              ; preds = %127, %119
  br label %131

131:                                              ; preds = %130, %86, %79
  %132 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %133 = call i32 @wlc_lcnphy_get_tx_iqcc(%struct.brcms_phy* %132, i64* %6, i64* %7)
  %134 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %135 = call i64 @wlc_lcnphy_get_tx_locc(%struct.brcms_phy* %134)
  store i64 %135, i64* %8, align 8
  %136 = load i32, i32* @LCNPHY_TBL_ID_TXPWRCTL, align 4
  %137 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %14, i32 0, i32 4
  store i32 %136, i32* %137, align 8
  %138 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %14, i32 0, i32 0
  store i32 32, i32* %138, align 8
  %139 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %14, i32 0, i32 1
  store i32* %12, i32** %139, align 8
  %140 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %14, i32 0, i32 2
  store i32 1, i32* %140, align 8
  %141 = load i64, i64* @LCNPHY_TX_PWR_CTRL_RATE_OFFSET, align 8
  %142 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %14, i32 0, i32 3
  store i64 %141, i64* %142, align 8
  store i32 0, i32* %10, align 4
  br label %143

143:                                              ; preds = %177, %131
  %144 = load i32, i32* %10, align 4
  %145 = icmp slt i32 %144, 128
  br i1 %145, label %146, label %180

146:                                              ; preds = %143
  %147 = load i64, i64* @LCNPHY_TX_PWR_CTRL_IQ_OFFSET, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %147, %149
  %151 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %14, i32 0, i32 3
  store i64 %150, i64* %151, align 8
  %152 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %153 = call i32 @wlc_lcnphy_read_table(%struct.brcms_phy* %152, %struct.phytbl_info* %14)
  %154 = load i32, i32* %12, align 4
  %155 = and i32 %154, -1048576
  %156 = load i64, i64* %6, align 8
  %157 = and i64 %156, 1023
  %158 = trunc i64 %157 to i32
  %159 = shl i32 %158, 10
  %160 = or i32 %155, %159
  %161 = zext i32 %160 to i64
  %162 = load i64, i64* %7, align 8
  %163 = and i64 %162, 1023
  %164 = or i64 %161, %163
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %12, align 4
  %166 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %167 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %166, %struct.phytbl_info* %14)
  %168 = load i64, i64* %8, align 8
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %12, align 4
  %170 = load i64, i64* @LCNPHY_TX_PWR_CTRL_LO_OFFSET, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %170, %172
  %174 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %14, i32 0, i32 3
  store i64 %173, i64* %174, align 8
  %175 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %176 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %175, %struct.phytbl_info* %14)
  br label %177

177:                                              ; preds = %146
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %10, align 4
  br label %143

180:                                              ; preds = %143
  %181 = load i64, i64* %6, align 8
  %182 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %19, align 8
  %183 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 6
  store i64 %181, i64* %184, align 8
  %185 = load i64, i64* %7, align 8
  %186 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %19, align 8
  %187 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 5
  store i64 %185, i64* %188, align 8
  %189 = load i64, i64* %8, align 8
  %190 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %19, align 8
  %191 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 4
  store i64 %189, i64* %192, align 8
  %193 = load i8*, i8** %15, align 8
  %194 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %19, align 8
  %195 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 3
  store i8* %193, i8** %196, align 8
  %197 = load i8*, i8** %16, align 8
  %198 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %19, align 8
  %199 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 2
  store i8* %197, i8** %200, align 8
  %201 = load i8*, i8** %17, align 8
  %202 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %19, align 8
  %203 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  store i8* %201, i8** %204, align 8
  %205 = load i8*, i8** %18, align 8
  %206 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %19, align 8
  %207 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  store i8* %205, i8** %208, align 8
  %209 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %210 = load i8*, i8** %5, align 8
  %211 = call i32 @wlc_lcnphy_set_bbmult(%struct.brcms_phy* %209, i8* %210)
  %212 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %213 = load i64, i64* %9, align 8
  %214 = call i32 @wlc_lcnphy_set_pa_gain(%struct.brcms_phy* %212, i64 %213)
  %215 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %216 = call i32 @wlc_lcnphy_set_tx_gain(%struct.brcms_phy* %215, %struct.lcnphy_txgains* %4)
  %217 = load i64, i64* %13, align 8
  %218 = load i64, i64* @LCNPHY_TX_PWR_CTRL_OFF, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %180
  %221 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %222 = load i64, i64* %13, align 8
  %223 = call i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy* %221, i64 %222)
  br label %228

224:                                              ; preds = %180
  %225 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %226 = load i32, i32* %11, align 4
  %227 = call i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy* %225, i32 %226)
  br label %228

228:                                              ; preds = %224, %220
  ret void
}

declare dso_local i64 @wlc_lcnphy_get_tx_pwr_ctrl(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_get_tx_gain(%struct.brcms_phy*, %struct.lcnphy_txgains*) #1

declare dso_local i64 @wlc_lcnphy_get_pa_gain(%struct.brcms_phy*) #1

declare dso_local i8* @wlc_lcnphy_get_bbmult(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_get_current_tx_pwr_idx(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy*, i64) #1

declare dso_local i32 @wlc_lcnphy_set_tx_gain(%struct.brcms_phy*, %struct.lcnphy_txgains*) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy*, i32) #1

declare dso_local i64 @LCNREV_IS(i32, i32) #1

declare dso_local i32 @wlc_lcnphy_tx_iqlo_cal(%struct.brcms_phy*, %struct.lcnphy_txgains*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_tx_iqlo_soft_cal_full(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_get_radio_loft(%struct.brcms_phy*, i8**, i8**, i8**, i8**) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i32 @wlc_lcnphy_get_tx_iqcc(%struct.brcms_phy*, i64*, i64*) #1

declare dso_local i64 @wlc_lcnphy_get_tx_locc(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_read_table(%struct.brcms_phy*, %struct.phytbl_info*) #1

declare dso_local i32 @wlc_lcnphy_write_table(%struct.brcms_phy*, %struct.phytbl_info*) #1

declare dso_local i32 @wlc_lcnphy_set_bbmult(%struct.brcms_phy*, i8*) #1

declare dso_local i32 @wlc_lcnphy_set_pa_gain(%struct.brcms_phy*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
