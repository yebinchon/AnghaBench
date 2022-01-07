; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_ani_control_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_ani_control_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_3__, %struct.ath9k_channel* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.ath9k_channel = type { i32, %struct.ar5416AniState }
%struct.ar5416AniState = type { i64, i64, i64, i32, i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_common = type { i32 }

@m1ThreshLow_off = common dso_local global i32 0, align 4
@m2ThreshLow_off = common dso_local global i32 0, align 4
@m1Thresh_off = common dso_local global i32 0, align 4
@m2Thresh_off = common dso_local global i32 0, align 4
@m2CountThr_off = common dso_local global i32 0, align 4
@m2CountThrLow_off = common dso_local global i32 0, align 4
@m1ThreshLowExt_off = common dso_local global i32 0, align 4
@m2ThreshLowExt_off = common dso_local global i32 0, align 4
@m1ThreshExt_off = common dso_local global i32 0, align 4
@m2ThreshExt_off = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_LOW_M1_THRESH_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_LOW_M2_THRESH_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_M1_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_M2_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_M2COUNT_THR = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_LOW_M2COUNT_THR_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT_M1_THRESH_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT_M2_THRESH_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT_M1_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT_M2_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW = common dso_local global i32 0, align 4
@ANI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"** ch %d: ofdm weak signal: %s=>%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@firstep_table = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [56 x i8] c"ATH9K_ANI_FIRSTEP_LEVEL: level out of range (%u > %zu)\0A\00", align 1
@ATH9K_ANI_FIRSTEP_LVL = common dso_local global i64 0, align 8
@ATH9K_SIG_FIRSTEP_SETTING_MIN = common dso_local global i32 0, align 4
@ATH9K_SIG_FIRSTEP_SETTING_MAX = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_FIRSTEP = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_LOW = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_FIRSTEP_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"** ch %d: level %d=>%d[def:%d] firstep[level]=%d ini=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"** ch %d: level %d=>%d[def:%d] firstep_low[level]=%d ini=%d\0A\00", align 1
@cycpwrThr1_table = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [62 x i8] c"ATH9K_ANI_SPUR_IMMUNITY_LEVEL: level out of range (%u > %zu)\0A\00", align 1
@ATH9K_ANI_SPUR_IMMUNE_LVL = common dso_local global i64 0, align 8
@ATH9K_SIG_SPUR_IMM_SETTING_MIN = common dso_local global i32 0, align 4
@ATH9K_SIG_SPUR_IMM_SETTING_MAX = common dso_local global i32 0, align 4
@AR_PHY_TIMING5 = common dso_local global i32 0, align 4
@AR_PHY_TIMING5_CYCPWR_THR1 = common dso_local global i32 0, align 4
@AR_PHY_EXT_CCA = common dso_local global i32 0, align 4
@AR_PHY_EXT_TIMING5_CYCPWR_THR1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [60 x i8] c"** ch %d: level %d=>%d[def:%d] cycpwrThr1[level]=%d ini=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"** ch %d: level %d=>%d[def:%d] cycpwrThr1Ext[level]=%d ini=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"invalid cmd %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [87 x i8] c"ANI parameters: SI=%d, ofdmWS=%s FS=%d MRCcck=%s listenTime=%d ofdmErrs=%d cckErrs=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32, i32)* @ar5008_hw_ani_control_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5008_hw_ani_control_new(%struct.ath_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.ath9k_channel*, align 8
  %10 = alloca %struct.ar5416AniState*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
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
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %26 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %27 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %26)
  store %struct.ath_common* %27, %struct.ath_common** %8, align 8
  %28 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %29 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %28, i32 0, i32 2
  %30 = load %struct.ath9k_channel*, %struct.ath9k_channel** %29, align 8
  store %struct.ath9k_channel* %30, %struct.ath9k_channel** %9, align 8
  %31 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %32 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %31, i32 0, i32 1
  store %struct.ar5416AniState* %32, %struct.ar5416AniState** %10, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %35 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %33, %36
  switch i32 %37, label %554 [
    i32 130, label %38
    i32 132, label %259
    i32 128, label %405
    i32 131, label %551
    i32 129, label %553
  ]

