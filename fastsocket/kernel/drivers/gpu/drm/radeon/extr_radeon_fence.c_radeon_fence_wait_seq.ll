; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_wait_seq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_wait_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@RADEON_FENCE_JIFFIES_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"GPU lockup (waiting for 0x%016llx last fence id 0x%016llx)\0A\00", align 1
@RADEON_NUM_RINGS = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i64, i32, i32, i32)* @radeon_fence_wait_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_fence_wait_seq(%struct.radeon_device* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  br label %18

18:                                               ; preds = %240, %180, %154, %142, %5
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = call i64 @atomic64_read(i32* %26)
  %28 = icmp sgt i64 %19, %27
  br i1 %28, label %29, label %241

29:                                               ; preds = %18
  %30 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %242

42:                                               ; preds = %29
  %43 = load i64, i64* @jiffies, align 8
  %44 = load i64, i64* @RADEON_FENCE_JIFFIES_TIMEOUT, align 8
  %45 = sub i64 %43, %44
  store i64 %45, i64* %12, align 8
  %46 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %12, align 8
  %55 = call i64 @time_after(i64 %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %42
  %58 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 2
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %12, align 8
  %67 = sub i64 %65, %66
  store i64 %67, i64* %12, align 8
  br label %69

68:                                               ; preds = %42
  store i64 1, i64* %12, align 8
  br label %69

69:                                               ; preds = %68, %57
  %70 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = call i64 @atomic64_read(i32* %76)
  store i64 %77, i64* %14, align 8
  %78 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 2
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %13, align 8
  %86 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load i64, i64* %14, align 8
  %90 = call i32 @trace_radeon_fence_wait_begin(i32 %88, i64 %89)
  %91 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @radeon_irq_kms_sw_irq_get(%struct.radeon_device* %91, i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %69
  %97 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @radeon_fence_seq_signaled(%struct.radeon_device* %100, i64 %101, i32 %102)
  store i32 %103, i32* %16, align 4
  %104 = load i64, i64* %12, align 8
  %105 = call i32 @wait_event_interruptible_timeout(i32 %99, i32 %103, i64 %104)
  store i32 %105, i32* %17, align 4
  br label %116

106:                                              ; preds = %69
  %107 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %108 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %111 = load i64, i64* %8, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @radeon_fence_seq_signaled(%struct.radeon_device* %110, i64 %111, i32 %112)
  store i32 %113, i32* %16, align 4
  %114 = load i64, i64* %12, align 8
  %115 = call i32 @wait_event_timeout(i32 %109, i32 %113, i64 %114)
  store i32 %115, i32* %17, align 4
  br label %116

116:                                              ; preds = %106, %96
  %117 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @radeon_irq_kms_sw_irq_put(%struct.radeon_device* %117, i32 %118)
  %120 = load i32, i32* %17, align 4
  %121 = icmp slt i32 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %116
  %126 = load i32, i32* %17, align 4
  store i32 %126, i32* %6, align 4
  br label %242

127:                                              ; preds = %116
  %128 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %129 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load i64, i64* %14, align 8
  %132 = call i32 @trace_radeon_fence_wait_end(i32 %130, i64 %131)
  %133 = load i32, i32* %16, align 4
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = call i64 @unlikely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %240

139:                                              ; preds = %127
  %140 = load i32, i32* %17, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  br label %18

143:                                              ; preds = %139
  %144 = load i64, i64* %14, align 8
  %145 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %146 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %145, i32 0, i32 2
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = call i64 @atomic64_read(i32* %151)
  %153 = icmp ne i64 %144, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %143
  br label %18

155:                                              ; preds = %143
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %160 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %159, i32 0, i32 0
  %161 = call i32 @mutex_lock(i32* %160)
  br label %162

162:                                              ; preds = %158, %155
  %163 = load i64, i64* %13, align 8
  %164 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %165 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %164, i32 0, i32 2
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %163, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %162
  %174 = load i32, i32* %11, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %178 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %177, i32 0, i32 0
  %179 = call i32 @mutex_unlock(i32* %178)
  br label %180

180:                                              ; preds = %176, %173
  br label %18

181:                                              ; preds = %162
  %182 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %183 = load i32, i32* %9, align 4
  %184 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %185 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %184, i32 0, i32 1
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i64 %188
  %190 = call i64 @radeon_ring_is_lockup(%struct.radeon_device* %182, i32 %183, %struct.TYPE_4__* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %232

192:                                              ; preds = %181
  %193 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %194 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = load i64, i64* %8, align 8
  %197 = load i64, i64* %14, align 8
  %198 = call i32 @dev_warn(i32 %195, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %196, i64 %197)
  store i32 0, i32* %15, align 4
  br label %199

199:                                              ; preds = %212, %192
  %200 = load i32, i32* %15, align 4
  %201 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %202 = icmp ult i32 %200, %201
  br i1 %202, label %203, label %215

203:                                              ; preds = %199
  %204 = load i64, i64* @jiffies, align 8
  %205 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %206 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %205, i32 0, i32 2
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %206, align 8
  %208 = load i32, i32* %15, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  store i64 %204, i64* %211, align 8
  br label %212

212:                                              ; preds = %203
  %213 = load i32, i32* %15, align 4
  %214 = add i32 %213, 1
  store i32 %214, i32* %15, align 4
  br label %199

215:                                              ; preds = %199
  %216 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %217 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %216, i32 0, i32 1
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %217, align 8
  %219 = load i32, i32* %9, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  store i32 0, i32* %222, align 4
  %223 = load i32, i32* %11, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %215
  %226 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %227 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %226, i32 0, i32 0
  %228 = call i32 @mutex_unlock(i32* %227)
  br label %229

229:                                              ; preds = %225, %215
  %230 = load i32, i32* @EDEADLK, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %6, align 4
  br label %242

232:                                              ; preds = %181
  %233 = load i32, i32* %11, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %232
  %236 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %237 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %236, i32 0, i32 0
  %238 = call i32 @mutex_unlock(i32* %237)
  br label %239

239:                                              ; preds = %235, %232
  br label %240

240:                                              ; preds = %239, %127
  br label %18

241:                                              ; preds = %18
  store i32 0, i32* %6, align 4
  br label %242

242:                                              ; preds = %241, %229, %125, %39
  %243 = load i32, i32* %6, align 4
  ret i32 %243
}

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @trace_radeon_fence_wait_begin(i32, i64) #1

declare dso_local i32 @radeon_irq_kms_sw_irq_get(%struct.radeon_device*, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i64) #1

declare dso_local i32 @radeon_fence_seq_signaled(%struct.radeon_device*, i64, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i32 @radeon_irq_kms_sw_irq_put(%struct.radeon_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @trace_radeon_fence_wait_end(i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @radeon_ring_is_lockup(%struct.radeon_device*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
