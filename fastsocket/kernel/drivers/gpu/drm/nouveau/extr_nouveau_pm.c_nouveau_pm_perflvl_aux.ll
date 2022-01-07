; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_pm.c_nouveau_pm_perflvl_aux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_pm.c_nouveau_pm_perflvl_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_pm_level = type { i64, i64 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_pm = type { i32 (%struct.drm_device.0*, i64)*, %struct.TYPE_2__ }
%struct.drm_device.0 = type opaque
%struct.TYPE_2__ = type { i64 }
%struct.nouveau_therm = type { i32 (%struct.nouveau_therm*, i64)* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"fanspeed set failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"voltage set failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.nouveau_pm_level*, %struct.nouveau_pm_level*, %struct.nouveau_pm_level*)* @nouveau_pm_perflvl_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_pm_perflvl_aux(%struct.drm_device* %0, %struct.nouveau_pm_level* %1, %struct.nouveau_pm_level* %2, %struct.nouveau_pm_level* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.nouveau_pm_level*, align 8
  %8 = alloca %struct.nouveau_pm_level*, align 8
  %9 = alloca %struct.nouveau_pm_level*, align 8
  %10 = alloca %struct.nouveau_drm*, align 8
  %11 = alloca %struct.nouveau_pm*, align 8
  %12 = alloca %struct.nouveau_therm*, align 8
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.nouveau_pm_level* %1, %struct.nouveau_pm_level** %7, align 8
  store %struct.nouveau_pm_level* %2, %struct.nouveau_pm_level** %8, align 8
  store %struct.nouveau_pm_level* %3, %struct.nouveau_pm_level** %9, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %15 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %14)
  store %struct.nouveau_drm* %15, %struct.nouveau_drm** %10, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %17 = call %struct.nouveau_pm* @nouveau_pm(%struct.drm_device* %16)
  store %struct.nouveau_pm* %17, %struct.nouveau_pm** %11, align 8
  %18 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %19 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.nouveau_therm* @nouveau_therm(i32 %20)
  store %struct.nouveau_therm* %21, %struct.nouveau_therm** %12, align 8
  %22 = load %struct.nouveau_therm*, %struct.nouveau_therm** %12, align 8
  %23 = icmp ne %struct.nouveau_therm* %22, null
  br i1 %23, label %24, label %68

24:                                               ; preds = %4
  %25 = load %struct.nouveau_therm*, %struct.nouveau_therm** %12, align 8
  %26 = getelementptr inbounds %struct.nouveau_therm, %struct.nouveau_therm* %25, i32 0, i32 0
  %27 = load i32 (%struct.nouveau_therm*, i64)*, i32 (%struct.nouveau_therm*, i64)** %26, align 8
  %28 = icmp ne i32 (%struct.nouveau_therm*, i64)* %27, null
  br i1 %28, label %29, label %68

29:                                               ; preds = %24
  %30 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %8, align 8
  %31 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %68

34:                                               ; preds = %29
  %35 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %9, align 8
  %36 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %34
  %40 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %9, align 8
  %41 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %8, align 8
  %44 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %39
  %48 = load %struct.nouveau_therm*, %struct.nouveau_therm** %12, align 8
  %49 = getelementptr inbounds %struct.nouveau_therm, %struct.nouveau_therm* %48, i32 0, i32 0
  %50 = load i32 (%struct.nouveau_therm*, i64)*, i32 (%struct.nouveau_therm*, i64)** %49, align 8
  %51 = load %struct.nouveau_therm*, %struct.nouveau_therm** %12, align 8
  %52 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %7, align 8
  %53 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 %50(%struct.nouveau_therm* %51, i64 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %47
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @NV_ERROR(%struct.nouveau_drm* %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %58, %47
  br label %68

68:                                               ; preds = %67, %39, %34, %29, %24, %4
  %69 = load %struct.nouveau_pm*, %struct.nouveau_pm** %11, align 8
  %70 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %111

74:                                               ; preds = %68
  %75 = load %struct.nouveau_pm*, %struct.nouveau_pm** %11, align 8
  %76 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %75, i32 0, i32 0
  %77 = load i32 (%struct.drm_device.0*, i64)*, i32 (%struct.drm_device.0*, i64)** %76, align 8
  %78 = icmp ne i32 (%struct.drm_device.0*, i64)* %77, null
  br i1 %78, label %79, label %111

79:                                               ; preds = %74
  %80 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %7, align 8
  %81 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %79
  %85 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %9, align 8
  %86 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %8, align 8
  %89 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %87, %90
  br i1 %91, label %92, label %110

92:                                               ; preds = %84
  %93 = load %struct.nouveau_pm*, %struct.nouveau_pm** %11, align 8
  %94 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %93, i32 0, i32 0
  %95 = load i32 (%struct.drm_device.0*, i64)*, i32 (%struct.drm_device.0*, i64)** %94, align 8
  %96 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %97 = bitcast %struct.drm_device* %96 to %struct.drm_device.0*
  %98 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %7, align 8
  %99 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 %95(%struct.drm_device.0* %97, i64 %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %92
  %105 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @NV_ERROR(%struct.nouveau_drm* %105, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %13, align 4
  store i32 %108, i32* %5, align 4
  br label %112

109:                                              ; preds = %92
  br label %110

110:                                              ; preds = %109, %84, %79
  br label %111

111:                                              ; preds = %110, %74, %68
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %104
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_pm* @nouveau_pm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_therm* @nouveau_therm(i32) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
