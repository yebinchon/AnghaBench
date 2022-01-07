; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_model1_setup_after_video_if.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_model1_setup_after_video_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32 }

@framerate = common dso_local global i16 0, align 2
@FRAMERATE_MIN = common dso_local global i32 0, align 4
@FRAMERATE_MAX = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*)* @ibmcam_model1_setup_after_video_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmcam_model1_setup_after_video_if(%struct.uvd* %0) #0 {
  %2 = alloca %struct.uvd*, align 8
  %3 = alloca i16, align 2
  store %struct.uvd* %0, %struct.uvd** %2, align 8
  %4 = load i16, i16* @framerate, align 2
  %5 = load i32, i32* @FRAMERATE_MIN, align 4
  %6 = load i16, i16* @FRAMERATE_MAX, align 2
  %7 = call i32 @RESTRICT_TO_RANGE(i16 zeroext %4, i32 %5, i16 zeroext %6)
  %8 = load i16, i16* @FRAMERATE_MAX, align 2
  %9 = zext i16 %8 to i32
  %10 = load i16, i16* @framerate, align 2
  %11 = zext i16 %10 to i32
  %12 = sub nsw i32 %9, %11
  %13 = trunc i32 %12 to i16
  store i16 %13, i16* %3, align 2
  %14 = load %struct.uvd*, %struct.uvd** %2, align 8
  %15 = call i32 @ibmcam_veio(%struct.uvd* %14, i32 0, i32 1, i32 256)
  %16 = load %struct.uvd*, %struct.uvd** %2, align 8
  %17 = load i16, i16* %3, align 2
  %18 = zext i16 %17 to i32
  %19 = call i32 @ibmcam_veio(%struct.uvd* %16, i32 0, i32 %18, i32 273)
  %20 = load %struct.uvd*, %struct.uvd** %2, align 8
  %21 = call i32 @ibmcam_veio(%struct.uvd* %20, i32 0, i32 1, i32 276)
  %22 = load %struct.uvd*, %struct.uvd** %2, align 8
  %23 = call i32 @ibmcam_veio(%struct.uvd* %22, i32 0, i32 192, i32 268)
  ret void
}

declare dso_local i32 @RESTRICT_TO_RANGE(i16 zeroext, i32, i16 zeroext) #1

declare dso_local i32 @ibmcam_veio(%struct.uvd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
