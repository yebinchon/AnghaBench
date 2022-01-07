; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_ani_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_ani_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_4__, %struct.ath9k_channel* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath9k_channel = type { i32, %struct.ar5416AniState }
%struct.ar5416AniState = type { i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.ath_common = type { i32 }

@AR_PHY_SFCORR_LOW = common dso_local global i32 0, align 4
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
@AR_PHY_FIND_SIG_LOW_FIRSTEP_LOW = common dso_local global i32 0, align 4
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
@AR_PHY_EXT_CYCPWR_THR1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [60 x i8] c"** ch %d: level %d=>%d[def:%d] cycpwrThr1[level]=%d ini=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"** ch %d: level %d=>%d[def:%d] cycpwrThr1Ext[level]=%d ini=%d\0A\00", align 1
@AR_PHY_MRC_CCK_CTRL = common dso_local global i32 0, align 4
@AR_PHY_MRC_CCK_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_MRC_CCK_MUX_REG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"** ch %d: MRC CCK: %s=>%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"invalid cmd %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [87 x i8] c"ANI parameters: SI=%d, ofdmWS=%s FS=%d MRCcck=%s listenTime=%d ofdmErrs=%d cckErrs=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32, i32)* @ar9003_hw_ani_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_ani_control(%struct.ath_hw* %0, i32 %1, i32 %2) #0 {
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
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %18 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %17)
  store %struct.ath_common* %18, %struct.ath_common** %8, align 8
  %19 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 2
  %21 = load %struct.ath9k_channel*, %struct.ath9k_channel** %20, align 8
  store %struct.ath9k_channel* %21, %struct.ath9k_channel** %9, align 8
  %22 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %23 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %22, i32 0, i32 1
  store %struct.ar5416AniState* %23, %struct.ar5416AniState** %10, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %26 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %24, %27
  switch i32 %28, label %440 [
    i32 130, label %29
    i32 132, label %90
    i32 128, label %236
    i32 131, label %382
    i32 129, label %439
  ]

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* %13, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %39 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %40 = load i32, i32* @AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW, align 4
  %41 = call i32 @REG_SET_BIT(%struct.ath_hw* %38, i32 %39, i32 %40)
  br label %47

42:                                               ; preds = %29
  %43 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %44 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %45 = load i32, i32* @AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW, align 4
  %46 = call i32 @REG_CLR_BIT(%struct.ath_hw* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i64, i64* %13, align 8
  %49 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %50 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %89

53:                                               ; preds = %47
  %54 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %55 = load i32, i32* @ANI, align 4
  %56 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %57 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %61 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %66 = load i64, i64* %13, align 8
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %70 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %54, i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %59, i8* %65, i8* %69)
  %71 = load i64, i64* %13, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %53
  %74 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %75 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %85

79:                                               ; preds = %53
  %80 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %81 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %73
  %86 = load i64, i64* %13, align 8
  %87 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %88 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %85, %47
  br label %446

90:                                               ; preds = %3
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %14, align 8
  %93 = load i64, i64* %14, align 8
  %94 = load i32*, i32** @firstep_table, align 8
  %95 = call i64 @ARRAY_SIZE(i32* %94)
  %96 = icmp uge i64 %93, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %99 = load i32, i32* @ANI, align 4
  %100 = load i64, i64* %14, align 8
  %101 = load i32*, i32** @firstep_table, align 8
  %102 = call i64 @ARRAY_SIZE(i32* %101)
  %103 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %98, i32 %99, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i64 %100, i64 %102)
  store i32 0, i32* %4, align 4
  br label %477

104:                                              ; preds = %90
  %105 = load i32*, i32** @firstep_table, align 8
  %106 = load i64, i64* %14, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** @firstep_table, align 8
  %110 = load i64, i64* @ATH9K_ANI_FIRSTEP_LVL, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %108, %112
  %114 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %115 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %114, i32 0, i32 7
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %113, %117
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MIN, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %104
  %123 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MIN, align 4
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %122, %104
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MAX, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MAX, align 4
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %128, %124
  %131 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %132 = load i32, i32* @AR_PHY_FIND_SIG, align 4
  %133 = load i32, i32* @AR_PHY_FIND_SIG_FIRSTEP, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32*, i32** @firstep_table, align 8
  %137 = load i64, i64* %14, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** @firstep_table, align 8
  %141 = load i64, i64* @ATH9K_ANI_FIRSTEP_LVL, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %139, %143
  %145 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %146 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %145, i32 0, i32 7
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %144, %148
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MIN, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %130
  %154 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MIN, align 4
  store i32 %154, i32* %12, align 4
  br label %155

