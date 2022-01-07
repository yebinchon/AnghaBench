; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_sd_get_jcomp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_sd_get_jcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.v4l2_jpegcompression = type { i32, i32 }
%struct.sd = type { i64, i32 }

@BRIDGE_W9968CF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_JPEG_MARKER_DHT = common dso_local global i32 0, align 4
@V4L2_JPEG_MARKER_DQT = common dso_local global i32 0, align 4
@V4L2_JPEG_MARKER_DRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.v4l2_jpegcompression*)* @sd_get_jcomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_get_jcomp(%struct.gspca_dev* %0, %struct.v4l2_jpegcompression* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.v4l2_jpegcompression*, align 8
  %6 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.v4l2_jpegcompression* %1, %struct.v4l2_jpegcompression** %5, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %6, align 8
  %9 = load %struct.sd*, %struct.sd** %6, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BRIDGE_W9968CF, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %19 = call i32 @memset(%struct.v4l2_jpegcompression* %18, i32 0, i32 8)
  %20 = load %struct.sd*, %struct.sd** %6, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @V4L2_JPEG_MARKER_DHT, align 4
  %26 = load i32, i32* @V4L2_JPEG_MARKER_DQT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @V4L2_JPEG_MARKER_DRI, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %17, %14
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @memset(%struct.v4l2_jpegcompression*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
