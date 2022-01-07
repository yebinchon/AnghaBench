; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_pm.c_nouveau_pm_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_pm.c_nouveau_pm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_timer = type { i32 (%struct.nouveau_timer*)* }
%struct.nouveau_pm = type { %struct.nouveau_pm_level*, %struct.nouveau_pm_profile*, %struct.nouveau_pm_profile*, %struct.nouveau_pm_profile* }
%struct.nouveau_pm_level = type { i32 }
%struct.nouveau_pm_profile = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nouveau_pm_level* (%struct.nouveau_pm_profile*)*, i32 (%struct.nouveau_pm_profile*)*, i32 (%struct.nouveau_pm_profile*)* }

@.str = private unnamed_addr constant [30 x i8] c"setting performance level: %d\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"> reclocking failed: %d\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"> reclocking took %lluns\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_pm_trigger(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.nouveau_drm*, align 8
  %4 = alloca %struct.nouveau_timer*, align 8
  %5 = alloca %struct.nouveau_pm*, align 8
  %6 = alloca %struct.nouveau_pm_profile*, align 8
  %7 = alloca %struct.nouveau_pm_level*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %11 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %10)
  store %struct.nouveau_drm* %11, %struct.nouveau_drm** %3, align 8
  %12 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %13 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.nouveau_timer* @nouveau_timer(i32 %14)
  store %struct.nouveau_timer* %15, %struct.nouveau_timer** %4, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %17 = call %struct.nouveau_pm* @nouveau_pm(%struct.drm_device* %16)
  store %struct.nouveau_pm* %17, %struct.nouveau_pm** %5, align 8
  store %struct.nouveau_pm_profile* null, %struct.nouveau_pm_profile** %6, align 8
  store %struct.nouveau_pm_level* null, %struct.nouveau_pm_level** %7, align 8
  %18 = call i64 (...) @power_supply_is_system_supplied()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.nouveau_pm*, %struct.nouveau_pm** %5, align 8
  %22 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %21, i32 0, i32 3
  %23 = load %struct.nouveau_pm_profile*, %struct.nouveau_pm_profile** %22, align 8
  store %struct.nouveau_pm_profile* %23, %struct.nouveau_pm_profile** %6, align 8
  br label %28

24:                                               ; preds = %1
  %25 = load %struct.nouveau_pm*, %struct.nouveau_pm** %5, align 8
  %26 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %25, i32 0, i32 2
  %27 = load %struct.nouveau_pm_profile*, %struct.nouveau_pm_profile** %26, align 8
  store %struct.nouveau_pm_profile* %27, %struct.nouveau_pm_profile** %6, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.nouveau_pm_profile*, %struct.nouveau_pm_profile** %6, align 8
  %30 = load %struct.nouveau_pm*, %struct.nouveau_pm** %5, align 8
  %31 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %30, i32 0, i32 1
  %32 = load %struct.nouveau_pm_profile*, %struct.nouveau_pm_profile** %31, align 8
  %33 = icmp ne %struct.nouveau_pm_profile* %29, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %28
  %35 = load %struct.nouveau_pm*, %struct.nouveau_pm** %5, align 8
  %36 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %35, i32 0, i32 1
  %37 = load %struct.nouveau_pm_profile*, %struct.nouveau_pm_profile** %36, align 8
  %38 = getelementptr inbounds %struct.nouveau_pm_profile, %struct.nouveau_pm_profile* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32 (%struct.nouveau_pm_profile*)*, i32 (%struct.nouveau_pm_profile*)** %40, align 8
  %42 = load %struct.nouveau_pm*, %struct.nouveau_pm** %5, align 8
  %43 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %42, i32 0, i32 1
  %44 = load %struct.nouveau_pm_profile*, %struct.nouveau_pm_profile** %43, align 8
  %45 = call i32 %41(%struct.nouveau_pm_profile* %44)
  %46 = load %struct.nouveau_pm_profile*, %struct.nouveau_pm_profile** %6, align 8
  %47 = load %struct.nouveau_pm*, %struct.nouveau_pm** %5, align 8
  %48 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %47, i32 0, i32 1
  store %struct.nouveau_pm_profile* %46, %struct.nouveau_pm_profile** %48, align 8
  %49 = load %struct.nouveau_pm*, %struct.nouveau_pm** %5, align 8
  %50 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %49, i32 0, i32 1
  %51 = load %struct.nouveau_pm_profile*, %struct.nouveau_pm_profile** %50, align 8
  %52 = getelementptr inbounds %struct.nouveau_pm_profile, %struct.nouveau_pm_profile* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32 (%struct.nouveau_pm_profile*)*, i32 (%struct.nouveau_pm_profile*)** %54, align 8
  %56 = load %struct.nouveau_pm*, %struct.nouveau_pm** %5, align 8
  %57 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %56, i32 0, i32 1
  %58 = load %struct.nouveau_pm_profile*, %struct.nouveau_pm_profile** %57, align 8
  %59 = call i32 %55(%struct.nouveau_pm_profile* %58)
  br label %60

