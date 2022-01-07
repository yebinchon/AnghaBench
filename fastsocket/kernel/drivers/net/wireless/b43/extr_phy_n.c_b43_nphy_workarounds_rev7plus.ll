; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_workarounds_rev7plus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_workarounds_rev7plus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_phy, %struct.TYPE_2__* }
%struct.b43_phy = type { i32, i32, i32, i64 }
%struct.TYPE_2__ = type { %struct.ssb_sprom* }
%struct.ssb_sprom = type { i32, i64 }

@__const.b43_nphy_workarounds_rev7plus.rx2tx_events_ipa = private unnamed_addr constant [9 x i32] [i32 0, i32 1, i32 2, i32 8, i32 5, i32 6, i32 15, i32 3, i32 31], align 16
@__const.b43_nphy_workarounds_rev7plus.rx2tx_delays_ipa = private unnamed_addr constant [9 x i32] [i32 8, i32 6, i32 6, i32 4, i32 4, i32 16, i32 43, i32 1, i32 1], align 16
@__const.b43_nphy_workarounds_rev7plus.ntab7_15e_16e = private unnamed_addr constant [2 x i32] [i32 271, i32 271], align 4
@__const.b43_nphy_workarounds_rev7plus.ntab7_138_146 = private unnamed_addr constant [2 x i32] [i32 17, i32 17], align 4
@__const.b43_nphy_workarounds_rev7plus.ntab7_133 = private unnamed_addr constant [3 x i32] [i32 119, i32 17, i32 17], align 4
@B43_NPHY_FINERX2_CGC = common dso_local global i32 0, align 4
@B43_NPHY_FREQGAIN0 = common dso_local global i32 0, align 4
@B43_NPHY_FREQGAIN1 = common dso_local global i32 0, align 4
@B43_NPHY_FREQGAIN2 = common dso_local global i32 0, align 4
@B43_NPHY_FREQGAIN3 = common dso_local global i32 0, align 4
@B43_NPHY_FREQGAIN4 = common dso_local global i32 0, align 4
@B43_NPHY_FREQGAIN5 = common dso_local global i32 0, align 4
@B43_NPHY_FREQGAIN6 = common dso_local global i32 0, align 4
@B43_NPHY_FREQGAIN7 = common dso_local global i32 0, align 4
@B43_NPHY_FORCEFRONT0 = common dso_local global i32 0, align 4
@B43_NPHY_FORCEFRONT1 = common dso_local global i32 0, align 4
@B43_NPHY_TXTAILCNT = common dso_local global i32 0, align 4
@B43_NPHY_EPS_OVERRIDEI_0 = common dso_local global i32 0, align 4
@B43_NPHY_EPS_OVERRIDEI_1 = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_BFH2_IPALVLSHIFT_3P3 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_C1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_C2 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@B43_NPHY_ENDROP_TLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_workarounds_rev7plus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_workarounds_rev7plus(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.ssb_sprom*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  %5 = alloca [9 x i32], align 16
  %6 = alloca [9 x i32], align 16
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
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
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %32 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.ssb_sprom*, %struct.ssb_sprom** %34, align 8
  store %struct.ssb_sprom* %35, %struct.ssb_sprom** %3, align 8
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %36, i32 0, i32 1
  store %struct.b43_phy* %37, %struct.b43_phy** %4, align 8
  %38 = bitcast [9 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %38, i8* align 16 bitcast ([9 x i32]* @__const.b43_nphy_workarounds_rev7plus.rx2tx_events_ipa to i8*), i64 36, i1 false)
  %39 = bitcast [9 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %39, i8* align 16 bitcast ([9 x i32]* @__const.b43_nphy_workarounds_rev7plus.rx2tx_delays_ipa to i8*), i64 36, i1 false)
  %40 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 bitcast ([2 x i32]* @__const.b43_nphy_workarounds_rev7plus.ntab7_15e_16e to i8*), i64 8, i1 false)
  %41 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 bitcast ([2 x i32]* @__const.b43_nphy_workarounds_rev7plus.ntab7_138_146 to i8*), i64 8, i1 false)
  %42 = bitcast [3 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 bitcast ([3 x i32]* @__const.b43_nphy_workarounds_rev7plus.ntab7_133 to i8*), i64 12, i1 false)
  store i32 0, i32* %21, align 4
  %43 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %44 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 7
  br i1 %46, label %47, label %99