38:                                               ; preds = %3
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %48 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %47, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  br label %53

51:                                               ; preds = %38
  %52 = load i32, i32* @m1ThreshLow_off, align 4
  br label %53

53:                                               ; preds = %51, %46
  %54 = phi i32 [ %50, %46 ], [ %52, %51 ]
  store i32 %54, i32* %14, align 4
  %55 = load i64, i64* %13, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %59 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  br label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @m2ThreshLow_off, align 4
  br label %64

64:                                               ; preds = %62, %57
  %65 = phi i32 [ %61, %57 ], [ %63, %62 ]
  store i32 %65, i32* %15, align 4
  %66 = load i64, i64* %13, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %70 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %69, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  br label %75

73:                                               ; preds = %64
  %74 = load i32, i32* @m1Thresh_off, align 4
  br label %75

75:                                               ; preds = %73, %68
  %76 = phi i32 [ %72, %68 ], [ %74, %73 ]
  store i32 %76, i32* %16, align 4
  %77 = load i64, i64* %13, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %81 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  br label %86

84:                                               ; preds = %75
  %85 = load i32, i32* @m2Thresh_off, align 4
  br label %86

86:                                               ; preds = %84, %79
  %87 = phi i32 [ %83, %79 ], [ %85, %84 ]
  store i32 %87, i32* %17, align 4
  %88 = load i64, i64* %13, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %92 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  br label %97

95:                                               ; preds = %86
  %96 = load i32, i32* @m2CountThr_off, align 4
  br label %97

97:                                               ; preds = %95, %90
  %98 = phi i32 [ %94, %90 ], [ %96, %95 ]
  store i32 %98, i32* %18, align 4
  %99 = load i64, i64* %13, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %103 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %102, i32 0, i32 7
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  br label %108

106:                                              ; preds = %97
  %107 = load i32, i32* @m2CountThrLow_off, align 4
  br label %108

108:                                              ; preds = %106, %101
  %109 = phi i32 [ %105, %101 ], [ %107, %106 ]
  store i32 %109, i32* %19, align 4
  %110 = load i64, i64* %13, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %114 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  br label %119

117:                                              ; preds = %108
  %118 = load i32, i32* @m1ThreshLowExt_off, align 4
  br label %119

119:                                              ; preds = %117, %112
  %120 = phi i32 [ %116, %112 ], [ %118, %117 ]
  store i32 %120, i32* %20, align 4
  %121 = load i64, i64* %13, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %125 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %124, i32 0, i32 7
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 4
  br label %130

128:                                              ; preds = %119
  %129 = load i32, i32* @m2ThreshLowExt_off, align 4
  br label %130

130:                                              ; preds = %128, %123
  %131 = phi i32 [ %127, %123 ], [ %129, %128 ]
  store i32 %131, i32* %21, align 4
  %132 = load i64, i64* %13, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %136 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %135, i32 0, i32 7
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 8
  br label %141

139:                                              ; preds = %130
  %140 = load i32, i32* @m1ThreshExt_off, align 4
  br label %141

141:                                              ; preds = %139, %134
  %142 = phi i32 [ %138, %134 ], [ %140, %139 ]
  store i32 %142, i32* %22, align 4
  %143 = load i64, i64* %13, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %141
  %146 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %147 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %146, i32 0, i32 7
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 9
  %149 = load i32, i32* %148, align 4
  br label %152

150:                                              ; preds = %141
  %151 = load i32, i32* @m2ThreshExt_off, align 4
  br label %152