60:                                               ; preds = %34, %28
  %61 = load %struct.nouveau_pm_profile*, %struct.nouveau_pm_profile** %6, align 8
  %62 = getelementptr inbounds %struct.nouveau_pm_profile, %struct.nouveau_pm_profile* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.nouveau_pm_level* (%struct.nouveau_pm_profile*)*, %struct.nouveau_pm_level* (%struct.nouveau_pm_profile*)** %64, align 8
  %66 = load %struct.nouveau_pm_profile*, %struct.nouveau_pm_profile** %6, align 8
  %67 = call %struct.nouveau_pm_level* %65(%struct.nouveau_pm_profile* %66)
  store %struct.nouveau_pm_level* %67, %struct.nouveau_pm_level** %7, align 8
  %68 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %7, align 8
  %69 = load %struct.nouveau_pm*, %struct.nouveau_pm** %5, align 8
  %70 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %69, i32 0, i32 0
  %71 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %70, align 8
  %72 = icmp ne %struct.nouveau_pm_level* %68, %71
  br i1 %72, label %73, label %103

73:                                               ; preds = %60
  %74 = load %struct.nouveau_timer*, %struct.nouveau_timer** %4, align 8
  %75 = getelementptr inbounds %struct.nouveau_timer, %struct.nouveau_timer* %74, i32 0, i32 0
  %76 = load i32 (%struct.nouveau_timer*)*, i32 (%struct.nouveau_timer*)** %75, align 8
  %77 = load %struct.nouveau_timer*, %struct.nouveau_timer** %4, align 8
  %78 = call i32 %76(%struct.nouveau_timer* %77)
  store i32 %78, i32* %9, align 4
  %79 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %80 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %7, align 8
  %81 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @NV_INFO(%struct.nouveau_drm* %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %85 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %7, align 8
  %86 = call i32 @nouveau_pm_perflvl_set(%struct.drm_device* %84, %struct.nouveau_pm_level* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %73
  %90 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @NV_INFO(%struct.nouveau_drm* %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %89, %73
  %94 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %95 = load %struct.nouveau_timer*, %struct.nouveau_timer** %4, align 8
  %96 = getelementptr inbounds %struct.nouveau_timer, %struct.nouveau_timer* %95, i32 0, i32 0
  %97 = load i32 (%struct.nouveau_timer*)*, i32 (%struct.nouveau_timer*)** %96, align 8
  %98 = load %struct.nouveau_timer*, %struct.nouveau_timer** %4, align 8
  %99 = call i32 %97(%struct.nouveau_timer* %98)
  %100 = load i32, i32* %9, align 4
  %101 = sub nsw i32 %99, %100
  %102 = call i32 @NV_INFO(%struct.nouveau_drm* %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %93, %60
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_timer* @nouveau_timer(i32) #1

declare dso_local %struct.nouveau_pm* @nouveau_pm(%struct.drm_device*) #1

declare dso_local i64 @power_supply_is_system_supplied(...) #1

declare dso_local i32 @NV_INFO(%struct.nouveau_drm*, i8*, i32) #1

declare dso_local i32 @nouveau_pm_perflvl_set(%struct.drm_device*, %struct.nouveau_pm_level*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
