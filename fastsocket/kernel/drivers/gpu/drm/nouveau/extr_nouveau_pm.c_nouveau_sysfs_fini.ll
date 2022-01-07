; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_pm.c_nouveau_sysfs_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_pm.c_nouveau_sysfs_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.drm_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.nouveau_pm = type { i32, %struct.nouveau_pm_level* }
%struct.nouveau_pm_level = type { %struct.TYPE_7__ }

@dev_attr_performance_level = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @nouveau_sysfs_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_sysfs_fini(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.nouveau_pm*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_pm_level*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = call %struct.nouveau_pm* @nouveau_pm(%struct.drm_device* %7)
  store %struct.nouveau_pm* %8, %struct.nouveau_pm** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call i32 @device_remove_file(%struct.device* %13, %struct.TYPE_7__* @dev_attr_performance_level)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %40, %1
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.nouveau_pm*, %struct.nouveau_pm** %3, align 8
  %18 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %15
  %22 = load %struct.nouveau_pm*, %struct.nouveau_pm** %3, align 8
  %23 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %22, i32 0, i32 1
  %24 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %24, i64 %26
  store %struct.nouveau_pm_level* %27, %struct.nouveau_pm_level** %6, align 8
  %28 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %6, align 8
  %29 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  br label %43

35:                                               ; preds = %21
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %6, align 8
  %38 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %37, i32 0, i32 0
  %39 = call i32 @device_remove_file(%struct.device* %36, %struct.TYPE_7__* %38)
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %15

43:                                               ; preds = %34, %15
  ret void
}

declare dso_local %struct.nouveau_pm* @nouveau_pm(%struct.drm_device*) #1

declare dso_local i32 @device_remove_file(%struct.device*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
