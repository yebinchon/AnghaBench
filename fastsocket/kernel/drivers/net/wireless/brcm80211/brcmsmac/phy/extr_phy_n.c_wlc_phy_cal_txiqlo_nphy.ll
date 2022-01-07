; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_cal_txiqlo_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_cal_txiqlo_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i64, i32*, i32, i32*, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nphy_txgains = type { i32 }
%struct.nphy_iqcal_params = type { i32, i32* }

@__const.wlc_phy_cal_txiqlo_nphy.tbl_tx_iqlo_cal_loft_ladder_20 = private unnamed_addr constant [18 x i32] [i32 768, i32 1280, i32 1792, i32 2304, i32 3328, i32 4352, i32 6400, i32 6401, i32 6402, i32 6403, i32 6404, i32 6405, i32 6406, i32 6407, i32 9223, i32 12807, i32 17927, i32 25607], align 16
@__const.wlc_phy_cal_txiqlo_nphy.tbl_tx_iqlo_cal_iqimb_ladder_20 = private unnamed_addr constant [18 x i32] [i32 512, i32 768, i32 1536, i32 2304, i32 3328, i32 4352, i32 6400, i32 9216, i32 12800, i32 17920, i32 25600, i32 25601, i32 25602, i32 25603, i32 25604, i32 25605, i32 25606, i32 25607], align 16
@__const.wlc_phy_cal_txiqlo_nphy.tbl_tx_iqlo_cal_loft_ladder_40 = private unnamed_addr constant [18 x i32] [i32 512, i32 768, i32 1024, i32 1792, i32 2304, i32 3072, i32 4608, i32 4609, i32 4610, i32 4611, i32 4612, i32 4613, i32 4614, i32 4615, i32 6407, i32 8967, i32 12807, i32 18183], align 16
@__const.wlc_phy_cal_txiqlo_nphy.tbl_tx_iqlo_cal_iqimb_ladder_40 = private unnamed_addr constant [18 x i32] [i32 256, i32 512, i32 1024, i32 1792, i32 2304, i32 3072, i32 4608, i32 6400, i32 8960, i32 12800, i32 18176, i32 18177, i32 18178, i32 18179, i32 18180, i32 18181, i32 18182, i32 18183], align 16
@__const.wlc_phy_cal_txiqlo_nphy.tbl_tx_iqlo_cal_cmds_fullcal = private unnamed_addr constant [10 x i32] [i32 33059, i32 33380, i32 32902, i32 33349, i32 32854, i32 37155, i32 37476, i32 36998, i32 37445, i32 36950], align 16
@__const.wlc_phy_cal_txiqlo_nphy.tbl_tx_iqlo_cal_cmds_recal = private unnamed_addr constant [10 x i32] [i32 33025, i32 33363, i32 32851, i32 33332, i32 32820, i32 37121, i32 37459, i32 36947, i32 37428, i32 36916], align 16
@__const.wlc_phy_cal_txiqlo_nphy.tbl_tx_iqlo_cal_cmds_fullcal_nphyrev3 = private unnamed_addr constant [12 x i32] [i32 33844, i32 33588, i32 32900, i32 33383, i32 32854, i32 33332, i32 37940, i32 37684, i32 36996, i32 37479, i32 36950, i32 37428], align 16
@__const.wlc_phy_cal_txiqlo_nphy.tbl_tx_iqlo_cal_cmds_recal_nphyrev3 = private unnamed_addr constant [12 x i32] [i32 33827, i32 33571, i32 32883, i32 33366, i32 32837, i32 33315, i32 37923, i32 37667, i32 36979, i32 37462, i32 36933, i32 37411], align 16
@NPHY_TBL_ID_RFSEQ = common dso_local global i32 0, align 4
@NPHY_TBL_ID_IQLOCAL = common dso_local global i32 0, align 4
@MPHASE_CAL_STATE_TXPHASE0 = common dso_local global i64 0, align 8
@NPHY_N_GCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"HW error: txiq calib\00", align 1
@EIO = common dso_local global i32 0, align 4
@MPHASE_CAL_STATE_TXPHASE4 = common dso_local global i32 0, align 4
@MPHASE_CAL_STATE_TXPHASE5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlc_phy_cal_txiqlo_nphy(%struct.brcms_phy* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nphy_txgains, align 4
  %7 = alloca %struct.brcms_phy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [11 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [2 x i32], align 4
  %23 = alloca [2 x i32], align 4
  %24 = alloca [2 x %struct.nphy_iqcal_params], align 16
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca [2 x i32], align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca [18 x i32], align 16
  %32 = alloca [18 x i32], align 16
  %33 = alloca [18 x i32], align 16
  %34 = alloca [18 x i32], align 16
  %35 = alloca [9 x i32], align 16
  %36 = alloca [10 x i32], align 16
  %37 = alloca [10 x i32], align 16
  %38 = alloca [11 x i32], align 16
  %39 = alloca [12 x i32], align 16
  %40 = alloca [12 x i32], align 16
  %41 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %6, i32 0, i32 0
  store i32 %1, i32* %41, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %42 = bitcast [18 x i32]* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %42, i8* align 16 bitcast ([18 x i32]* @__const.wlc_phy_cal_txiqlo_nphy.tbl_tx_iqlo_cal_loft_ladder_20 to i8*), i64 72, i1 false)
  %43 = bitcast [18 x i32]* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %43, i8* align 16 bitcast ([18 x i32]* @__const.wlc_phy_cal_txiqlo_nphy.tbl_tx_iqlo_cal_iqimb_ladder_20 to i8*), i64 72, i1 false)
  %44 = bitcast [18 x i32]* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %44, i8* align 16 bitcast ([18 x i32]* @__const.wlc_phy_cal_txiqlo_nphy.tbl_tx_iqlo_cal_loft_ladder_40 to i8*), i64 72, i1 false)
  %45 = bitcast [18 x i32]* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %45, i8* align 16 bitcast ([18 x i32]* @__const.wlc_phy_cal_txiqlo_nphy.tbl_tx_iqlo_cal_iqimb_ladder_40 to i8*), i64 72, i1 false)
  %46 = bitcast [9 x i32]* %35 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %46, i8 0, i64 36, i1 false)
  %47 = bitcast [10 x i32]* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %47, i8* align 16 bitcast ([10 x i32]* @__const.wlc_phy_cal_txiqlo_nphy.tbl_tx_iqlo_cal_cmds_fullcal to i8*), i64 40, i1 false)
  %48 = bitcast [10 x i32]* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %48, i8* align 16 bitcast ([10 x i32]* @__const.wlc_phy_cal_txiqlo_nphy.tbl_tx_iqlo_cal_cmds_recal to i8*), i64 40, i1 false)
  %49 = bitcast [11 x i32]* %38 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %49, i8 0, i64 44, i1 false)
  %50 = bitcast [12 x i32]* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %50, i8* align 16 bitcast ([12 x i32]* @__const.wlc_phy_cal_txiqlo_nphy.tbl_tx_iqlo_cal_cmds_fullcal_nphyrev3 to i8*), i64 48, i1 false)
  %51 = bitcast [12 x i32]* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %51, i8* align 16 bitcast ([12 x i32]* @__const.wlc_phy_cal_txiqlo_nphy.tbl_tx_iqlo_cal_cmds_recal_nphyrev3 to i8*), i64 48, i1 false)
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %53 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %52, i32 1)
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %55 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @NREV_GE(i32 %57, i32 4)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %4
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %62 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %30, align 4
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %65 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  br label %66

