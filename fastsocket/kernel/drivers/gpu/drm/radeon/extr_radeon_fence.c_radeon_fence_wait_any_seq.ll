; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_wait_any_seq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_wait_any_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@RADEON_NUM_RINGS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@RADEON_FENCE_JIFFIES_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"GPU lockup (waiting for 0x%016llx)\0A\00", align 1
@EDEADLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i64*, i32)* @radeon_fence_wait_any_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_fence_wait_any_seq(%struct.radeon_device* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @RADEON_NUM_RINGS, align 4
  store i32 %15, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %56, %3
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %59

20:                                               ; preds = %16
  %21 = load i64*, i64** %6, align 8
  %22 = load i32, i32* %11, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %56

28:                                               ; preds = %20
  %29 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i64 @time_after(i64 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %28
  %41 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %40, %28
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %53, %49
  br label %56

56:                                               ; preds = %55, %27
  %57 = load i32, i32* %11, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %16

59:                                               ; preds = %16
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %282

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %280, %221, %183, %66
  %68 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %69 = load i64*, i64** %6, align 8
  %70 = call i32 @radeon_fence_any_seq_signaled(%struct.radeon_device* %68, i64* %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br i1 %72, label %73, label %281

73:                                               ; preds = %67
  %74 = load i64, i64* @jiffies, align 8
  %75 = load i64, i64* @RADEON_FENCE_JIFFIES_TIMEOUT, align 8
  %76 = sub i64 %74, %75
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i64 @time_after(i64 %77, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %8, align 8
  %84 = sub i64 %82, %83
  store i64 %84, i64* %8, align 8
  br label %86

85:                                               ; preds = %73
  store i64 1, i64* %8, align 8
  br label %86

86:                                               ; preds = %85, %81
  %87 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load i64*, i64** %6, align 8
  %91 = load i32, i32* %12, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @trace_radeon_fence_wait_begin(i32 %89, i64 %94)
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %112, %86
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %96
  %101 = load i64*, i64** %6, align 8
  %102 = load i32, i32* %11, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @radeon_irq_kms_sw_irq_get(%struct.radeon_device* %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %100
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %11, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %96

115:                                              ; preds = %96
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %120 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %123 = load i64*, i64** %6, align 8
  %124 = call i32 @radeon_fence_any_seq_signaled(%struct.radeon_device* %122, i64* %123)
  store i32 %124, i32* %13, align 4
  %125 = load i64, i64* %8, align 8
  %126 = call i32 @wait_event_interruptible_timeout(i32 %121, i32 %124, i64 %125)
  store i32 %126, i32* %14, align 4
  br label %136

127:                                              ; preds = %115
  %128 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %129 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %132 = load i64*, i64** %6, align 8
  %133 = call i32 @radeon_fence_any_seq_signaled(%struct.radeon_device* %131, i64* %132)
  store i32 %133, i32* %13, align 4
  %134 = load i64, i64* %8, align 8
  %135 = call i32 @wait_event_timeout(i32 %130, i32 %133, i64 %134)
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %127, %118
  store i32 0, i32* %11, align 4
  br label %137

137:                                              ; preds = %153, %136
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %141, label %156

141:                                              ; preds = %137
  %142 = load i64*, i64** %6, align 8
  %143 = load i32, i32* %11, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %141
  %149 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @radeon_irq_kms_sw_irq_put(%struct.radeon_device* %149, i32 %150)
  br label %152

152:                                              ; preds = %148, %141
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %11, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %11, align 4
  br label %137

156:                                              ; preds = %137
  %157 = load i32, i32* %14, align 4
  %158 = icmp slt i32 %157, 0
  %159 = zext i1 %158 to i32
  %160 = call i64 @unlikely(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = load i32, i32* %14, align 4
  store i32 %163, i32* %4, align 4
  br label %282

164:                                              ; preds = %156
  %165 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %166 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = load i64*, i64** %6, align 8
  %169 = load i32, i32* %12, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @trace_radeon_fence_wait_end(i32 %167, i64 %172)
  %174 = load i32, i32* %13, align 4
  %175 = icmp ne i32 %174, 0
  %176 = xor i1 %175, true
  %177 = zext i1 %176 to i32
  %178 = call i64 @unlikely(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %280

180:                                              ; preds = %164
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  br label %67

184:                                              ; preds = %180
  %185 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %186 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %185, i32 0, i32 0
  %187 = call i32 @mutex_lock(i32* %186)
  store i32 0, i32* %11, align 4
  store i64 0, i64* %10, align 8
  br label %188

188:                                              ; preds = %214, %184
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %191 = icmp ult i32 %189, %190
  br i1 %191, label %192, label %217

192:                                              ; preds = %188
  %193 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %194 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %193, i32 0, i32 2
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %194, align 8
  %196 = load i32, i32* %11, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* %10, align 8
  %202 = call i64 @time_after(i64 %200, i64 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %192
  %205 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %206 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %205, i32 0, i32 2
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %206, align 8
  %208 = load i32, i32* %11, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %10, align 8
  br label %213

213:                                              ; preds = %204, %192
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %11, align 4
  %216 = add i32 %215, 1
  store i32 %216, i32* %11, align 4
  br label %188

217:                                              ; preds = %188
  %218 = load i64, i64* %9, align 8
  %219 = load i64, i64* %10, align 8
  %220 = icmp ne i64 %218, %219
  br i1 %220, label %221, label %226

221:                                              ; preds = %217
  %222 = load i64, i64* %10, align 8
  store i64 %222, i64* %9, align 8
  %223 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %224 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %223, i32 0, i32 0
  %225 = call i32 @mutex_unlock(i32* %224)
  br label %67

226:                                              ; preds = %217
  %227 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %228 = load i32, i32* %12, align 4
  %229 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %230 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %229, i32 0, i32 1
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %230, align 8
  %232 = load i32, i32* %12, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i64 %233
  %235 = call i64 @radeon_ring_is_lockup(%struct.radeon_device* %227, i32 %228, %struct.TYPE_4__* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %276

237:                                              ; preds = %226
  %238 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %239 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = load i64*, i64** %6, align 8
  %242 = load i32, i32* %12, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds i64, i64* %241, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @dev_warn(i32 %240, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %245)
  store i32 0, i32* %11, align 4
  br label %247

247:                                              ; preds = %260, %237
  %248 = load i32, i32* %11, align 4
  %249 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %250 = icmp ult i32 %248, %249
  br i1 %250, label %251, label %263

251:                                              ; preds = %247
  %252 = load i64, i64* @jiffies, align 8
  %253 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %254 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %253, i32 0, i32 2
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %254, align 8
  %256 = load i32, i32* %11, align 4
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 0
  store i64 %252, i64* %259, align 8
  br label %260

260:                                              ; preds = %251
  %261 = load i32, i32* %11, align 4
  %262 = add i32 %261, 1
  store i32 %262, i32* %11, align 4
  br label %247

263:                                              ; preds = %247
  %264 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %265 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %264, i32 0, i32 1
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %265, align 8
  %267 = load i32, i32* %12, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  store i32 0, i32* %270, align 4
  %271 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %272 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %271, i32 0, i32 0
  %273 = call i32 @mutex_unlock(i32* %272)
  %274 = load i32, i32* @EDEADLK, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %4, align 4
  br label %282

276:                                              ; preds = %226
  %277 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %278 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %277, i32 0, i32 0
  %279 = call i32 @mutex_unlock(i32* %278)
  br label %280

280:                                              ; preds = %276, %164
  br label %67

281:                                              ; preds = %67
  store i32 0, i32* %4, align 4
  br label %282

282:                                              ; preds = %281, %263, %162, %63
  %283 = load i32, i32* %4, align 4
  ret i32 %283
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @radeon_fence_any_seq_signaled(%struct.radeon_device*, i64*) #1

declare dso_local i32 @trace_radeon_fence_wait_begin(i32, i64) #1

declare dso_local i32 @radeon_irq_kms_sw_irq_get(%struct.radeon_device*, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i64) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i32 @radeon_irq_kms_sw_irq_put(%struct.radeon_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @trace_radeon_fence_wait_end(i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @radeon_ring_is_lockup(%struct.radeon_device*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
