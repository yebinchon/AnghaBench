; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_workarounds_nphy_gainctrl_2057_rev6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_workarounds_nphy_gainctrl_2057_rev6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1G_gain_db_rev7 = private unnamed_addr constant [4 x i32] [i32 9, i32 14, i32 19, i32 24], align 16
@__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.tiaA_gain_db_rev7 = private unnamed_addr constant [10 x i32] [i32 -9, i32 -6, i32 -3, i32 0, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3], align 16
@__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.tiaA_gainbits_rev7 = private unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], align 16
@__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.rfseqA_init_gain_rev7 = private unnamed_addr constant [2 x i32] [i32 25167, i32 25167], align 4
@NPHY_BandControl_currentBand = common dso_local global i32 0, align 4
@NPHY_TBL_ID_GAIN1 = common dso_local global i32 0, align 4
@NPHY_TBL_ID_GAIN2 = common dso_local global i32 0, align 4
@__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_rev7 = private unnamed_addr constant [4 x i32] [i32 11, i32 16, i32 20, i32 24], align 16
@__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_2_rev7 = private unnamed_addr constant [4 x i32] [i32 11, i32 17, i32 22, i32 25], align 16
@__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna2A_gain_db_rev7 = private unnamed_addr constant [4 x i32] [i32 -1, i32 6, i32 10, i32 14], align 16
@__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_rev7.1 = private unnamed_addr constant [4 x i32] [i32 11, i32 17, i32 21, i32 25], align 16
@__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_2_rev7.2 = private unnamed_addr constant [4 x i32] [i32 12, i32 18, i32 22, i32 26], align 16
@__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna2A_gain_db_rev7.3 = private unnamed_addr constant [4 x i32] [i32 1, i32 8, i32 12, i32 16], align 16
@__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_rev7.4 = private unnamed_addr constant [4 x i32] [i32 12, i32 18, i32 22, i32 26], align 16
@__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_2_rev7.5 = private unnamed_addr constant [4 x i32] [i32 12, i32 18, i32 22, i32 26], align 16
@__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna2A_gain_db_rev7.6 = private unnamed_addr constant [4 x i32] [i32 -1, i32 6, i32 10, i32 14], align 16
@NPHY_TBL_ID_RFSEQ = common dso_local global i32 0, align 4
@NPHY_TBL_ID_GAINBITS1 = common dso_local global i32 0, align 4
@NPHY_TBL_ID_GAINBITS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_workarounds_nphy_gainctrl_2057_rev6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_workarounds_nphy_gainctrl_2057_rev6(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [10 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca [10 x i32], align 16
  %11 = alloca i32*, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [4 x i32], align 16
  %29 = alloca [4 x i32], align 16
  %30 = alloca [4 x i32], align 16
  %31 = alloca [4 x i32], align 16
  %32 = alloca [4 x i32], align 16
  %33 = alloca [4 x i32], align 16
  %34 = alloca [4 x i32], align 16
  %35 = alloca [4 x i32], align 16
  %36 = alloca [4 x i32], align 16
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %37 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %37, i8* align 16 bitcast ([4 x i32]* @__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1G_gain_db_rev7 to i8*), i64 16, i1 false)
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %38 = bitcast [10 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %38, i8* align 16 bitcast ([10 x i32]* @__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.tiaA_gain_db_rev7 to i8*), i64 40, i1 false)
  %39 = bitcast [10 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %39, i8* align 16 bitcast ([10 x i32]* @__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.tiaA_gainbits_rev7 to i8*), i64 40, i1 false)
  %40 = bitcast [2 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 bitcast ([2 x i32]* @__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.rfseqA_init_gain_rev7 to i8*), i64 8, i1 false)
  store i32 0, i32* %16, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %42 = call i32 @mod_phy_reg(%struct.brcms_phy* %41, i32 28, i32 8192, i32 8192)
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %44 = call i32 @mod_phy_reg(%struct.brcms_phy* %43, i32 50, i32 8192, i32 8192)
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %46 = call i32 @read_phy_reg(%struct.brcms_phy* %45, i32 9)
  %47 = load i32, i32* @NPHY_BandControl_currentBand, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %87

51:                                               ; preds = %1
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  store i32* %52, i32** %5, align 8
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %54 = load i32, i32* @NPHY_TBL_ID_GAIN1, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %53, i32 %54, i32 4, i32 8, i32 8, i32* %55)
  %57 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %58 = load i32, i32* @NPHY_TBL_ID_GAIN2, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %57, i32 %58, i32 4, i32 8, i32 8, i32* %59)
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %62 = call i32 @mod_phy_reg(%struct.brcms_phy* %61, i32 643, i32 255, i32 64)
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %64 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @CHSPEC_IS40(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %51
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %70 = call i32 @mod_phy_reg(%struct.brcms_phy* %69, i32 640, i32 255, i32 62)
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %72 = call i32 @mod_phy_reg(%struct.brcms_phy* %71, i32 643, i32 255, i32 62)
  br label %73

73:                                               ; preds = %68, %51
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %75 = call i32 @mod_phy_reg(%struct.brcms_phy* %74, i32 649, i32 255, i32 70)
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %77 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @CHSPEC_IS20(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %83 = call i32 @mod_phy_reg(%struct.brcms_phy* %82, i32 768, i32 63, i32 13)
  %84 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %85 = call i32 @mod_phy_reg(%struct.brcms_phy* %84, i32 769, i32 63, i32 13)
  br label %86

86:                                               ; preds = %81, %73
  br label %293

87:                                               ; preds = %1
  store i32 158, i32* %14, align 4
  store i32 158, i32* %15, align 4
  store i32 36, i32* %17, align 4
  store i32 138, i32* %18, align 4
  store i32 8, i32* %19, align 4
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32* %88, i32** %13, align 8
  %89 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 0
  store i32* %89, i32** %9, align 8
  %90 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  store i32* %90, i32** %11, align 8
  %91 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %92 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @CHSPEC_CHANNEL(i32 %93)
  %95 = call i32 @CHAN5G_FREQ(i32 %94)
  store i32 %95, i32* %24, align 4
  %96 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %97 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @CHSPEC_IS20(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %157

101:                                              ; preds = %87
  store i32 25, i32* %23, align 4
  store i32 130, i32* %16, align 4
  %102 = load i32, i32* %24, align 4
  %103 = icmp sle i32 %102, 5080
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %24, align 4
  %106 = icmp eq i32 %105, 5825
  br i1 %106, label %107, label %114

107:                                              ; preds = %104, %101
  %108 = bitcast [4 x i32]* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %108, i8* align 16 bitcast ([4 x i32]* @__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_rev7 to i8*), i64 16, i1 false)
  %109 = bitcast [4 x i32]* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %109, i8* align 16 bitcast ([4 x i32]* @__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_2_rev7 to i8*), i64 16, i1 false)
  %110 = bitcast [4 x i32]* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %110, i8* align 16 bitcast ([4 x i32]* @__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna2A_gain_db_rev7 to i8*), i64 16, i1 false)
  store i32 62, i32* %21, align 4
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  store i32* %111, i32** %5, align 8
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0
  store i32* %112, i32** %6, align 8
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i64 0, i64 0
  store i32* %113, i32** %7, align 8
  br label %135

