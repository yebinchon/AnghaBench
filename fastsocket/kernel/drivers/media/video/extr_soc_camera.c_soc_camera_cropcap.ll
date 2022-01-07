; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera.c_soc_camera_cropcap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera.c_soc_camera_cropcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.soc_camera_device* }
%struct.soc_camera_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_cropcap = type { i32 }
%struct.soc_camera_host = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.soc_camera_device*, %struct.v4l2_cropcap*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_cropcap*)* @soc_camera_cropcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_cropcap(%struct.file* %0, i8* %1, %struct.v4l2_cropcap* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_cropcap*, align 8
  %7 = alloca %struct.soc_camera_device*, align 8
  %8 = alloca %struct.soc_camera_host*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_cropcap* %2, %struct.v4l2_cropcap** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.soc_camera_device*, %struct.soc_camera_device** %10, align 8
  store %struct.soc_camera_device* %11, %struct.soc_camera_device** %7, align 8
  %12 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %13 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %15)
  store %struct.soc_camera_host* %16, %struct.soc_camera_host** %8, align 8
  %17 = load %struct.soc_camera_host*, %struct.soc_camera_host** %8, align 8
  %18 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.soc_camera_device*, %struct.v4l2_cropcap*)*, i32 (%struct.soc_camera_device*, %struct.v4l2_cropcap*)** %20, align 8
  %22 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %23 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %6, align 8
  %24 = call i32 %21(%struct.soc_camera_device* %22, %struct.v4l2_cropcap* %23)
  ret i32 %24
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
