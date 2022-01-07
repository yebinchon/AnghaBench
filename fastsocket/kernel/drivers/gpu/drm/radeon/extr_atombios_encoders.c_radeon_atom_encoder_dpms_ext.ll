; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_encoder_dpms_ext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_encoder_dpms_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@EXTERNAL_ENCODER_ACTION_V3_ENABLE_OUTPUT = common dso_local global i32 0, align 4
@EXTERNAL_ENCODER_ACTION_V3_ENCODER_BLANKING_OFF = common dso_local global i32 0, align 4
@ATOM_ENABLE = common dso_local global i32 0, align 4
@EXTERNAL_ENCODER_ACTION_V3_ENCODER_BLANKING = common dso_local global i32 0, align 4
@EXTERNAL_ENCODER_ACTION_V3_DISABLE_OUTPUT = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_encoder*, i32)* @radeon_atom_encoder_dpms_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_atom_encoder_dpms_ext(%struct.drm_encoder* %0, %struct.drm_encoder* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %10 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  store %struct.radeon_device* %14, %struct.radeon_device** %8, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %17 [
    i32 130, label %16
    i32 129, label %40
    i32 128, label %40
    i32 131, label %40
  ]

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %3, %16
  %18 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %19 = call i32 @ASIC_IS_DCE41(%struct.radeon_device* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %23 = call i32 @ASIC_IS_DCE61(%struct.radeon_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21, %17
  %26 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %28 = load i32, i32* @EXTERNAL_ENCODER_ACTION_V3_ENABLE_OUTPUT, align 4
  %29 = call i32 @atombios_external_encoder_setup(%struct.drm_encoder* %26, %struct.drm_encoder* %27, i32 %28)
  %30 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %31 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %32 = load i32, i32* @EXTERNAL_ENCODER_ACTION_V3_ENCODER_BLANKING_OFF, align 4
  %33 = call i32 @atombios_external_encoder_setup(%struct.drm_encoder* %30, %struct.drm_encoder* %31, i32 %32)
  br label %39

34:                                               ; preds = %21
  %35 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %36 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %37 = load i32, i32* @ATOM_ENABLE, align 4
  %38 = call i32 @atombios_external_encoder_setup(%struct.drm_encoder* %35, %struct.drm_encoder* %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %25
  br label %63

40:                                               ; preds = %3, %3, %3
  %41 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %42 = call i32 @ASIC_IS_DCE41(%struct.radeon_device* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %46 = call i32 @ASIC_IS_DCE61(%struct.radeon_device* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44, %40
  %49 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %50 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %51 = load i32, i32* @EXTERNAL_ENCODER_ACTION_V3_ENCODER_BLANKING, align 4
  %52 = call i32 @atombios_external_encoder_setup(%struct.drm_encoder* %49, %struct.drm_encoder* %50, i32 %51)
  %53 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %54 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %55 = load i32, i32* @EXTERNAL_ENCODER_ACTION_V3_DISABLE_OUTPUT, align 4
  %56 = call i32 @atombios_external_encoder_setup(%struct.drm_encoder* %53, %struct.drm_encoder* %54, i32 %55)
  br label %62

57:                                               ; preds = %44
  %58 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %59 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %60 = load i32, i32* @ATOM_DISABLE, align 4
  %61 = call i32 @atombios_external_encoder_setup(%struct.drm_encoder* %58, %struct.drm_encoder* %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %48
  br label %63

63:                                               ; preds = %62, %39
  ret void
}

declare dso_local i32 @ASIC_IS_DCE41(%struct.radeon_device*) #1

declare dso_local i32 @ASIC_IS_DCE61(%struct.radeon_device*) #1

declare dso_local i32 @atombios_external_encoder_setup(%struct.drm_encoder*, %struct.drm_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