47:                                               ; preds = %1
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %49 = load i32, i32* @B43_NPHY_FINERX2_CGC, align 4
  %50 = call i32 @b43_phy_set(%struct.b43_wldev* %48, i32 %49, i32 16)
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %52 = load i32, i32* @B43_NPHY_FREQGAIN0, align 4
  %53 = call i32 @b43_phy_maskset(%struct.b43_wldev* %51, i32 %52, i32 65408, i32 32)
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %55 = load i32, i32* @B43_NPHY_FREQGAIN0, align 4
  %56 = call i32 @b43_phy_maskset(%struct.b43_wldev* %54, i32 %55, i32 33023, i32 9984)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %58 = load i32, i32* @B43_NPHY_FREQGAIN1, align 4
  %59 = call i32 @b43_phy_maskset(%struct.b43_wldev* %57, i32 %58, i32 65408, i32 46)
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %61 = load i32, i32* @B43_NPHY_FREQGAIN1, align 4
  %62 = call i32 @b43_phy_maskset(%struct.b43_wldev* %60, i32 %61, i32 33023, i32 13056)
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %64 = load i32, i32* @B43_NPHY_FREQGAIN2, align 4
  %65 = call i32 @b43_phy_maskset(%struct.b43_wldev* %63, i32 %64, i32 65408, i32 55)
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %67 = load i32, i32* @B43_NPHY_FREQGAIN2, align 4
  %68 = call i32 @b43_phy_maskset(%struct.b43_wldev* %66, i32 %67, i32 33023, i32 14848)
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %70 = load i32, i32* @B43_NPHY_FREQGAIN3, align 4
  %71 = call i32 @b43_phy_maskset(%struct.b43_wldev* %69, i32 %70, i32 65408, i32 60)
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %73 = load i32, i32* @B43_NPHY_FREQGAIN3, align 4
  %74 = call i32 @b43_phy_maskset(%struct.b43_wldev* %72, i32 %73, i32 33023, i32 15872)
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %76 = load i32, i32* @B43_NPHY_FREQGAIN4, align 4
  %77 = call i32 @b43_phy_maskset(%struct.b43_wldev* %75, i32 %76, i32 65408, i32 62)
  %78 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %79 = load i32, i32* @B43_NPHY_FREQGAIN4, align 4
  %80 = call i32 @b43_phy_maskset(%struct.b43_wldev* %78, i32 %79, i32 33023, i32 16128)
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %82 = load i32, i32* @B43_NPHY_FREQGAIN5, align 4
  %83 = call i32 @b43_phy_maskset(%struct.b43_wldev* %81, i32 %82, i32 65408, i32 64)
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %85 = load i32, i32* @B43_NPHY_FREQGAIN5, align 4
  %86 = call i32 @b43_phy_maskset(%struct.b43_wldev* %84, i32 %85, i32 33023, i32 16384)
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %88 = load i32, i32* @B43_NPHY_FREQGAIN6, align 4
  %89 = call i32 @b43_phy_maskset(%struct.b43_wldev* %87, i32 %88, i32 65408, i32 64)
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %91 = load i32, i32* @B43_NPHY_FREQGAIN6, align 4
  %92 = call i32 @b43_phy_maskset(%struct.b43_wldev* %90, i32 %91, i32 33023, i32 16384)
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %94 = load i32, i32* @B43_NPHY_FREQGAIN7, align 4
  %95 = call i32 @b43_phy_maskset(%struct.b43_wldev* %93, i32 %94, i32 65408, i32 64)
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %97 = load i32, i32* @B43_NPHY_FREQGAIN7, align 4
  %98 = call i32 @b43_phy_maskset(%struct.b43_wldev* %96, i32 %97, i32 33023, i32 16384)
  br label %99

99:                                               ; preds = %47, %1
  %100 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %101 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp sle i32 %102, 8
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %106 = load i32, i32* @B43_NPHY_FORCEFRONT0, align 4
  %107 = call i32 @b43_phy_write(%struct.b43_wldev* %105, i32 %106, i32 432)
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %109 = load i32, i32* @B43_NPHY_FORCEFRONT1, align 4
  %110 = call i32 @b43_phy_write(%struct.b43_wldev* %108, i32 %109, i32 432)
  br label %111

111:                                              ; preds = %104, %99
  %112 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %113 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp sge i32 %114, 8
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %118 = load i32, i32* @B43_NPHY_TXTAILCNT, align 4
  %119 = call i32 @b43_phy_maskset(%struct.b43_wldev* %117, i32 %118, i32 -256, i32 114)
  br label %120

