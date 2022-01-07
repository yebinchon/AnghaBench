; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_unbind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32, i64, i32*, i32, i32, i64, i64, i32*, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_object_unbind(%struct.drm_i915_gem_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %3, align 8
  %6 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %7 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %4, align 8
  %12 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %13 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %93

17:                                               ; preds = %1
  %18 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %19 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %18, i32 0, i32 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %93

25:                                               ; preds = %17
  %26 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %27 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %26, i32 0, i32 7
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %33 = call i32 @i915_gem_object_finish_gpu(%struct.drm_i915_gem_object* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %93

38:                                               ; preds = %25
  %39 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %40 = call i32 @i915_gem_object_finish_gtt(%struct.drm_i915_gem_object* %39)
  %41 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %42 = call i32 @i915_gem_object_put_fence(%struct.drm_i915_gem_object* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %93

47:                                               ; preds = %38
  %48 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %49 = call i32 @trace_i915_gem_object_unbind(%struct.drm_i915_gem_object* %48)
  %50 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %51 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %56 = call i32 @i915_gem_gtt_unbind_object(%struct.drm_i915_gem_object* %55)
  br label %57

57:                                               ; preds = %54, %47
  %58 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %59 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %68 = call i32 @i915_ppgtt_unbind_object(i32 %66, %struct.drm_i915_gem_object* %67)
  %69 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %70 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %69, i32 0, i32 5
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %62, %57
  %72 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %73 = call i32 @i915_gem_gtt_finish_object(%struct.drm_i915_gem_object* %72)
  %74 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %75 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %74, i32 0, i32 4
  %76 = call i32 @list_del(i32* %75)
  %77 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %78 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %77, i32 0, i32 3
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = call i32 @list_move_tail(i32* %78, i32* %81)
  %83 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %84 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %86 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @drm_mm_put_block(i32* %87)
  %89 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %90 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %89, i32 0, i32 2
  store i32* null, i32** %90, align 8
  %91 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %92 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %71, %45, %36, %22, %16
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @i915_gem_object_finish_gpu(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_finish_gtt(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_put_fence(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @trace_i915_gem_object_unbind(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_gtt_unbind_object(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_ppgtt_unbind_object(i32, %struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_gtt_finish_object(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @drm_mm_put_block(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
