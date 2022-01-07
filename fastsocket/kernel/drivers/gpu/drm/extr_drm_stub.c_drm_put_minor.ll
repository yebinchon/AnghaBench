; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_stub.c_drm_put_minor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_stub.c_drm_put_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_minor = type { i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"release secondary minor %d\0A\00", align 1
@DRM_MINOR_LEGACY = common dso_local global i64 0, align 8
@drm_proc_root = common dso_local global i32 0, align 4
@drm_minors_idr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_put_minor(%struct.drm_minor** %0) #0 {
  %2 = alloca %struct.drm_minor**, align 8
  %3 = alloca %struct.drm_minor*, align 8
  store %struct.drm_minor** %0, %struct.drm_minor*** %2, align 8
  %4 = load %struct.drm_minor**, %struct.drm_minor*** %2, align 8
  %5 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  store %struct.drm_minor* %5, %struct.drm_minor** %3, align 8
  %6 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %7 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %11 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DRM_MINOR_LEGACY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %17 = load i32, i32* @drm_proc_root, align 4
  %18 = call i32 @drm_proc_cleanup(%struct.drm_minor* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %21 = call i32 @drm_sysfs_device_remove(%struct.drm_minor* %20)
  %22 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %23 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @idr_remove(i32* @drm_minors_idr, i32 %24)
  %26 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %27 = call i32 @kfree(%struct.drm_minor* %26)
  %28 = load %struct.drm_minor**, %struct.drm_minor*** %2, align 8
  store %struct.drm_minor* null, %struct.drm_minor** %28, align 8
  ret i32 0
}

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @drm_proc_cleanup(%struct.drm_minor*, i32) #1

declare dso_local i32 @drm_sysfs_device_remove(%struct.drm_minor*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.drm_minor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