66:                                               ; preds = %60, %4
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %68 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @CHSPEC_IS40(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 40, i32* %19, align 4
  br label %74

73:                                               ; preds = %66
  store i32 20, i32* %19, align 4
  br label %74

74:                                               ; preds = %73, %72
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %76 = load i32, i32* @NPHY_TBL_ID_RFSEQ, align 4
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %78 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %75, i32 %76, i32 2, i32 272, i32 16, i32* %77)
  store i32 0, i32* %16, align 4
  br label %79

79:                                               ; preds = %99, %74
  %80 = load i32, i32* %16, align 4
  %81 = icmp sle i32 %80, 1
  br i1 %81, label %82, label %102

82:                                               ; preds = %79
  %83 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [2 x %struct.nphy_iqcal_params], [2 x %struct.nphy_iqcal_params]* %24, i64 0, i64 %86
  %88 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %6, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @wlc_phy_iqcal_gainparams_nphy(%struct.brcms_phy* %83, i32 %84, i32 %89, %struct.nphy_iqcal_params* %87)
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [2 x %struct.nphy_iqcal_params], [2 x %struct.nphy_iqcal_params]* %24, i64 0, i64 %92
  %94 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 16
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 %97
  store i32 %95, i32* %98, align 4
  br label %99

99:                                               ; preds = %82
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %16, align 4
  br label %79

102:                                              ; preds = %79
  %103 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %104 = load i32, i32* @NPHY_TBL_ID_RFSEQ, align 4
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %106 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %103, i32 %104, i32 2, i32 272, i32 16, i32* %105)
  %107 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %108 = call i32 @wlc_phy_txcal_radio_setup_nphy(%struct.brcms_phy* %107)
  %109 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %110 = call i32 @wlc_phy_txcal_physetup_nphy(%struct.brcms_phy* %109)
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 1
  store i32 0, i32* %111, align 4
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 0
  store i32 0, i32* %112, align 4
  %113 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %114 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @NREV_GE(i32 %116, i32 6)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %175, label %119

