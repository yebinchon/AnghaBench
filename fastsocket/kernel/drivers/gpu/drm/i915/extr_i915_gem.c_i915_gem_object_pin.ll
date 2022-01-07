; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_pin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i64, i32, i32, i32, i32, %struct.TYPE_5__, i32*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@DRM_I915_GEM_OBJECT_MAX_PIN_COUNT = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [129 x i8] c"bo is already pinned with incorrect alignment: offset=%x, req.alignment=%x, req.map_and_fenceable=%d, obj->map_and_fenceable=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_object_pin(%struct.drm_i915_gem_object* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %13 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DRM_I915_GEM_OBJECT_MAX_PIN_COUNT, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %126

23:                                               ; preds = %4
  %24 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %25 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %24, i32 0, i32 6
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %68

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %33 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, 1
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %31, %28
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  %43 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %44 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %67, label %47

47:                                               ; preds = %42, %31
  %48 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %49 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %52 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %57 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @WARN(i64 %50, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i32 %55, i32 %58)
  %60 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %61 = call i32 @i915_gem_object_unbind(%struct.drm_i915_gem_object* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %47
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %126

66:                                               ; preds = %47
  br label %67

67:                                               ; preds = %66, %42, %39
  br label %68

68:                                               ; preds = %67, %23
  %69 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %70 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %69, i32 0, i32 6
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %102

73:                                               ; preds = %68
  %74 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %75 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %78, align 8
  store %struct.drm_i915_private* %79, %struct.drm_i915_private** %11, align 8
  %80 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @i915_gem_object_bind_to_gtt(%struct.drm_i915_gem_object* %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %73
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %5, align 4
  br label %126

89:                                               ; preds = %73
  %90 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  %91 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %97 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %98 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @i915_gem_gtt_bind_object(%struct.drm_i915_gem_object* %96, i32 %99)
  br label %101

101:                                              ; preds = %95, %89
  br label %102

102:                                              ; preds = %101, %68
  %103 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %104 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %112 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %113 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @i915_gem_gtt_bind_object(%struct.drm_i915_gem_object* %111, i32 %114)
  br label %116

116:                                              ; preds = %110, %107, %102
  %117 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %118 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %118, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %123 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %116, %87, %64, %20
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @WARN(i64, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @i915_gem_object_unbind(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_bind_to_gtt(%struct.drm_i915_gem_object*, i32, i32, i32) #1

declare dso_local i32 @i915_gem_gtt_bind_object(%struct.drm_i915_gem_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
