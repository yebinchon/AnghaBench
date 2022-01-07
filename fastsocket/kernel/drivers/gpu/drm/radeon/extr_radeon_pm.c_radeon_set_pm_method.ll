; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_set_pm_method.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_set_pm_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"dynpm\00", align 1
@PM_METHOD_DYNPM = common dso_local global i32 0, align 4
@DYNPM_STATE_PAUSED = common dso_local global i32 0, align 4
@DYNPM_ACTION_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@DYNPM_STATE_DISABLED = common dso_local global i32 0, align 4
@DYNPM_ACTION_NONE = common dso_local global i32 0, align 4
@PM_METHOD_PROFILE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @radeon_set_pm_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @radeon_set_pm_method(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.radeon_device*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call i32 @to_pci_dev(%struct.device* %11)
  %13 = call %struct.drm_device* @pci_get_drvdata(i32 %12)
  store %struct.drm_device* %13, %struct.drm_device** %9, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  store %struct.radeon_device* %16, %struct.radeon_device** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = call i64 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %4
  %22 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i32, i32* @PM_METHOD_DYNPM, align 4
  %27 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @DYNPM_STATE_PAUSED, align 4
  %31 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @DYNPM_ACTION_DEFAULT, align 4
  %35 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 4
  %38 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = call i32 @mutex_unlock(i32* %40)
  br label %76

42:                                               ; preds = %4
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i64 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %42
  %48 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load i32, i32* @DYNPM_STATE_DISABLED, align 4
  %53 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @DYNPM_ACTION_NONE, align 4
  %57 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %58 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @PM_METHOD_PROFILE, align 4
  %61 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 4
  %64 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %65 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @cancel_delayed_work_sync(i32* %70)
  br label %75

72:                                               ; preds = %42
  %73 = load i64, i64* @EINVAL, align 8
  %74 = sub i64 0, %73
  store i64 %74, i64* %8, align 8
  br label %79

75:                                               ; preds = %47
  br label %76

76:                                               ; preds = %75, %21
  %77 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %78 = call i32 @radeon_pm_compute_clocks(%struct.radeon_device* %77)
  br label %79

79:                                               ; preds = %76, %72
  %80 = load i64, i64* %8, align 8
  ret i64 %80
}

declare dso_local %struct.drm_device* @pci_get_drvdata(i32) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @radeon_pm_compute_clocks(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
