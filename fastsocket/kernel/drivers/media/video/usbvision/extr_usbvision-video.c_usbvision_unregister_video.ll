; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-video.c_usbvision_unregister_video.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-video.c_usbvision_unregister_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i32*, i32* }

@DBG_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unregister %s [v4l2]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_usbvision*)* @usbvision_unregister_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbvision_unregister_video(%struct.usb_usbvision* %0) #0 {
  %2 = alloca %struct.usb_usbvision*, align 8
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %2, align 8
  %3 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %4 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %32

7:                                                ; preds = %1
  %8 = load i32, i32* @DBG_PROBE, align 4
  %9 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %10 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @video_device_node_name(i32* %11)
  %13 = call i32 @PDEBUG(i32 %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %15 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @video_is_registered(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %7
  %20 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %21 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @video_unregister_device(i32* %22)
  br label %29

24:                                               ; preds = %7
  %25 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %26 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @video_device_release(i32* %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %31 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %29, %1
  %33 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %34 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %62

37:                                               ; preds = %32
  %38 = load i32, i32* @DBG_PROBE, align 4
  %39 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %40 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @video_device_node_name(i32* %41)
  %43 = call i32 @PDEBUG(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %45 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @video_is_registered(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %51 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @video_unregister_device(i32* %52)
  br label %59

54:                                               ; preds = %37
  %55 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %56 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @video_device_release(i32* %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %61 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %59, %32
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i32 @video_device_node_name(i32*) #1

declare dso_local i64 @video_is_registered(i32*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @video_device_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
