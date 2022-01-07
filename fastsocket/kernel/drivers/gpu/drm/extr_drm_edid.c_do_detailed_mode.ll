; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_edid.c_do_detailed_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_edid.c_do_detailed_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.detailed_timing = type { i64 }
%struct.detailed_mode_closure = type { i64, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_display_mode = type { i32 }

@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.detailed_timing*, i8*)* @do_detailed_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_detailed_mode(%struct.detailed_timing* %0, i8* %1) #0 {
  %3 = alloca %struct.detailed_timing*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.detailed_mode_closure*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  store %struct.detailed_timing* %0, %struct.detailed_timing** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.detailed_mode_closure*
  store %struct.detailed_mode_closure* %8, %struct.detailed_mode_closure** %5, align 8
  %9 = load %struct.detailed_timing*, %struct.detailed_timing** %3, align 8
  %10 = getelementptr inbounds %struct.detailed_timing, %struct.detailed_timing* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %2
  %14 = load %struct.detailed_mode_closure*, %struct.detailed_mode_closure** %5, align 8
  %15 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.detailed_mode_closure*, %struct.detailed_mode_closure** %5, align 8
  %20 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.detailed_timing*, %struct.detailed_timing** %3, align 8
  %23 = load %struct.detailed_mode_closure*, %struct.detailed_mode_closure** %5, align 8
  %24 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.drm_display_mode* @drm_mode_detailed(i32 %18, i32 %21, %struct.detailed_timing* %22, i32 %25)
  store %struct.drm_display_mode* %26, %struct.drm_display_mode** %6, align 8
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %28 = icmp ne %struct.drm_display_mode* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %13
  br label %53

30:                                               ; preds = %13
  %31 = load %struct.detailed_mode_closure*, %struct.detailed_mode_closure** %5, align 8
  %32 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.detailed_mode_closure*, %struct.detailed_mode_closure** %5, align 8
  %43 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %46 = call i32 @drm_mode_probed_add(%struct.TYPE_2__* %44, %struct.drm_display_mode* %45)
  %47 = load %struct.detailed_mode_closure*, %struct.detailed_mode_closure** %5, align 8
  %48 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.detailed_mode_closure*, %struct.detailed_mode_closure** %5, align 8
  %52 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %29, %41, %2
  ret void
}

declare dso_local %struct.drm_display_mode* @drm_mode_detailed(i32, i32, %struct.detailed_timing*, i32) #1

declare dso_local i32 @drm_mode_probed_add(%struct.TYPE_2__*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