119:                                              ; preds = %102
  %120 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %121 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %120, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @NREV_IS(i32 %123, i32 5)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %119
  %127 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %128 = call i64 @PHY_IPA(%struct.brcms_phy* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %132 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @CHSPEC_IS2G(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %175, label %136

136:                                              ; preds = %130, %126, %119
  %137 = load i32, i32* %19, align 4
  %138 = icmp eq i32 %137, 40
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = getelementptr inbounds [18 x i32], [18 x i32]* %33, i64 0, i64 0
  %141 = bitcast i32* %140 to i8*
  store i8* %141, i8** %26, align 8
  %142 = getelementptr inbounds [18 x i32], [18 x i32]* %33, i64 0, i64 0
  %143 = call i32 @ARRAY_SIZE(i32* %142)
  store i32 %143, i32* %25, align 4
  br label %149

144:                                              ; preds = %136
  %145 = getelementptr inbounds [18 x i32], [18 x i32]* %31, i64 0, i64 0
  %146 = bitcast i32* %145 to i8*
  store i8* %146, i8** %26, align 8
  %147 = getelementptr inbounds [18 x i32], [18 x i32]* %31, i64 0, i64 0
  %148 = call i32 @ARRAY_SIZE(i32* %147)
  store i32 %148, i32* %25, align 4
  br label %149

149:                                              ; preds = %144, %139
  %150 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %151 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %152 = load i32, i32* %25, align 4
  %153 = load i8*, i8** %26, align 8
  %154 = bitcast i8* %153 to i32*
  %155 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %150, i32 %151, i32 %152, i32 0, i32 16, i32* %154)
  %156 = load i32, i32* %19, align 4
  %157 = icmp eq i32 %156, 40
  br i1 %157, label %158, label %163

158:                                              ; preds = %149
  %159 = getelementptr inbounds [18 x i32], [18 x i32]* %34, i64 0, i64 0
  %160 = bitcast i32* %159 to i8*
  store i8* %160, i8** %26, align 8
  %161 = getelementptr inbounds [18 x i32], [18 x i32]* %34, i64 0, i64 0
  %162 = call i32 @ARRAY_SIZE(i32* %161)
  store i32 %162, i32* %25, align 4
  br label %168

163:                                              ; preds = %149
  %164 = getelementptr inbounds [18 x i32], [18 x i32]* %32, i64 0, i64 0
  %165 = bitcast i32* %164 to i8*
  store i8* %165, i8** %26, align 8
  %166 = getelementptr inbounds [18 x i32], [18 x i32]* %32, i64 0, i64 0
  %167 = call i32 @ARRAY_SIZE(i32* %166)
  store i32 %167, i32* %25, align 4
  br label %168

168:                                              ; preds = %163, %158
  %169 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %170 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %171 = load i32, i32* %25, align 4
  %172 = load i8*, i8** %26, align 8
  %173 = bitcast i8* %172 to i32*
  %174 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %169, i32 %170, i32 %171, i32 32, i32 16, i32* %173)
  br label %175

175:                                              ; preds = %168, %130, %102
  %176 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %177 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %176, i32 0, i32 7
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i64 @NREV_GE(i32 %179, i32 7)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %175
  %183 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %184 = call i32 @write_phy_reg(%struct.brcms_phy* %183, i32 194, i32 35545)
  br label %188

185:                                              ; preds = %175
  %186 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %187 = call i32 @write_phy_reg(%struct.brcms_phy* %186, i32 194, i32 35497)
  br label %188

188:                                              ; preds = %185, %182
  store i32 250, i32* %20, align 4
  %189 = load i32, i32* %19, align 4
  %190 = icmp eq i32 %189, 20
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i32 2500, i32 5000
  store i32 %192, i32* %21, align 4
  %193 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %194 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @MPHASE_CAL_STATE_TXPHASE0, align 8
  %197 = icmp sgt i64 %195, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %188
  %199 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %200 = load i32, i32* %19, align 4
  %201 = mul nsw i32 %200, 8
  %202 = call i32 @wlc_phy_runsamples_nphy(%struct.brcms_phy* %199, i32 %201, i32 65535, i32 0, i32 1, i32 0, i32 0)
  store i32 0, i32* %29, align 4
  br label %208

203:                                              ; preds = %188
  %204 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %205 = load i32, i32* %21, align 4
  %206 = load i32, i32* %20, align 4
  %207 = call i32 @wlc_phy_tx_tone_nphy(%struct.brcms_phy* %204, i32 %205, i32 %206, i32 1, i32 0, i32 0)
  store i32 %207, i32* %29, align 4
  br label %208

208:                                              ; preds = %203, %198
  %209 = load i32, i32* %29, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %650

