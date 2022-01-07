; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_driver.c_uvc_register_video.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_driver.c_uvc_register_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.uvc_streaming = type { %struct.video_device* }
%struct.video_device = type { i32, i32, i32*, i32* }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to initialize the device (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to allocate video device (%d).\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@uvc_fops = common dso_local global i32 0, align 4
@uvc_release = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to register video device (%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_device*, %struct.uvc_streaming*)* @uvc_register_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_register_video(%struct.uvc_device* %0, %struct.uvc_streaming* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_device*, align 8
  %5 = alloca %struct.uvc_streaming*, align 8
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca i32, align 4
  store %struct.uvc_device* %0, %struct.uvc_device** %4, align 8
  store %struct.uvc_streaming* %1, %struct.uvc_streaming** %5, align 8
  %8 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %9 = call i32 @uvc_video_init(%struct.uvc_streaming* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* @KERN_ERR, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @uvc_printk(i32 %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %70

17:                                               ; preds = %2
  %18 = call %struct.video_device* (...) @video_device_alloc()
  store %struct.video_device* %18, %struct.video_device** %6, align 8
  %19 = load %struct.video_device*, %struct.video_device** %6, align 8
  %20 = icmp eq %struct.video_device* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* @KERN_ERR, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @uvc_printk(i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %70

27:                                               ; preds = %17
  %28 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %29 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.video_device*, %struct.video_device** %6, align 8
  %33 = getelementptr inbounds %struct.video_device, %struct.video_device* %32, i32 0, i32 3
  store i32* %31, i32** %33, align 8
  %34 = load %struct.video_device*, %struct.video_device** %6, align 8
  %35 = getelementptr inbounds %struct.video_device, %struct.video_device* %34, i32 0, i32 2
  store i32* @uvc_fops, i32** %35, align 8
  %36 = load i32, i32* @uvc_release, align 4
  %37 = load %struct.video_device*, %struct.video_device** %6, align 8
  %38 = getelementptr inbounds %struct.video_device, %struct.video_device* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.video_device*, %struct.video_device** %6, align 8
  %40 = getelementptr inbounds %struct.video_device, %struct.video_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %43 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strlcpy(i32 %41, i32 %44, i32 4)
  %46 = load %struct.video_device*, %struct.video_device** %6, align 8
  %47 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %48 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %47, i32 0, i32 0
  store %struct.video_device* %46, %struct.video_device** %48, align 8
  %49 = load %struct.video_device*, %struct.video_device** %6, align 8
  %50 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %51 = call i32 @video_set_drvdata(%struct.video_device* %49, %struct.uvc_streaming* %50)
  %52 = load %struct.video_device*, %struct.video_device** %6, align 8
  %53 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %54 = call i32 @video_register_device(%struct.video_device* %52, i32 %53, i32 -1)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %27
  %58 = load i32, i32* @KERN_ERR, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @uvc_printk(i32 %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %62 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %61, i32 0, i32 0
  store %struct.video_device* null, %struct.video_device** %62, align 8
  %63 = load %struct.video_device*, %struct.video_device** %6, align 8
  %64 = call i32 @video_device_release(%struct.video_device* %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %70

66:                                               ; preds = %27
  %67 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %68 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %67, i32 0, i32 0
  %69 = call i32 @atomic_inc(i32* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %57, %21, %12
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @uvc_video_init(%struct.uvc_streaming*) #1

declare dso_local i32 @uvc_printk(i32, i8*, i32) #1

declare dso_local %struct.video_device* @video_device_alloc(...) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.uvc_streaming*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @video_device_release(%struct.video_device*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
