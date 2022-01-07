; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_reinit_iso.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_reinit_iso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*, i32)* @ibmcam_reinit_iso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmcam_reinit_iso(%struct.uvd* %0, i32 %1) #0 {
  %3 = alloca %struct.uvd*, align 8
  %4 = alloca i32, align 4
  store %struct.uvd* %0, %struct.uvd** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.uvd*, %struct.uvd** %3, align 8
  %6 = call %struct.TYPE_2__* @IBMCAM_T(%struct.uvd* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %44 [
    i32 131, label %9
    i32 130, label %33
    i32 129, label %36
    i32 128, label %41
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load %struct.uvd*, %struct.uvd** %3, align 8
  %14 = call i32 @ibmcam_video_stop(%struct.uvd* %13)
  br label %15

15:                                               ; preds = %12, %9
  %16 = load %struct.uvd*, %struct.uvd** %3, align 8
  %17 = call i32 @ibmcam_veio(%struct.uvd* %16, i32 0, i32 1, i32 276)
  %18 = load %struct.uvd*, %struct.uvd** %3, align 8
  %19 = call i32 @ibmcam_veio(%struct.uvd* %18, i32 0, i32 192, i32 268)
  %20 = load %struct.uvd*, %struct.uvd** %3, align 8
  %21 = getelementptr inbounds %struct.uvd, %struct.uvd* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.uvd*, %struct.uvd** %3, align 8
  %24 = getelementptr inbounds %struct.uvd, %struct.uvd* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.uvd*, %struct.uvd** %3, align 8
  %27 = getelementptr inbounds %struct.uvd, %struct.uvd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @usb_rcvisocpipe(i32 %25, i32 %28)
  %30 = call i32 @usb_clear_halt(i32 %22, i32 %29)
  %31 = load %struct.uvd*, %struct.uvd** %3, align 8
  %32 = call i32 @ibmcam_model1_setup_after_video_if(%struct.uvd* %31)
  br label %44

33:                                               ; preds = %2
  %34 = load %struct.uvd*, %struct.uvd** %3, align 8
  %35 = call i32 @ibmcam_model2_setup_after_video_if(%struct.uvd* %34)
  br label %44

36:                                               ; preds = %2
  %37 = load %struct.uvd*, %struct.uvd** %3, align 8
  %38 = call i32 @ibmcam_video_stop(%struct.uvd* %37)
  %39 = load %struct.uvd*, %struct.uvd** %3, align 8
  %40 = call i32 @ibmcam_model3_setup_after_video_if(%struct.uvd* %39)
  br label %44

41:                                               ; preds = %2
  %42 = load %struct.uvd*, %struct.uvd** %3, align 8
  %43 = call i32 @ibmcam_model4_setup_after_video_if(%struct.uvd* %42)
  br label %44

44:                                               ; preds = %2, %41, %36, %33, %15
  ret void
}

declare dso_local %struct.TYPE_2__* @IBMCAM_T(%struct.uvd*) #1

declare dso_local i32 @ibmcam_video_stop(%struct.uvd*) #1

declare dso_local i32 @ibmcam_veio(%struct.uvd*, i32, i32, i32) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

declare dso_local i32 @usb_rcvisocpipe(i32, i32) #1

declare dso_local i32 @ibmcam_model1_setup_after_video_if(%struct.uvd*) #1

declare dso_local i32 @ibmcam_model2_setup_after_video_if(%struct.uvd*) #1

declare dso_local i32 @ibmcam_model3_setup_after_video_if(%struct.uvd*) #1

declare dso_local i32 @ibmcam_model4_setup_after_video_if(%struct.uvd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
