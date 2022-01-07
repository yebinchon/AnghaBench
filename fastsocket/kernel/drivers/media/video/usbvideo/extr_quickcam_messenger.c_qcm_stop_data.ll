; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_stop_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_stop_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.qcm = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"couldn't turn the cam off.\0A\00", align 1
@USBVIDEO_NUMSBUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"usb_set_interface() error %d.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*)* @qcm_stop_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcm_stop_data(%struct.uvd* %0) #0 {
  %2 = alloca %struct.uvd*, align 8
  %3 = alloca %struct.qcm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uvd* %0, %struct.uvd** %2, align 8
  %7 = load %struct.uvd*, %struct.uvd** %2, align 8
  %8 = getelementptr inbounds %struct.uvd, %struct.uvd* %7, i32 0, i32 7
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.qcm*
  store %struct.qcm* %10, %struct.qcm** %3, align 8
  %11 = load %struct.uvd*, %struct.uvd** %2, align 8
  %12 = icmp eq %struct.uvd* %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %1
  %14 = load %struct.uvd*, %struct.uvd** %2, align 8
  %15 = getelementptr inbounds %struct.uvd, %struct.uvd* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.uvd*, %struct.uvd** %2, align 8
  %20 = getelementptr inbounds %struct.uvd, %struct.uvd* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp eq %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %13, %1
  br label %82

24:                                               ; preds = %18
  %25 = load %struct.uvd*, %struct.uvd** %2, align 8
  %26 = call i32 @qcm_camera_off(%struct.uvd* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.uvd*, %struct.uvd** %2, align 8
  %31 = getelementptr inbounds %struct.uvd, %struct.uvd* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @dev_warn(i32* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %29, %24
  %36 = load %struct.uvd*, %struct.uvd** %2, align 8
  %37 = getelementptr inbounds %struct.uvd, %struct.uvd* %36, i32 0, i32 6
  store i64 0, i64* %37, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %52, %35
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @USBVIDEO_NUMSBUF, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load %struct.uvd*, %struct.uvd** %2, align 8
  %44 = getelementptr inbounds %struct.uvd, %struct.uvd* %43, i32 0, i32 5
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @usb_kill_urb(i32 %50)
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %38

55:                                               ; preds = %38
  %56 = load %struct.qcm*, %struct.qcm** %3, align 8
  %57 = call i32 @qcm_stop_int_data(%struct.qcm* %56)
  %58 = load %struct.uvd*, %struct.uvd** %2, align 8
  %59 = getelementptr inbounds %struct.uvd, %struct.uvd* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %55
  %63 = load %struct.uvd*, %struct.uvd** %2, align 8
  %64 = getelementptr inbounds %struct.uvd, %struct.uvd* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load %struct.uvd*, %struct.uvd** %2, align 8
  %67 = getelementptr inbounds %struct.uvd, %struct.uvd* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.uvd*, %struct.uvd** %2, align 8
  %70 = getelementptr inbounds %struct.uvd, %struct.uvd* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @usb_set_interface(%struct.TYPE_4__* %65, i32 %68, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %62
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.uvd*, %struct.uvd** %2, align 8
  %80 = getelementptr inbounds %struct.uvd, %struct.uvd* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %75, %62
  br label %82

82:                                               ; preds = %23, %81, %55
  ret void
}

declare dso_local i32 @qcm_camera_off(%struct.uvd*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @qcm_stop_int_data(%struct.qcm*) #1

declare dso_local i32 @usb_set_interface(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