120:                                              ; preds = %116, %111
  %121 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %122 = call i32 @B43_NTAB16(i32 8, i32 0)
  %123 = call i32 @b43_ntab_write(%struct.b43_wldev* %121, i32 %122, i32 2)
  %124 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %125 = call i32 @B43_NTAB16(i32 8, i32 16)
  %126 = call i32 @b43_ntab_write(%struct.b43_wldev* %124, i32 %125, i32 2)
  %127 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %128 = call i32 @B43_NTAB32(i32 30, i32 0)
  %129 = call i32 @b43_ntab_read(%struct.b43_wldev* %127, i32 %128)
  store i32 %129, i32* %28, align 4
  %130 = load i32, i32* %28, align 4
  %131 = and i32 %130, 16777215
  store i32 %131, i32* %28, align 4
  %132 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %133 = call i32 @B43_NTAB32(i32 30, i32 0)
  %134 = load i32, i32* %28, align 4
  %135 = call i32 @b43_ntab_write(%struct.b43_wldev* %132, i32 %133, i32 %134)
  %136 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %137 = call i32 @B43_NTAB16(i32 7, i32 350)
  %138 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %139 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %136, i32 %137, i32 2, i32* %138)
  %140 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %141 = call i32 @B43_NTAB16(i32 7, i32 366)
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %143 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %140, i32 %141, i32 2, i32* %142)
  %144 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %145 = call i64 @b43_nphy_ipa(%struct.b43_wldev* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %120
  %148 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %149 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %150 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %151 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %152 = call i32 @ARRAY_SIZE(i32* %151)
  %153 = call i32 @b43_nphy_set_rf_sequence(%struct.b43_wldev* %148, i32 0, i32* %149, i32* %150, i32 %152)
  br label %154

154:                                              ; preds = %147, %120
  %155 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %156 = load i32, i32* @B43_NPHY_EPS_OVERRIDEI_0, align 4
  %157 = call i32 @b43_phy_maskset(%struct.b43_wldev* %155, i32 %156, i32 16383, i32 16384)
  %158 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %159 = load i32, i32* @B43_NPHY_EPS_OVERRIDEI_1, align 4
  %160 = call i32 @b43_phy_maskset(%struct.b43_wldev* %158, i32 %159, i32 16383, i32 16384)
  %161 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %162 = call i32 @b43_nphy_read_lpf_ctl(%struct.b43_wldev* %161, i32 340)
  store i32 %162, i32* %10, align 4
  %163 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %164 = call i32 @b43_nphy_read_lpf_ctl(%struct.b43_wldev* %163, i32 345)
  store i32 %164, i32* %11, align 4
  %165 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %166 = call i32 @b43_nphy_read_lpf_ctl(%struct.b43_wldev* %165, i32 338)
  store i32 %166, i32* %12, align 4
  %167 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %168 = call i64 @b43_nphy_ipa(%struct.b43_wldev* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %221

170:                                              ; preds = %154
  %171 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %172 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 5
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %177 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %190, label %180

180:                                              ; preds = %175, %170
  %181 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %182 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 7
  br i1 %184, label %190, label %185

185:                                              ; preds = %180
  %186 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %187 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 8
  br i1 %189, label %190, label %220

190:                                              ; preds = %185, %180, %175
  %191 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %192 = call i32 @b43_radio_read(%struct.b43_wldev* %191, i32 363)
  store i32 %192, i32* %13, align 4
  %193 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %194 = call i32 @b43_radio_read(%struct.b43_wldev* %193, i32 362)
  store i32 %194, i32* %17, align 4
  %195 = load i32, i32* %17, align 4
  store i32 %195, i32* %18, align 4
  %196 = load i32, i32* %13, align 4
  store i32 %196, i32* %14, align 4
  %197 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %198 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %199, 5
  br i1 %200, label %201, label %209

201:                                              ; preds = %190
  %202 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %203 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = load i32, i32* %17, align 4
  store i32 %207, i32* %19, align 4
  %208 = load i32, i32* %13, align 4
  store i32 %208, i32* %15, align 4
  store i32 12, i32* %16, align 4
  store i32 12, i32* %20, align 4
  store i32 1, i32* %21, align 4
  br label %219

209:                                              ; preds = %201, %190
  store i32 4, i32* %10, align 4
  store i32 1, i32* %12, align 4
  %210 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %211 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i64 @b43_current_band(i32 %212)
  %214 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %209
  store i32 12, i32* %19, align 4
  store i32 12, i32* %15, align 4
  store i32 10, i32* %20, align 4
  store i32 10, i32* %16, align 4
  br label %218

217:                                              ; preds = %209
  store i32 20, i32* %19, align 4
  store i32 20, i32* %15, align 4
  store i32 15, i32* %20, align 4
  store i32 15, i32* %16, align 4
  br label %218

218:                                              ; preds = %217, %216
  store i32 1, i32* %21, align 4
  br label %219

219:                                              ; preds = %218, %206
  br label %220

220:                                              ; preds = %219, %185
  br label %234

221:                                              ; preds = %154
  %222 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %223 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %224, 5
  br i1 %225, label %226, label %233

226:                                              ; preds = %221
  store i32 1, i32* %10, align 4
  store i32 3, i32* %11, align 4
  %227 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %228 = call i32 @b43_radio_read(%struct.b43_wldev* %227, i32 363)
  store i32 %228, i32* %13, align 4
  %229 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %230 = call i32 @b43_radio_read(%struct.b43_wldev* %229, i32 362)
  store i32 %230, i32* %17, align 4
  %231 = load i32, i32* %17, align 4
  store i32 %231, i32* %18, align 4
  %232 = load i32, i32* %13, align 4
  store i32 %232, i32* %14, align 4
  store i32 17, i32* %19, align 4
  store i32 17, i32* %20, align 4
  store i32 19, i32* %15, align 4
  store i32 19, i32* %16, align 4
  store i32 1, i32* %21, align 4
  br label %233

233:                                              ; preds = %226, %221
  br label %234

234:                                              ; preds = %233, %220
  %235 = load i32, i32* %21, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %325

237:                                              ; preds = %234
  %238 = load i32, i32* %14, align 4
  %239 = shl i32 %238, 8
  %240 = load i32, i32* %18, align 4
  %241 = shl i32 %240, 3
  %242 = or i32 %239, %241
  %243 = load i32, i32* %12, align 4
  %244 = or i32 %242, %243
  store i32 %244, i32* %22, align 4
  %245 = load i32, i32* %15, align 4
  %246 = shl i32 %245, 8
  %247 = load i32, i32* %19, align 4
  %248 = shl i32 %247, 3
  %249 = or i32 %246, %248
  %250 = load i32, i32* %10, align 4
  %251 = or i32 %249, %250
  store i32 %251, i32* %23, align 4
  %252 = load i32, i32* %16, align 4
  %253 = shl i32 %252, 8
  %254 = load i32, i32* %20, align 4
  %255 = shl i32 %254, 3
  %256 = or i32 %253, %255
  %257 = load i32, i32* %11, align 4
  %258 = or i32 %256, %257
  store i32 %258, i32* %24, align 4
  store i32 0, i32* %29, align 4
  br label %259

259:                                              ; preds = %319, %237
  %260 = load i32, i32* %29, align 4
  %261 = icmp slt i32 %260, 2
  br i1 %261, label %262, label %322

262:                                              ; preds = %259
  %263 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %264 = load i32, i32* %29, align 4
  %265 = mul nsw i32 %264, 16
  %266 = add nsw i32 338, %265
  %267 = call i32 @B43_NTAB16(i32 7, i32 %266)
  %268 = load i32, i32* %22, align 4
  %269 = call i32 @b43_ntab_write(%struct.b43_wldev* %263, i32 %267, i32 %268)
  %270 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %271 = load i32, i32* %29, align 4
  %272 = mul nsw i32 %271, 16
  %273 = add nsw i32 339, %272
  %274 = call i32 @B43_NTAB16(i32 7, i32 %273)
  %275 = load i32, i32* %23, align 4
  %276 = call i32 @b43_ntab_write(%struct.b43_wldev* %270, i32 %274, i32 %275)
  %277 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %278 = load i32, i32* %29, align 4
  %279 = mul nsw i32 %278, 16
  %280 = add nsw i32 340, %279
  %281 = call i32 @B43_NTAB16(i32 7, i32 %280)
  %282 = load i32, i32* %23, align 4
  %283 = call i32 @b43_ntab_write(%struct.b43_wldev* %277, i32 %281, i32 %282)
  %284 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %285 = load i32, i32* %29, align 4
  %286 = mul nsw i32 %285, 16
  %287 = add nsw i32 341, %286
  %288 = call i32 @B43_NTAB16(i32 7, i32 %287)
  %289 = load i32, i32* %24, align 4
  %290 = call i32 @b43_ntab_write(%struct.b43_wldev* %284, i32 %288, i32 %289)
  %291 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %292 = load i32, i32* %29, align 4
  %293 = mul nsw i32 %292, 16
  %294 = add nsw i32 342, %293
  %295 = call i32 @B43_NTAB16(i32 7, i32 %294)
  %296 = load i32, i32* %24, align 4
  %297 = call i32 @b43_ntab_write(%struct.b43_wldev* %291, i32 %295, i32 %296)
  %298 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %299 = load i32, i32* %29, align 4
  %300 = mul nsw i32 %299, 16
  %301 = add nsw i32 343, %300
  %302 = call i32 @B43_NTAB16(i32 7, i32 %301)
  %303 = load i32, i32* %24, align 4
  %304 = call i32 @b43_ntab_write(%struct.b43_wldev* %298, i32 %302, i32 %303)
  %305 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %306 = load i32, i32* %29, align 4
  %307 = mul nsw i32 %306, 16
  %308 = add nsw i32 344, %307
  %309 = call i32 @B43_NTAB16(i32 7, i32 %308)
  %310 = load i32, i32* %24, align 4
  %311 = call i32 @b43_ntab_write(%struct.b43_wldev* %305, i32 %309, i32 %310)
  %312 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %313 = load i32, i32* %29, align 4
  %314 = mul nsw i32 %313, 16
  %315 = add nsw i32 345, %314
  %316 = call i32 @B43_NTAB16(i32 7, i32 %315)
  %317 = load i32, i32* %24, align 4
  %318 = call i32 @b43_ntab_write(%struct.b43_wldev* %312, i32 %316, i32 %317)
  br label %319

319:                                              ; preds = %262
  %320 = load i32, i32* %29, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %29, align 4
  br label %259

322:                                              ; preds = %259
  %323 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %324 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %323, i32 16, i32 1, i32 3, i32 0, i32 2)
  br label %325

325:                                              ; preds = %322, %234
  %326 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %327 = call i32 @b43_phy_write(%struct.b43_wldev* %326, i32 815, i32 3)
  %328 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %329 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = icmp eq i32 %330, 4
  br i1 %331, label %337, label %332

332:                                              ; preds = %325
  %333 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %334 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = icmp eq i32 %335, 6
  br i1 %336, label %337, label %340

337:                                              ; preds = %332, %325
  %338 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %339 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %338, i32 4, i32 1, i32 3, i32 0, i32 0)
  br label %340

