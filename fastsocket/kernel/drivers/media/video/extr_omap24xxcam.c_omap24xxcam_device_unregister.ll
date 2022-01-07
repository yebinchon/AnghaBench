; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_device_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_device_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_int_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.omap24xxcam_device* }
%struct.omap24xxcam_device = type { i32*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@dev_attr_streaming = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_int_device*)* @omap24xxcam_device_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap24xxcam_device_unregister(%struct.v4l2_int_device* %0) #0 {
  %2 = alloca %struct.v4l2_int_device*, align 8
  %3 = alloca %struct.omap24xxcam_device*, align 8
  store %struct.v4l2_int_device* %0, %struct.v4l2_int_device** %2, align 8
  %4 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %2, align 8
  %5 = getelementptr inbounds %struct.v4l2_int_device, %struct.v4l2_int_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %10, align 8
  store %struct.omap24xxcam_device* %11, %struct.omap24xxcam_device** %3, align 8
  %12 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %13 = call i32 @omap24xxcam_sensor_exit(%struct.omap24xxcam_device* %12)
  %14 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %15 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %14, i32 0, i32 2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = icmp ne %struct.TYPE_9__* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  %19 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %20 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %19, i32 0, i32 2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %27 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %26, i32 0, i32 2
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = call i32 @video_device_release(%struct.TYPE_9__* %28)
  br label %35

30:                                               ; preds = %18
  %31 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %32 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %31, i32 0, i32 2
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = call i32 @video_unregister_device(%struct.TYPE_9__* %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %37 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %36, i32 0, i32 2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %37, align 8
  br label %38

38:                                               ; preds = %35, %1
  %39 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %40 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @device_remove_file(i32 %41, i32* @dev_attr_streaming)
  %43 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %44 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  ret void
}

declare dso_local i32 @omap24xxcam_sensor_exit(%struct.omap24xxcam_device*) #1

declare dso_local i32 @video_device_release(%struct.TYPE_9__*) #1

declare dso_local i32 @video_unregister_device(%struct.TYPE_9__*) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
