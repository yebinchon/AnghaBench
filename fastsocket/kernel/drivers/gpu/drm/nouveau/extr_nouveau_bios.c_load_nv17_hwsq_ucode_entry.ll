; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_load_nv17_hwsq_ucode_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_load_nv17_hwsq_ucode_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvbios = type { i32* }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_device = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"Too few entries in HW sequencer table for requested entry\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unknown HW sequencer entry size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Loading NV17 power sequencing microcode\0A\00", align 1
@NV_PBUS_DEBUG_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.nvbios*, i64, i32)* @load_nv17_hwsq_ucode_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_nv17_hwsq_ucode_entry(%struct.drm_device* %0, %struct.nvbios* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.nvbios*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nouveau_drm*, align 8
  %11 = alloca %struct.nouveau_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.nvbios* %1, %struct.nvbios** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %16 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %15)
  store %struct.nouveau_drm* %16, %struct.nouveau_drm** %10, align 8
  %17 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %18 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.nouveau_device* @nv_device(i32 %19)
  store %struct.nouveau_device* %20, %struct.nouveau_device** %11, align 8
  %21 = load %struct.nvbios*, %struct.nvbios** %7, align 8
  %22 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %4
  %30 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %31 = call i32 @NV_ERROR(%struct.nouveau_drm* %30, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %101

34:                                               ; preds = %4
  %35 = load %struct.nvbios*, %struct.nvbios** %7, align 8
  %36 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, 1
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 36
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %46 = call i32 @NV_ERROR(%struct.nouveau_drm* %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %101

49:                                               ; preds = %34
  %50 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %51 = call i32 @NV_INFO(%struct.nouveau_drm* %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %52, 2
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %12, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = add i64 %53, %57
  store i64 %58, i64* %13, align 8
  %59 = load %struct.nouveau_device*, %struct.nouveau_device** %11, align 8
  %60 = load %struct.nvbios*, %struct.nvbios** %7, align 8
  %61 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %13, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ROM32(i32 %65)
  %67 = call i32 @nv_wr32(%struct.nouveau_device* %59, i32 4868, i32 %66)
  %68 = load i32, i32* %12, align 4
  %69 = sub nsw i32 %68, 4
  store i32 %69, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %70

70:                                               ; preds = %90, %49
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %70
  %75 = load %struct.nouveau_device*, %struct.nouveau_device** %11, align 8
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 5120, %76
  %78 = load %struct.nvbios*, %struct.nvbios** %7, align 8
  %79 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 %81, %83
  %85 = add i64 %84, 4
  %86 = getelementptr inbounds i32, i32* %80, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ROM32(i32 %87)
  %89 = call i32 @nv_wr32(%struct.nouveau_device* %75, i32 %77, i32 %88)
  br label %90

90:                                               ; preds = %74
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 4
  store i32 %92, i32* %14, align 4
  br label %70

93:                                               ; preds = %70
  %94 = load %struct.nouveau_device*, %struct.nouveau_device** %11, align 8
  %95 = load i32, i32* @NV_PBUS_DEBUG_4, align 4
  %96 = load %struct.nouveau_device*, %struct.nouveau_device** %11, align 8
  %97 = load i32, i32* @NV_PBUS_DEBUG_4, align 4
  %98 = call i32 @nv_rd32(%struct.nouveau_device* %96, i32 %97)
  %99 = or i32 %98, 24
  %100 = call i32 @nv_wr32(%struct.nouveau_device* %94, i32 %95, i32 %99)
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %93, %44, %29
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_device* @nv_device(i32) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*) #1

declare dso_local i32 @NV_INFO(%struct.nouveau_drm*, i8*) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_device*, i32, i32) #1

declare dso_local i32 @ROM32(i32) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
