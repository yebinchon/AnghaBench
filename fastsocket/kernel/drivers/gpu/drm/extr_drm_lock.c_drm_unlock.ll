; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_lock.c_drm_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_lock.c_drm_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32* }
%struct.drm_file = type { %struct.drm_master* }
%struct.drm_master = type { i32 }
%struct.drm_lock = type { i64 }

@DRM_KERNEL_CONTEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Process %d using kernel context %d\0A\00", align 1
@current = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@_DRM_STAT_UNLOCKS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_unlock(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_lock*, align 8
  %9 = alloca %struct.drm_master*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.drm_lock*
  store %struct.drm_lock* %11, %struct.drm_lock** %8, align 8
  %12 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %13 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %12, i32 0, i32 0
  %14 = load %struct.drm_master*, %struct.drm_master** %13, align 8
  store %struct.drm_master* %14, %struct.drm_master** %9, align 8
  %15 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %16 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DRM_KERNEL_CONTEXT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load i32, i32* @current, align 4
  %22 = call i32 @task_pid_nr(i32 %21)
  %23 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %24 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %46

29:                                               ; preds = %3
  %30 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @_DRM_STAT_UNLOCKS, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = call i32 @atomic_inc(i32* %34)
  %36 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %37 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %36, i32 0, i32 0
  %38 = load %struct.drm_lock*, %struct.drm_lock** %8, align 8
  %39 = getelementptr inbounds %struct.drm_lock, %struct.drm_lock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @drm_lock_free(i32* %37, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43, %29
  %45 = call i32 (...) @unblock_all_signals()
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %20
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @DRM_ERROR(i8*, i32, i64) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @drm_lock_free(i32*, i64) #1

declare dso_local i32 @unblock_all_signals(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
