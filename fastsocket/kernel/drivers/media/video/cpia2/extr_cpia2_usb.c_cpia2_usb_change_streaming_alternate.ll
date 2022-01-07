; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_usb.c_cpia2_usb_change_streaming_alternate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_usb.c_cpia2_usb_change_streaming_alternate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@USBIF_ISO_1 = common dso_local global i32 0, align 4
@USBIF_ISO_6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpia2_usb_change_streaming_alternate(%struct.camera_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.camera_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.camera_data* %0, %struct.camera_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @USBIF_ISO_1, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @USBIF_ISO_6, align 4
  %13 = icmp ugt i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %42

17:                                               ; preds = %10
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %20 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %18, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %42

26:                                               ; preds = %17
  %27 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %28 = call i32 @cpia2_usb_stream_pause(%struct.camera_data* %27)
  %29 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @configure_transfer_mode(%struct.camera_data* %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %34 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %38 = call i32 @cpia2_reset_camera(%struct.camera_data* %37)
  %39 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %40 = call i32 @cpia2_usb_stream_resume(%struct.camera_data* %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %26, %25, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @cpia2_usb_stream_pause(%struct.camera_data*) #1

declare dso_local i32 @configure_transfer_mode(%struct.camera_data*, i32) #1

declare dso_local i32 @cpia2_reset_camera(%struct.camera_data*) #1

declare dso_local i32 @cpia2_usb_stream_resume(%struct.camera_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
