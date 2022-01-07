; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_PacketFormat2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_PacketFormat2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32 }

@unknown_88 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*, i8, i8)* @ibmcam_PacketFormat2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmcam_PacketFormat2(%struct.uvd* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.uvd*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.uvd* %0, %struct.uvd** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %7 = load %struct.uvd*, %struct.uvd** %4, align 8
  %8 = load i32, i32* @unknown_88, align 4
  %9 = call i32 @ibmcam_send_x_01_00_05(%struct.uvd* %7, i32 %8)
  %10 = load %struct.uvd*, %struct.uvd** %4, align 8
  %11 = load i8, i8* %5, align 1
  %12 = call i32 @ibmcam_send_x_00_05(%struct.uvd* %10, i8 zeroext %11)
  %13 = load %struct.uvd*, %struct.uvd** %4, align 8
  %14 = load i8, i8* %6, align 1
  %15 = call i32 @ibmcam_send_x_00_05_02(%struct.uvd* %13, i8 zeroext %14)
  ret void
}

declare dso_local i32 @ibmcam_send_x_01_00_05(%struct.uvd*, i32) #1

declare dso_local i32 @ibmcam_send_x_00_05(%struct.uvd*, i8 zeroext) #1

declare dso_local i32 @ibmcam_send_x_00_05_02(%struct.uvd*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