155:                                              ; preds = %153, %130
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MAX, align 4
  %158 = icmp sgt i32 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MAX, align 4
  store i32 %160, i32* %12, align 4
  br label %161

161:                                              ; preds = %159, %155
  %162 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %163 = load i32, i32* @AR_PHY_FIND_SIG_LOW, align 4
  %164 = load i32, i32* @AR_PHY_FIND_SIG_LOW_FIRSTEP_LOW, align 4
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %162, i32 %163, i32 %164, i32 %165)
  %167 = load i64, i64* %14, align 8
  %168 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %169 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %167, %170
  br i1 %171, label %172, label %235

172:                                              ; preds = %161
  %173 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %174 = load i32, i32* @ANI, align 4
  %175 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %176 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %180 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %14, align 8
  %183 = load i64, i64* @ATH9K_ANI_FIRSTEP_LVL, align 8
  %184 = load i32, i32* %11, align 4
  %185 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %186 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %185, i32 0, i32 7
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %173, i32 %174, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i64 %178, i64 %181, i64 %182, i64 %183, i32 %184, i32 %188)
  %190 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %191 = load i32, i32* @ANI, align 4
  %192 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %193 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %197 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* %14, align 8
  %200 = load i64, i64* @ATH9K_ANI_FIRSTEP_LVL, align 8
  %201 = load i32, i32* %12, align 4
  %202 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %203 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %202, i32 0, i32 7
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %190, i32 %191, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i64 %195, i64 %198, i64 %199, i64 %200, i32 %201, i32 %205)
  %207 = load i64, i64* %14, align 8
  %208 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %209 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = icmp ugt i64 %207, %210
  br i1 %211, label %212, label %218

212:                                              ; preds = %172
  %213 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %214 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 4
  br label %231

218:                                              ; preds = %172
  %219 = load i64, i64* %14, align 8
  %220 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %221 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = icmp ult i64 %219, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %218
  %225 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %226 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %227, align 4
  br label %230

230:                                              ; preds = %224, %218
  br label %231

231:                                              ; preds = %230, %212
  %232 = load i64, i64* %14, align 8
  %233 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %234 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %233, i32 0, i32 1
  store i64 %232, i64* %234, align 8
  br label %235

235:                                              ; preds = %231, %161
  br label %446

236:                                              ; preds = %3
  %237 = load i32, i32* %7, align 4
  %238 = sext i32 %237 to i64
  store i64 %238, i64* %15, align 8
  %239 = load i64, i64* %15, align 8
  %240 = load i32*, i32** @cycpwrThr1_table, align 8
  %241 = call i64 @ARRAY_SIZE(i32* %240)
  %242 = icmp uge i64 %239, %241
  br i1 %242, label %243, label %250

243:                                              ; preds = %236
  %244 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %245 = load i32, i32* @ANI, align 4
  %246 = load i64, i64* %15, align 8
  %247 = load i32*, i32** @cycpwrThr1_table, align 8
  %248 = call i64 @ARRAY_SIZE(i32* %247)
  %249 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %244, i32 %245, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i64 %246, i64 %248)
  store i32 0, i32* %4, align 4
  br label %477

250:                                              ; preds = %236
  %251 = load i32*, i32** @cycpwrThr1_table, align 8
  %252 = load i64, i64* %15, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = load i32*, i32** @cycpwrThr1_table, align 8
  %256 = load i64, i64* @ATH9K_ANI_SPUR_IMMUNE_LVL, align 8
  %257 = getelementptr inbounds i32, i32* %255, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = sub nsw i32 %254, %258
  %260 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %261 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %260, i32 0, i32 7
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %259, %263
  store i32 %264, i32* %11, align 4
  %265 = load i32, i32* %11, align 4
  %266 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MIN, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %270

268:                                              ; preds = %250
  %269 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MIN, align 4
  store i32 %269, i32* %11, align 4
  br label %270

