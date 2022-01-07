; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_context.c_create_default_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_context.c_create_default_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.i915_hw_context* }
%struct.i915_hw_context = type { i32 }
%struct.TYPE_4__ = type { i32 }

@RCS = common dso_local global i64 0, align 8
@CONTEXT_ALIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Default HW context loaded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @create_default_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_default_context(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_hw_context*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %7 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @mutex_is_locked(i32* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call %struct.i915_hw_context* @create_hw_context(%struct.TYPE_4__* %17, i32* null)
  store %struct.i915_hw_context* %18, %struct.i915_hw_context** %4, align 8
  %19 = load %struct.i915_hw_context*, %struct.i915_hw_context** %4, align 8
  %20 = call i64 @IS_ERR(%struct.i915_hw_context* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.i915_hw_context*, %struct.i915_hw_context** %4, align 8
  %24 = call i32 @PTR_ERR(%struct.i915_hw_context* %23)
  store i32 %24, i32* %2, align 4
  br label %58

25:                                               ; preds = %1
  %26 = load %struct.i915_hw_context*, %struct.i915_hw_context** %4, align 8
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i64, i64* @RCS, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store %struct.i915_hw_context* %26, %struct.i915_hw_context** %32, align 8
  %33 = load %struct.i915_hw_context*, %struct.i915_hw_context** %4, align 8
  %34 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CONTEXT_ALIGN, align 4
  %37 = call i32 @i915_gem_object_pin(i32 %35, i32 %36, i32 0, i32 0)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  br label %54

41:                                               ; preds = %25
  %42 = load %struct.i915_hw_context*, %struct.i915_hw_context** %4, align 8
  %43 = call i32 @do_switch(%struct.i915_hw_context* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %49

47:                                               ; preds = %41
  %48 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %58

49:                                               ; preds = %46
  %50 = load %struct.i915_hw_context*, %struct.i915_hw_context** %4, align 8
  %51 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @i915_gem_object_unpin(i32 %52)
  br label %54

54:                                               ; preds = %49, %40
  %55 = load %struct.i915_hw_context*, %struct.i915_hw_context** %4, align 8
  %56 = call i32 @do_destroy(%struct.i915_hw_context* %55)
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %47, %22
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local %struct.i915_hw_context* @create_hw_context(%struct.TYPE_4__*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.i915_hw_context*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_hw_context*) #1

declare dso_local i32 @i915_gem_object_pin(i32, i32, i32, i32) #1

declare dso_local i32 @do_switch(%struct.i915_hw_context*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @i915_gem_object_unpin(i32) #1

declare dso_local i32 @do_destroy(%struct.i915_hw_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
