; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_context.c_do_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_context.c_do_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_hw_context = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_hw_context*)* @do_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_destroy(%struct.i915_hw_context* %0) #0 {
  %2 = alloca %struct.i915_hw_context*, align 8
  store %struct.i915_hw_context* %0, %struct.i915_hw_context** %2, align 8
  %3 = load %struct.i915_hw_context*, %struct.i915_hw_context** %2, align 8
  %4 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %3, i32 0, i32 2
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.i915_hw_context*, %struct.i915_hw_context** %2, align 8
  %9 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.i915_hw_context*, %struct.i915_hw_context** %2, align 8
  %13 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @idr_remove(i32* %11, i32 %14)
  br label %16

16:                                               ; preds = %7, %1
  %17 = load %struct.i915_hw_context*, %struct.i915_hw_context** %2, align 8
  %18 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @drm_gem_object_unreference(i32* %20)
  %22 = load %struct.i915_hw_context*, %struct.i915_hw_context** %2, align 8
  %23 = call i32 @kfree(%struct.i915_hw_context* %22)
  ret void
}

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @drm_gem_object_unreference(i32*) #1

declare dso_local i32 @kfree(%struct.i915_hw_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