340:                                              ; preds = %337, %332
  %341 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %342 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = icmp eq i32 %343, 3
  br i1 %344, label %355, label %345

345:                                              ; preds = %340
  %346 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %347 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = icmp eq i32 %348, 4
  br i1 %349, label %355, label %350

350:                                              ; preds = %345
  %351 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %352 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = icmp eq i32 %353, 6
  br i1 %354, label %355, label %419

355:                                              ; preds = %350, %345, %340
  %356 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %357 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %378

360:                                              ; preds = %355
  %361 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %362 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* @B43_BFH2_IPALVLSHIFT_3P3, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %378

367:                                              ; preds = %360
  %368 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %369 = call i32 @b43_radio_write(%struct.b43_wldev* %368, i32 5, i32 5)
  %370 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %371 = call i32 @b43_radio_write(%struct.b43_wldev* %370, i32 6, i32 48)
  %372 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %373 = call i32 @b43_radio_write(%struct.b43_wldev* %372, i32 7, i32 0)
  %374 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %375 = call i32 @b43_radio_set(%struct.b43_wldev* %374, i32 79, i32 1)
  %376 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %377 = call i32 @b43_radio_set(%struct.b43_wldev* %376, i32 212, i32 1)
  store i32 31, i32* %25, align 4
  store i32 111, i32* %26, align 4
  store i32 170, i32* %27, align 4
  br label %379

