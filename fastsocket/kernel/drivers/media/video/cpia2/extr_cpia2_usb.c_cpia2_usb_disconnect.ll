; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_usb.c_cpia2_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_usb.c_cpia2_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.camera_data = type { i64, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Stopping stream\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Unregistering camera\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Wakeup waiting processes\0A\00", align 1
@FRAME_READY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Releasing interface\0A\00", align 1
@cpia2_driver = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Freeing camera structure\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"CPiA2 camera disconnected.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @cpia2_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpia2_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.camera_data*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.camera_data* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.camera_data* %5, %struct.camera_data** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_set_intfdata(%struct.usb_interface* %6, i32* null)
  %8 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %9 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %8, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = call i32 @DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %12 = call i32 @cpia2_usb_stream_stop(%struct.camera_data* %11)
  %13 = call i32 @DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %15 = call i32 @cpia2_unregister_camera(%struct.camera_data* %14)
  %16 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %17 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %1
  %21 = call i32 @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* @FRAME_READY, align 4
  %23 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %24 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 8
  %27 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %28 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %32 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %31, i32 0, i32 1
  %33 = call i64 @waitqueue_active(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %20
  %36 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %37 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %36, i32 0, i32 1
  %38 = call i32 @wake_up_interruptible(i32* %37)
  br label %39

39:                                               ; preds = %35, %20
  br label %40

40:                                               ; preds = %39, %1
  %41 = call i32 @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %43 = call i32 @usb_driver_release_interface(i32* @cpia2_driver, %struct.usb_interface* %42)
  %44 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %45 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = call i32 @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %50 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %51 = call i32 @kfree(%struct.camera_data* %50)
  br label %52

52:                                               ; preds = %48, %40
  %53 = call i32 @LOG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local %struct.camera_data* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @cpia2_usb_stream_stop(%struct.camera_data*) #1

declare dso_local i32 @cpia2_unregister_camera(%struct.camera_data*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @usb_driver_release_interface(i32*, %struct.usb_interface*) #1

declare dso_local i32 @kfree(%struct.camera_data*) #1

declare dso_local i32 @LOG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
