; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-dvb.c_start_streaming.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-dvb.c_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx_dvb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.em28xx* }
%struct.em28xx = type { i32 }

@EM28XX_DIGITAL_MODE = common dso_local global i32 0, align 4
@EM28XX_DVB_MAX_PACKETS = common dso_local global i32 0, align 4
@EM28XX_DVB_NUM_BUFS = common dso_local global i32 0, align 4
@dvb_isoc_copy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx_dvb*)* @start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_streaming(%struct.em28xx_dvb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx_dvb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.em28xx*, align 8
  %6 = alloca i32, align 4
  store %struct.em28xx_dvb* %0, %struct.em28xx_dvb** %3, align 8
  %7 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %3, align 8
  %8 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  store %struct.em28xx* %10, %struct.em28xx** %5, align 8
  %11 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %12 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @usb_set_interface(i32 %13, i32 0, i32 1)
  %15 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %16 = load i32, i32* @EM28XX_DIGITAL_MODE, align 4
  %17 = call i32 @em28xx_set_mode(%struct.em28xx* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %31

22:                                               ; preds = %1
  %23 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %24 = call i32 @em28xx_isoc_dvb_max_packetsize(%struct.em28xx* %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %26 = load i32, i32* @EM28XX_DVB_MAX_PACKETS, align 4
  %27 = load i32, i32* @EM28XX_DVB_NUM_BUFS, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @dvb_isoc_copy, align 4
  %30 = call i32 @em28xx_init_isoc(%struct.em28xx* %25, i32 %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %22, %20
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @em28xx_set_mode(%struct.em28xx*, i32) #1

declare dso_local i32 @em28xx_isoc_dvb_max_packetsize(%struct.em28xx*) #1

declare dso_local i32 @em28xx_init_isoc(%struct.em28xx*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
