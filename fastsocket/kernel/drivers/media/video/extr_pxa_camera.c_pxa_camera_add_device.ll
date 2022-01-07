; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_pxa_camera_add_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_pxa_camera_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.soc_camera_host = type { %struct.pxa_camera_dev* }
%struct.pxa_camera_dev = type { %struct.soc_camera_device* }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"PXA Camera driver attached to camera %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*)* @pxa_camera_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_camera_add_device(%struct.soc_camera_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.soc_camera_device*, align 8
  %4 = alloca %struct.soc_camera_host*, align 8
  %5 = alloca %struct.pxa_camera_dev*, align 8
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %3, align 8
  %6 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %7 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %9)
  store %struct.soc_camera_host* %10, %struct.soc_camera_host** %4, align 8
  %11 = load %struct.soc_camera_host*, %struct.soc_camera_host** %4, align 8
  %12 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %11, i32 0, i32 0
  %13 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %12, align 8
  store %struct.pxa_camera_dev* %13, %struct.pxa_camera_dev** %5, align 8
  %14 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %5, align 8
  %15 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %14, i32 0, i32 0
  %16 = load %struct.soc_camera_device*, %struct.soc_camera_device** %15, align 8
  %17 = icmp ne %struct.soc_camera_device* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %35

21:                                               ; preds = %1
  %22 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %5, align 8
  %23 = call i32 @pxa_camera_activate(%struct.pxa_camera_dev* %22)
  %24 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %25 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %5, align 8
  %26 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %25, i32 0, i32 0
  store %struct.soc_camera_device* %24, %struct.soc_camera_device** %26, align 8
  %27 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %28 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %32 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_info(i32 %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %21, %18
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @pxa_camera_activate(%struct.pxa_camera_dev*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