114:                                              ; preds = %104
  %115 = load i32, i32* %24, align 4
  %116 = icmp sge i32 %115, 5500
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = load i32, i32* %24, align 4
  %119 = icmp sle i32 %118, 5700
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = bitcast [4 x i32]* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %121, i8* align 16 bitcast ([4 x i32]* @__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_rev7.1 to i8*), i64 16, i1 false)
  %122 = bitcast [4 x i32]* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %122, i8* align 16 bitcast ([4 x i32]* @__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_2_rev7.2 to i8*), i64 16, i1 false)
  %123 = bitcast [4 x i32]* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %123, i8* align 16 bitcast ([4 x i32]* @__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna2A_gain_db_rev7.3 to i8*), i64 16, i1 false)
  store i32 69, i32* %21, align 4
  store i32 20, i32* %17, align 4
  store i32 255, i32* %22, align 4
  store i32 1, i32* %27, align 4
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i64 0, i64 0
  store i32* %124, i32** %5, align 8
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i64 0, i64 0
  store i32* %125, i32** %6, align 8
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i64 0, i64 0
  store i32* %126, i32** %7, align 8
  br label %134

127:                                              ; preds = %117, %114
  %128 = bitcast [4 x i32]* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %128, i8* align 16 bitcast ([4 x i32]* @__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_rev7.4 to i8*), i64 16, i1 false)
  %129 = bitcast [4 x i32]* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %129, i8* align 16 bitcast ([4 x i32]* @__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_2_rev7.5 to i8*), i64 16, i1 false)
  %130 = bitcast [4 x i32]* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %130, i8* align 16 bitcast ([4 x i32]* @__const.wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna2A_gain_db_rev7.6 to i8*), i64 16, i1 false)
  store i32 65, i32* %21, align 4
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i64 0, i64 0
  store i32* %131, i32** %5, align 8
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i64 0, i64 0
  store i32* %132, i32** %6, align 8
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i64 0, i64 0
  store i32* %133, i32** %7, align 8
  br label %134