211:                                              ; preds = %208
  %212 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %213 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @MPHASE_CAL_STATE_TXPHASE0, align 8
  %216 = icmp sgt i64 %214, %215
  br i1 %216, label %217, label %236

217:                                              ; preds = %211
  %218 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %219 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = bitcast i32* %220 to i8*
  store i8* %221, i8** %26, align 8
  %222 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %223 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %222, i32 0, i32 2
  %224 = load i32*, i32** %223, align 8
  %225 = call i32 @ARRAY_SIZE(i32* %224)
  store i32 %225, i32* %25, align 4
  %226 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %227 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %226, i32 0, i32 7
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i64 @NREV_LT(i32 %229, i32 3)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %217
  %233 = load i32, i32* %25, align 4
  %234 = sub nsw i32 %233, 2
  store i32 %234, i32* %25, align 4
  br label %235

235:                                              ; preds = %232, %217
  br label %282

236:                                              ; preds = %211
  %237 = load i32, i32* %8, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %263, label %239

239:                                              ; preds = %236
  %240 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %241 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %263

244:                                              ; preds = %239
  %245 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %246 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %245, i32 0, i32 4
  %247 = load i32*, i32** %246, align 8
  %248 = bitcast i32* %247 to i8*
  store i8* %248, i8** %26, align 8
  %249 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %250 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %249, i32 0, i32 4
  %251 = load i32*, i32** %250, align 8
  %252 = call i32 @ARRAY_SIZE(i32* %251)
  store i32 %252, i32* %25, align 4
  %253 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %254 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %253, i32 0, i32 7
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = call i64 @NREV_LT(i32 %256, i32 3)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %244
  %260 = load i32, i32* %25, align 4
  %261 = sub nsw i32 %260, 2
  store i32 %261, i32* %25, align 4
  br label %262

262:                                              ; preds = %259, %244
  br label %281

263:                                              ; preds = %239, %236
  store i32 1, i32* %8, align 4
  %264 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %265 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %264, i32 0, i32 7
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = call i64 @NREV_GE(i32 %267, i32 3)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %263
  %271 = getelementptr inbounds [11 x i32], [11 x i32]* %38, i64 0, i64 0
  %272 = bitcast i32* %271 to i8*
  store i8* %272, i8** %26, align 8
  %273 = getelementptr inbounds [11 x i32], [11 x i32]* %38, i64 0, i64 0
  %274 = call i32 @ARRAY_SIZE(i32* %273)
  store i32 %274, i32* %25, align 4
  br label %280

275:                                              ; preds = %263
  %276 = getelementptr inbounds [9 x i32], [9 x i32]* %35, i64 0, i64 0
  %277 = bitcast i32* %276 to i8*
  store i8* %277, i8** %26, align 8
  %278 = getelementptr inbounds [9 x i32], [9 x i32]* %35, i64 0, i64 0
  %279 = call i32 @ARRAY_SIZE(i32* %278)
  store i32 %279, i32* %25, align 4
  br label %280

280:                                              ; preds = %275, %270
  br label %281

281:                                              ; preds = %280, %262
  br label %282

282:                                              ; preds = %281, %235
  %283 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %284 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %285 = load i32, i32* %25, align 4
  %286 = load i8*, i8** %26, align 8
  %287 = bitcast i8* %286 to i32*
  %288 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %283, i32 %284, i32 %285, i32 64, i32 16, i32* %287)
  %289 = load i32, i32* %8, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %306

291:                                              ; preds = %282
  %292 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %293 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %292, i32 0, i32 7
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = call i64 @NREV_GE(i32 %295, i32 3)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %291
  %299 = getelementptr inbounds [12 x i32], [12 x i32]* %39, i64 0, i64 0
  %300 = call i32 @ARRAY_SIZE(i32* %299)
  br label %304

301:                                              ; preds = %291
  %302 = getelementptr inbounds [10 x i32], [10 x i32]* %36, i64 0, i64 0
  %303 = call i32 @ARRAY_SIZE(i32* %302)
  br label %304

304:                                              ; preds = %301, %298
  %305 = phi i32 [ %300, %298 ], [ %303, %301 ]
  store i32 %305, i32* %15, align 4
  br label %321

306:                                              ; preds = %282
  %307 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %308 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %307, i32 0, i32 7
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = call i64 @NREV_GE(i32 %310, i32 3)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %316

313:                                              ; preds = %306
  %314 = getelementptr inbounds [12 x i32], [12 x i32]* %40, i64 0, i64 0
  %315 = call i32 @ARRAY_SIZE(i32* %314)
  br label %319

316:                                              ; preds = %306
  %317 = getelementptr inbounds [10 x i32], [10 x i32]* %37, i64 0, i64 0
  %318 = call i32 @ARRAY_SIZE(i32* %317)
  br label %319

