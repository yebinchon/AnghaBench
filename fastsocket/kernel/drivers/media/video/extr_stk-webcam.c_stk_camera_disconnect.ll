; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_camera_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_camera_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.stk_camera = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"Syntek USB2.0 Camera release resources device %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @stk_camera_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stk_camera_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.stk_camera*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.stk_camera* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.stk_camera* %5, %struct.stk_camera** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_set_intfdata(%struct.usb_interface* %6, i32* null)
  %8 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %9 = call i32 @unset_present(%struct.stk_camera* %8)
  %10 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %11 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %10, i32 0, i32 1
  %12 = call i32 @wake_up_interruptible(i32* %11)
  %13 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %14 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %13, i32 0, i32 0
  %15 = call i32 @video_device_node_name(i32* %14)
  %16 = call i32 @STK_INFO(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %18 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %17, i32 0, i32 0
  %19 = call i32 @video_unregister_device(i32* %18)
  ret void
}

declare dso_local %struct.stk_camera* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @unset_present(%struct.stk_camera*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @STK_INFO(i8*, i32) #1

declare dso_local i32 @video_device_node_name(i32*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
