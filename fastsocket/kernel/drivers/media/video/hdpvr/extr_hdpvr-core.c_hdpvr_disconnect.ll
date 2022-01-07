; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-core.c_hdpvr_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-core.c_hdpvr_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.hdpvr_device = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"device %s disconnected\0A\00", align 1
@STATUS_DISCONNECTED = common dso_local global i32 0, align 4
@dev_nr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @hdpvr_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdpvr_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.hdpvr_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call i32 @usb_get_intfdata(%struct.usb_interface* %4)
  %6 = call %struct.hdpvr_device* @to_hdpvr_dev(i32 %5)
  store %struct.hdpvr_device* %6, %struct.hdpvr_device** %3, align 8
  %7 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %8 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %7, i32 0, i32 4
  %9 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %10 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @video_device_node_name(i32 %11)
  %13 = call i32 @v4l2_info(i32* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %15 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %14, i32 0, i32 2
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* @STATUS_DISCONNECTED, align 4
  %18 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %19 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 4
  %20 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %21 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %20, i32 0, i32 6
  %22 = call i32 @wake_up_interruptible(i32* %21)
  %23 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %24 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %23, i32 0, i32 5
  %25 = call i32 @wake_up_interruptible(i32* %24)
  %26 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %27 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %26, i32 0, i32 2
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %30 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %29, i32 0, i32 4
  %31 = call i32 @v4l2_device_disconnect(i32* %30)
  %32 = call i32 @msleep(i32 100)
  %33 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %34 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @flush_workqueue(i32 %35)
  %37 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %38 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %37, i32 0, i32 2
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %41 = call i32 @hdpvr_cancel_queue(%struct.hdpvr_device* %40)
  %42 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %43 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %42, i32 0, i32 2
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %46 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @video_unregister_device(i32 %47)
  %49 = call i32 @atomic_dec(i32* @dev_nr)
  ret void
}

declare dso_local %struct.hdpvr_device* @to_hdpvr_dev(i32) #1

declare dso_local i32 @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i32) #1

declare dso_local i32 @video_device_node_name(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_device_disconnect(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @hdpvr_cancel_queue(%struct.hdpvr_device*) #1

declare dso_local i32 @video_unregister_device(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