319:                                              ; preds = %316, %313
  %320 = phi i32 [ %315, %313 ], [ %318, %316 ]
  store i32 %320, i32* %15, align 4
  br label %321

321:                                              ; preds = %319, %304
  %322 = load i32, i32* %9, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %344

324:                                              ; preds = %321
  %325 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %326 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %325, i32 0, i32 5
  %327 = load i32, i32* %326, align 8
  store i32 %327, i32* %12, align 4
  %328 = load i32, i32* %12, align 4
  %329 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %330 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %329, i32 0, i32 6
  %331 = load i32, i32* %330, align 4
  %332 = add nsw i32 %328, %331
  %333 = load i32, i32* %15, align 4
  %334 = icmp slt i32 %332, %333
  br i1 %334, label %335, label %341

335:                                              ; preds = %324
  %336 = load i32, i32* %12, align 4
  %337 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %338 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %337, i32 0, i32 6
  %339 = load i32, i32* %338, align 4
  %340 = add nsw i32 %336, %339
  store i32 %340, i32* %14, align 4
  br label %343

341:                                              ; preds = %324
  %342 = load i32, i32* %15, align 4
  store i32 %342, i32* %14, align 4
  br label %343

343:                                              ; preds = %341, %335
  br label %346

344:                                              ; preds = %321
  store i32 0, i32* %12, align 4
  %345 = load i32, i32* %15, align 4
  store i32 %345, i32* %14, align 4
  br label %346

346:                                              ; preds = %344, %343
  br label %347

347:                                              ; preds = %517, %346
  %348 = load i32, i32* %12, align 4
  %349 = load i32, i32* %14, align 4
  %350 = icmp slt i32 %348, %349
  br i1 %350, label %351, label %520

351:                                              ; preds = %347
  %352 = load i32, i32* %8, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %373

354:                                              ; preds = %351
  %355 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %356 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %355, i32 0, i32 7
  %357 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = call i64 @NREV_GE(i32 %358, i32 3)
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %366

361:                                              ; preds = %354
  %362 = load i32, i32* %12, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [12 x i32], [12 x i32]* %39, i64 0, i64 %363
  %365 = load i32, i32* %364, align 4
  br label %371

366:                                              ; preds = %354
  %367 = load i32, i32* %12, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [10 x i32], [10 x i32]* %36, i64 0, i64 %368
  %370 = load i32, i32* %369, align 4
  br label %371

371:                                              ; preds = %366, %361
  %372 = phi i32 [ %365, %361 ], [ %370, %366 ]
  store i32 %372, i32* %13, align 4
  br label %392

373:                                              ; preds = %351
  %374 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %375 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %374, i32 0, i32 7
  %376 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = call i64 @NREV_GE(i32 %377, i32 3)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %385

380:                                              ; preds = %373
  %381 = load i32, i32* %12, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [12 x i32], [12 x i32]* %40, i64 0, i64 %382
  %384 = load i32, i32* %383, align 4
  br label %390

385:                                              ; preds = %373
  %386 = load i32, i32* %12, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [10 x i32], [10 x i32]* %37, i64 0, i64 %387
  %389 = load i32, i32* %388, align 4
  br label %390

390:                                              ; preds = %385, %380
  %391 = phi i32 [ %384, %380 ], [ %389, %385 ]
  store i32 %391, i32* %13, align 4
  br label %392

392:                                              ; preds = %390, %371
  %393 = load i32, i32* %13, align 4
  %394 = and i32 %393, 12288
  %395 = ashr i32 %394, 12
  store i32 %395, i32* %16, align 4
  %396 = load i32, i32* %13, align 4
  %397 = and i32 %396, 3840
  %398 = ashr i32 %397, 8
  store i32 %398, i32* %17, align 4
  %399 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %400 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %399, i32 0, i32 7
  %401 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = call i64 @NREV_GE(i32 %402, i32 6)
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %422, label %405

405:                                              ; preds = %392
  %406 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %407 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %406, i32 0, i32 7
  %408 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = call i64 @NREV_IS(i32 %409, i32 5)
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %436

412:                                              ; preds = %405
  %413 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %414 = call i64 @PHY_IPA(%struct.brcms_phy* %413)
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %436

416:                                              ; preds = %412
  %417 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %418 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %417, i32 0, i32 8
  %419 = load i32, i32* %418, align 4
  %420 = call i64 @CHSPEC_IS2G(i32 %419)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %436

422:                                              ; preds = %416, %392
  %423 = load i32, i32* %16, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 %424
  %426 = load i32, i32* %425, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %435, label %428

428:                                              ; preds = %422
  %429 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %430 = load i32, i32* %16, align 4
  %431 = call i32 @wlc_phy_update_txcal_ladder_nphy(%struct.brcms_phy* %429, i32 %430)
  %432 = load i32, i32* %16, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 %433
  store i32 1, i32* %434, align 4
  br label %435