378:                                              ; preds = %360, %355
  store i32 43, i32* %25, align 4
  store i32 127, i32* %26, align 4
  store i32 238, i32* %27, align 4
  br label %379

379:                                              ; preds = %378, %367
  %380 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %381 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = call i64 @b43_current_band(i32 %382)
  %384 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %385 = icmp eq i64 %383, %384
  br i1 %385, label %386, label %418

386:                                              ; preds = %379
  store i32 0, i32* %29, align 4
  br label %387

387:                                              ; preds = %414, %386
  %388 = load i32, i32* %29, align 4
  %389 = icmp slt i32 %388, 2
  br i1 %389, label %390, label %417

390:                                              ; preds = %387
  %391 = load i32, i32* %29, align 4
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %403

393:                                              ; preds = %390
  %394 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %395 = load i32, i32* %25, align 4
  %396 = call i32 @b43_radio_write(%struct.b43_wldev* %394, i32 95, i32 %395)
  %397 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %398 = load i32, i32* %26, align 4
  %399 = call i32 @b43_radio_write(%struct.b43_wldev* %397, i32 100, i32 %398)
  %400 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %401 = load i32, i32* %27, align 4
  %402 = call i32 @b43_radio_write(%struct.b43_wldev* %400, i32 102, i32 %401)
  br label %413

403:                                              ; preds = %390
  %404 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %405 = load i32, i32* %25, align 4
  %406 = call i32 @b43_radio_write(%struct.b43_wldev* %404, i32 232, i32 %405)
  %407 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %408 = load i32, i32* %26, align 4
  %409 = call i32 @b43_radio_write(%struct.b43_wldev* %407, i32 233, i32 %408)
  %410 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %411 = load i32, i32* %27, align 4
  %412 = call i32 @b43_radio_write(%struct.b43_wldev* %410, i32 235, i32 %411)
  br label %413

413:                                              ; preds = %403, %393
  br label %414

414:                                              ; preds = %413
  %415 = load i32, i32* %29, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %29, align 4
  br label %387

417:                                              ; preds = %387
  br label %418

418:                                              ; preds = %417, %379
  br label %419

419:                                              ; preds = %418, %350
  %420 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %421 = call i64 @b43_nphy_ipa(%struct.b43_wldev* %420)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %552

423:                                              ; preds = %419
  %424 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %425 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = call i64 @b43_current_band(i32 %426)
  %428 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %429 = icmp eq i64 %427, %428
  br i1 %429, label %430, label %530

430:                                              ; preds = %423
  %431 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %432 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = icmp eq i32 %433, 3
  br i1 %434, label %445, label %435

435:                                              ; preds = %430
  %436 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %437 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = icmp eq i32 %438, 4
  br i1 %439, label %445, label %440

440:                                              ; preds = %435
  %441 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %442 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = icmp eq i32 %443, 6
  br i1 %444, label %445, label %463

