; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_dsbr100.c_usb_dsbr100_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_dsbr100.c_usb_dsbr100_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.dsbr100_device = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @usb_dsbr100_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_dsbr100_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.dsbr100_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.dsbr100_device* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.dsbr100_device* %5, %struct.dsbr100_device** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_set_intfdata(%struct.usb_interface* %6, i32* null)
  %8 = load %struct.dsbr100_device*, %struct.dsbr100_device** %3, align 8
  %9 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %8, i32 0, i32 3
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.dsbr100_device*, %struct.dsbr100_device** %3, align 8
  %12 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.dsbr100_device*, %struct.dsbr100_device** %3, align 8
  %14 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %13, i32 0, i32 3
  %15 = call i32 @mutex_unlock(i32* %14)
  %16 = load %struct.dsbr100_device*, %struct.dsbr100_device** %3, align 8
  %17 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %16, i32 0, i32 2
  %18 = call i32 @video_unregister_device(i32* %17)
  %19 = load %struct.dsbr100_device*, %struct.dsbr100_device** %3, align 8
  %20 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %19, i32 0, i32 1
  %21 = call i32 @v4l2_device_disconnect(i32* %20)
  ret void
}

declare dso_local %struct.dsbr100_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @v4l2_device_disconnect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
