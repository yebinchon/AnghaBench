; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_nouveau_bios_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_nouveau_bios_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.nvbios }
%struct.nvbios = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Adaptor not initialised, running VBIOS init tables.\0A\00", align 1
@NV_CIO_CRE_4B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_bios_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nvbios*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %7)
  store %struct.nouveau_drm* %8, %struct.nouveau_drm** %4, align 8
  %9 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %10 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %9, i32 0, i32 0
  store %struct.nvbios* %10, %struct.nvbios** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = call i32 @NVInitVBIOS(%struct.drm_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %78

17:                                               ; preds = %1
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %20 = call i32 @parse_dcb_table(%struct.drm_device* %18, %struct.nvbios* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %78

25:                                               ; preds = %17
  %26 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %27 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %78

31:                                               ; preds = %25
  %32 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %33 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %35 = call i32 @nouveau_bios_posted(%struct.drm_device* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %39 = call i32 @NV_INFO(%struct.nouveau_drm* %38, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %41 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %31
  %43 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %44 = call i32 @nouveau_run_vbios_init(%struct.drm_device* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %78

49:                                               ; preds = %42
  %50 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %51 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %52, 5
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %56 = load i32, i32* @NV_CIO_CRE_4B, align 4
  %57 = call i32 @NVReadVgaCrtc(%struct.drm_device* %55, i32 0, i32 %56)
  %58 = and i32 %57, 64
  %59 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %60 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %54, %49
  %62 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %63 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %68 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp sge i32 %69, 5
  br i1 %70, label %71, label %75

71:                                               ; preds = %66, %61
  %72 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %73 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %74 = call i32 @parse_fp_mode_table(%struct.drm_device* %72, %struct.nvbios* %73)
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %71, %66
  %76 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %77 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %75, %47, %30, %23, %14
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @NVInitVBIOS(%struct.drm_device*) #1

declare dso_local i32 @parse_dcb_table(%struct.drm_device*, %struct.nvbios*) #1

declare dso_local i32 @nouveau_bios_posted(%struct.drm_device*) #1

declare dso_local i32 @NV_INFO(%struct.nouveau_drm*, i8*) #1

declare dso_local i32 @nouveau_run_vbios_init(%struct.drm_device*) #1

declare dso_local i32 @NVReadVgaCrtc(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @parse_fp_mode_table(%struct.drm_device*, %struct.nvbios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