134:                                              ; preds = %127, %120
  br label %135

135:                                              ; preds = %134, %107
  %136 = load i32, i32* %24, align 4
  %137 = icmp sle i32 %136, 4920
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 5, i32* %25, align 4
  store i32 5, i32* %26, align 4
  br label %156

139:                                              ; preds = %135
  %140 = load i32, i32* %24, align 4
  %141 = icmp sgt i32 %140, 4920
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load i32, i32* %24, align 4
  %144 = icmp sle i32 %143, 5320
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  store i32 3, i32* %25, align 4
  store i32 5, i32* %26, align 4
  br label %155

146:                                              ; preds = %142, %139
  %147 = load i32, i32* %24, align 4
  %148 = icmp sgt i32 %147, 5320
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i32, i32* %24, align 4
  %151 = icmp sle i32 %150, 5700
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  store i32 3, i32* %25, align 4
  store i32 2, i32* %26, align 4
  br label %154

153:                                              ; preds = %149, %146
  store i32 4, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %154

154:                                              ; preds = %153, %152
  br label %155

155:                                              ; preds = %154, %145
  br label %156

156:                                              ; preds = %155, %138
  br label %174

157:                                              ; preds = %87
  store i32 58, i32* %21, align 4
  store i32 58, i32* %20, align 4
  store i32 20, i32* %23, align 4
  %158 = load i32, i32* %24, align 4
  %159 = icmp sge i32 %158, 4920
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load i32, i32* %24, align 4
  %162 = icmp sle i32 %161, 5320
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 4, i32* %25, align 4
  store i32 5, i32* %26, align 4
  br label %173

164:                                              ; preds = %160, %157
  %165 = load i32, i32* %24, align 4
  %166 = icmp sgt i32 %165, 5320
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load i32, i32* %24, align 4
  %169 = icmp sle i32 %168, 5550
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  store i32 4, i32* %25, align 4
  store i32 2, i32* %26, align 4
  br label %172

171:                                              ; preds = %167, %164
  store i32 5, i32* %25, align 4
  store i32 3, i32* %26, align 4
  br label %172

172:                                              ; preds = %171, %170
  br label %173

173:                                              ; preds = %172, %163
  br label %174

174:                                              ; preds = %173, %156
  %175 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %176 = load i32, i32* %14, align 4
  %177 = call i32 @write_phy_reg(%struct.brcms_phy* %175, i32 32, i32 %176)
  %178 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %179 = load i32, i32* %14, align 4
  %180 = call i32 @write_phy_reg(%struct.brcms_phy* %178, i32 679, i32 %179)
  %181 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %182 = load i32, i32* @NPHY_TBL_ID_RFSEQ, align 4
  %183 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %184 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %13, align 8
  %188 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %181, i32 %182, i32 %186, i32 262, i32 16, i32* %187)
  %189 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %190 = load i32, i32* %15, align 4
  %191 = call i32 @write_phy_reg(%struct.brcms_phy* %189, i32 34, i32 %190)
  %192 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %193 = load i32, i32* %15, align 4
  %194 = call i32 @write_phy_reg(%struct.brcms_phy* %192, i32 681, i32 %193)
  %195 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %196 = load i32, i32* %17, align 4
  %197 = call i32 @write_phy_reg(%struct.brcms_phy* %195, i32 54, i32 %196)
  %198 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %199 = load i32, i32* %17, align 4
  %200 = call i32 @write_phy_reg(%struct.brcms_phy* %198, i32 684, i32 %199)
  %201 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %202 = load i32, i32* %18, align 4
  %203 = call i32 @write_phy_reg(%struct.brcms_phy* %201, i32 55, i32 %202)
  %204 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %205 = load i32, i32* %18, align 4
  %206 = call i32 @write_phy_reg(%struct.brcms_phy* %204, i32 685, i32 %205)
  %207 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %208 = load i32, i32* %19, align 4
  %209 = call i32 @write_phy_reg(%struct.brcms_phy* %207, i32 56, i32 %208)
  %210 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %211 = load i32, i32* %19, align 4
  %212 = call i32 @write_phy_reg(%struct.brcms_phy* %210, i32 686, i32 %211)
  %213 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %214 = load i32, i32* @NPHY_TBL_ID_GAIN1, align 4
  %215 = load i32*, i32** %9, align 8
  %216 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %213, i32 %214, i32 10, i32 32, i32 8, i32* %215)
  %217 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %218 = load i32, i32* @NPHY_TBL_ID_GAIN2, align 4
  %219 = load i32*, i32** %9, align 8
  %220 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %217, i32 %218, i32 10, i32 32, i32 8, i32* %219)
  %221 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %222 = load i32, i32* @NPHY_TBL_ID_GAINBITS1, align 4
  %223 = load i32*, i32** %11, align 8
  %224 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %221, i32 %222, i32 10, i32 32, i32 8, i32* %223)
  %225 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %226 = load i32, i32* @NPHY_TBL_ID_GAINBITS2, align 4
  %227 = load i32*, i32** %11, align 8
  %228 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %225, i32 %226, i32 10, i32 32, i32 8, i32* %227)
  %229 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %230 = load i32, i32* %21, align 4
  %231 = shl i32 %230, 0
  %232 = call i32 @mod_phy_reg(%struct.brcms_phy* %229, i32 643, i32 255, i32 %231)
  %233 = load i32, i32* %27, align 4
  %234 = icmp eq i32 %233, 1
  br i1 %234, label %235, label %242

