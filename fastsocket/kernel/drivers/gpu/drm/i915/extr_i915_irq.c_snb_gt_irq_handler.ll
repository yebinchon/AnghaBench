; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_snb_gt_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_snb_gt_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { i32* }

@GEN6_RENDER_USER_INTERRUPT = common dso_local global i32 0, align 4
@GEN6_RENDER_PIPE_CONTROL_NOTIFY_INTERRUPT = common dso_local global i32 0, align 4
@RCS = common dso_local global i64 0, align 8
@GEN6_BSD_USER_INTERRUPT = common dso_local global i32 0, align 4
@VCS = common dso_local global i64 0, align 8
@GEN6_BLITTER_USER_INTERRUPT = common dso_local global i32 0, align 4
@BCS = common dso_local global i64 0, align 8
@GT_GEN6_BLT_CS_ERROR_INTERRUPT = common dso_local global i32 0, align 4
@GT_GEN6_BSD_CS_ERROR_INTERRUPT = common dso_local global i32 0, align 4
@GT_RENDER_CS_ERROR_INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"GT error interrupt 0x%08x\0A\00", align 1
@GT_GEN7_L3_PARITY_ERROR_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_i915_private*, i32)* @snb_gt_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snb_gt_irq_handler(%struct.drm_device* %0, %struct.drm_i915_private* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_i915_private* %1, %struct.drm_i915_private** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @GEN6_RENDER_USER_INTERRUPT, align 4
  %9 = load i32, i32* @GEN6_RENDER_PIPE_CONTROL_NOTIFY_INTERRUPT, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %7, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @RCS, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = call i32 @notify_ring(%struct.drm_device* %14, i32* %19)
  br label %21

21:                                               ; preds = %13, %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @GEN6_BSD_USER_INTERRUPT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @VCS, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = call i32 @notify_ring(%struct.drm_device* %27, i32* %32)
  br label %34

34:                                               ; preds = %26, %21
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @GEN6_BLITTER_USER_INTERRUPT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %42 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @BCS, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = call i32 @notify_ring(%struct.drm_device* %40, i32* %45)
  br label %47

47:                                               ; preds = %39, %34
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @GT_GEN6_BLT_CS_ERROR_INTERRUPT, align 4
  %50 = load i32, i32* @GT_GEN6_BSD_CS_ERROR_INTERRUPT, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @GT_RENDER_CS_ERROR_INTERRUPT, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %48, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %60 = call i32 @i915_handle_error(%struct.drm_device* %59, i32 0)
  br label %61

61:                                               ; preds = %56, %47
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @GT_GEN7_L3_PARITY_ERROR_INTERRUPT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %68 = call i32 @ivybridge_handle_parity_error(%struct.drm_device* %67)
  br label %69

69:                                               ; preds = %66, %61
  ret void
}

declare dso_local i32 @notify_ring(%struct.drm_device*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @i915_handle_error(%struct.drm_device*, i32) #1

declare dso_local i32 @ivybridge_handle_parity_error(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
