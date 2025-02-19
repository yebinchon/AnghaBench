; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_resubmit_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_resubmit_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32 }
%struct.urb = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"usb_submit_urb error (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*, %struct.urb*)* @resubmit_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resubmit_urb(%struct.uvd* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.uvd*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  store %struct.uvd* %0, %struct.uvd** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %6 = load %struct.uvd*, %struct.uvd** %3, align 8
  %7 = getelementptr inbounds %struct.uvd, %struct.uvd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.urb*, %struct.urb** %4, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.urb*, %struct.urb** %4, align 8
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call i32 @usb_submit_urb(%struct.urb* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