445:                                              ; preds = %440, %435, %430
  store i32 0, i32* %29, align 4
  br label %446

446:                                              ; preds = %459, %445
  %447 = load i32, i32* %29, align 4
  %448 = icmp slt i32 %447, 2
  br i1 %448, label %449, label %462

449:                                              ; preds = %446
  %450 = load i32, i32* %29, align 4
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %455

452:                                              ; preds = %449
  %453 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %454 = call i32 @b43_radio_write(%struct.b43_wldev* %453, i32 81, i32 127)
  br label %458

455:                                              ; preds = %449
  %456 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %457 = call i32 @b43_radio_write(%struct.b43_wldev* %456, i32 214, i32 127)
  br label %458

458:                                              ; preds = %455, %452
  br label %459

459:                                              ; preds = %458
  %460 = load i32, i32* %29, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %29, align 4
  br label %446

462:                                              ; preds = %446
  br label %463

463:                                              ; preds = %462, %440
  %464 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %465 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = icmp eq i32 %466, 3
  br i1 %467, label %468, label %502

468:                                              ; preds = %463
  store i32 0, i32* %29, align 4
  br label %469

469:                                              ; preds = %498, %468
  %470 = load i32, i32* %29, align 4
  %471 = icmp slt i32 %470, 2
  br i1 %471, label %472, label %501

472:                                              ; preds = %469
  %473 = load i32, i32* %29, align 4
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %486

475:                                              ; preds = %472
  %476 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %477 = call i32 @b43_radio_write(%struct.b43_wldev* %476, i32 100, i32 19)
  %478 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %479 = call i32 @b43_radio_write(%struct.b43_wldev* %478, i32 95, i32 31)
  %480 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %481 = call i32 @b43_radio_write(%struct.b43_wldev* %480, i32 102, i32 238)
  %482 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %483 = call i32 @b43_radio_write(%struct.b43_wldev* %482, i32 89, i32 138)
  %484 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %485 = call i32 @b43_radio_write(%struct.b43_wldev* %484, i32 128, i32 62)
  br label %497

486:                                              ; preds = %472
  %487 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %488 = call i32 @b43_radio_write(%struct.b43_wldev* %487, i32 105, i32 19)
  %489 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %490 = call i32 @b43_radio_write(%struct.b43_wldev* %489, i32 232, i32 31)
  %491 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %492 = call i32 @b43_radio_write(%struct.b43_wldev* %491, i32 235, i32 238)
  %493 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %494 = call i32 @b43_radio_write(%struct.b43_wldev* %493, i32 222, i32 138)
  %495 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %496 = call i32 @b43_radio_write(%struct.b43_wldev* %495, i32 261, i32 62)
  br label %497

497:                                              ; preds = %486, %475
  br label %498

498:                                              ; preds = %497
  %499 = load i32, i32* %29, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %29, align 4
  br label %469

501:                                              ; preds = %469
  br label %529

502:                                              ; preds = %463
  %503 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %504 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %503, i32 0, i32 1
  %505 = load i32, i32* %504, align 4
  %506 = icmp eq i32 %505, 7
  br i1 %506, label %512, label %507

507:                                              ; preds = %502
  %508 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %509 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 4
  %511 = icmp eq i32 %510, 8
  br i1 %511, label %512, label %528

512:                                              ; preds = %507, %502
  %513 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %514 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %513, i32 0, i32 3
  %515 = load i64, i64* %514, align 8
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %522, label %517

517:                                              ; preds = %512
  %518 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %519 = call i32 @b43_radio_write(%struct.b43_wldev* %518, i32 95, i32 20)
  %520 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %521 = call i32 @b43_radio_write(%struct.b43_wldev* %520, i32 232, i32 18)
  br label %527

522:                                              ; preds = %512
  %523 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %524 = call i32 @b43_radio_write(%struct.b43_wldev* %523, i32 95, i32 22)
  %525 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %526 = call i32 @b43_radio_write(%struct.b43_wldev* %525, i32 232, i32 22)
  br label %527

527:                                              ; preds = %522, %517
  br label %528

528:                                              ; preds = %527, %507
  br label %529

529:                                              ; preds = %528, %501
  br label %551

530:                                              ; preds = %423
  %531 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %532 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %531, i32 0, i32 2
  %533 = load i32, i32* %532, align 8
  store i32 %533, i32* %30, align 4
  %534 = load i32, i32* %30, align 4
  %535 = icmp sge i32 %534, 5180
  br i1 %535, label %536, label %539

536:                                              ; preds = %530
  %537 = load i32, i32* %30, align 4
  %538 = icmp sle i32 %537, 5230
  br i1 %538, label %545, label %539

539:                                              ; preds = %536, %530
  %540 = load i32, i32* %30, align 4
  %541 = icmp sge i32 %540, 5745
  br i1 %541, label %542, label %550

