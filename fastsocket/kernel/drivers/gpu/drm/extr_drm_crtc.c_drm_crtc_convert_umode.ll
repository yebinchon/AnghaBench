; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_crtc_convert_umode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_crtc_convert_umode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i64, i64, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_mode_modeinfo = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@INT_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@DRM_DISPLAY_MODE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_display_mode*, %struct.drm_mode_modeinfo*)* @drm_crtc_convert_umode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_crtc_convert_umode(%struct.drm_display_mode* %0, %struct.drm_mode_modeinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.drm_mode_modeinfo*, align 8
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %4, align 8
  store %struct.drm_mode_modeinfo* %1, %struct.drm_mode_modeinfo** %5, align 8
  %6 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %5, align 8
  %7 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @INT_MAX, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %5, align 8
  %13 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @INT_MAX, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11, %2
  %18 = load i32, i32* @ERANGE, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %106

20:                                               ; preds = %11
  %21 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %5, align 8
  %22 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %5, align 8
  %27 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %26, i32 0, i32 14
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 14
  store i32 %28, i32* %30, align 4
  %31 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %5, align 8
  %32 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %31, i32 0, i32 13
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 13
  store i32 %33, i32* %35, align 8
  %36 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %5, align 8
  %37 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %36, i32 0, i32 12
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %40 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %39, i32 0, i32 12
  store i32 %38, i32* %40, align 4
  %41 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %5, align 8
  %42 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %41, i32 0, i32 11
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 11
  store i32 %43, i32* %45, align 8
  %46 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %5, align 8
  %47 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 10
  store i32 %48, i32* %50, align 4
  %51 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %5, align 8
  %52 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 9
  store i32 %53, i32* %55, align 8
  %56 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %5, align 8
  %57 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 4
  %61 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %5, align 8
  %62 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %65 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %64, i32 0, i32 7
  store i32 %63, i32* %65, align 8
  %66 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %5, align 8
  %67 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %70 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 4
  %71 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %5, align 8
  %72 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %75 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 8
  %76 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %5, align 8
  %77 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %80 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %5, align 8
  %82 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %85 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %5, align 8
  %87 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %90 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %92 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %91, i32 0, i32 2
  %93 = load i64*, i64** %92, align 8
  %94 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %5, align 8
  %95 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @DRM_DISPLAY_MODE_LEN, align 4
  %98 = call i32 @strncpy(i64* %93, i32 %96, i32 %97)
  %99 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %100 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %99, i32 0, i32 2
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* @DRM_DISPLAY_MODE_LEN, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %101, i64 %104
  store i64 0, i64* %105, align 8
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %20, %17
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @strncpy(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