235:                                              ; preds = %174
  %236 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %237 = load i32, i32* %22, align 4
  %238 = call i32 @write_phy_reg(%struct.brcms_phy* %236, i32 43, i32 %237)
  %239 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %240 = load i32, i32* %22, align 4
  %241 = call i32 @write_phy_reg(%struct.brcms_phy* %239, i32 65, i32 %240)
  br label %242

242:                                              ; preds = %235, %174
  %243 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %244 = load i32, i32* %23, align 4
  %245 = shl i32 %244, 0
  %246 = call i32 @mod_phy_reg(%struct.brcms_phy* %243, i32 768, i32 63, i32 %245)
  %247 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %248 = load i32, i32* %23, align 4
  %249 = shl i32 %248, 0
  %250 = call i32 @mod_phy_reg(%struct.brcms_phy* %247, i32 769, i32 63, i32 %249)
  %251 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %252 = load i32, i32* %25, align 4
  %253 = shl i32 %252, 0
  %254 = call i32 @mod_phy_reg(%struct.brcms_phy* %251, i32 740, i32 63, i32 %253)
  %255 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %256 = load i32, i32* %26, align 4
  %257 = shl i32 %256, 6
  %258 = call i32 @mod_phy_reg(%struct.brcms_phy* %255, i32 740, i32 4032, i32 %257)
  %259 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %260 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i64 @CHSPEC_IS20(i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %287

264:                                              ; preds = %242
  %265 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %266 = load i32, i32* @NPHY_TBL_ID_GAIN1, align 4
  %267 = load i32*, i32** %5, align 8
  %268 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %265, i32 %266, i32 4, i32 8, i32 8, i32* %267)
  %269 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %270 = load i32, i32* @NPHY_TBL_ID_GAIN2, align 4
  %271 = load i32*, i32** %6, align 8
  %272 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %269, i32 %270, i32 4, i32 8, i32 8, i32* %271)
  %273 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %274 = load i32, i32* @NPHY_TBL_ID_GAIN1, align 4
  %275 = load i32*, i32** %7, align 8
  %276 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %273, i32 %274, i32 4, i32 16, i32 8, i32* %275)
  %277 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %278 = load i32, i32* @NPHY_TBL_ID_GAIN2, align 4
  %279 = load i32*, i32** %7, align 8
  %280 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %277, i32 %278, i32 4, i32 16, i32 8, i32* %279)
  %281 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %282 = load i32, i32* %16, align 4
  %283 = call i32 @write_phy_reg(%struct.brcms_phy* %281, i32 36, i32 %282)
  %284 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %285 = load i32, i32* %16, align 4
  %286 = call i32 @write_phy_reg(%struct.brcms_phy* %284, i32 683, i32 %285)
  br label %292

287:                                              ; preds = %242
  %288 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %289 = load i32, i32* %20, align 4
  %290 = shl i32 %289, 0
  %291 = call i32 @mod_phy_reg(%struct.brcms_phy* %288, i32 640, i32 255, i32 %290)
  br label %292

292:                                              ; preds = %287, %264
  br label %293

293:                                              ; preds = %292, %86
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #2

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #2

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #2

declare dso_local i64 @CHSPEC_IS40(i32) #2

declare dso_local i64 @CHSPEC_IS20(i32) #2

declare dso_local i32 @CHAN5G_FREQ(i32) #2

declare dso_local i32 @CHSPEC_CHANNEL(i32) #2

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
