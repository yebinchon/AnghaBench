; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx1_camera.c_mx1_camera_remove_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx1_camera.c_mx1_camera_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.soc_camera_host = type { %struct.mx1_camera_dev* }
%struct.mx1_camera_dev = type { %struct.soc_camera_device*, i32, i64 }

@CSICR1 = common dso_local global i64 0, align 8
@CSI_IRQ_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"MX1 Camera driver detached from camera %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_camera_device*)* @mx1_camera_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mx1_camera_remove_device(%struct.soc_camera_device* %0) #0 {
  %2 = alloca %struct.soc_camera_device*, align 8
  %3 = alloca %struct.soc_camera_host*, align 8
  %4 = alloca %struct.mx1_camera_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %2, align 8
  %6 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %7 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %9)
  store %struct.soc_camera_host* %10, %struct.soc_camera_host** %3, align 8
  %11 = load %struct.soc_camera_host*, %struct.soc_camera_host** %3, align 8
  %12 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %11, i32 0, i32 0
  %13 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %12, align 8
  store %struct.mx1_camera_dev* %13, %struct.mx1_camera_dev** %4, align 8
  %14 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %15 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %4, align 8
  %16 = getelementptr inbounds %struct.mx1_camera_dev, %struct.mx1_camera_dev* %15, i32 0, i32 0
  %17 = load %struct.soc_camera_device*, %struct.soc_camera_device** %16, align 8
  %18 = icmp ne %struct.soc_camera_device* %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %4, align 8
  %22 = getelementptr inbounds %struct.mx1_camera_dev, %struct.mx1_camera_dev* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CSICR1, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @__raw_readl(i64 %25)
  %27 = load i32, i32* @CSI_IRQ_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %4, align 8
  %32 = getelementptr inbounds %struct.mx1_camera_dev, %struct.mx1_camera_dev* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CSICR1, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @__raw_writel(i32 %30, i64 %35)
  %37 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %4, align 8
  %38 = getelementptr inbounds %struct.mx1_camera_dev, %struct.mx1_camera_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @imx_dma_disable(i32 %39)
  %41 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %42 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %46 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_info(i32 %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %4, align 8
  %50 = call i32 @mx1_camera_deactivate(%struct.mx1_camera_dev* %49)
  %51 = load %struct.mx1_camera_dev*, %struct.mx1_camera_dev** %4, align 8
  %52 = getelementptr inbounds %struct.mx1_camera_dev, %struct.mx1_camera_dev* %51, i32 0, i32 0
  store %struct.soc_camera_device* null, %struct.soc_camera_device** %52, align 8
  ret void
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @imx_dma_disable(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @mx1_camera_deactivate(%struct.mx1_camera_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