435:                                              ; preds = %428, %422
  br label %436

436:                                              ; preds = %435, %416, %412, %405
  %437 = load i32, i32* %16, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [2 x %struct.nphy_iqcal_params], [2 x %struct.nphy_iqcal_params]* %24, i64 0, i64 %438
  %440 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %439, i32 0, i32 1
  %441 = load i32*, i32** %440, align 8
  %442 = load i32, i32* %17, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %441, i64 %443
  %445 = load i32, i32* %444, align 4
  %446 = shl i32 %445, 8
  %447 = load i32, i32* @NPHY_N_GCTL, align 4
  %448 = or i32 %446, %447
  store i32 %448, i32* %10, align 4
  %449 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %450 = load i32, i32* %10, align 4
  %451 = call i32 @write_phy_reg(%struct.brcms_phy* %449, i32 193, i32 %450)
  %452 = load i32, i32* %17, align 4
  %453 = icmp eq i32 %452, 1
  br i1 %453, label %460, label %454

454:                                              ; preds = %436
  %455 = load i32, i32* %17, align 4
  %456 = icmp eq i32 %455, 3
  br i1 %456, label %460, label %457

457:                                              ; preds = %454
  %458 = load i32, i32* %17, align 4
  %459 = icmp eq i32 %458, 4
  br i1 %459, label %460, label %476

460:                                              ; preds = %457, %454, %436
  %461 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %462 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %463 = load i32, i32* %16, align 4
  %464 = add nsw i32 69, %463
  %465 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 0
  %466 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %461, i32 %462, i32 1, i32 %464, i32 16, i32* %465)
  %467 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 0
  %468 = load i32, i32* %467, align 16
  store i32 %468, i32* %18, align 4
  %469 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 0
  store i32 0, i32* %469, align 16
  %470 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %471 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %472 = load i32, i32* %16, align 4
  %473 = add nsw i32 69, %472
  %474 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 0
  %475 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %470, i32 %471, i32 1, i32 %473, i32 16, i32* %474)
  br label %476

476:                                              ; preds = %460, %457
  %477 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %478 = load i32, i32* %13, align 4
  %479 = call i32 @write_phy_reg(%struct.brcms_phy* %477, i32 192, i32 %478)
  %480 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %481 = call i32 @read_phy_reg(%struct.brcms_phy* %480, i32 192)
  %482 = and i32 %481, 49152
  %483 = icmp ne i32 %482, 0
  %484 = zext i1 %483 to i32
  %485 = call i32 @SPINWAIT(i32 %484, i32 20000)
  %486 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %487 = call i32 @read_phy_reg(%struct.brcms_phy* %486, i32 192)
  %488 = and i32 %487, 49152
  %489 = call i64 @WARN(i32 %488, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %494

491:                                              ; preds = %476
  %492 = load i32, i32* @EIO, align 4
  %493 = sub nsw i32 0, %492
  store i32 %493, i32* %5, align 4
  br label %694

494:                                              ; preds = %476
  %495 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %496 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %497 = load i32, i32* %25, align 4
  %498 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 0
  %499 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %495, i32 %496, i32 %497, i32 96, i32 16, i32* %498)
  %500 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %501 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %502 = load i32, i32* %25, align 4
  %503 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 0
  %504 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %500, i32 %501, i32 %502, i32 64, i32 16, i32* %503)
  %505 = load i32, i32* %17, align 4
  %506 = icmp eq i32 %505, 1
  br i1 %506, label %513, label %507

507:                                              ; preds = %494
  %508 = load i32, i32* %17, align 4
  %509 = icmp eq i32 %508, 3
  br i1 %509, label %513, label %510

510:                                              ; preds = %507
  %511 = load i32, i32* %17, align 4
  %512 = icmp eq i32 %511, 4
  br i1 %512, label %513, label %516

513:                                              ; preds = %510, %507, %494
  %514 = load i32, i32* %18, align 4
  %515 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 0
  store i32 %514, i32* %515, align 16
  br label %516

516:                                              ; preds = %513, %510
  br label %517

517:                                              ; preds = %516
  %518 = load i32, i32* %12, align 4
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* %12, align 4
  br label %347

520:                                              ; preds = %347
  %521 = load i32, i32* %9, align 4
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %536

523:                                              ; preds = %520
  %524 = load i32, i32* %14, align 4
  %525 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %526 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %525, i32 0, i32 5
  store i32 %524, i32* %526, align 8
  %527 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %528 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %527, i32 0, i32 5
  %529 = load i32, i32* %528, align 8
  %530 = load i32, i32* %15, align 4
  %531 = icmp sge i32 %529, %530
  br i1 %531, label %532, label %535

