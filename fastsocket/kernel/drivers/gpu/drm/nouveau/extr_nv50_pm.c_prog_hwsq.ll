; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_prog_hwsq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_prog_hwsq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.hwsq_ucode = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.nouveau_device = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"hwsq ucode exec timed out\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"0x001308: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"0x%06x: 0x%08x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.hwsq_ucode*)* @prog_hwsq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prog_hwsq(%struct.drm_device* %0, %struct.hwsq_ucode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.hwsq_ucode*, align 8
  %6 = alloca %struct.nouveau_device*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.hwsq_ucode* %1, %struct.hwsq_ucode** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %11)
  store %struct.nouveau_device* %12, %struct.nouveau_device** %6, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %13)
  store %struct.nouveau_drm* %14, %struct.nouveau_drm** %7, align 8
  %15 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %16 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_4__* @nv_device(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 148
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 5120, i32* %8, align 4
  store i32 3, i32* %9, align 4
  br label %24

23:                                               ; preds = %2
  store i32 524288, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %26 = call i32 @nv_mask(%struct.nouveau_device* %25, i32 4248, i32 8, i32 0)
  %27 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %28 = call i32 @nv_wr32(%struct.nouveau_device* %27, i32 4868, i32 0)
  %29 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %30 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.TYPE_4__* @nv_device(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 146
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %38 = call i32 @nv_wr32(%struct.nouveau_device* %37, i32 4888, i32 0)
  br label %39

39:                                               ; preds = %36, %24
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %62, %39
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.hwsq_ucode*, %struct.hwsq_ucode** %5, align 8
  %43 = getelementptr inbounds %struct.hwsq_ucode, %struct.hwsq_ucode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sdiv i32 %44, 4
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %40
  %48 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = mul nsw i32 %50, 4
  %52 = add nsw i32 %49, %51
  %53 = load %struct.hwsq_ucode*, %struct.hwsq_ucode** %5, align 8
  %54 = getelementptr inbounds %struct.hwsq_ucode, %struct.hwsq_ucode* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @nv_wr32(%struct.nouveau_device* %48, i32 %52, i32 %60)
  br label %62

62:                                               ; preds = %47
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %40

65:                                               ; preds = %40
  %66 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %67 = call i32 @nv_mask(%struct.nouveau_device* %66, i32 4248, i32 24, i32 24)
  %68 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @nv_wr32(%struct.nouveau_device* %68, i32 4876, i32 %69)
  %71 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %72 = call i32 @nv_wait(%struct.nouveau_device* %71, i32 4872, i32 256, i32 0)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %105, label %74

74:                                               ; preds = %65
  %75 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %76 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_ERROR(%struct.nouveau_drm* %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %77 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %78 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %79 = call i32 @nv_rd32(%struct.nouveau_device* %78, i32 4872)
  %80 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_ERROR(%struct.nouveau_drm* %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %99, %74
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.hwsq_ucode*, %struct.hwsq_ucode** %5, align 8
  %84 = getelementptr inbounds %struct.hwsq_ucode, %struct.hwsq_ucode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sdiv i32 %85, 4
  %87 = icmp slt i32 %82, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %81
  %89 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %90 = load i32, i32* %10, align 4
  %91 = mul nsw i32 %90, 4
  %92 = add nsw i32 5120, %91
  %93 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %94 = load i32, i32* %10, align 4
  %95 = mul nsw i32 %94, 4
  %96 = add nsw i32 5120, %95
  %97 = call i32 @nv_rd32(%struct.nouveau_device* %93, i32 %96)
  %98 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_ERROR(%struct.nouveau_drm* %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %97)
  br label %99

99:                                               ; preds = %88
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %81

102:                                              ; preds = %81
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %106

105:                                              ; preds = %65
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %102
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.TYPE_4__* @nv_device(i32) #1

declare dso_local i32 @nv_mask(%struct.nouveau_device*, i32, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_device*, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nouveau_device*, i32, i32, i32) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, ...) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
