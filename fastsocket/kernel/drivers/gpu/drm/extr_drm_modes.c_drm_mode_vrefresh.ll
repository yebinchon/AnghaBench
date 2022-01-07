; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_modes.c_drm_mode_vrefresh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_modes.c_drm_mode_vrefresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_vrefresh(%struct.drm_display_mode* %0) #0 {
  %2 = alloca %struct.drm_display_mode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %7 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %12 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  br label %75

14:                                               ; preds = %1
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ugt i32 %17, 0
  br i1 %18, label %19, label %74

19:                                               ; preds = %14
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %74

24:                                               ; preds = %19
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %30, 1000
  store i32 %31, i32* %4, align 4
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = udiv i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sdiv i32 %38, 2
  %40 = add i32 %37, %39
  %41 = load i32, i32* %5, align 4
  %42 = udiv i32 %40, %41
  store i32 %42, i32* %3, align 4
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %24
  %50 = load i32, i32* %3, align 4
  %51 = mul nsw i32 %50, 2
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %24
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %54 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* %3, align 4
  %61 = sdiv i32 %60, 2
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %52
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %64 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %69 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %3, align 4
  %72 = sdiv i32 %71, %70
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %67, %62
  br label %74

74:                                               ; preds = %73, %19, %14
  br label %75

75:                                               ; preds = %74, %10
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
