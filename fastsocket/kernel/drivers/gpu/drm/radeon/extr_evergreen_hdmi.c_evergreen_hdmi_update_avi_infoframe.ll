; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_hdmi.c_evergreen_hdmi_update_avi_infoframe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_hdmi.c_evergreen_hdmi_update_avi_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_encoder = type { %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@AFMT_AVI_INFO0 = common dso_local global i64 0, align 8
@AFMT_AVI_INFO1 = common dso_local global i64 0, align 8
@AFMT_AVI_INFO2 = common dso_local global i64 0, align 8
@AFMT_AVI_INFO3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i8*, i64)* @evergreen_hdmi_update_avi_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evergreen_hdmi_update_avi_infoframe(%struct.drm_encoder* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_encoder*, align 8
  %10 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %14 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %7, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %8, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %20 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %19)
  store %struct.radeon_encoder* %20, %struct.radeon_encoder** %9, align 8
  %21 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %22 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %21, i32 0, i32 0
  %23 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %22, align 8
  store %struct.radeon_encoder_atom_dig* %23, %struct.radeon_encoder_atom_dig** %10, align 8
  %24 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %10, align 8
  %25 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %11, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr i8, i8* %29, i64 3
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 2
  store i32 %35, i32* %33, align 4
  %36 = load i64, i64* @AFMT_AVI_INFO0, align 8
  %37 = load i64, i64* %11, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32*, i32** %12, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 8
  %46 = or i32 %41, %45
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 16
  %51 = or i32 %46, %50
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 24
  %56 = or i32 %51, %55
  %57 = call i32 @WREG32(i64 %38, i32 %56)
  %58 = load i64, i64* @AFMT_AVI_INFO1, align 8
  %59 = load i64, i64* %11, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i32*, i32** %12, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 5
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 8
  %68 = or i32 %63, %67
  %69 = load i32*, i32** %12, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 6
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 16
  %73 = or i32 %68, %72
  %74 = load i32*, i32** %12, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 7
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 24
  %78 = or i32 %73, %77
  %79 = call i32 @WREG32(i64 %60, i32 %78)
  %80 = load i64, i64* @AFMT_AVI_INFO2, align 8
  %81 = load i64, i64* %11, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i32*, i32** %12, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %12, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 9
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 8
  %90 = or i32 %85, %89
  %91 = load i32*, i32** %12, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 10
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 16
  %95 = or i32 %90, %94
  %96 = load i32*, i32** %12, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 11
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 24
  %100 = or i32 %95, %99
  %101 = call i32 @WREG32(i64 %82, i32 %100)
  %102 = load i64, i64* @AFMT_AVI_INFO3, align 8
  %103 = load i64, i64* %11, align 8
  %104 = add nsw i64 %102, %103
  %105 = load i32*, i32** %12, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 12
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %12, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 13
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 %110, 8
  %112 = or i32 %107, %111
  %113 = call i32 @WREG32(i64 %104, i32 %112)
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
