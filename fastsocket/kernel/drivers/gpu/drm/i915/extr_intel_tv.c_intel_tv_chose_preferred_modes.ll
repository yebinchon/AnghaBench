; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_tv.c_intel_tv_chose_preferred_modes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_tv.c_intel_tv_chose_preferred_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32, i32 }
%struct.intel_tv = type { i32 }
%struct.tv_mode = type { i32, i32 }

@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*, %struct.drm_display_mode*)* @intel_tv_chose_preferred_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_tv_chose_preferred_modes(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.intel_tv*, align 8
  %6 = alloca %struct.tv_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call %struct.intel_tv* @intel_attached_tv(%struct.drm_connector* %7)
  store %struct.intel_tv* %8, %struct.intel_tv** %5, align 8
  %9 = load %struct.intel_tv*, %struct.intel_tv** %5, align 8
  %10 = call %struct.tv_mode* @intel_tv_mode_find(%struct.intel_tv* %9)
  store %struct.tv_mode* %10, %struct.tv_mode** %6, align 8
  %11 = load %struct.tv_mode*, %struct.tv_mode** %6, align 8
  %12 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 480
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %17 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 480
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %67

26:                                               ; preds = %15, %2
  %27 = load %struct.tv_mode*, %struct.tv_mode** %6, align 8
  %28 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 480
  br i1 %30, label %31, label %66

31:                                               ; preds = %26
  %32 = load %struct.tv_mode*, %struct.tv_mode** %6, align 8
  %33 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load %struct.tv_mode*, %struct.tv_mode** %6, align 8
  %38 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 720
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %43 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 720
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %41
  br label %65

53:                                               ; preds = %36, %31
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 1080
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %61 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %53
  br label %65

65:                                               ; preds = %64, %52
  br label %66

66:                                               ; preds = %65, %26
  br label %67

67:                                               ; preds = %66, %20
  ret void
}

declare dso_local %struct.intel_tv* @intel_attached_tv(%struct.drm_connector*) #1

declare dso_local %struct.tv_mode* @intel_tv_mode_find(%struct.intel_tv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
