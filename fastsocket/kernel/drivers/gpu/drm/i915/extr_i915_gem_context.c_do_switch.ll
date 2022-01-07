; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_context.c_do_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_context.c_do_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_hw_context = type { i32, %struct.drm_i915_gem_object*, %struct.intel_ring_buffer* }
%struct.drm_i915_gem_object = type { i64, i32, %struct.TYPE_3__, %struct.intel_ring_buffer*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.intel_ring_buffer = type { %struct.drm_i915_gem_object* }

@CONTEXT_ALIGN = common dso_local global i32 0, align 4
@MI_RESTORE_INHIBIT = common dso_local global i32 0, align 4
@MI_FORCE_RESTORE = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_INSTRUCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_hw_context*)* @do_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_switch(%struct.i915_hw_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_hw_context*, align 8
  %4 = alloca %struct.intel_ring_buffer*, align 8
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i915_hw_context* %0, %struct.i915_hw_context** %3, align 8
  %8 = load %struct.i915_hw_context*, %struct.i915_hw_context** %3, align 8
  %9 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %8, i32 0, i32 2
  %10 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %9, align 8
  store %struct.intel_ring_buffer* %10, %struct.intel_ring_buffer** %4, align 8
  %11 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %12, align 8
  store %struct.drm_i915_gem_object* %13, %struct.drm_i915_gem_object** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %15 = icmp ne %struct.drm_i915_gem_object* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %18 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br label %21

21:                                               ; preds = %16, %1
  %22 = phi i1 [ false, %1 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %26 = load %struct.i915_hw_context*, %struct.i915_hw_context** %3, align 8
  %27 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %26, i32 0, i32 1
  %28 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %27, align 8
  %29 = icmp eq %struct.drm_i915_gem_object* %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %149

31:                                               ; preds = %21
  %32 = load %struct.i915_hw_context*, %struct.i915_hw_context** %3, align 8
  %33 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %32, i32 0, i32 1
  %34 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %33, align 8
  %35 = load i32, i32* @CONTEXT_ALIGN, align 4
  %36 = call i32 @i915_gem_object_pin(%struct.drm_i915_gem_object* %34, i32 %35, i32 0, i32 0)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %149

41:                                               ; preds = %31
  %42 = load %struct.i915_hw_context*, %struct.i915_hw_context** %3, align 8
  %43 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %42, i32 0, i32 1
  %44 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %43, align 8
  %45 = call i32 @i915_gem_object_set_to_gtt_domain(%struct.drm_i915_gem_object* %44, i32 0)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.i915_hw_context*, %struct.i915_hw_context** %3, align 8
  %50 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %49, i32 0, i32 1
  %51 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %50, align 8
  %52 = call i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object* %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %149

54:                                               ; preds = %41
  %55 = load %struct.i915_hw_context*, %struct.i915_hw_context** %3, align 8
  %56 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %55, i32 0, i32 1
  %57 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %56, align 8
  %58 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %54
  %62 = load %struct.i915_hw_context*, %struct.i915_hw_context** %3, align 8
  %63 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %62, i32 0, i32 1
  %64 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %63, align 8
  %65 = load %struct.i915_hw_context*, %struct.i915_hw_context** %3, align 8
  %66 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %65, i32 0, i32 1
  %67 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %66, align 8
  %68 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @i915_gem_gtt_bind_object(%struct.drm_i915_gem_object* %64, i32 %69)
  br label %71

71:                                               ; preds = %61, %54
  %72 = load %struct.i915_hw_context*, %struct.i915_hw_context** %3, align 8
  %73 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.i915_hw_context*, %struct.i915_hw_context** %3, align 8
  %78 = call i64 @is_default_context(%struct.i915_hw_context* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76, %71
  %81 = load i32, i32* @MI_RESTORE_INHIBIT, align 4
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  br label %98

84:                                               ; preds = %76
  %85 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %86 = load %struct.i915_hw_context*, %struct.i915_hw_context** %3, align 8
  %87 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %86, i32 0, i32 1
  %88 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %87, align 8
  %89 = icmp eq %struct.drm_i915_gem_object* %85, %88
  %90 = zext i1 %89 to i32
  %91 = call i64 @WARN_ON_ONCE(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = load i32, i32* @MI_FORCE_RESTORE, align 4
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %93, %84
  br label %98

98:                                               ; preds = %97, %80
  %99 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %100 = load %struct.i915_hw_context*, %struct.i915_hw_context** %3, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @mi_set_context(%struct.intel_ring_buffer* %99, %struct.i915_hw_context* %100, i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load %struct.i915_hw_context*, %struct.i915_hw_context** %3, align 8
  %107 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %106, i32 0, i32 1
  %108 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %107, align 8
  %109 = call i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object* %108)
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %2, align 4
  br label %149

111:                                              ; preds = %98
  %112 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %113 = icmp ne %struct.drm_i915_gem_object* %112, null
  br i1 %113, label %114, label %136

114:                                              ; preds = %111
  %115 = load i32, i32* @I915_GEM_DOMAIN_INSTRUCTION, align 4
  %116 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %117 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 4
  %119 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %120 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %121 = call i32 @i915_gem_object_move_to_active(%struct.drm_i915_gem_object* %119, %struct.intel_ring_buffer* %120)
  %122 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %123 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %122, i32 0, i32 1
  store i32 1, i32* %123, align 8
  %124 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %125 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %124, i32 0, i32 3
  %126 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %125, align 8
  %127 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %128 = icmp ne %struct.intel_ring_buffer* %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @BUG_ON(i32 %129)
  %131 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %132 = call i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object* %131)
  %133 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %134 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %133, i32 0, i32 2
  %135 = call i32 @drm_gem_object_unreference(%struct.TYPE_3__* %134)
  br label %136

136:                                              ; preds = %114, %111
  %137 = load %struct.i915_hw_context*, %struct.i915_hw_context** %3, align 8
  %138 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %137, i32 0, i32 1
  %139 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %138, align 8
  %140 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %139, i32 0, i32 2
  %141 = call i32 @drm_gem_object_reference(%struct.TYPE_3__* %140)
  %142 = load %struct.i915_hw_context*, %struct.i915_hw_context** %3, align 8
  %143 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %142, i32 0, i32 1
  %144 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %143, align 8
  %145 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %4, align 8
  %146 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %145, i32 0, i32 0
  store %struct.drm_i915_gem_object* %144, %struct.drm_i915_gem_object** %146, align 8
  %147 = load %struct.i915_hw_context*, %struct.i915_hw_context** %3, align 8
  %148 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %147, i32 0, i32 0
  store i32 1, i32* %148, align 8
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %136, %105, %48, %39, %30
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @i915_gem_object_pin(%struct.drm_i915_gem_object*, i32, i32, i32) #1

declare dso_local i32 @i915_gem_object_set_to_gtt_domain(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_gtt_bind_object(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i64 @is_default_context(%struct.i915_hw_context*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mi_set_context(%struct.intel_ring_buffer*, %struct.i915_hw_context*, i32) #1

declare dso_local i32 @i915_gem_object_move_to_active(%struct.drm_i915_gem_object*, %struct.intel_ring_buffer*) #1

declare dso_local i32 @drm_gem_object_unreference(%struct.TYPE_3__*) #1

declare dso_local i32 @drm_gem_object_reference(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