542:                                              ; preds = %539
  %543 = load i32, i32* %30, align 4
  %544 = icmp sle i32 %543, 5805
  br i1 %544, label %545, label %550

545:                                              ; preds = %542, %536
  %546 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %547 = call i32 @b43_radio_write(%struct.b43_wldev* %546, i32 125, i32 255)
  %548 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %549 = call i32 @b43_radio_write(%struct.b43_wldev* %548, i32 254, i32 255)
  br label %550

550:                                              ; preds = %545, %542, %539
  br label %551

551:                                              ; preds = %550, %529
  br label %580

552:                                              ; preds = %419
  %553 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %554 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %553, i32 0, i32 1
  %555 = load i32, i32* %554, align 4
  %556 = icmp ne i32 %555, 5
  br i1 %556, label %557, label %579

557:                                              ; preds = %552
  store i32 0, i32* %29, align 4
  br label %558

558:                                              ; preds = %575, %557
  %559 = load i32, i32* %29, align 4
  %560 = icmp slt i32 %559, 2
  br i1 %560, label %561, label %578

561:                                              ; preds = %558
  %562 = load i32, i32* %29, align 4
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %564, label %569

564:                                              ; preds = %561
  %565 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %566 = call i32 @b43_radio_write(%struct.b43_wldev* %565, i32 92, i32 97)
  %567 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %568 = call i32 @b43_radio_write(%struct.b43_wldev* %567, i32 81, i32 112)
  br label %574

569:                                              ; preds = %561
  %570 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %571 = call i32 @b43_radio_write(%struct.b43_wldev* %570, i32 225, i32 97)
  %572 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %573 = call i32 @b43_radio_write(%struct.b43_wldev* %572, i32 214, i32 112)
  br label %574

574:                                              ; preds = %569, %564
  br label %575

575:                                              ; preds = %574
  %576 = load i32, i32* %29, align 4
  %577 = add nsw i32 %576, 1
  store i32 %577, i32* %29, align 4
  br label %558

578:                                              ; preds = %558
  br label %579

579:                                              ; preds = %578, %552
  br label %580

580:                                              ; preds = %579, %551
  %581 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %582 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %581, i32 0, i32 1
  %583 = load i32, i32* %582, align 4
  %584 = icmp eq i32 %583, 4
  br i1 %584, label %585, label %617

585:                                              ; preds = %580
  %586 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %587 = call i32 @B43_NTAB16(i32 8, i32 5)
  %588 = call i32 @b43_ntab_write(%struct.b43_wldev* %586, i32 %587, i32 32)
  %589 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %590 = call i32 @B43_NTAB16(i32 8, i32 21)
  %591 = call i32 @b43_ntab_write(%struct.b43_wldev* %589, i32 %590, i32 32)
  store i32 0, i32* %29, align 4
  br label %592

592:                                              ; preds = %613, %585
  %593 = load i32, i32* %29, align 4
  %594 = icmp slt i32 %593, 2
  br i1 %594, label %595, label %616

595:                                              ; preds = %592
  %596 = load i32, i32* %29, align 4
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %598, label %605

598:                                              ; preds = %595
  %599 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %600 = call i32 @b43_radio_write(%struct.b43_wldev* %599, i32 417, i32 0)
  %601 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %602 = call i32 @b43_radio_write(%struct.b43_wldev* %601, i32 418, i32 63)
  %603 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %604 = call i32 @b43_radio_write(%struct.b43_wldev* %603, i32 422, i32 63)
  br label %612

605:                                              ; preds = %595
  %606 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %607 = call i32 @b43_radio_write(%struct.b43_wldev* %606, i32 423, i32 0)
  %608 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %609 = call i32 @b43_radio_write(%struct.b43_wldev* %608, i32 427, i32 63)
  %610 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %611 = call i32 @b43_radio_write(%struct.b43_wldev* %610, i32 428, i32 63)
  br label %612

612:                                              ; preds = %605, %598
  br label %613

613:                                              ; preds = %612
  %614 = load i32, i32* %29, align 4
  %615 = add nsw i32 %614, 1
  store i32 %615, i32* %29, align 4
  br label %592

616:                                              ; preds = %592
  br label %660

