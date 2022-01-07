; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_lvds.c_centre_vertically.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_lvds.c_centre_vertically.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32 }

@INTEL_MODE_CRTC_TIMINGS_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_display_mode*, i32)* @centre_vertically to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @centre_vertically(%struct.drm_display_mode* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %10 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %13 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %11, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %17 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %18, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %23, %24
  %26 = add nsw i32 %25, 1
  %27 = sdiv i32 %26, 2
  store i32 %27, i32* %6, align 4
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = sub nsw i32 %30, %31
  %33 = add nsw i32 %32, 1
  %34 = sdiv i32 %33, 2
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %38, %39
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %45, %46
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %52, %53
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %59, %60
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %63 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @INTEL_MODE_CRTC_TIMINGS_SET, align 4
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
