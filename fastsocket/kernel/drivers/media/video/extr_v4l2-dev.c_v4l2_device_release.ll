; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-dev.c_v4l2_device_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-dev.c_v4l2_device_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i64, i32 (%struct.video_device*)*, i32* }
%struct.device = type { i32 }

@videodev_lock = common dso_local global i32 0, align 4
@video_device = common dso_local global %struct.video_device** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @v4l2_device_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l2_device_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.video_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.video_device* @to_video_device(%struct.device* %4)
  store %struct.video_device* %5, %struct.video_device** %3, align 8
  %6 = call i32 @mutex_lock(i32* @videodev_lock)
  %7 = load %struct.video_device**, %struct.video_device*** @video_device, align 8
  %8 = load %struct.video_device*, %struct.video_device** %3, align 8
  %9 = getelementptr inbounds %struct.video_device, %struct.video_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.video_device*, %struct.video_device** %7, i64 %10
  %12 = load %struct.video_device*, %struct.video_device** %11, align 8
  %13 = load %struct.video_device*, %struct.video_device** %3, align 8
  %14 = icmp ne %struct.video_device* %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = call i32 @mutex_unlock(i32* @videodev_lock)
  %17 = call i32 @WARN_ON(i32 1)
  br label %38

18:                                               ; preds = %1
  %19 = load %struct.video_device**, %struct.video_device*** @video_device, align 8
  %20 = load %struct.video_device*, %struct.video_device** %3, align 8
  %21 = getelementptr inbounds %struct.video_device, %struct.video_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.video_device*, %struct.video_device** %19, i64 %22
  store %struct.video_device* null, %struct.video_device** %23, align 8
  %24 = load %struct.video_device*, %struct.video_device** %3, align 8
  %25 = getelementptr inbounds %struct.video_device, %struct.video_device* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @cdev_del(i32* %26)
  %28 = load %struct.video_device*, %struct.video_device** %3, align 8
  %29 = getelementptr inbounds %struct.video_device, %struct.video_device* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = load %struct.video_device*, %struct.video_device** %3, align 8
  %31 = call i32 @devnode_clear(%struct.video_device* %30)
  %32 = call i32 @mutex_unlock(i32* @videodev_lock)
  %33 = load %struct.video_device*, %struct.video_device** %3, align 8
  %34 = getelementptr inbounds %struct.video_device, %struct.video_device* %33, i32 0, i32 1
  %35 = load i32 (%struct.video_device*)*, i32 (%struct.video_device*)** %34, align 8
  %36 = load %struct.video_device*, %struct.video_device** %3, align 8
  %37 = call i32 %35(%struct.video_device* %36)
  br label %38

38:                                               ; preds = %18, %15
  ret void
}

declare dso_local %struct.video_device* @to_video_device(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @devnode_clear(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
