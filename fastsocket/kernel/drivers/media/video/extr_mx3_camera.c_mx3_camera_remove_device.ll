; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_mx3_camera_remove_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_mx3_camera_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.soc_camera_host = type { %struct.mx3_camera_dev* }
%struct.mx3_camera_dev = type { %struct.soc_camera_device*, i32, %struct.idmac_channel** }
%struct.idmac_channel = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"MX3 Camera driver detached from camera %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_camera_device*)* @mx3_camera_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mx3_camera_remove_device(%struct.soc_camera_device* %0) #0 {
  %2 = alloca %struct.soc_camera_device*, align 8
  %3 = alloca %struct.soc_camera_host*, align 8
  %4 = alloca %struct.mx3_camera_dev*, align 8
  %5 = alloca %struct.idmac_channel**, align 8
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %2, align 8
  %6 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %7 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %9)
  store %struct.soc_camera_host* %10, %struct.soc_camera_host** %3, align 8
  %11 = load %struct.soc_camera_host*, %struct.soc_camera_host** %3, align 8
  %12 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %11, i32 0, i32 0
  %13 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %12, align 8
  store %struct.mx3_camera_dev* %13, %struct.mx3_camera_dev** %4, align 8
  %14 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %4, align 8
  %15 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %14, i32 0, i32 2
  %16 = load %struct.idmac_channel**, %struct.idmac_channel*** %15, align 8
  %17 = getelementptr inbounds %struct.idmac_channel*, %struct.idmac_channel** %16, i64 0
  store %struct.idmac_channel** %17, %struct.idmac_channel*** %5, align 8
  %18 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %19 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %4, align 8
  %20 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %19, i32 0, i32 0
  %21 = load %struct.soc_camera_device*, %struct.soc_camera_device** %20, align 8
  %22 = icmp ne %struct.soc_camera_device* %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.idmac_channel**, %struct.idmac_channel*** %5, align 8
  %26 = load %struct.idmac_channel*, %struct.idmac_channel** %25, align 8
  %27 = icmp ne %struct.idmac_channel* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load %struct.idmac_channel**, %struct.idmac_channel*** %5, align 8
  %30 = load %struct.idmac_channel*, %struct.idmac_channel** %29, align 8
  %31 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %30, i32 0, i32 0
  %32 = call i32 @dma_release_channel(i32* %31)
  %33 = load %struct.idmac_channel**, %struct.idmac_channel*** %5, align 8
  store %struct.idmac_channel* null, %struct.idmac_channel** %33, align 8
  br label %34

34:                                               ; preds = %28, %1
  %35 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %4, align 8
  %36 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @clk_disable(i32 %37)
  %39 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %4, align 8
  %40 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %39, i32 0, i32 0
  store %struct.soc_camera_device* null, %struct.soc_camera_device** %40, align 8
  %41 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %42 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %46 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_info(i32 %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %47)
  ret void
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_release_channel(i32*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
