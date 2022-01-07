; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_status.c_uvc_status_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_status.c_uvc_status_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { i32*, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_status_resume(%struct.uvc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uvc_device*, align 8
  store %struct.uvc_device* %0, %struct.uvc_device** %3, align 8
  %4 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %5 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %10 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %9, i32 0, i32 1
  %11 = call i64 @atomic_read(i32* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %20

14:                                               ; preds = %8
  %15 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %16 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @GFP_NOIO, align 4
  %19 = call i32 @usb_submit_urb(i32* %17, i32 %18)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %14, %13
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @usb_submit_urb(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