617:                                              ; preds = %580
  %618 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %619 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  %620 = call i32 @b43_phy_set(%struct.b43_wldev* %618, i32 %619, i32 4)
  %621 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %622 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %623 = call i32 @b43_phy_set(%struct.b43_wldev* %621, i32 %622, i32 4)
  %624 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %625 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  %626 = call i32 @b43_phy_set(%struct.b43_wldev* %624, i32 %625, i32 4)
  %627 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %628 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %629 = call i32 @b43_phy_set(%struct.b43_wldev* %627, i32 %628, i32 4)
  %630 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %631 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  %632 = call i32 @b43_phy_mask(%struct.b43_wldev* %630, i32 %631, i32 -2)
  %633 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %634 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %635 = call i32 @b43_phy_set(%struct.b43_wldev* %633, i32 %634, i32 1)
  %636 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %637 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  %638 = call i32 @b43_phy_mask(%struct.b43_wldev* %636, i32 %637, i32 -2)
  %639 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %640 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %641 = call i32 @b43_phy_set(%struct.b43_wldev* %639, i32 %640, i32 1)
  %642 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %643 = call i32 @B43_NTAB16(i32 8, i32 5)
  %644 = call i32 @b43_ntab_write(%struct.b43_wldev* %642, i32 %643, i32 32)
  %645 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %646 = call i32 @B43_NTAB16(i32 8, i32 21)
  %647 = call i32 @b43_ntab_write(%struct.b43_wldev* %645, i32 %646, i32 32)
  %648 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %649 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  %650 = call i32 @b43_phy_mask(%struct.b43_wldev* %648, i32 %649, i32 -5)
  %651 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %652 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %653 = call i32 @b43_phy_mask(%struct.b43_wldev* %651, i32 %652, i32 -5)
  %654 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %655 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  %656 = call i32 @b43_phy_mask(%struct.b43_wldev* %654, i32 %655, i32 -5)
  %657 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %658 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %659 = call i32 @b43_phy_mask(%struct.b43_wldev* %657, i32 %658, i32 -5)
  br label %660

660:                                              ; preds = %617, %616
  %661 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %662 = load i32, i32* @B43_NPHY_ENDROP_TLEN, align 4
  %663 = call i32 @b43_phy_write(%struct.b43_wldev* %661, i32 %662, i32 2)
  %664 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %665 = call i32 @B43_NTAB32(i32 16, i32 256)
  %666 = call i32 @b43_ntab_write(%struct.b43_wldev* %664, i32 %665, i32 20)
  %667 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %668 = call i32 @B43_NTAB16(i32 7, i32 312)
  %669 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %670 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %667, i32 %668, i32 2, i32* %669)
  %671 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %672 = call i32 @B43_NTAB16(i32 7, i32 321)
  %673 = call i32 @b43_ntab_write(%struct.b43_wldev* %671, i32 %672, i32 119)
  %674 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %675 = call i32 @B43_NTAB16(i32 7, i32 307)
  %676 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %677 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %674, i32 %675, i32 3, i32* %676)
  %678 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %679 = call i32 @B43_NTAB16(i32 7, i32 326)
  %680 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %681 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %678, i32 %679, i32 2, i32* %680)
  %682 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %683 = call i32 @B43_NTAB16(i32 7, i32 291)
  %684 = call i32 @b43_ntab_write(%struct.b43_wldev* %682, i32 %683, i32 119)
  %685 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %686 = call i32 @B43_NTAB16(i32 7, i32 298)
  %687 = call i32 @b43_ntab_write(%struct.b43_wldev* %685, i32 %686, i32 119)
  %688 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %689 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %688, i32 0, i32 3
  %690 = load i64, i64* %689, align 8
  %691 = icmp ne i64 %690, 0
  br i1 %691, label %699, label %692

692:                                              ; preds = %660
  %693 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %694 = call i32 @B43_NTAB32(i32 16, i32 3)
  %695 = call i32 @b43_ntab_write(%struct.b43_wldev* %693, i32 %694, i32 397)
  %696 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %697 = call i32 @B43_NTAB32(i32 16, i32 127)
  %698 = call i32 @b43_ntab_write(%struct.b43_wldev* %696, i32 %697, i32 397)
  br label %706

699:                                              ; preds = %660
  %700 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %701 = call i32 @B43_NTAB32(i32 16, i32 3)
  %702 = call i32 @b43_ntab_write(%struct.b43_wldev* %700, i32 %701, i32 333)
  %703 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %704 = call i32 @B43_NTAB32(i32 16, i32 127)
  %705 = call i32 @b43_ntab_write(%struct.b43_wldev* %703, i32 %704, i32 333)
  br label %706

706:                                              ; preds = %699, %692
  %707 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %708 = call i32 @b43_nphy_gain_ctl_workarounds(%struct.b43_wldev* %707)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #2

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_ntab_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @B43_NTAB16(i32, i32) #2

declare dso_local i32 @b43_ntab_read(%struct.b43_wldev*, i32) #2

declare dso_local i32 @B43_NTAB32(i32, i32) #2

declare dso_local i32 @b43_ntab_write_bulk(%struct.b43_wldev*, i32, i32, i32*) #2

declare dso_local i64 @b43_nphy_ipa(%struct.b43_wldev*) #2

declare dso_local i32 @b43_nphy_set_rf_sequence(%struct.b43_wldev*, i32, i32*, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @b43_nphy_read_lpf_ctl(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_radio_read(%struct.b43_wldev*, i32) #2

declare dso_local i64 @b43_current_band(i32) #2

declare dso_local i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_nphy_gain_ctl_workarounds(%struct.b43_wldev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
