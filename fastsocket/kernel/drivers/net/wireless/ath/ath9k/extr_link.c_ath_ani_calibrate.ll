; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_link.c_ath_ani_calibrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_link.c_ath_ani_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, %struct.ath_hw*, i32, i32 }
%struct.ath_hw = type { i64, i64, i64, i32, %struct.TYPE_6__*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.ath_common = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@ATH_LONG_CALINTERVAL_INT = common dso_local global i32 0, align 4
@ATH_LONG_CALINTERVAL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@ATH_AP_SHORT_CALINTERVAL = common dso_local global i32 0, align 4
@ATH_STA_SHORT_CALINTERVAL = common dso_local global i32 0, align 4
@ATH9K_PM_AWAKE = common dso_local global i64 0, align 8
@ATH_ANI_MAX_SKIP_COUNT = common dso_local global i64 0, align 8
@PS_WAIT_FOR_ANI = common dso_local global i32 0, align 4
@ATH_RESTART_CALINTERVAL = common dso_local global i32 0, align 4
@ANI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Calibration @%lu finished: %s %s %s, caldone: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ani\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_ani_calibrate(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %14 = load i64, i64* %2, align 8
  %15 = inttoptr i64 %14 to %struct.ath_softc*
  store %struct.ath_softc* %15, %struct.ath_softc** %3, align 8
  %16 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %16, i32 0, i32 2
  %18 = load %struct.ath_hw*, %struct.ath_hw** %17, align 8
  store %struct.ath_hw* %18, %struct.ath_hw** %4, align 8
  %19 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %20 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %19)
  store %struct.ath_common* %20, %struct.ath_common** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %21 = load i64, i64* @jiffies, align 8
  %22 = call i32 @jiffies_to_msecs(i64 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %29 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %28, i32 0, i32 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @ATH_LONG_CALINTERVAL_INT, align 4
  store i32 %35, i32* %12, align 4
  br label %38

36:                                               ; preds = %27, %1
  %37 = load i32, i32* @ATH_LONG_CALINTERVAL, align 4
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %40 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @ATH_AP_SHORT_CALINTERVAL, align 4
  br label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @ATH_STA_SHORT_CALINTERVAL, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %11, align 4
  %50 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %51 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %50, i32 0, i32 2
  %52 = load %struct.ath_hw*, %struct.ath_hw** %51, align 8
  %53 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ATH9K_PM_AWAKE, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %48
  %58 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %59 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = load i64, i64* @ATH_ANI_MAX_SKIP_COUNT, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %66 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %65, i32 0, i32 3
  %67 = load i64, i64* %13, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load i32, i32* @PS_WAIT_FOR_ANI, align 4
  %70 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %71 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %75 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %74, i32 0, i32 3
  %76 = load i64, i64* %13, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  br label %78

78:                                               ; preds = %64, %57
  br label %254

79:                                               ; preds = %48
  %80 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %81 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %83 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %82, i32 0, i32 3
  %84 = load i64, i64* %13, align 8
  %85 = call i32 @spin_lock_irqsave(i32* %83, i64 %84)
  %86 = load i32, i32* @PS_WAIT_FOR_ANI, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %89 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %93 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %92, i32 0, i32 3
  %94 = load i64, i64* %13, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  %96 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %97 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %96)
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %100 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub i32 %98, %102
  %104 = load i32, i32* %12, align 4
  %105 = icmp uge i32 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %79
  store i32 1, i32* %6, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %109 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  br label %111

111:                                              ; preds = %106, %79
  %112 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %113 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %136, label %117

117:                                              ; preds = %111
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %120 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sub i32 %118, %122
  %124 = load i32, i32* %11, align 4
  %125 = icmp uge i32 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %117
  store i32 1, i32* %7, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %129 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  store i32 %127, i32* %130, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %133 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  store i32 %131, i32* %134, align 8
  br label %135

135:                                              ; preds = %126, %117
  br label %163

136:                                              ; preds = %111
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %139 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = sub i32 %137, %141
  %143 = load i32, i32* @ATH_RESTART_CALINTERVAL, align 4
  %144 = icmp uge i32 %142, %143
  br i1 %144, label %145, label %162

145:                                              ; preds = %136
  %146 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %147 = call i64 @ath9k_hw_reset_calvalid(%struct.ath_hw* %146)
  %148 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %149 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 5
  store i64 %147, i64* %150, align 8
  %151 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %152 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %145
  %157 = load i32, i32* %9, align 4
  %158 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %159 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 2
  store i32 %157, i32* %160, align 8
  br label %161

161:                                              ; preds = %156, %145
  br label %162

162:                                              ; preds = %161, %136
  br label %163

163:                                              ; preds = %162, %135
  %164 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %165 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %164, i32 0, i32 2
  %166 = load %struct.ath_hw*, %struct.ath_hw** %165, align 8
  %167 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %188

171:                                              ; preds = %163
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %174 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = sub i32 %172, %176
  %178 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %179 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp uge i32 %177, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %171
  store i32 1, i32* %8, align 4
  %184 = load i32, i32* %9, align 4
  %185 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %186 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 3
  store i32 %184, i32* %187, align 4
  br label %188

188:                                              ; preds = %183, %171, %163
  %189 = load i32, i32* %8, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %207

191:                                              ; preds = %188
  %192 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %193 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %192, i32 0, i32 1
  %194 = load i64, i64* %13, align 8
  %195 = call i32 @spin_lock_irqsave(i32* %193, i64 %194)
  %196 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %197 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %198 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @ath9k_hw_ani_monitor(%struct.ath_hw* %196, i32 %199)
  %201 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %202 = call i32 @ath_update_survey_stats(%struct.ath_softc* %201)
  %203 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %204 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %203, i32 0, i32 1
  %205 = load i64, i64* %13, align 8
  %206 = call i32 @spin_unlock_irqrestore(i32* %204, i64 %205)
  br label %207

207:                                              ; preds = %191, %188
  %208 = load i32, i32* %6, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %207
  %211 = load i32, i32* %7, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %226

213:                                              ; preds = %210, %207
  %214 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %215 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %216 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %219 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* %6, align 4
  %222 = call i64 @ath9k_hw_calibrate(%struct.ath_hw* %214, i32 %217, i32 %220, i32 %221)
  %223 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %224 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 5
  store i64 %222, i64* %225, align 8
  br label %226

226:                                              ; preds = %213, %210
  %227 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %228 = load i32, i32* @ANI, align 4
  %229 = load i64, i64* @jiffies, align 8
  %230 = load i32, i32* %6, align 4
  %231 = icmp ne i32 %230, 0
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %234 = load i32, i32* %7, align 4
  %235 = icmp ne i32 %234, 0
  %236 = zext i1 %235 to i64
  %237 = select i1 %235, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %238 = load i32, i32* %8, align 4
  %239 = icmp ne i32 %238, 0
  %240 = zext i1 %239 to i64
  %241 = select i1 %239, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %242 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %243 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 5
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  %247 = zext i1 %246 to i64
  %248 = select i1 %246, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %249 = call i32 @ath_dbg(%struct.ath_common* %227, i32 %228, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %229, i8* %233, i8* %237, i8* %241, i8* %248)
  %250 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %251 = call i32 @ath9k_debug_samp_bb_mac(%struct.ath_softc* %250)
  %252 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %253 = call i32 @ath9k_ps_restore(%struct.ath_softc* %252)
  br label %254

254:                                              ; preds = %226, %78
  %255 = load i32, i32* @ATH_LONG_CALINTERVAL, align 4
  store i32 %255, i32* %10, align 4
  %256 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %257 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %256, i32 0, i32 2
  %258 = load %struct.ath_hw*, %struct.ath_hw** %257, align 8
  %259 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %258, i32 0, i32 5
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %254
  %264 = load i32, i32* %10, align 4
  %265 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %266 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %265, i32 0, i32 5
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @min(i32 %264, i32 %268)
  store i32 %269, i32* %10, align 4
  br label %270

270:                                              ; preds = %263, %254
  %271 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %272 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 5
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %280, label %276

276:                                              ; preds = %270
  %277 = load i32, i32* %10, align 4
  %278 = load i32, i32* %11, align 4
  %279 = call i32 @min(i32 %277, i32 %278)
  store i32 %279, i32* %10, align 4
  br label %280

280:                                              ; preds = %276, %270
  %281 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %282 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 4
  %284 = load i64, i64* @jiffies, align 8
  %285 = load i32, i32* %10, align 4
  %286 = call i64 @msecs_to_jiffies(i32 %285)
  %287 = add nsw i64 %284, %286
  %288 = call i32 @mod_timer(i32* %283, i64 %287)
  %289 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %290 = call i64 @ar9003_is_paprd_enabled(%struct.ath_hw* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %325

292:                                              ; preds = %280
  %293 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %294 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %293, i32 0, i32 4
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %294, align 8
  %296 = icmp ne %struct.TYPE_6__* %295, null
  br i1 %296, label %297, label %325

297:                                              ; preds = %292
  %298 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %299 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %298, i32 0, i32 4
  %300 = load %struct.TYPE_6__*, %struct.TYPE_6__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %311, label %304

304:                                              ; preds = %297
  %305 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %306 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %309 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %308, i32 0, i32 0
  %310 = call i32 @ieee80211_queue_work(i32 %307, i32* %309)
  br label %324

311:                                              ; preds = %297
  %312 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %313 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 8
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %323, label %316

316:                                              ; preds = %311
  %317 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %318 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %317)
  %319 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %320 = call i32 @ath_paprd_activate(%struct.ath_softc* %319)
  %321 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %322 = call i32 @ath9k_ps_restore(%struct.ath_softc* %321)
  br label %323

323:                                              ; preds = %316, %311
  br label %324

324:                                              ; preds = %323, %304
  br label %325

325:                                              ; preds = %324, %292, %280
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i64 @ath9k_hw_reset_calvalid(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_ani_monitor(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath_update_survey_stats(%struct.ath_softc*) #1

declare dso_local i64 @ath9k_hw_calibrate(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @ath9k_debug_samp_bb_mac(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @ar9003_is_paprd_enabled(%struct.ath_hw*) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

declare dso_local i32 @ath_paprd_activate(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
