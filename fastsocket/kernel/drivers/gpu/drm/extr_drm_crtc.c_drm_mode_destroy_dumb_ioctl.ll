; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_destroy_dumb_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_destroy_dumb_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_file*, %struct.drm_device*, i32)* }
%struct.drm_file = type { i32 }
%struct.drm_mode_destroy_dumb = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_destroy_dumb_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_destroy_dumb*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.drm_mode_destroy_dumb*
  store %struct.drm_mode_destroy_dumb* %10, %struct.drm_mode_destroy_dumb** %8, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.drm_file*, %struct.drm_device*, i32)*, i32 (%struct.drm_file*, %struct.drm_device*, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.drm_file*, %struct.drm_device*, i32)* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOSYS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %32

20:                                               ; preds = %3
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.drm_file*, %struct.drm_device*, i32)*, i32 (%struct.drm_file*, %struct.drm_device*, i32)** %24, align 8
  %26 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %28 = load %struct.drm_mode_destroy_dumb*, %struct.drm_mode_destroy_dumb** %8, align 8
  %29 = getelementptr inbounds %struct.drm_mode_destroy_dumb, %struct.drm_mode_destroy_dumb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 %25(%struct.drm_file* %26, %struct.drm_device* %27, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %20, %17
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
