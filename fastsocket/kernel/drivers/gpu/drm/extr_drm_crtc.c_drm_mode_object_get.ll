; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_object_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_object_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_mode_object = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Ran out memory getting a mode number\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_mode_object*, i32)* @drm_mode_object_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_mode_object_get(%struct.drm_device* %0, %struct.drm_mode_object* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_mode_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_mode_object* %1, %struct.drm_mode_object** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %39, %3
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i64 @idr_pre_get(i32* %13, i32 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %53

21:                                               ; preds = %10
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.drm_mode_object*, %struct.drm_mode_object** %6, align 8
  %30 = call i32 @idr_get_new_above(i32* %28, %struct.drm_mode_object* %29, i32 1, i32* %8)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %21
  br label %10

40:                                               ; preds = %21
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %53

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.drm_mode_object*, %struct.drm_mode_object** %6, align 8
  %49 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.drm_mode_object*, %struct.drm_mode_object** %6, align 8
  %52 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %46, %43, %17
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_get_new_above(i32*, %struct.drm_mode_object*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