152:                                              ; preds = %150, %145
  %153 = phi i32 [ %149, %145 ], [ %151, %150 ]
  store i32 %153, i32* %23, align 4
  %154 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %155 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %156 = load i32, i32* @AR_PHY_SFCORR_LOW_M1_THRESH_LOW, align 4
  %157 = load i32, i32* %14, align 4
  %158 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %154, i32 %155, i32 %156, i32 %157)
  %159 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %160 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %161 = load i32, i32* @AR_PHY_SFCORR_LOW_M2_THRESH_LOW, align 4
  %162 = load i32, i32* %15, align 4
  %163 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %159, i32 %160, i32 %161, i32 %162)
  %164 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %165 = load i32, i32* @AR_PHY_SFCORR, align 4
  %166 = load i32, i32* @AR_PHY_SFCORR_M1_THRESH, align 4
  %167 = load i32, i32* %16, align 4
  %168 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %164, i32 %165, i32 %166, i32 %167)
  %169 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %170 = load i32, i32* @AR_PHY_SFCORR, align 4
  %171 = load i32, i32* @AR_PHY_SFCORR_M2_THRESH, align 4
  %172 = load i32, i32* %17, align 4
  %173 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %169, i32 %170, i32 %171, i32 %172)
  %174 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %175 = load i32, i32* @AR_PHY_SFCORR, align 4
  %176 = load i32, i32* @AR_PHY_SFCORR_M2COUNT_THR, align 4
  %177 = load i32, i32* %18, align 4
  %178 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %174, i32 %175, i32 %176, i32 %177)
  %179 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %180 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %181 = load i32, i32* @AR_PHY_SFCORR_LOW_M2COUNT_THR_LOW, align 4
  %182 = load i32, i32* %19, align 4
  %183 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %179, i32 %180, i32 %181, i32 %182)
  %184 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %185 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %186 = load i32, i32* @AR_PHY_SFCORR_EXT_M1_THRESH_LOW, align 4
  %187 = load i32, i32* %20, align 4
  %188 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %184, i32 %185, i32 %186, i32 %187)
  %189 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %190 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %191 = load i32, i32* @AR_PHY_SFCORR_EXT_M2_THRESH_LOW, align 4
  %192 = load i32, i32* %21, align 4
  %193 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %189, i32 %190, i32 %191, i32 %192)
  %194 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %195 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %196 = load i32, i32* @AR_PHY_SFCORR_EXT_M1_THRESH, align 4
  %197 = load i32, i32* %22, align 4
  %198 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %194, i32 %195, i32 %196, i32 %197)
  %199 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %200 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %201 = load i32, i32* @AR_PHY_SFCORR_EXT_M2_THRESH, align 4
  %202 = load i32, i32* %23, align 4
  %203 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %199, i32 %200, i32 %201, i32 %202)
  %204 = load i64, i64* %13, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %152
  %207 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %208 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %209 = load i32, i32* @AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW, align 4
  %210 = call i32 @REG_SET_BIT(%struct.ath_hw* %207, i32 %208, i32 %209)
  br label %216

211:                                              ; preds = %152
  %212 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %213 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %214 = load i32, i32* @AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW, align 4
  %215 = call i32 @REG_CLR_BIT(%struct.ath_hw* %212, i32 %213, i32 %214)
  br label %216

216:                                              ; preds = %211, %206
  %217 = load i64, i64* %13, align 8
  %218 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %219 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %217, %220
  br i1 %221, label %222, label %258

222:                                              ; preds = %216
  %223 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %224 = load i32, i32* @ANI, align 4
  %225 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %226 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = sext i32 %227 to i64
  %229 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %230 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %235 = load i64, i64* %13, align 8
  %236 = icmp ne i64 %235, 0
  %237 = zext i1 %236 to i64
  %238 = select i1 %236, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %239 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %223, i32 %224, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %228, i8* %234, i8* %238)
  %240 = load i64, i64* %13, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %222
  %243 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %244 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 4
  br label %254

248:                                              ; preds = %222
  %249 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %250 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %251, align 4
  br label %254

