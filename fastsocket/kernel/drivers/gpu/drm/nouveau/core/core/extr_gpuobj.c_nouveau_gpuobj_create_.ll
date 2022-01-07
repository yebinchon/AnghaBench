; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_gpuobj.c_nouveau_gpuobj_create_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_gpuobj.c_nouveau_gpuobj_create_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_oclass = type { i32 }
%struct.nouveau_object = type { i32, %struct.nouveau_object* }
%struct.nouveau_instmem = type { i32 (%struct.nouveau_instmem*, %struct.nouveau_object*, i32, i32, %struct.nouveau_object**)* }
%struct.nouveau_bar = type { i32 (%struct.nouveau_bar*, %struct.nouveau_object*, %struct.nouveau_mem*, %struct.nouveau_object**)* }
%struct.nouveau_mem = type { i32 }
%struct.nouveau_gpuobj = type { i32, i32, i32, %struct.TYPE_6__*, i32, %struct.nouveau_object* }
%struct.TYPE_6__ = type { i64 }
%struct.nouveau_mm = type { i64 }
%struct.nouveau_instobj = type { i32 }
%struct.TYPE_5__ = type { %struct.nouveau_mm, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@NV_GPUOBJ_CLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"no gpuobj heap\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NVOBJ_FLAG_HEAP = common dso_local global i32 0, align 4
@NVOBJ_FLAG_ZERO_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_gpuobj_create_(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i32 %3, %struct.nouveau_object* %4, i32 %5, i32 %6, i32 %7, i32 %8, i8** %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.nouveau_object*, align 8
  %13 = alloca %struct.nouveau_object*, align 8
  %14 = alloca %struct.nouveau_oclass*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.nouveau_object*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8**, align 8
  %22 = alloca %struct.nouveau_instmem*, align 8
  %23 = alloca %struct.nouveau_bar*, align 8
  %24 = alloca %struct.nouveau_gpuobj*, align 8
  %25 = alloca %struct.nouveau_mm*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.nouveau_instobj*, align 8
  %30 = alloca %struct.nouveau_mem**, align 8
  %31 = alloca %struct.nouveau_mem*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %12, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %13, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %14, align 8
  store i32 %3, i32* %15, align 4
  store %struct.nouveau_object* %4, %struct.nouveau_object** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i8** %9, i8*** %21, align 8
  %32 = load %struct.nouveau_object*, %struct.nouveau_object** %12, align 8
  %33 = call %struct.nouveau_instmem* @nouveau_instmem(%struct.nouveau_object* %32)
  store %struct.nouveau_instmem* %33, %struct.nouveau_instmem** %22, align 8
  %34 = load %struct.nouveau_object*, %struct.nouveau_object** %12, align 8
  %35 = call %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_object* %34)
  store %struct.nouveau_bar* %35, %struct.nouveau_bar** %23, align 8
  store %struct.nouveau_mm* null, %struct.nouveau_mm** %25, align 8
  %36 = load i8**, i8*** %21, align 8
  store i8* null, i8** %36, align 8
  %37 = load %struct.nouveau_object*, %struct.nouveau_object** %16, align 8
  %38 = icmp ne %struct.nouveau_object* %37, null
  br i1 %38, label %39, label %79

39:                                               ; preds = %10
  br label %40

40:                                               ; preds = %53, %39
  %41 = load %struct.nouveau_object*, %struct.nouveau_object** %16, align 8
  %42 = load i32, i32* @NV_GPUOBJ_CLASS, align 4
  %43 = call %struct.nouveau_object* @nv_pclass(%struct.nouveau_object* %41, i32 %42)
  store %struct.nouveau_object* %43, %struct.nouveau_object** %16, align 8
  %44 = icmp ne %struct.nouveau_object* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load %struct.nouveau_object*, %struct.nouveau_object** %16, align 8
  %47 = call %struct.TYPE_5__* @nv_gpuobj(%struct.nouveau_object* %46)
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.nouveau_mm, %struct.nouveau_mm* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %57

53:                                               ; preds = %45
  %54 = load %struct.nouveau_object*, %struct.nouveau_object** %16, align 8
  %55 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %54, i32 0, i32 1
  %56 = load %struct.nouveau_object*, %struct.nouveau_object** %55, align 8
  store %struct.nouveau_object* %56, %struct.nouveau_object** %16, align 8
  br label %40

57:                                               ; preds = %52, %40
  %58 = load %struct.nouveau_object*, %struct.nouveau_object** %16, align 8
  %59 = icmp eq %struct.nouveau_object* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.nouveau_object*, %struct.nouveau_object** %12, align 8
  %65 = call i32 @nv_error(%struct.nouveau_object* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %11, align 4
  br label %231

68:                                               ; preds = %57
  %69 = load %struct.nouveau_object*, %struct.nouveau_object** %16, align 8
  %70 = call %struct.TYPE_5__* @nv_gpuobj(%struct.nouveau_object* %69)
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %28, align 4
  %73 = load %struct.nouveau_object*, %struct.nouveau_object** %16, align 8
  %74 = call %struct.TYPE_5__* @nv_gpuobj(%struct.nouveau_object* %73)
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store %struct.nouveau_mm* %75, %struct.nouveau_mm** %25, align 8
  %76 = load %struct.nouveau_object*, %struct.nouveau_object** %12, align 8
  %77 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %76, i32 0, i32 0
  %78 = call i32 @atomic_inc(i32* %77)
  br label %132

79:                                               ; preds = %10
  %80 = load %struct.nouveau_instmem*, %struct.nouveau_instmem** %22, align 8
  %81 = getelementptr inbounds %struct.nouveau_instmem, %struct.nouveau_instmem* %80, i32 0, i32 0
  %82 = load i32 (%struct.nouveau_instmem*, %struct.nouveau_object*, i32, i32, %struct.nouveau_object**)*, i32 (%struct.nouveau_instmem*, %struct.nouveau_object*, i32, i32, %struct.nouveau_object**)** %81, align 8
  %83 = load %struct.nouveau_instmem*, %struct.nouveau_instmem** %22, align 8
  %84 = load %struct.nouveau_object*, %struct.nouveau_object** %12, align 8
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %18, align 4
  %87 = call i32 %82(%struct.nouveau_instmem* %83, %struct.nouveau_object* %84, i32 %85, i32 %86, %struct.nouveau_object** %12)
  store i32 %87, i32* %26, align 4
  %88 = load %struct.nouveau_object*, %struct.nouveau_object** %12, align 8
  store %struct.nouveau_object* %88, %struct.nouveau_object** %16, align 8
  %89 = load i32, i32* %26, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %79
  %92 = load i32, i32* %26, align 4
  store i32 %92, i32* %11, align 4
  br label %231

93:                                               ; preds = %79
  %94 = load %struct.nouveau_object*, %struct.nouveau_object** %16, align 8
  %95 = call %struct.TYPE_4__* @nv_memobj(%struct.nouveau_object* %94)
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %28, align 4
  %98 = load %struct.nouveau_object*, %struct.nouveau_object** %16, align 8
  %99 = call %struct.TYPE_4__* @nv_memobj(%struct.nouveau_object* %98)
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %17, align 4
  %102 = load %struct.nouveau_bar*, %struct.nouveau_bar** %23, align 8
  %103 = icmp ne %struct.nouveau_bar* %102, null
  br i1 %103, label %104, label %131

104:                                              ; preds = %93
  %105 = load %struct.nouveau_bar*, %struct.nouveau_bar** %23, align 8
  %106 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %105, i32 0, i32 0
  %107 = load i32 (%struct.nouveau_bar*, %struct.nouveau_object*, %struct.nouveau_mem*, %struct.nouveau_object**)*, i32 (%struct.nouveau_bar*, %struct.nouveau_object*, %struct.nouveau_mem*, %struct.nouveau_object**)** %106, align 8
  %108 = icmp ne i32 (%struct.nouveau_bar*, %struct.nouveau_object*, %struct.nouveau_mem*, %struct.nouveau_object**)* %107, null
  br i1 %108, label %109, label %131

109:                                              ; preds = %104
  %110 = load %struct.nouveau_object*, %struct.nouveau_object** %12, align 8
  %111 = bitcast %struct.nouveau_object* %110 to i8*
  %112 = bitcast i8* %111 to %struct.nouveau_instobj*
  store %struct.nouveau_instobj* %112, %struct.nouveau_instobj** %29, align 8
  %113 = load %struct.nouveau_instobj*, %struct.nouveau_instobj** %29, align 8
  %114 = getelementptr inbounds %struct.nouveau_instobj, %struct.nouveau_instobj* %113, i64 1
  %115 = bitcast %struct.nouveau_instobj* %114 to i8*
  %116 = bitcast i8* %115 to %struct.nouveau_mem**
  store %struct.nouveau_mem** %116, %struct.nouveau_mem*** %30, align 8
  %117 = load %struct.nouveau_mem**, %struct.nouveau_mem*** %30, align 8
  %118 = load %struct.nouveau_mem*, %struct.nouveau_mem** %117, align 8
  store %struct.nouveau_mem* %118, %struct.nouveau_mem** %31, align 8
  %119 = load %struct.nouveau_bar*, %struct.nouveau_bar** %23, align 8
  %120 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %119, i32 0, i32 0
  %121 = load i32 (%struct.nouveau_bar*, %struct.nouveau_object*, %struct.nouveau_mem*, %struct.nouveau_object**)*, i32 (%struct.nouveau_bar*, %struct.nouveau_object*, %struct.nouveau_mem*, %struct.nouveau_object**)** %120, align 8
  %122 = load %struct.nouveau_bar*, %struct.nouveau_bar** %23, align 8
  %123 = load %struct.nouveau_object*, %struct.nouveau_object** %12, align 8
  %124 = load %struct.nouveau_mem*, %struct.nouveau_mem** %31, align 8
  %125 = call i32 %121(%struct.nouveau_bar* %122, %struct.nouveau_object* %123, %struct.nouveau_mem* %124, %struct.nouveau_object** %16)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %109
  %128 = call i32 @nouveau_object_ref(i32* null, %struct.nouveau_object** %12)
  %129 = load %struct.nouveau_object*, %struct.nouveau_object** %16, align 8
  store %struct.nouveau_object* %129, %struct.nouveau_object** %12, align 8
  br label %130

130:                                              ; preds = %127, %109
  br label %131

131:                                              ; preds = %130, %104, %93
  br label %132

132:                                              ; preds = %131, %68
  %133 = load %struct.nouveau_object*, %struct.nouveau_object** %12, align 8
  %134 = load %struct.nouveau_object*, %struct.nouveau_object** %13, align 8
  %135 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %14, align 8
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* @NV_GPUOBJ_CLASS, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* %20, align 4
  %140 = load i8**, i8*** %21, align 8
  %141 = call i32 @nouveau_object_create_(%struct.nouveau_object* %133, %struct.nouveau_object* %134, %struct.nouveau_oclass* %135, i32 %138, i32 %139, i8** %140)
  store i32 %141, i32* %26, align 4
  %142 = call i32 @nouveau_object_ref(i32* null, %struct.nouveau_object** %12)
  %143 = load i8**, i8*** %21, align 8
  %144 = load i8*, i8** %143, align 8
  %145 = bitcast i8* %144 to %struct.nouveau_gpuobj*
  store %struct.nouveau_gpuobj* %145, %struct.nouveau_gpuobj** %24, align 8
  %146 = load i32, i32* %26, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %132
  %149 = load i32, i32* %26, align 4
  store i32 %149, i32* %11, align 4
  br label %231

150:                                              ; preds = %132
  %151 = load %struct.nouveau_object*, %struct.nouveau_object** %16, align 8
  %152 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %24, align 8
  %153 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %152, i32 0, i32 5
  store %struct.nouveau_object* %151, %struct.nouveau_object** %153, align 8
  %154 = load i32, i32* %19, align 4
  %155 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %24, align 8
  %156 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* %28, align 4
  %158 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %24, align 8
  %159 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* %17, align 4
  %161 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %24, align 8
  %162 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load %struct.nouveau_mm*, %struct.nouveau_mm** %25, align 8
  %164 = icmp ne %struct.nouveau_mm* %163, null
  br i1 %164, label %165, label %190

165:                                              ; preds = %150
  %166 = load %struct.nouveau_mm*, %struct.nouveau_mm** %25, align 8
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* %17, align 4
  %169 = load i32, i32* %18, align 4
  %170 = call i32 @max(i32 %169, i32 1)
  %171 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %24, align 8
  %172 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %171, i32 0, i32 3
  %173 = call i32 @nouveau_mm_head(%struct.nouveau_mm* %166, i32 1, i32 %167, i32 %168, i32 %170, %struct.TYPE_6__** %172)
  store i32 %173, i32* %26, align 4
  %174 = load i32, i32* %26, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %165
  %177 = load i32, i32* %26, align 4
  store i32 %177, i32* %11, align 4
  br label %231

178:                                              ; preds = %165
  %179 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %24, align 8
  %180 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %179, i32 0, i32 3
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %24, align 8
  %185 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %187, %183
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %185, align 8
  br label %190

190:                                              ; preds = %178, %150
  %191 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %24, align 8
  %192 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @NVOBJ_FLAG_HEAP, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %209

197:                                              ; preds = %190
  %198 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %24, align 8
  %199 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %198, i32 0, i32 2
  %200 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %24, align 8
  %201 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @nouveau_mm_init(i32* %199, i32 0, i32 %202, i32 1)
  store i32 %203, i32* %26, align 4
  %204 = load i32, i32* %26, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %197
  %207 = load i32, i32* %26, align 4
  store i32 %207, i32* %11, align 4
  br label %231

208:                                              ; preds = %197
  br label %209

209:                                              ; preds = %208, %190
  %210 = load i32, i32* %19, align 4
  %211 = load i32, i32* @NVOBJ_FLAG_ZERO_ALLOC, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %229

214:                                              ; preds = %209
  store i32 0, i32* %27, align 4
  br label %215

215:                                              ; preds = %225, %214
  %216 = load i32, i32* %27, align 4
  %217 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %24, align 8
  %218 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp slt i32 %216, %219
  br i1 %220, label %221, label %228

221:                                              ; preds = %215
  %222 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %24, align 8
  %223 = load i32, i32* %27, align 4
  %224 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %222, i32 %223, i32 0)
  br label %225

225:                                              ; preds = %221
  %226 = load i32, i32* %27, align 4
  %227 = add nsw i32 %226, 4
  store i32 %227, i32* %27, align 4
  br label %215

228:                                              ; preds = %215
  br label %229

229:                                              ; preds = %228, %209
  %230 = load i32, i32* %26, align 4
  store i32 %230, i32* %11, align 4
  br label %231

231:                                              ; preds = %229, %206, %176, %148, %91, %63
  %232 = load i32, i32* %11, align 4
  ret i32 %232
}

declare dso_local %struct.nouveau_instmem* @nouveau_instmem(%struct.nouveau_object*) #1

declare dso_local %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_object*) #1

declare dso_local %struct.nouveau_object* @nv_pclass(%struct.nouveau_object*, i32) #1

declare dso_local %struct.TYPE_5__* @nv_gpuobj(%struct.nouveau_object*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nv_error(%struct.nouveau_object*, i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.TYPE_4__* @nv_memobj(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_object_ref(i32*, %struct.nouveau_object**) #1

declare dso_local i32 @nouveau_object_create_(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, i8**) #1

declare dso_local i32 @nouveau_mm_head(%struct.nouveau_mm*, i32, i32, i32, i32, %struct.TYPE_6__**) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @nouveau_mm_init(i32*, i32, i32, i32) #1

declare dso_local i32 @nv_wo32(%struct.nouveau_gpuobj*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
