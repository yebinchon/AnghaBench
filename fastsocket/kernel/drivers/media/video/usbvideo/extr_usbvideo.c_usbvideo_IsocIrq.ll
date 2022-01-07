; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_usbvideo_IsocIrq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_usbvideo_IsocIrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i32, i32, %struct.uvd* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.uvd = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Not streaming, but interrupt!\0A\00", align 1
@FRAMES_PER_DESC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"usb_submit_urb error (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @usbvideo_IsocIrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbvideo_IsocIrq(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.uvd*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 5
  %9 = load %struct.uvd*, %struct.uvd** %8, align 8
  store %struct.uvd* %9, %struct.uvd** %6, align 8
  %10 = load %struct.uvd*, %struct.uvd** %6, align 8
  %11 = call i32 @CAMERA_IS_OPERATIONAL(%struct.uvd* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %103

14:                                               ; preds = %1
  %15 = load %struct.uvd*, %struct.uvd** %6, align 8
  %16 = getelementptr inbounds %struct.uvd, %struct.uvd* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = load %struct.uvd*, %struct.uvd** %6, align 8
  %21 = getelementptr inbounds %struct.uvd, %struct.uvd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %22, 1
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.uvd*, %struct.uvd** %6, align 8
  %26 = getelementptr inbounds %struct.uvd, %struct.uvd* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @dev_info(i32* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %24, %19
  br label %103

31:                                               ; preds = %14
  %32 = load %struct.uvd*, %struct.uvd** %6, align 8
  %33 = getelementptr inbounds %struct.uvd, %struct.uvd* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.urb*, %struct.urb** %2, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %63

42:                                               ; preds = %31
  %43 = load %struct.uvd*, %struct.uvd** %6, align 8
  %44 = load %struct.urb*, %struct.urb** %2, align 8
  %45 = call i32 @usbvideo_CompressIsochronous(%struct.uvd* %43, %struct.urb* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.uvd*, %struct.uvd** %6, align 8
  %48 = getelementptr inbounds %struct.uvd, %struct.uvd* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %63

53:                                               ; preds = %42
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.uvd*, %struct.uvd** %6, align 8
  %56 = getelementptr inbounds %struct.uvd, %struct.uvd* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %54
  store i32 %59, i32* %57, align 4
  %60 = load %struct.uvd*, %struct.uvd** %6, align 8
  %61 = getelementptr inbounds %struct.uvd, %struct.uvd* %60, i32 0, i32 2
  %62 = call i32 @RingQueue_WakeUpInterruptible(i32* %61)
  br label %63

63:                                               ; preds = %53, %52, %41
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %83, %63
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @FRAMES_PER_DESC, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %64
  %69 = load %struct.urb*, %struct.urb** %2, align 8
  %70 = getelementptr inbounds %struct.urb, %struct.urb* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.urb*, %struct.urb** %2, align 8
  %77 = getelementptr inbounds %struct.urb, %struct.urb* %76, i32 0, i32 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %68
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %64

86:                                               ; preds = %64
  %87 = load %struct.urb*, %struct.urb** %2, align 8
  %88 = getelementptr inbounds %struct.urb, %struct.urb* %87, i32 0, i32 1
  store i32 0, i32* %88, align 8
  %89 = load %struct.uvd*, %struct.uvd** %6, align 8
  %90 = getelementptr inbounds %struct.uvd, %struct.uvd* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load %struct.urb*, %struct.urb** %2, align 8
  %93 = getelementptr inbounds %struct.urb, %struct.urb* %92, i32 0, i32 0
  store %struct.TYPE_6__* %91, %struct.TYPE_6__** %93, align 8
  %94 = load %struct.urb*, %struct.urb** %2, align 8
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i32 @usb_submit_urb(%struct.urb* %94, i32 %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %86
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %99, %86
  br label %103

103:                                              ; preds = %102, %30, %13
  ret void
}

declare dso_local i32 @CAMERA_IS_OPERATIONAL(%struct.uvd*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @usbvideo_CompressIsochronous(%struct.uvd*, %struct.urb*) #1

declare dso_local i32 @RingQueue_WakeUpInterruptible(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