254:                                              ; preds = %248, %242
  %255 = load i64, i64* %13, align 8
  %256 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %257 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %256, i32 0, i32 0
  store i64 %255, i64* %257, align 8
  br label %258

258:                                              ; preds = %254, %216
  br label %560

259:                                              ; preds = %3
  %260 = load i32, i32* %7, align 4
  %261 = sext i32 %260 to i64
  store i64 %261, i64* %24, align 8
  %262 = load i64, i64* %24, align 8
  %263 = load i32*, i32** @firstep_table, align 8
  %264 = call i64 @ARRAY_SIZE(i32* %263)
  %265 = icmp uge i64 %262, %264
  br i1 %265, label %266, label %273

266:                                              ; preds = %259
  %267 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %268 = load i32, i32* @ANI, align 4
  %269 = load i64, i64* %24, align 8
  %270 = load i32*, i32** @firstep_table, align 8
  %271 = call i64 @ARRAY_SIZE(i32* %270)
  %272 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %267, i32 %268, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i64 %269, i64 %271)
  store i32 0, i32* %4, align 4
  br label %591

273:                                              ; preds = %259
  %274 = load i32*, i32** @firstep_table, align 8
  %275 = load i64, i64* %24, align 8
  %276 = getelementptr inbounds i32, i32* %274, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = load i32*, i32** @firstep_table, align 8
  %279 = load i64, i64* @ATH9K_ANI_FIRSTEP_LVL, align 8
  %280 = getelementptr inbounds i32, i32* %278, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = sub nsw i32 %277, %281
  %283 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %284 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %283, i32 0, i32 7
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 10
  %286 = load i32, i32* %285, align 8
  %287 = add nsw i32 %282, %286
  store i32 %287, i32* %11, align 4
  %288 = load i32, i32* %11, align 4
  %289 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MIN, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %293

291:                                              ; preds = %273
  %292 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MIN, align 4
  store i32 %292, i32* %11, align 4
  br label %293

293:                                              ; preds = %291, %273
  %294 = load i32, i32* %11, align 4
  %295 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MAX, align 4
  %296 = icmp sgt i32 %294, %295
  br i1 %296, label %297, label %299

297:                                              ; preds = %293
  %298 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MAX, align 4
  store i32 %298, i32* %11, align 4
  br label %299

299:                                              ; preds = %297, %293
  %300 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %301 = load i32, i32* @AR_PHY_FIND_SIG, align 4
  %302 = load i32, i32* @AR_PHY_FIND_SIG_FIRSTEP, align 4
  %303 = load i32, i32* %11, align 4
  %304 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %300, i32 %301, i32 %302, i32 %303)
  %305 = load i32*, i32** @firstep_table, align 8
  %306 = load i64, i64* %24, align 8
  %307 = getelementptr inbounds i32, i32* %305, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = load i32*, i32** @firstep_table, align 8
  %310 = load i64, i64* @ATH9K_ANI_FIRSTEP_LVL, align 8
  %311 = getelementptr inbounds i32, i32* %309, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = sub nsw i32 %308, %312
  %314 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %315 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %314, i32 0, i32 7
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 11
  %317 = load i32, i32* %316, align 4
  %318 = add nsw i32 %313, %317
  store i32 %318, i32* %12, align 4
  %319 = load i32, i32* %12, align 4
  %320 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MIN, align 4
  %321 = icmp slt i32 %319, %320
  br i1 %321, label %322, label %324

322:                                              ; preds = %299
  %323 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MIN, align 4
  store i32 %323, i32* %12, align 4
  br label %324

324:                                              ; preds = %322, %299
  %325 = load i32, i32* %12, align 4
  %326 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MAX, align 4
  %327 = icmp sgt i32 %325, %326
  br i1 %327, label %328, label %330

328:                                              ; preds = %324
  %329 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MAX, align 4
  store i32 %329, i32* %12, align 4
  br label %330