270:                                              ; preds = %268, %250
  %271 = load i32, i32* %11, align 4
  %272 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MAX, align 4
  %273 = icmp sgt i32 %271, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %270
  %275 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MAX, align 4
  store i32 %275, i32* %11, align 4
  br label %276

276:                                              ; preds = %274, %270
  %277 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %278 = load i32, i32* @AR_PHY_TIMING5, align 4
  %279 = load i32, i32* @AR_PHY_TIMING5_CYCPWR_THR1, align 4
  %280 = load i32, i32* %11, align 4
  %281 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %277, i32 %278, i32 %279, i32 %280)
  %282 = load i32*, i32** @cycpwrThr1_table, align 8
  %283 = load i64, i64* %15, align 8
  %284 = getelementptr inbounds i32, i32* %282, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load i32*, i32** @cycpwrThr1_table, align 8
  %287 = load i64, i64* @ATH9K_ANI_SPUR_IMMUNE_LVL, align 8
  %288 = getelementptr inbounds i32, i32* %286, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = sub nsw i32 %285, %289
  %291 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %292 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %291, i32 0, i32 7
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = add nsw i32 %290, %294
  store i32 %295, i32* %12, align 4
  %296 = load i32, i32* %12, align 4
  %297 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MIN, align 4
  %298 = icmp slt i32 %296, %297
  br i1 %298, label %299, label %301

299:                                              ; preds = %276
  %300 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MIN, align 4
  store i32 %300, i32* %12, align 4
  br label %301

301:                                              ; preds = %299, %276
  %302 = load i32, i32* %12, align 4
  %303 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MAX, align 4
  %304 = icmp sgt i32 %302, %303
  br i1 %304, label %305, label %307

305:                                              ; preds = %301
  %306 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MAX, align 4
  store i32 %306, i32* %12, align 4
  br label %307

307:                                              ; preds = %305, %301
  %308 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %309 = load i32, i32* @AR_PHY_EXT_CCA, align 4
  %310 = load i32, i32* @AR_PHY_EXT_CYCPWR_THR1, align 4
  %311 = load i32, i32* %12, align 4
  %312 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %308, i32 %309, i32 %310, i32 %311)
  %313 = load i64, i64* %15, align 8
  %314 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %315 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %314, i32 0, i32 2
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %313, %316
  br i1 %317, label %318, label %381

318:                                              ; preds = %307
  %319 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %320 = load i32, i32* @ANI, align 4
  %321 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %322 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = sext i32 %323 to i64
  %325 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %326 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %325, i32 0, i32 2
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* %15, align 8
  %329 = load i64, i64* @ATH9K_ANI_SPUR_IMMUNE_LVL, align 8
  %330 = load i32, i32* %11, align 4
  %331 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %332 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %331, i32 0, i32 7
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %319, i32 %320, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), i64 %324, i64 %327, i64 %328, i64 %329, i32 %330, i32 %334)
  %336 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %337 = load i32, i32* @ANI, align 4
  %338 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %339 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = sext i32 %340 to i64
  %342 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %343 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %342, i32 0, i32 2
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* %15, align 8
  %346 = load i64, i64* @ATH9K_ANI_SPUR_IMMUNE_LVL, align 8
  %347 = load i32, i32* %12, align 4
  %348 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %349 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %348, i32 0, i32 7
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 4
  %352 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %336, i32 %337, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0), i64 %341, i64 %344, i64 %345, i64 %346, i32 %347, i32 %351)
  %353 = load i64, i64* %15, align 8
  %354 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %355 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %354, i32 0, i32 2
  %356 = load i64, i64* %355, align 8
  %357 = icmp ugt i64 %353, %356
  br i1 %357, label %358, label %364

358:                                              ; preds = %318
  %359 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %360 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %361, align 4
  br label %377

364:                                              ; preds = %318
  %365 = load i64, i64* %15, align 8
  %366 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %367 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %366, i32 0, i32 2
  %368 = load i64, i64* %367, align 8
  %369 = icmp ult i64 %365, %368
  br i1 %369, label %370, label %376

370:                                              ; preds = %364
  %371 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %372 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %373, align 4
  br label %376

376:                                              ; preds = %370, %364
  br label %377

377:                                              ; preds = %376, %358
  %378 = load i64, i64* %15, align 8
  %379 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %380 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %379, i32 0, i32 2
  store i64 %378, i64* %380, align 8
  br label %381

