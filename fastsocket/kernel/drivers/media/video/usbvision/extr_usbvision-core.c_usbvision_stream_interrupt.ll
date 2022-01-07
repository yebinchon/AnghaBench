; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_stream_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-core.c_usbvision_stream_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i64, i32 }

@stream_interrupt = common dso_local global i64 0, align 8
@stream_idle = common dso_local global i64 0, align 8
@USBVISION_NUMSBUF = common dso_local global i32 0, align 4
@USBVISION_URB_FRAMES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbvision_stream_interrupt(%struct.usb_usbvision* %0) #0 {
  %2 = alloca %struct.usb_usbvision*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i64, i64* @stream_interrupt, align 8
  %5 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %6 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %5, i32 0, i32 0
  store i64 %4, i64* %6, align 8
  %7 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %8 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %11 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @stream_idle, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @USBVISION_NUMSBUF, align 4
  %17 = load i32, i32* @USBVISION_URB_FRAMES, align 4
  %18 = mul nsw i32 %16, %17
  %19 = call i32 @msecs_to_jiffies(i32 %18)
  %20 = call i32 @wait_event_timeout(i32 %9, i32 %15, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