330:                                              ; preds = %328, %324
  %331 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %332 = load i32, i32* @AR_PHY_FIND_SIG_LOW, align 4
  %333 = load i32, i32* @AR_PHY_FIND_SIG_FIRSTEP_LOW, align 4
  %334 = load i32, i32* %12, align 4
  %335 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %331, i32 %332, i32 %333, i32 %334)
  %336 = load i64, i64* %24, align 8
  %337 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %338 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %336, %339
  br i1 %340, label %341, label %404

341:                                              ; preds = %330
  %342 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %343 = load i32, i32* @ANI, align 4
  %344 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %345 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = sext i32 %346 to i64
  %348 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %349 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %348, i32 0, i32 1
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* %24, align 8
  %352 = load i64, i64* @ATH9K_ANI_FIRSTEP_LVL, align 8
  %353 = load i32, i32* %11, align 4
  %354 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %355 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %354, i32 0, i32 7
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 10
  %357 = load i32, i32* %356, align 8
  %358 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %342, i32 %343, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i64 %347, i64 %350, i64 %351, i64 %352, i32 %353, i32 %357)
  %359 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %360 = load i32, i32* @ANI, align 4
  %361 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %362 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = sext i32 %363 to i64
  %365 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %366 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %365, i32 0, i32 1
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* %24, align 8
  %369 = load i64, i64* @ATH9K_ANI_FIRSTEP_LVL, align 8
  %370 = load i32, i32* %12, align 4
  %371 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %372 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %371, i32 0, i32 7
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 11
  %374 = load i32, i32* %373, align 4
  %375 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %359, i32 %360, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i64 %364, i64 %367, i64 %368, i64 %369, i32 %370, i32 %374)
  %376 = load i64, i64* %24, align 8
  %377 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %378 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %377, i32 0, i32 1
  %379 = load i64, i64* %378, align 8
  %380 = icmp ugt i64 %376, %379
  br i1 %380, label %381, label %387

381:                                              ; preds = %341
  %382 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %383 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %384, align 4
  br label %400

387:                                              ; preds = %341
  %388 = load i64, i64* %24, align 8
  %389 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %390 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %389, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = icmp ult i64 %388, %391
  br i1 %392, label %393, label %399

393:                                              ; preds = %387
  %394 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %395 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %396, align 4
  br label %399

399:                                              ; preds = %393, %387
  br label %400

400:                                              ; preds = %399, %381
  %401 = load i64, i64* %24, align 8
  %402 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %403 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %402, i32 0, i32 1
  store i64 %401, i64* %403, align 8
  br label %404

404:                                              ; preds = %400, %330
  br label %560

405:                                              ; preds = %3
  %406 = load i32, i32* %7, align 4
  %407 = sext i32 %406 to i64
  store i64 %407, i64* %25, align 8
  %408 = load i64, i64* %25, align 8
  %409 = load i32*, i32** @cycpwrThr1_table, align 8
  %410 = call i64 @ARRAY_SIZE(i32* %409)
  %411 = icmp uge i64 %408, %410
  br i1 %411, label %412, label %419

412:                                              ; preds = %405
  %413 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %414 = load i32, i32* @ANI, align 4
  %415 = load i64, i64* %25, align 8
  %416 = load i32*, i32** @cycpwrThr1_table, align 8
  %417 = call i64 @ARRAY_SIZE(i32* %416)
  %418 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %413, i32 %414, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i64 %415, i64 %417)
  store i32 0, i32* %4, align 4
  br label %591