381:                                              ; preds = %377, %307
  br label %446

382:                                              ; preds = %3
  %383 = load i32, i32* %7, align 4
  %384 = icmp ne i32 %383, 0
  %385 = zext i1 %384 to i64
  %386 = select i1 %384, i32 1, i32 0
  store i32 %386, i32* %16, align 4
  %387 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %388 = load i32, i32* @AR_PHY_MRC_CCK_CTRL, align 4
  %389 = load i32, i32* @AR_PHY_MRC_CCK_ENABLE, align 4
  %390 = load i32, i32* %16, align 4
  %391 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %387, i32 %388, i32 %389, i32 %390)
  %392 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %393 = load i32, i32* @AR_PHY_MRC_CCK_CTRL, align 4
  %394 = load i32, i32* @AR_PHY_MRC_CCK_MUX_REG, align 4
  %395 = load i32, i32* %16, align 4
  %396 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %392, i32 %393, i32 %394, i32 %395)
  %397 = load i32, i32* %16, align 4
  %398 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %399 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %398, i32 0, i32 3
  %400 = load i32, i32* %399, align 8
  %401 = icmp ne i32 %397, %400
  br i1 %401, label %402, label %438

402:                                              ; preds = %382
  %403 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %404 = load i32, i32* @ANI, align 4
  %405 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %406 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = sext i32 %407 to i64
  %409 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %410 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %409, i32 0, i32 3
  %411 = load i32, i32* %410, align 8
  %412 = icmp ne i32 %411, 0
  %413 = zext i1 %412 to i64
  %414 = select i1 %412, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %415 = load i32, i32* %16, align 4
  %416 = icmp ne i32 %415, 0
  %417 = zext i1 %416 to i64
  %418 = select i1 %416, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %419 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %403, i32 %404, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i64 %408, i8* %414, i8* %418)
  %420 = load i32, i32* %16, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %428

422:                                              ; preds = %402
  %423 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %424 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %425, align 4
  br label %434

428:                                              ; preds = %402
  %429 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %430 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %429, i32 0, i32 1
  %431 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %431, align 4
  br label %434

434:                                              ; preds = %428, %422
  %435 = load i32, i32* %16, align 4
  %436 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %437 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %436, i32 0, i32 3
  store i32 %435, i32* %437, align 8
  br label %438

438:                                              ; preds = %434, %382
  br label %446

439:                                              ; preds = %3
  br label %446

440:                                              ; preds = %3
  %441 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %442 = load i32, i32* @ANI, align 4
  %443 = load i32, i32* %6, align 4
  %444 = zext i32 %443 to i64
  %445 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %441, i32 %442, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i64 %444)
  store i32 0, i32* %4, align 4
  br label %477

446:                                              ; preds = %439, %438, %381, %235, %89
  %447 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %448 = load i32, i32* @ANI, align 4
  %449 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %450 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %449, i32 0, i32 2
  %451 = load i64, i64* %450, align 8
  %452 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %453 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %452, i32 0, i32 0
  %454 = load i64, i64* %453, align 8
  %455 = icmp ne i64 %454, 0
  %456 = zext i1 %455 to i64
  %457 = select i1 %455, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %458 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %459 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %458, i32 0, i32 1
  %460 = load i64, i64* %459, align 8
  %461 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %462 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %461, i32 0, i32 3
  %463 = load i32, i32* %462, align 8
  %464 = icmp ne i32 %463, 0
  %465 = zext i1 %464 to i64
  %466 = select i1 %464, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %467 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %468 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %467, i32 0, i32 6
  %469 = load i32, i32* %468, align 4
  %470 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %471 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %470, i32 0, i32 5
  %472 = load i32, i32* %471, align 8
  %473 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %474 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %473, i32 0, i32 4
  %475 = load i32, i32* %474, align 4
  %476 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %447, i32 %448, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.11, i64 0, i64 0), i64 %451, i8* %457, i64 %460, i8* %466, i32 %469, i32 %472, i32 %475)
  store i32 1, i32* %4, align 4
  br label %477

477:                                              ; preds = %446, %440, %243, %97
  %478 = load i32, i32* %4, align 4
  ret i32 %478
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, ...) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
