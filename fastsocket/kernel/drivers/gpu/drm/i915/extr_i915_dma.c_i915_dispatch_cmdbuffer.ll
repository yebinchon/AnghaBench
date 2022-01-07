; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_dispatch_cmdbuffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_dispatch_cmdbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.drm_clip_rect = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"alignment\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.TYPE_3__*, %struct.drm_clip_rect*, i8*)* @i915_dispatch_cmdbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_dispatch_cmdbuffer(%struct.drm_device* %0, %struct.TYPE_3__* %1, %struct.drm_clip_rect* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.drm_clip_rect*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store %struct.drm_clip_rect* %2, %struct.drm_clip_rect** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 3
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %81

26:                                               ; preds = %4
  %27 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %28 = call i32 @i915_kernel_lost_context(%struct.drm_device* %27)
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  br label %34

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 1, %33 ]
  store i32 %35, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %75, %34
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %46 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %8, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %46, i64 %48
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @i915_emit_box(%struct.drm_device* %45, %struct.drm_clip_rect* %49, i32 %52, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %44
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %5, align 4
  br label %81

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61, %40
  %63 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %67, 4
  %69 = call i32 @i915_emit_cmds(%struct.drm_device* %63, i8* %64, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %5, align 4
  br label %81

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %36

78:                                               ; preds = %36
  %79 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %80 = call i32 @i915_emit_breadcrumb(%struct.drm_device* %79)
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %72, %59, %22
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @i915_kernel_lost_context(%struct.drm_device*) #1

declare dso_local i32 @i915_emit_box(%struct.drm_device*, %struct.drm_clip_rect*, i32, i32) #1

declare dso_local i32 @i915_emit_cmds(%struct.drm_device*, i8*, i32) #1

declare dso_local i32 @i915_emit_breadcrumb(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