419:                                              ; preds = %405
  %420 = load i32*, i32** @cycpwrThr1_table, align 8
  %421 = load i64, i64* %25, align 8
  %422 = getelementptr inbounds i32, i32* %420, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = load i32*, i32** @cycpwrThr1_table, align 8
  %425 = load i64, i64* @ATH9K_ANI_SPUR_IMMUNE_LVL, align 8
  %426 = getelementptr inbounds i32, i32* %424, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = sub nsw i32 %423, %427
  %429 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %430 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %429, i32 0, i32 7
  %431 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %430, i32 0, i32 12
  %432 = load i32, i32* %431, align 8
  %433 = add nsw i32 %428, %432
  store i32 %433, i32* %11, align 4
  %434 = load i32, i32* %11, align 4
  %435 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MIN, align 4
  %436 = icmp slt i32 %434, %435
  br i1 %436, label %437, label %439

437:                                              ; preds = %419
  %438 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MIN, align 4
  store i32 %438, i32* %11, align 4
  br label %439

439:                                              ; preds = %437, %419
  %440 = load i32, i32* %11, align 4
  %441 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MAX, align 4
  %442 = icmp sgt i32 %440, %441
  br i1 %442, label %443, label %445

443:                                              ; preds = %439
  %444 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MAX, align 4
  store i32 %444, i32* %11, align 4
  br label %445

445:                                              ; preds = %443, %439
  %446 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %447 = load i32, i32* @AR_PHY_TIMING5, align 4
  %448 = load i32, i32* @AR_PHY_TIMING5_CYCPWR_THR1, align 4
  %449 = load i32, i32* %11, align 4
  %450 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %446, i32 %447, i32 %448, i32 %449)
  %451 = load i32*, i32** @cycpwrThr1_table, align 8
  %452 = load i64, i64* %25, align 8
  %453 = getelementptr inbounds i32, i32* %451, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = load i32*, i32** @cycpwrThr1_table, align 8
  %456 = load i64, i64* @ATH9K_ANI_SPUR_IMMUNE_LVL, align 8
  %457 = getelementptr inbounds i32, i32* %455, i64 %456
  %458 = load i32, i32* %457, align 4
  %459 = sub nsw i32 %454, %458
  %460 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %461 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %460, i32 0, i32 7
  %462 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %461, i32 0, i32 13
  %463 = load i32, i32* %462, align 4
  %464 = add nsw i32 %459, %463
  store i32 %464, i32* %12, align 4
  %465 = load i32, i32* %12, align 4
  %466 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MIN, align 4
  %467 = icmp slt i32 %465, %466
  br i1 %467, label %468, label %470

468:                                              ; preds = %445
  %469 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MIN, align 4
  store i32 %469, i32* %12, align 4
  br label %470

470:                                              ; preds = %468, %445
  %471 = load i32, i32* %12, align 4
  %472 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MAX, align 4
  %473 = icmp sgt i32 %471, %472
  br i1 %473, label %474, label %476

474:                                              ; preds = %470
  %475 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MAX, align 4
  store i32 %475, i32* %12, align 4
  br label %476

476:                                              ; preds = %474, %470
  %477 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %478 = load i32, i32* @AR_PHY_EXT_CCA, align 4
  %479 = load i32, i32* @AR_PHY_EXT_TIMING5_CYCPWR_THR1, align 4
  %480 = load i32, i32* %12, align 4
  %481 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %477, i32 %478, i32 %479, i32 %480)
  %482 = load i64, i64* %25, align 8
  %483 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %484 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %483, i32 0, i32 2
  %485 = load i64, i64* %484, align 8
  %486 = icmp ne i64 %482, %485
  br i1 %486, label %487, label %550

