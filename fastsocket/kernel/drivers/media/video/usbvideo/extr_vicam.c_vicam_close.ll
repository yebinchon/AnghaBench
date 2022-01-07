; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_vicam.c_vicam_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_vicam.c_vicam_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.vicam_camera* }
%struct.vicam_camera = type { i32, i32, %struct.usb_device*, %struct.vicam_camera*, i32, %struct.vicam_camera* }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"close\0A\00", align 1
@VICAM_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@VICAM_FRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @vicam_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vicam_close(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.vicam_camera*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.vicam_camera*, %struct.vicam_camera** %7, align 8
  store %struct.vicam_camera* %8, %struct.vicam_camera** %3, align 8
  %9 = call i32 @DBG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.vicam_camera*, %struct.vicam_camera** %3, align 8
  %11 = call i32 @set_camera_power(%struct.vicam_camera* %10, i32 0)
  %12 = load %struct.vicam_camera*, %struct.vicam_camera** %3, align 8
  %13 = getelementptr inbounds %struct.vicam_camera, %struct.vicam_camera* %12, i32 0, i32 5
  %14 = load %struct.vicam_camera*, %struct.vicam_camera** %13, align 8
  %15 = call i32 @kfree(%struct.vicam_camera* %14)
  %16 = load %struct.vicam_camera*, %struct.vicam_camera** %3, align 8
  %17 = getelementptr inbounds %struct.vicam_camera, %struct.vicam_camera* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @VICAM_MAX_FRAME_SIZE, align 4
  %20 = load i32, i32* @VICAM_FRAMES, align 4
  %21 = mul nsw i32 %19, %20
  %22 = call i32 @rvfree(i32 %18, i32 %21)
  %23 = load %struct.vicam_camera*, %struct.vicam_camera** %3, align 8
  %24 = getelementptr inbounds %struct.vicam_camera, %struct.vicam_camera* %23, i32 0, i32 3
  %25 = load %struct.vicam_camera*, %struct.vicam_camera** %24, align 8
  %26 = call i32 @kfree(%struct.vicam_camera* %25)
  %27 = load %struct.vicam_camera*, %struct.vicam_camera** %3, align 8
  %28 = getelementptr inbounds %struct.vicam_camera, %struct.vicam_camera* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.vicam_camera*, %struct.vicam_camera** %3, align 8
  %31 = getelementptr inbounds %struct.vicam_camera, %struct.vicam_camera* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.vicam_camera*, %struct.vicam_camera** %3, align 8
  %35 = getelementptr inbounds %struct.vicam_camera, %struct.vicam_camera* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %4, align 4
  %37 = load %struct.vicam_camera*, %struct.vicam_camera** %3, align 8
  %38 = getelementptr inbounds %struct.vicam_camera, %struct.vicam_camera* %37, i32 0, i32 2
  %39 = load %struct.usb_device*, %struct.usb_device** %38, align 8
  store %struct.usb_device* %39, %struct.usb_device** %5, align 8
  %40 = load %struct.vicam_camera*, %struct.vicam_camera** %3, align 8
  %41 = getelementptr inbounds %struct.vicam_camera, %struct.vicam_camera* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %1
  %46 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %47 = icmp ne %struct.usb_device* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load %struct.vicam_camera*, %struct.vicam_camera** %3, align 8
  %50 = call i32 @kfree(%struct.vicam_camera* %49)
  br label %51

51:                                               ; preds = %48, %45, %1
  ret i32 0
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @set_camera_power(%struct.vicam_camera*, i32) #1

declare dso_local i32 @kfree(%struct.vicam_camera*) #1

declare dso_local i32 @rvfree(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
