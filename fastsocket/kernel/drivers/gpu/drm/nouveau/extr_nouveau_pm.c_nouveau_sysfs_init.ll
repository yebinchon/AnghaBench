; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_pm.c_nouveau_sysfs_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_pm.c_nouveau_sysfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32*, i32 }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.drm_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_pm = type { i32, %struct.nouveau_pm_level* }
%struct.nouveau_pm_level = type { %struct.TYPE_7__, i32, i32* }

@dev_attr_performance_level = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@S_IRUGO = common dso_local global i32 0, align 4
@nouveau_pm_get_perflvl_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed pervlvl %d sysfs: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @nouveau_sysfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_sysfs_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nouveau_pm*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nouveau_pm_level*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %10)
  store %struct.nouveau_drm* %11, %struct.nouveau_drm** %4, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = call %struct.nouveau_pm* @nouveau_pm(%struct.drm_device* %12)
  store %struct.nouveau_pm* %13, %struct.nouveau_pm** %5, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %6, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call i32 @device_create_file(%struct.device* %18, %struct.TYPE_7__* @dev_attr_performance_level)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %86

24:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %82, %24
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.nouveau_pm*, %struct.nouveau_pm** %5, align 8
  %28 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %85

31:                                               ; preds = %25
  %32 = load %struct.nouveau_pm*, %struct.nouveau_pm** %5, align 8
  %33 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %32, i32 0, i32 1
  %34 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %34, i64 %36
  store %struct.nouveau_pm_level* %37, %struct.nouveau_pm_level** %9, align 8
  %38 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %9, align 8
  %39 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %9, align 8
  %42 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32* %40, i32** %44, align 8
  %45 = load i32, i32* @S_IRUGO, align 4
  %46 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %9, align 8
  %47 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 8
  %50 = load i32, i32* @nouveau_pm_get_perflvl_info, align 4
  %51 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %9, align 8
  %52 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 8
  %54 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %9, align 8
  %55 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  %57 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %9, align 8
  %58 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = call i32 @sysfs_attr_init(%struct.TYPE_6__* %59)
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %9, align 8
  %63 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %62, i32 0, i32 0
  %64 = call i32 @device_create_file(%struct.device* %61, %struct.TYPE_7__* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %31
  %68 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %69 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %9, align 8
  %70 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @NV_ERROR(%struct.nouveau_drm* %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %9, align 8
  %75 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32* null, i32** %77, align 8
  %78 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %79 = call i32 @nouveau_pm_fini(%struct.drm_device* %78)
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %86

81:                                               ; preds = %31
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %25

85:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %67, %22
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_pm* @nouveau_pm(%struct.drm_device*) #1

declare dso_local i32 @device_create_file(%struct.device*, %struct.TYPE_7__*) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_6__*) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, i32, i32) #1

declare dso_local i32 @nouveau_pm_fini(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