487:                                              ; preds = %476
  %488 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %489 = load i32, i32* @ANI, align 4
  %490 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %491 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = sext i32 %492 to i64
  %494 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %495 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %494, i32 0, i32 2
  %496 = load i64, i64* %495, align 8
  %497 = load i64, i64* %25, align 8
  %498 = load i64, i64* @ATH9K_ANI_SPUR_IMMUNE_LVL, align 8
  %499 = load i32, i32* %11, align 4
  %500 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %501 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %500, i32 0, i32 7
  %502 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %501, i32 0, i32 12
  %503 = load i32, i32* %502, align 8
  %504 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %488, i32 %489, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), i64 %493, i64 %496, i64 %497, i64 %498, i32 %499, i32 %503)
  %505 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %506 = load i32, i32* @ANI, align 4
  %507 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %508 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = sext i32 %509 to i64
  %511 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %512 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %511, i32 0, i32 2
  %513 = load i64, i64* %512, align 8
  %514 = load i64, i64* %25, align 8
  %515 = load i64, i64* @ATH9K_ANI_SPUR_IMMUNE_LVL, align 8
  %516 = load i32, i32* %12, align 4
  %517 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %518 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %517, i32 0, i32 7
  %519 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %518, i32 0, i32 13
  %520 = load i32, i32* %519, align 4
  %521 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %505, i32 %506, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0), i64 %510, i64 %513, i64 %514, i64 %515, i32 %516, i32 %520)
  %522 = load i64, i64* %25, align 8
  %523 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %524 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %523, i32 0, i32 2
  %525 = load i64, i64* %524, align 8
  %526 = icmp ugt i64 %522, %525
  br i1 %526, label %527, label %533

527:                                              ; preds = %487
  %528 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %529 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %528, i32 0, i32 1
  %530 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %530, align 4
  br label %546

533:                                              ; preds = %487
  %534 = load i64, i64* %25, align 8
  %535 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %536 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %535, i32 0, i32 2
  %537 = load i64, i64* %536, align 8
  %538 = icmp ult i64 %534, %537
  br i1 %538, label %539, label %545

539:                                              ; preds = %533
  %540 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %541 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %540, i32 0, i32 1
  %542 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %541, i32 0, i32 0
  %543 = load i32, i32* %542, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %542, align 4
  br label %545

545:                                              ; preds = %539, %533
  br label %546

546:                                              ; preds = %545, %527
  %547 = load i64, i64* %25, align 8
  %548 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %549 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %548, i32 0, i32 2
  store i64 %547, i64* %549, align 8
  br label %550

550:                                              ; preds = %546, %476
  br label %560

551:                                              ; preds = %3
  %552 = call i32 @WARN_ON(i32 1)
  br label %560

553:                                              ; preds = %3
  br label %560

554:                                              ; preds = %3
  %555 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %556 = load i32, i32* @ANI, align 4
  %557 = load i32, i32* %6, align 4
  %558 = zext i32 %557 to i64
  %559 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %555, i32 %556, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i64 %558)
  store i32 0, i32* %4, align 4
  br label %591

560:                                              ; preds = %553, %551, %550, %404, %258
  %561 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %562 = load i32, i32* @ANI, align 4
  %563 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %564 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %563, i32 0, i32 2
  %565 = load i64, i64* %564, align 8
  %566 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %567 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %566, i32 0, i32 0
  %568 = load i64, i64* %567, align 8
  %569 = icmp ne i64 %568, 0
  %570 = zext i1 %569 to i64
  %571 = select i1 %569, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %572 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %573 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %572, i32 0, i32 1
  %574 = load i64, i64* %573, align 8
  %575 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %576 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %575, i32 0, i32 6
  %577 = load i64, i64* %576, align 8
  %578 = icmp ne i64 %577, 0
  %579 = zext i1 %578 to i64
  %580 = select i1 %578, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %581 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %582 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %581, i32 0, i32 5
  %583 = load i32, i32* %582, align 8
  %584 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %585 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %584, i32 0, i32 4
  %586 = load i32, i32* %585, align 4
  %587 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %588 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %587, i32 0, i32 3
  %589 = load i32, i32* %588, align 8
  %590 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %561, i32 %562, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.10, i64 0, i64 0), i64 %565, i8* %571, i64 %574, i8* %580, i32 %583, i32 %586, i32 %589)
  store i32 1, i32* %4, align 4
  br label %591

591:                                              ; preds = %560, %554, %412, %266
  %592 = load i32, i32* %4, align 4
  ret i32 %592
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, ...) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
