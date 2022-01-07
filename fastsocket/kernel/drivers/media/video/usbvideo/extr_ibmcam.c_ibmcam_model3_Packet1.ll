; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_model3_Packet1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_model3_Packet1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*, i16, i16)* @ibmcam_model3_Packet1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmcam_model3_Packet1(%struct.uvd* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.uvd*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.uvd* %0, %struct.uvd** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %7 = load %struct.uvd*, %struct.uvd** %4, align 8
  %8 = call i32 @ibmcam_veio(%struct.uvd* %7, i32 0, i32 120, i32 301)
  %9 = load %struct.uvd*, %struct.uvd** %4, align 8
  %10 = load i16, i16* %5, align 2
  %11 = zext i16 %10 to i32
  %12 = call i32 @ibmcam_veio(%struct.uvd* %9, i32 0, i32 %11, i32 303)
  %13 = load %struct.uvd*, %struct.uvd** %4, align 8
  %14 = call i32 @ibmcam_veio(%struct.uvd* %13, i32 0, i32 53569, i32 292)
  %15 = load %struct.uvd*, %struct.uvd** %4, align 8
  %16 = load i16, i16* %6, align 2
  %17 = zext i16 %16 to i32
  %18 = call i32 @ibmcam_veio(%struct.uvd* %15, i32 0, i32 %17, i32 295)
  %19 = load %struct.uvd*, %struct.uvd** %4, align 8
  %20 = call i32 @ibmcam_veio(%struct.uvd* %19, i32 0, i32 65192, i32 292)
  ret void
}

declare dso_local i32 @ibmcam_veio(%struct.uvd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
