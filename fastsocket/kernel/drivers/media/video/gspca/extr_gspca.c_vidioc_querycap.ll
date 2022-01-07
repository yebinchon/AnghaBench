; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_querycap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i64, i64, i64 }
%struct.gspca_dev = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32* }

@ERESTARTSYS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"USB Camera (%04x:%04x)\00", align 1
@DRIVER_VERSION_NUMBER = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @vidioc_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_capability*, align 8
  %8 = alloca %struct.gspca_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.gspca_dev*
  store %struct.gspca_dev* %11, %struct.gspca_dev** %8, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 0
  %14 = call i64 @mutex_lock_interruptible(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ERESTARTSYS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %99

19:                                               ; preds = %3
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %21 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  br label %94

27:                                               ; preds = %19
  %28 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %33 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @strncpy(i8* %31, i32* %36, i32 8)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %39 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %27
  %45 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %50 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @strncpy(i8* %48, i32* %53, i32 8)
  br label %75

55:                                               ; preds = %27
  %56 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %61 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le16_to_cpu(i32 %65)
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %68 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @le16_to_cpu(i32 %72)
  %74 = call i32 @snprintf(i8* %59, i32 8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %73)
  br label %75

75:                                               ; preds = %55, %44
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %77 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 @usb_make_path(%struct.TYPE_6__* %78, i8* %82, i32 8)
  %84 = load i32, i32* @DRIVER_VERSION_NUMBER, align 4
  %85 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %86 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %88 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %93 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %75, %24
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %96 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %95, i32 0, i32 0
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %94, %16
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @strncpy(i8*, i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_make_path(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
