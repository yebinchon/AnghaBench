; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_overlay.c_check_overlay_dst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_overlay.c_check_overlay_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_overlay = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i64, i64 }
%struct.drm_intel_overlay_put_image = type { i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_overlay*, %struct.drm_intel_overlay_put_image*)* @check_overlay_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_overlay_dst(%struct.intel_overlay* %0, %struct.drm_intel_overlay_put_image* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_overlay*, align 8
  %5 = alloca %struct.drm_intel_overlay_put_image*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  store %struct.intel_overlay* %0, %struct.intel_overlay** %4, align 8
  store %struct.drm_intel_overlay_put_image* %1, %struct.drm_intel_overlay_put_image** %5, align 8
  %7 = load %struct.intel_overlay*, %struct.intel_overlay** %4, align 8
  %8 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.drm_display_mode* %11, %struct.drm_display_mode** %6, align 8
  %12 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %5, align 8
  %13 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %2
  %20 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %5, align 8
  %21 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %5, align 8
  %24 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %26, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %19
  %32 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %5, align 8
  %33 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %31
  %40 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %5, align 8
  %41 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %5, align 8
  %44 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sle i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %55

52:                                               ; preds = %39, %31, %19, %2
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %51
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
