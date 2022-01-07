; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_tv.c_intel_tv_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_tv.c_intel_tv_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.intel_tv = type { i32 }
%struct.tv_mode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @intel_tv_mode_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_tv_mode_fixup(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.intel_tv*, align 8
  %9 = alloca %struct.tv_mode*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %5, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %6, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %11 = call %struct.intel_tv* @enc_to_intel_tv(%struct.drm_encoder* %10)
  store %struct.intel_tv* %11, %struct.intel_tv** %8, align 8
  %12 = load %struct.intel_tv*, %struct.intel_tv** %8, align 8
  %13 = call %struct.tv_mode* @intel_tv_mode_find(%struct.intel_tv* %12)
  store %struct.tv_mode* %13, %struct.tv_mode** %9, align 8
  %14 = load %struct.tv_mode*, %struct.tv_mode** %9, align 8
  %15 = icmp ne %struct.tv_mode* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %29

17:                                               ; preds = %3
  %18 = load %struct.intel_tv*, %struct.intel_tv** %8, align 8
  %19 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %18, i32 0, i32 0
  %20 = call i64 @intel_encoder_check_is_cloned(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %29

23:                                               ; preds = %17
  %24 = load %struct.tv_mode*, %struct.tv_mode** %9, align 8
  %25 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  store i32 1, i32* %4, align 4
  br label %29

29:                                               ; preds = %23, %22, %16
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.intel_tv* @enc_to_intel_tv(%struct.drm_encoder*) #1

declare dso_local %struct.tv_mode* @intel_tv_mode_find(%struct.intel_tv*) #1

declare dso_local i64 @intel_encoder_check_is_cloned(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
