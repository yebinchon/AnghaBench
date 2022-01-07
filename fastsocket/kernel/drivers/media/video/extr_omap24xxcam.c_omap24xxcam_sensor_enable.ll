; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_sensor_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_sensor_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap24xxcam_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap24xxcam_device*)* @omap24xxcam_sensor_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap24xxcam_sensor_enable(%struct.omap24xxcam_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap24xxcam_device*, align 8
  %4 = alloca i32, align 4
  store %struct.omap24xxcam_device* %0, %struct.omap24xxcam_device** %3, align 8
  %5 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %6 = call i32 @omap24xxcam_clock_on(%struct.omap24xxcam_device* %5)
  %7 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %8 = call i32 @omap24xxcam_sensor_if_enable(%struct.omap24xxcam_device* %7)
  %9 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %10 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @vidioc_int_s_power(i32 %11, i32 1)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %25

16:                                               ; preds = %1
  %17 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %18 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @vidioc_int_init(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %25

24:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %29

25:                                               ; preds = %23, %15
  %26 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %27 = call i32 @omap24xxcam_sensor_disable(%struct.omap24xxcam_device* %26)
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %24
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @omap24xxcam_clock_on(%struct.omap24xxcam_device*) #1

declare dso_local i32 @omap24xxcam_sensor_if_enable(%struct.omap24xxcam_device*) #1

declare dso_local i32 @vidioc_int_s_power(i32, i32) #1

declare dso_local i32 @vidioc_int_init(i32) #1

declare dso_local i32 @omap24xxcam_sensor_disable(%struct.omap24xxcam_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
