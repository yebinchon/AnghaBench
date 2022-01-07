; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_tv.c_radeon_legacy_tv_adjust_crtc_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_tv.c_radeon_legacy_tv_adjust_crtc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.radeon_encoder = type { i32 }
%struct.radeon_tv_mode_constants = type { i32, i32, i32, i32, i32, i32 }

@RADEON_CRTC_H_DISP_SHIFT = common dso_local global i32 0, align 4
@RADEON_CRTC_H_TOTAL_SHIFT = common dso_local global i32 0, align 4
@RADEON_CRTC_H_SYNC_STRT_PIX = common dso_local global i32 0, align 4
@RADEON_CRTC_H_SYNC_STRT_CHAR = common dso_local global i32 0, align 4
@RADEON_CRTC_H_SYNC_STRT_CHAR_SHIFT = common dso_local global i32 0, align 4
@RADEON_CRTC_V_DISP_SHIFT = common dso_local global i32 0, align 4
@RADEON_CRTC_V_TOTAL_SHIFT = common dso_local global i32 0, align 4
@RADEON_CRTC_V_SYNC_STRT = common dso_local global i32 0, align 4
@RADEON_CRTC_V_SYNC_STRT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_legacy_tv_adjust_crtc_reg(%struct.drm_encoder* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.radeon_encoder*, align 8
  %12 = alloca %struct.radeon_tv_mode_constants*, align 8
  %13 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %15 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %14)
  store %struct.radeon_encoder* %15, %struct.radeon_encoder** %11, align 8
  %16 = load %struct.radeon_encoder*, %struct.radeon_encoder** %11, align 8
  %17 = call %struct.radeon_tv_mode_constants* @radeon_legacy_tv_get_std_mode(%struct.radeon_encoder* %16, i32* null)
  store %struct.radeon_tv_mode_constants* %17, %struct.radeon_tv_mode_constants** %12, align 8
  %18 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %12, align 8
  %19 = icmp ne %struct.radeon_tv_mode_constants* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  br label %92

21:                                               ; preds = %5
  %22 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %12, align 8
  %23 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 8
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* @RADEON_CRTC_H_DISP_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %12, align 8
  %30 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 8
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* @RADEON_CRTC_H_TOTAL_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = or i32 %28, %35
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* @RADEON_CRTC_H_SYNC_STRT_PIX, align 4
  %41 = load i32, i32* @RADEON_CRTC_H_SYNC_STRT_CHAR, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %13, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %13, align 4
  %46 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %12, align 8
  %47 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 8
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* @RADEON_CRTC_H_SYNC_STRT_CHAR_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %12, align 8
  %54 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 7
  %57 = or i32 %52, %56
  %58 = load i32, i32* %13, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32*, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  %62 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %12, align 8
  %63 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  %66 = load i32, i32* @RADEON_CRTC_V_DISP_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %12, align 8
  %69 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 1
  %72 = load i32, i32* @RADEON_CRTC_V_TOTAL_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = or i32 %67, %73
  %75 = load i32*, i32** %9, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* @RADEON_CRTC_V_SYNC_STRT, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %13, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %13, align 4
  %82 = load %struct.radeon_tv_mode_constants*, %struct.radeon_tv_mode_constants** %12, align 8
  %83 = getelementptr inbounds %struct.radeon_tv_mode_constants, %struct.radeon_tv_mode_constants* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 1
  %86 = load i32, i32* @RADEON_CRTC_V_SYNC_STRT_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* %13, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32*, i32** %10, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_tv_mode_constants* @radeon_legacy_tv_get_std_mode(%struct.radeon_encoder*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
