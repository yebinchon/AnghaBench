; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_perf_event_fsl_emb.c_fsl_emb_pmu_event_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_perf_event_fsl_emb.c_fsl_emb_pmu_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64*, i32 (i64)*, i32, i64 }
%struct.perf_event = type { i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.perf_event* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i64 }

@MAX_HWEVENTS = common dso_local global i32 0, align 4
@ppmu = common dso_local global %struct.TYPE_6__* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@FSL_EMB_EVENT_VALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FSL_EMB_EVENT_RESTRICTED = common dso_local global i32 0, align 4
@PMLCA_CE = common dso_local global i32 0, align 4
@PMLCA_FCM1 = common dso_local global i32 0, align 4
@PMLCA_EVENT_MASK = common dso_local global i64 0, align 8
@PMLCA_FCU = common dso_local global i32 0, align 4
@PMLCA_FCS = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@num_events = common dso_local global i32 0, align 4
@pmc_reserve_mutex = common dso_local global i32 0, align 4
@perf_event_interrupt = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PMRN_PMGC0 = common dso_local global i32 0, align 4
@PMGC0_FAC = common dso_local global i32 0, align 4
@hw_perf_event_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @fsl_emb_pmu_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_emb_pmu_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %12 = load i32, i32* @MAX_HWEVENTS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca %struct.perf_event*, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %64 [
    i32 130, label %20
    i32 129, label %48
    i32 128, label %59
  ]

20:                                               ; preds = %1
  %21 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %22 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ppmu, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp uge i64 %25, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %20
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ppmu, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30, %20
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %240

41:                                               ; preds = %30
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ppmu, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %4, align 8
  br label %67

48:                                               ; preds = %1
  %49 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %50 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @hw_perf_cache_event(i64 %52, i64* %4)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %240

58:                                               ; preds = %48
  br label %67

59:                                               ; preds = %1
  %60 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %61 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %4, align 8
  br label %67

64:                                               ; preds = %1
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %240

67:                                               ; preds = %59, %58, %41
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ppmu, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32 (i64)*, i32 (i64)** %69, align 8
  %71 = load i64, i64* %4, align 8
  %72 = call i32 %70(i64 %71)
  %73 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %74 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %77 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @FSL_EMB_EVENT_VALID, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %67
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %240

86:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  %87 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %88 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %87, i32 0, i32 3
  %89 = load %struct.perf_event*, %struct.perf_event** %88, align 8
  %90 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %91 = icmp ne %struct.perf_event* %89, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %86
  %93 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %94 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %93, i32 0, i32 3
  %95 = load %struct.perf_event*, %struct.perf_event** %94, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ppmu, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %98, 1
  %100 = call i32 @collect_events(%struct.perf_event* %95, i64 %99, %struct.perf_event** %15)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %92
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %240

106:                                              ; preds = %92
  br label %107

107:                                              ; preds = %106, %86
  %108 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %109 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @FSL_EMB_EVENT_RESTRICTED, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %148

115:                                              ; preds = %107
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %135, %115
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %138

120:                                              ; preds = %116
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %15, i64 %122
  %124 = load %struct.perf_event*, %struct.perf_event** %123, align 8
  %125 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @FSL_EMB_EVENT_RESTRICTED, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %120
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %131, %120
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %116

138:                                              ; preds = %116
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ppmu, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = icmp sge i32 %139, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %240

147:                                              ; preds = %138
  br label %148

148:                                              ; preds = %147, %107
  %149 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %150 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  store i32 -1, i32* %151, align 4
  %152 = load i32, i32* @PMLCA_CE, align 4
  %153 = load i32, i32* @PMLCA_FCM1, align 4
  %154 = or i32 %152, %153
  %155 = load i64, i64* %4, align 8
  %156 = shl i64 %155, 16
  %157 = load i64, i64* @PMLCA_EVENT_MASK, align 8
  %158 = and i64 %156, %157
  %159 = trunc i64 %158 to i32
  %160 = or i32 %154, %159
  %161 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %162 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  store i32 %160, i32* %163, align 4
  %164 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %165 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %148
  %170 = load i32, i32* @PMLCA_FCU, align 4
  %171 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %172 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %170
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %169, %148
  %177 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %178 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %176
  %183 = load i32, i32* @PMLCA_FCS, align 4
  %184 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %185 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %183
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %182, %176
  %190 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %191 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %189
  %196 = load i32, i32* @ENOTSUPP, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %240

198:                                              ; preds = %189
  %199 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %200 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %204 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 3
  store i32 %202, i32* %205, align 4
  %206 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %207 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 4
  %209 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %210 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @local64_set(i32* %208, i32 %212)
  store i32 0, i32* %8, align 4
  %214 = call i32 @atomic_inc_not_zero(i32* @num_events)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %235, label %216

216:                                              ; preds = %198
  %217 = call i32 @mutex_lock(i32* @pmc_reserve_mutex)
  %218 = call i64 @atomic_read(i32* @num_events)
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %216
  %221 = load i32, i32* @perf_event_interrupt, align 4
  %222 = call i64 @reserve_pmc_hardware(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %220
  %225 = load i32, i32* @EBUSY, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %8, align 4
  br label %229

227:                                              ; preds = %220, %216
  %228 = call i32 @atomic_inc(i32* @num_events)
  br label %229

229:                                              ; preds = %227, %224
  %230 = call i32 @mutex_unlock(i32* @pmc_reserve_mutex)
  %231 = load i32, i32* @PMRN_PMGC0, align 4
  %232 = load i32, i32* @PMGC0_FAC, align 4
  %233 = call i32 @mtpmr(i32 %231, i32 %232)
  %234 = call i32 (...) @isync()
  br label %235

235:                                              ; preds = %229, %198
  %236 = load i32, i32* @hw_perf_event_destroy, align 4
  %237 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %238 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %237, i32 0, i32 0
  store i32 %236, i32* %238, align 8
  %239 = load i32, i32* %8, align 4
  store i32 %239, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %240

240:                                              ; preds = %235, %195, %144, %103, %83, %64, %56, %38
  %241 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %241)
  %242 = load i32, i32* %2, align 4
  ret i32 %242
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @hw_perf_cache_event(i64, i64*) #2

declare dso_local i32 @collect_events(%struct.perf_event*, i64, %struct.perf_event**) #2

declare dso_local i32 @local64_set(i32*, i32) #2

declare dso_local i32 @atomic_inc_not_zero(i32*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i64 @atomic_read(i32*) #2

declare dso_local i64 @reserve_pmc_hardware(i32) #2

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @mtpmr(i32, i32) #2

declare dso_local i32 @isync(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
