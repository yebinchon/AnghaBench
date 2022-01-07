; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_querycap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32, i32 }
%struct.zoran_fh = type { %struct.zoran* }
%struct.zoran = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"zoran\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"PCI:%s\00", align 1
@MAJOR_VERSION = common dso_local global i32 0, align 4
@MINOR_VERSION = common dso_local global i32 0, align 4
@RELEASE_VERSION = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_OVERLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @zoran_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zoran_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.zoran_fh*, align 8
  %8 = alloca %struct.zoran*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.zoran_fh*
  store %struct.zoran_fh* %10, %struct.zoran_fh** %7, align 8
  %11 = load %struct.zoran_fh*, %struct.zoran_fh** %7, align 8
  %12 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %11, i32 0, i32 0
  %13 = load %struct.zoran*, %struct.zoran** %12, align 8
  store %struct.zoran* %13, %struct.zoran** %8, align 8
  %14 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %15 = call i32 @memset(%struct.v4l2_capability* %14, i32 0, i32 20)
  %16 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.zoran*, %struct.zoran** %8, align 8
  %20 = call i8* @ZR_DEVNAME(%struct.zoran* %19)
  %21 = call i32 @strncpy(i32 %18, i8* %20, i32 3)
  %22 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strncpy(i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 3)
  %26 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %27 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.zoran*, %struct.zoran** %8, align 8
  %30 = getelementptr inbounds %struct.zoran, %struct.zoran* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @pci_name(i32 %31)
  %33 = call i32 @snprintf(i32 %28, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @MAJOR_VERSION, align 4
  %35 = load i32, i32* @MINOR_VERSION, align 4
  %36 = load i32, i32* @RELEASE_VERSION, align 4
  %37 = call i32 @KERNEL_VERSION(i32 %34, i32 %35, i32 %36)
  %38 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %41 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @V4L2_CAP_VIDEO_OVERLAY, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %48 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  ret i32 0
}

declare dso_local i32 @memset(%struct.v4l2_capability*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i8* @ZR_DEVNAME(%struct.zoran*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @pci_name(i32) #1

declare dso_local i32 @KERNEL_VERSION(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
