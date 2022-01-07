; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_hdmi_update_ACR.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_hdmi_update_ACR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_hdmi_acr = type { i32, i32, i32, i32, i32, i32 }
%struct.radeon_encoder = type { %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@HDMI0_ACR_32_0 = common dso_local global i64 0, align 8
@HDMI0_ACR_32_1 = common dso_local global i64 0, align 8
@HDMI0_ACR_44_0 = common dso_local global i64 0, align 8
@HDMI0_ACR_44_1 = common dso_local global i64 0, align 8
@HDMI0_ACR_48_0 = common dso_local global i64 0, align 8
@HDMI0_ACR_48_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i64)* @r600_hdmi_update_ACR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r600_hdmi_update_ACR(%struct.drm_encoder* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_hdmi_acr, align 4
  %8 = alloca %struct.radeon_encoder*, align 8
  %9 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %10 = alloca i64, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %5, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  store %struct.radeon_device* %16, %struct.radeon_device** %6, align 8
  %17 = load i64, i64* %4, align 8
  call void @r600_hdmi_acr(%struct.radeon_hdmi_acr* sret %7, i64 %17)
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %19 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %18)
  store %struct.radeon_encoder* %19, %struct.radeon_encoder** %8, align 8
  %20 = load %struct.radeon_encoder*, %struct.radeon_encoder** %8, align 8
  %21 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %20, i32 0, i32 0
  %22 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %21, align 8
  store %struct.radeon_encoder_atom_dig* %22, %struct.radeon_encoder_atom_dig** %9, align 8
  %23 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %9, align 8
  %24 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* @HDMI0_ACR_32_0, align 8
  %29 = load i64, i64* %10, align 8
  %30 = add nsw i64 %28, %29
  %31 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %7, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @HDMI0_ACR_CTS_32(i32 %32)
  %34 = call i32 @WREG32(i64 %30, i32 %33)
  %35 = load i64, i64* @HDMI0_ACR_32_1, align 8
  %36 = load i64, i64* %10, align 8
  %37 = add nsw i64 %35, %36
  %38 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %7, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @WREG32(i64 %37, i32 %39)
  %41 = load i64, i64* @HDMI0_ACR_44_0, align 8
  %42 = load i64, i64* %10, align 8
  %43 = add nsw i64 %41, %42
  %44 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %7, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @HDMI0_ACR_CTS_44(i32 %45)
  %47 = call i32 @WREG32(i64 %43, i32 %46)
  %48 = load i64, i64* @HDMI0_ACR_44_1, align 8
  %49 = load i64, i64* %10, align 8
  %50 = add nsw i64 %48, %49
  %51 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %7, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @WREG32(i64 %50, i32 %52)
  %54 = load i64, i64* @HDMI0_ACR_48_0, align 8
  %55 = load i64, i64* %10, align 8
  %56 = add nsw i64 %54, %55
  %57 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %7, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @HDMI0_ACR_CTS_48(i32 %58)
  %60 = call i32 @WREG32(i64 %56, i32 %59)
  %61 = load i64, i64* @HDMI0_ACR_48_1, align 8
  %62 = load i64, i64* %10, align 8
  %63 = add nsw i64 %61, %62
  %64 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %7, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @WREG32(i64 %63, i32 %65)
  ret void
}

declare dso_local void @r600_hdmi_acr(%struct.radeon_hdmi_acr* sret, i64) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @HDMI0_ACR_CTS_32(i32) #1

declare dso_local i32 @HDMI0_ACR_CTS_44(i32) #1

declare dso_local i32 @HDMI0_ACR_CTS_48(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