532:                                              ; preds = %523
  %533 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %534 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %533, i32 0, i32 5
  store i32 0, i32* %534, align 8
  br label %535

535:                                              ; preds = %532, %523
  br label %536

536:                                              ; preds = %535, %520
  %537 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %538 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %537, i32 0, i32 7
  %539 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 8
  %541 = call i64 @NREV_LE(i32 %540, i32 2)
  %542 = icmp ne i64 %541, 0
  br i1 %542, label %543, label %545

543:                                              ; preds = %536
  %544 = load i32, i32* @MPHASE_CAL_STATE_TXPHASE4, align 4
  br label %547

545:                                              ; preds = %536
  %546 = load i32, i32* @MPHASE_CAL_STATE_TXPHASE5, align 4
  br label %547

547:                                              ; preds = %545, %543
  %548 = phi i32 [ %544, %543 ], [ %546, %545 ]
  store i32 %548, i32* %28, align 4
  %549 = load i32, i32* %9, align 4
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %558

551:                                              ; preds = %547
  %552 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %553 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %552, i32 0, i32 1
  %554 = load i64, i64* %553, align 8
  %555 = load i32, i32* %28, align 4
  %556 = sext i32 %555 to i64
  %557 = icmp eq i64 %554, %556
  br i1 %557, label %558, label %623

558:                                              ; preds = %551, %547
  %559 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %560 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %561 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 0
  %562 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %559, i32 %560, i32 4, i32 96, i32 16, i32* %561)
  %563 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %564 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %565 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 0
  %566 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %563, i32 %564, i32 4, i32 80, i32 16, i32* %565)
  %567 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %568 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %567, i32 0, i32 7
  %569 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 8
  %571 = call i64 @NREV_LT(i32 %570, i32 2)
  %572 = icmp ne i64 %571, 0
  br i1 %572, label %573, label %578

573:                                              ; preds = %558
  %574 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 0
  store i32 0, i32* %574, align 16
  %575 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 1
  store i32 0, i32* %575, align 4
  %576 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 2
  store i32 0, i32* %576, align 8
  %577 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 3
  store i32 0, i32* %577, align 4
  br label %578

578:                                              ; preds = %573, %558
  %579 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %580 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %581 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 0
  %582 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %579, i32 %580, i32 4, i32 88, i32 16, i32* %581)
  %583 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %584 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %585 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 0
  %586 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %583, i32 %584, i32 2, i32 101, i32 16, i32* %585)
  %587 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %588 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %589 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 0
  %590 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %587, i32 %588, i32 2, i32 85, i32 16, i32* %589)
  %591 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %592 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %593 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 0
  %594 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %591, i32 %592, i32 2, i32 93, i32 16, i32* %593)
  %595 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %596 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %595, i32 0, i32 4
  %597 = load i32*, i32** %596, align 8
  %598 = call i32 @ARRAY_SIZE(i32* %597)
  store i32 %598, i32* %25, align 4
  %599 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %600 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %599, i32 0, i32 7
  %601 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %600, i32 0, i32 0
  %602 = load i32, i32* %601, align 8
  %603 = call i64 @NREV_LT(i32 %602, i32 3)
  %604 = icmp ne i64 %603, 0
  br i1 %604, label %605, label %608

605:                                              ; preds = %578
  %606 = load i32, i32* %25, align 4
  %607 = sub nsw i32 %606, 2
  store i32 %607, i32* %25, align 4
  br label %608

608:                                              ; preds = %605, %578
  %609 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %610 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %611 = load i32, i32* %25, align 4
  %612 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %613 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %612, i32 0, i32 4
  %614 = load i32*, i32** %613, align 8
  %615 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %609, i32 %610, i32 %611, i32 96, i32 16, i32* %614)
  %616 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %617 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %616, i32 0, i32 3
  store i32 1, i32* %617, align 8
  %618 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %619 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %618, i32 0, i32 8
  %620 = load i32, i32* %619, align 4
  %621 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %622 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %621, i32 0, i32 9
  store i32 %620, i32* %622, align 8
  br label %645

623:                                              ; preds = %551
  %624 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %625 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %624, i32 0, i32 2
  %626 = load i32*, i32** %625, align 8
  %627 = call i32 @ARRAY_SIZE(i32* %626)
  store i32 %627, i32* %25, align 4
  %628 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %629 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %628, i32 0, i32 7
  %630 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %629, i32 0, i32 0
  %631 = load i32, i32* %630, align 8
  %632 = call i64 @NREV_LT(i32 %631, i32 3)
  %633 = icmp ne i64 %632, 0
  br i1 %633, label %634, label %637

634:                                              ; preds = %623
  %635 = load i32, i32* %25, align 4
  %636 = sub nsw i32 %635, 2
  store i32 %636, i32* %25, align 4
  br label %637

