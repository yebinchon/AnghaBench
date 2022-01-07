; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_vidioc_streamon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_vidioc_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.omap24xxcam_fh = type { i32, %struct.omap24xxcam_device* }
%struct.omap24xxcam_device = type { i32, %struct.TYPE_2__*, %struct.file* }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"vidioc_int_g_ifparm failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"streaming\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.omap24xxcam_fh*, align 8
  %8 = alloca %struct.omap24xxcam_device*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.omap24xxcam_fh*
  store %struct.omap24xxcam_fh* %11, %struct.omap24xxcam_fh** %7, align 8
  %12 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %7, align 8
  %13 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %12, i32 0, i32 1
  %14 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %13, align 8
  store %struct.omap24xxcam_device* %14, %struct.omap24xxcam_device** %8, align 8
  %15 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %16 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %19 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %18, i32 0, i32 2
  %20 = load %struct.file*, %struct.file** %19, align 8
  %21 = icmp ne %struct.file* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %51

25:                                               ; preds = %3
  %26 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %27 = call i32 @omap24xxcam_sensor_if_enable(%struct.omap24xxcam_device* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %32 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call i32 @dev_dbg(%struct.TYPE_2__* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %51

35:                                               ; preds = %25
  %36 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %7, align 8
  %37 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %36, i32 0, i32 0
  %38 = call i32 @videobuf_streamon(i32* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %35
  %42 = load %struct.file*, %struct.file** %4, align 8
  %43 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %44 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %43, i32 0, i32 2
  store %struct.file* %42, %struct.file** %44, align 8
  %45 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %46 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @sysfs_notify(i32* %48, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %41, %35
  br label %51

51:                                               ; preds = %50, %30, %22
  %52 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %8, align 8
  %53 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @omap24xxcam_sensor_if_enable(%struct.omap24xxcam_device*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @videobuf_streamon(i32*) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
