; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_execbuffer.c_i915_gem_execbuffer_reserve_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_execbuffer.c_i915_gem_execbuffer_reserve_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i64, i32, i32, i64, i32, i32, %struct.TYPE_7__, %struct.drm_i915_gem_exec_object2* }
%struct.TYPE_7__ = type { i8*, i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.drm_i915_gem_exec_object2 = type { i32, i64, i32 }
%struct.intel_ring_buffer = type { i32 }
%struct.TYPE_8__ = type { i32 }

@EXEC_OBJECT_NEEDS_FENCE = common dso_local global i32 0, align 4
@I915_TILING_NONE = common dso_local global i64 0, align 8
@__EXEC_OBJECT_HAS_PIN = common dso_local global i32 0, align 4
@__EXEC_OBJECT_HAS_FENCE = common dso_local global i32 0, align 4
@EXEC_OBJECT_WRITE = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_RENDER = common dso_local global i8* null, align 8
@EXEC_OBJECT_NEEDS_GTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_gem_object*, %struct.intel_ring_buffer*, i32*)* @i915_gem_execbuffer_reserve_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_gem_execbuffer_reserve_object(%struct.drm_i915_gem_object* %0, %struct.intel_ring_buffer* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca %struct.intel_ring_buffer*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.drm_i915_gem_exec_object2*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %5, align 8
  store %struct.intel_ring_buffer* %1, %struct.intel_ring_buffer** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %15 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %18, align 8
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %8, align 8
  %20 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %21 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %20, i32 0, i32 7
  %22 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %21, align 8
  store %struct.drm_i915_gem_exec_object2* %22, %struct.drm_i915_gem_exec_object2** %9, align 8
  %23 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %6, align 8
  %24 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_8__* @INTEL_INFO(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 4
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %3
  %34 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %9, align 8
  %35 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @EXEC_OBJECT_NEEDS_FENCE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %42 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @I915_TILING_NONE, align 8
  %45 = icmp ne i64 %43, %44
  br label %46

46:                                               ; preds = %40, %33, %3
  %47 = phi i1 [ false, %33 ], [ false, %3 ], [ %45, %40 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %53 = call i64 @need_reloc_mappable(%struct.drm_i915_gem_object* %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %51, %46
  %56 = phi i1 [ true, %46 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %12, align 4
  %58 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %59 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %9, align 8
  %60 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @i915_gem_object_pin(%struct.drm_i915_gem_object* %58, i32 %61, i32 %62, i32 0)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %4, align 4
  br label %177

68:                                               ; preds = %55
  %69 = load i32, i32* @__EXEC_OBJECT_HAS_PIN, align 4
  %70 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %9, align 8
  %71 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %104

76:                                               ; preds = %68
  %77 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %9, align 8
  %78 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @EXEC_OBJECT_NEEDS_FENCE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %76
  %84 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %85 = call i32 @i915_gem_object_get_fence(%struct.drm_i915_gem_object* %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %4, align 4
  br label %177

90:                                               ; preds = %83
  %91 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %92 = call i64 @i915_gem_object_pin_fence(%struct.drm_i915_gem_object* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i32, i32* @__EXEC_OBJECT_HAS_FENCE, align 4
  %96 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %9, align 8
  %97 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %94, %90
  %101 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %102 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %101, i32 0, i32 1
  store i32 1, i32* %102, align 8
  br label %103

103:                                              ; preds = %100, %76
  br label %104

104:                                              ; preds = %103, %68
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %106 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %104
  %111 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %112 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %127, label %115

115:                                              ; preds = %110
  %116 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %117 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %121 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %122 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @i915_ppgtt_bind_object(i64 %119, %struct.drm_i915_gem_object* %120, i32 %123)
  %125 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %126 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %125, i32 0, i32 2
  store i32 1, i32* %126, align 4
  br label %127

127:                                              ; preds = %115, %110, %104
  %128 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %9, align 8
  %129 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %132 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %130, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %127
  %136 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %137 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %9, align 8
  %140 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  %141 = load i32*, i32** %7, align 8
  store i32 1, i32* %141, align 4
  br label %142

142:                                              ; preds = %135, %127
  %143 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %9, align 8
  %144 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @EXEC_OBJECT_WRITE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %142
  %150 = load i8*, i8** @I915_GEM_DOMAIN_RENDER, align 8
  %151 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %152 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %151, i32 0, i32 6
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  store i8* %150, i8** %153, align 8
  %154 = load i8*, i8** @I915_GEM_DOMAIN_RENDER, align 8
  %155 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %156 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %155, i32 0, i32 6
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  store i8* %154, i8** %157, align 8
  br label %158

158:                                              ; preds = %149, %142
  %159 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %9, align 8
  %160 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @EXEC_OBJECT_NEEDS_GTT, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %158
  %166 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %167 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %165
  %171 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %172 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %173 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @i915_gem_gtt_bind_object(%struct.drm_i915_gem_object* %171, i32 %174)
  br label %176

176:                                              ; preds = %170, %165, %158
  store i32 0, i32* %4, align 4
  br label %177

177:                                              ; preds = %176, %88, %66
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local %struct.TYPE_8__* @INTEL_INFO(i32) #1

declare dso_local i64 @need_reloc_mappable(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_pin(%struct.drm_i915_gem_object*, i32, i32, i32) #1

declare dso_local i32 @i915_gem_object_get_fence(%struct.drm_i915_gem_object*) #1

declare dso_local i64 @i915_gem_object_pin_fence(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_ppgtt_bind_object(i64, %struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_gtt_bind_object(%struct.drm_i915_gem_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