637:                                              ; preds = %634, %623
  %638 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %639 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %640 = load i32, i32* %25, align 4
  %641 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %642 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %641, i32 0, i32 2
  %643 = load i32*, i32** %642, align 8
  %644 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %638, i32 %639, i32 %640, i32 96, i32 16, i32* %643)
  br label %645

645:                                              ; preds = %637, %608
  %646 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %647 = call i32 @wlc_phy_stopplayback_nphy(%struct.brcms_phy* %646)
  %648 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %649 = call i32 @write_phy_reg(%struct.brcms_phy* %648, i32 194, i32 0)
  br label %650

650:                                              ; preds = %645, %208
  %651 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %652 = call i32 @wlc_phy_txcal_phycleanup_nphy(%struct.brcms_phy* %651)
  %653 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %654 = load i32, i32* @NPHY_TBL_ID_RFSEQ, align 4
  %655 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %656 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %653, i32 %654, i32 2, i32 272, i32 16, i32* %655)
  %657 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %658 = call i32 @wlc_phy_txcal_radio_cleanup_nphy(%struct.brcms_phy* %657)
  %659 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %660 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %659, i32 0, i32 7
  %661 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %660, i32 0, i32 0
  %662 = load i32, i32* %661, align 8
  %663 = call i64 @NREV_LT(i32 %662, i32 2)
  %664 = icmp ne i64 %663, 0
  br i1 %664, label %665, label %679

665:                                              ; preds = %650
  %666 = load i32, i32* %9, align 4
  %667 = icmp ne i32 %666, 0
  br i1 %667, label %668, label %675

668:                                              ; preds = %665
  %669 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %670 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %669, i32 0, i32 1
  %671 = load i64, i64* %670, align 8
  %672 = load i32, i32* %28, align 4
  %673 = sext i32 %672 to i64
  %674 = icmp eq i64 %671, %673
  br i1 %674, label %675, label %678

675:                                              ; preds = %668, %665
  %676 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %677 = call i32 @wlc_phy_tx_iq_war_nphy(%struct.brcms_phy* %676)
  br label %678

678:                                              ; preds = %675, %668
  br label %679

679:                                              ; preds = %678, %650
  %680 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %681 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %680, i32 0, i32 7
  %682 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %681, i32 0, i32 0
  %683 = load i32, i32* %682, align 8
  %684 = call i64 @NREV_GE(i32 %683, i32 4)
  %685 = icmp ne i64 %684, 0
  br i1 %685, label %686, label %690

686:                                              ; preds = %679
  %687 = load i32, i32* %30, align 4
  %688 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %689 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %688, i32 0, i32 0
  store i32 %687, i32* %689, align 8
  br label %690

690:                                              ; preds = %686, %679
  %691 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %692 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %691, i32 0)
  %693 = load i32, i32* %29, align 4
  store i32 %693, i32* %5, align 4
  br label %694

694:                                              ; preds = %690, %491
  %695 = load i32, i32* %5, align 4
  ret i32 %695
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy*, i32) #2

declare dso_local i64 @NREV_GE(i32, i32) #2

declare dso_local i64 @CHSPEC_IS40(i32) #2

declare dso_local i32 @wlc_phy_table_read_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @wlc_phy_iqcal_gainparams_nphy(%struct.brcms_phy*, i32, i32, %struct.nphy_iqcal_params*) #2

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @wlc_phy_txcal_radio_setup_nphy(%struct.brcms_phy*) #2

declare dso_local i32 @wlc_phy_txcal_physetup_nphy(%struct.brcms_phy*) #2

declare dso_local i64 @NREV_IS(i32, i32) #2

declare dso_local i64 @PHY_IPA(%struct.brcms_phy*) #2

declare dso_local i64 @CHSPEC_IS2G(i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #2

declare dso_local i32 @wlc_phy_runsamples_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @wlc_phy_tx_tone_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32) #2

declare dso_local i64 @NREV_LT(i32, i32) #2

declare dso_local i32 @wlc_phy_update_txcal_ladder_nphy(%struct.brcms_phy*, i32) #2

declare dso_local i32 @SPINWAIT(i32, i32) #2

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #2

declare dso_local i64 @WARN(i32, i8*) #2

declare dso_local i64 @NREV_LE(i32, i32) #2

declare dso_local i32 @wlc_phy_stopplayback_nphy(%struct.brcms_phy*) #2

declare dso_local i32 @wlc_phy_txcal_phycleanup_nphy(%struct.brcms_phy*) #2

declare dso_local i32 @wlc_phy_txcal_radio_cleanup_nphy(%struct.brcms_phy*) #2

declare dso_local i32 @wlc_phy_tx_iq_war_nphy(%struct.brcms_phy*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
