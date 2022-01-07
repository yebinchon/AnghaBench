; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_pm.c_nouveau_pm_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_pm.c_nouveau_pm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_pm = type { %struct.nouveau_pm_level, %struct.nouveau_pm_level* }
%struct.nouveau_pm_level = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_pm_resume(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.nouveau_pm*, align 8
  %4 = alloca %struct.nouveau_pm_level*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = call %struct.nouveau_pm* @nouveau_pm(%struct.drm_device* %5)
  store %struct.nouveau_pm* %6, %struct.nouveau_pm** %3, align 8
  %7 = load %struct.nouveau_pm*, %struct.nouveau_pm** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %7, i32 0, i32 1
  %9 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %8, align 8
  %10 = icmp ne %struct.nouveau_pm_level* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.nouveau_pm*, %struct.nouveau_pm** %3, align 8
  %13 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %12, i32 0, i32 1
  %14 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %13, align 8
  %15 = load %struct.nouveau_pm*, %struct.nouveau_pm** %3, align 8
  %16 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %15, i32 0, i32 0
  %17 = icmp eq %struct.nouveau_pm_level* %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %1
  br label %30

19:                                               ; preds = %11
  %20 = load %struct.nouveau_pm*, %struct.nouveau_pm** %3, align 8
  %21 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %20, i32 0, i32 1
  %22 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %21, align 8
  store %struct.nouveau_pm_level* %22, %struct.nouveau_pm_level** %4, align 8
  %23 = load %struct.nouveau_pm*, %struct.nouveau_pm** %3, align 8
  %24 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %23, i32 0, i32 0
  %25 = load %struct.nouveau_pm*, %struct.nouveau_pm** %3, align 8
  %26 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %25, i32 0, i32 1
  store %struct.nouveau_pm_level* %24, %struct.nouveau_pm_level** %26, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %28 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %29 = call i32 @nouveau_pm_perflvl_set(%struct.drm_device* %27, %struct.nouveau_pm_level* %28)
  br label %30

30:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.nouveau_pm* @nouveau_pm(%struct.drm_device*) #1

declare dso_local i32 @nouveau_pm_perflvl_set(%struct.drm_device*, %struct.nouveau_pm_level*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
