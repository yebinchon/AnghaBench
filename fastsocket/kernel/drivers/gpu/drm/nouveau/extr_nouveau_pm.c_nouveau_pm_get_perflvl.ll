; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_pm.c_nouveau_pm_get_perflvl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_pm.c_nouveau_pm_get_perflvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.drm_device = type { i32 }
%struct.nouveau_pm = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }
%struct.nouveau_pm_level = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"profile: %s, %s\0Ac:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @nouveau_pm_get_perflvl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nouveau_pm_get_perflvl(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.nouveau_pm*, align 8
  %9 = alloca %struct.nouveau_pm_level, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call i32 @to_pci_dev(%struct.device* %13)
  %15 = call %struct.drm_device* @pci_get_drvdata(i32 %14)
  store %struct.drm_device* %15, %struct.drm_device** %7, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %17 = call %struct.nouveau_pm* @nouveau_pm(%struct.drm_device* %16)
  store %struct.nouveau_pm* %17, %struct.nouveau_pm** %8, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.nouveau_pm*, %struct.nouveau_pm** %8, align 8
  %23 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.nouveau_pm*, %struct.nouveau_pm** %8, align 8
  %28 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @snprintf(i8* %20, i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %31)
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = load i8*, i8** %12, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 %34
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %44 = call i32 @nouveau_pm_perflvl_get(%struct.drm_device* %43, %struct.nouveau_pm_level* %9)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %3
  %48 = load i8*, i8** %12, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @nouveau_pm_perflvl_info(%struct.nouveau_pm_level* %9, i8* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %3
  %52 = load i8*, i8** %6, align 8
  %53 = call i64 @strlen(i8* %52)
  ret i64 %53
}

declare dso_local %struct.drm_device* @pci_get_drvdata(i32) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local %struct.nouveau_pm* @nouveau_pm(%struct.drm_device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @nouveau_pm_perflvl_get(%struct.drm_device*, %struct.nouveau_pm_level*) #1

declare dso_local i32 @nouveau_pm_perflvl_info(%struct.nouveau_pm_level*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
