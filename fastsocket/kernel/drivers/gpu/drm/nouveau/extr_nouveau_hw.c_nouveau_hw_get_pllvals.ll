; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_hw.c_nouveau_hw_get_pllvals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_hw.c_nouveau_hw_get_pllvals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_pll_vals = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_bios = type { i32 }
%struct.nvbios_pll = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@NV_RAMDAC_VPLL2 = common dso_local global i32 0, align 4
@NV_PRAMDAC_VPLL_COEFF = common dso_local global i32 0, align 4
@NV_PRAMDAC_580 = common dso_local global i32 0, align 4
@NV_RAMDAC_580_VPLL1_ACTIVE = common dso_local global i32 0, align 4
@NV_RAMDAC_580_VPLL2_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_hw_get_pllvals(%struct.drm_device* %0, i32 %1, %struct.nouveau_pll_vals* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_pll_vals*, align 8
  %8 = alloca %struct.nouveau_drm*, align 8
  %9 = alloca %struct.nouveau_device*, align 8
  %10 = alloca %struct.nouveau_bios*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nvbios_pll, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nouveau_pll_vals* %2, %struct.nouveau_pll_vals** %7, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %18)
  store %struct.nouveau_drm* %19, %struct.nouveau_drm** %8, align 8
  %20 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %21 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.nouveau_device* @nv_device(i32 %22)
  store %struct.nouveau_device* %23, %struct.nouveau_device** %9, align 8
  %24 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %25 = call %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_device* %24)
  store %struct.nouveau_bios* %25, %struct.nouveau_bios** %10, align 8
  store i32 0, i32* %13, align 4
  %26 = load %struct.nouveau_bios*, %struct.nouveau_bios** %10, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @nvbios_pll_parse(%struct.nouveau_bios* %26, i32 %27, %struct.nvbios_pll* %14)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %14, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31, %3
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %110

38:                                               ; preds = %31
  %39 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @nv_rd32(%struct.nouveau_device* %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp sle i32 %42, 16476
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 4
  %48 = call i32 @nv_rd32(%struct.nouveau_device* %45, i32 %47)
  store i32 %48, i32* %13, align 4
  br label %65

49:                                               ; preds = %38
  %50 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %51 = call i64 @nv_two_reg_pll(%struct.drm_device* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @NV_RAMDAC_VPLL2, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 92, i32 112
  %60 = add nsw i32 %54, %59
  store i32 %60, i32* %16, align 4
  %61 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %62 = load i32, i32* %16, align 4
  %63 = call i32 @nv_rd32(%struct.nouveau_device* %61, i32 %62)
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %53, %49
  br label %65

65:                                               ; preds = %64, %44
  %66 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %67 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.nouveau_device* @nv_device(i32 %68)
  %70 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 64
  br i1 %72, label %73, label %99

73:                                               ; preds = %65
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @NV_PRAMDAC_VPLL_COEFF, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %99

77:                                               ; preds = %73
  %78 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %79 = load i32, i32* @NV_PRAMDAC_580, align 4
  %80 = call i32 @NVReadRAMDAC(%struct.drm_device* %78, i32 0, i32 %79)
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @NV_PRAMDAC_VPLL_COEFF, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* @NV_RAMDAC_580_VPLL1_ACTIVE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 0, i32* %13, align 4
  br label %90

90:                                               ; preds = %89, %84
  br label %98

91:                                               ; preds = %77
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* @NV_RAMDAC_580_VPLL2_ACTIVE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store i32 0, i32* %13, align 4
  br label %97

97:                                               ; preds = %96, %91
  br label %98

98:                                               ; preds = %97, %90
  br label %99

99:                                               ; preds = %98, %73, %65
  %100 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %7, align 8
  %105 = call i32 @nouveau_hw_decode_pll(%struct.drm_device* %100, i32 %101, i32 %102, i32 %103, %struct.nouveau_pll_vals* %104)
  %106 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %14, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %7, align 8
  %109 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %99, %35
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_device* @nv_device(i32) #1

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_device*) #1

declare dso_local i32 @nvbios_pll_parse(%struct.nouveau_bios*, i32, %struct.nvbios_pll*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i64 @nv_two_reg_pll(%struct.drm_device*) #1

declare dso_local i32 @NVReadRAMDAC(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @nouveau_hw_decode_pll(%struct.drm_device*, i32, i32, i32, %struct.nouveau_pll_vals*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
