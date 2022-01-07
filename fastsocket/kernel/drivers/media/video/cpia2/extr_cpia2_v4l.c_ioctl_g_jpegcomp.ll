; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_g_jpegcomp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_g_jpegcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_jpegcompression = type { i32, i32, i32, i32, i32, i32, i32 }

@V4L2_JPEG_MARKER_DQT = common dso_local global i32 0, align 4
@V4L2_JPEG_MARKER_DRI = common dso_local global i32 0, align 4
@V4L2_JPEG_MARKER_DHT = common dso_local global i32 0, align 4
@V4L2_JPEG_MARKER_APP = common dso_local global i32 0, align 4
@JPEG_MARKER_COM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"G_JPEGCOMP APP_len:%d COM_len:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.camera_data*)* @ioctl_g_jpegcomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_g_jpegcomp(i8* %0, %struct.camera_data* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.camera_data*, align 8
  %5 = alloca %struct.v4l2_jpegcompression*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.camera_data* %1, %struct.camera_data** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.v4l2_jpegcompression*
  store %struct.v4l2_jpegcompression* %7, %struct.v4l2_jpegcompression** %5, align 8
  %8 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %9 = call i32 @memset(%struct.v4l2_jpegcompression* %8, i32 0, i32 28)
  %10 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %10, i32 0, i32 0
  store i32 80, i32* %11, align 4
  %12 = load i32, i32* @V4L2_JPEG_MARKER_DQT, align 4
  %13 = load i32, i32* @V4L2_JPEG_MARKER_DRI, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %18 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @V4L2_JPEG_MARKER_DHT, align 4
  %25 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %2
  %30 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %31 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 4
  %35 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %36 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %41 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %29
  %45 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %46 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %49 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %52 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @memcpy(i32 %47, i32 %50, i32 %53)
  %55 = load i32, i32* @V4L2_JPEG_MARKER_APP, align 4
  %56 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %44, %29
  %61 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %62 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %65 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %67 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %60
  %71 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %72 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %75 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %78 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @memcpy(i32 %73, i32 %76, i32 %79)
  %81 = load i32, i32* @JPEG_MARKER_COM, align 4
  %82 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %83 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %70, %60
  %87 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %88 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %91 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %92)
  ret i32 0
}

declare dso_local i32 @memset(%struct.v4l2_jpegcompression*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
