; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_cap_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_cap_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.video_capability = type { i32, i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"QX5 Microscope\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"CPiA2 Camera\00", align 1
@VID_TYPE_CAPTURE = common dso_local global i32 0, align 4
@VID_TYPE_MJPEG_ENCODER = common dso_local global i32 0, align 4
@STV_IMAGE_VGA_COLS = common dso_local global i32 0, align 4
@STV_IMAGE_VGA_ROWS = common dso_local global i32 0, align 4
@STV_IMAGE_CIF_COLS = common dso_local global i32 0, align 4
@STV_IMAGE_CIF_ROWS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.camera_data*)* @ioctl_cap_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_cap_query(i8* %0, %struct.camera_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.camera_data*, align 8
  %6 = alloca %struct.video_capability*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.camera_data* %1, %struct.camera_data** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.video_capability*
  store %struct.video_capability* %9, %struct.video_capability** %6, align 8
  %10 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %11 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 337
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.video_capability*, %struct.video_capability** %6, align 8
  %18 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @strcpy(i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %26

21:                                               ; preds = %2
  %22 = load %struct.video_capability*, %struct.video_capability** %6, align 8
  %23 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @strcpy(i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32, i32* @VID_TYPE_CAPTURE, align 4
  %28 = load i32, i32* @VID_TYPE_MJPEG_ENCODER, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.video_capability*, %struct.video_capability** %6, align 8
  %31 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.video_capability*, %struct.video_capability** %6, align 8
  %33 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load %struct.video_capability*, %struct.video_capability** %6, align 8
  %35 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %34, i32 0, i32 6
  store i64 0, i64* %35, align 8
  %36 = load %struct.video_capability*, %struct.video_capability** %6, align 8
  %37 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %36, i32 0, i32 2
  store i32 176, i32* %37, align 8
  %38 = load %struct.video_capability*, %struct.video_capability** %6, align 8
  %39 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %38, i32 0, i32 3
  store i32 144, i32* %39, align 4
  %40 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %41 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %59 [
    i32 128, label %45
    i32 129, label %52
  ]

45:                                               ; preds = %26
  %46 = load i32, i32* @STV_IMAGE_VGA_COLS, align 4
  %47 = load %struct.video_capability*, %struct.video_capability** %6, align 8
  %48 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @STV_IMAGE_VGA_ROWS, align 4
  %50 = load %struct.video_capability*, %struct.video_capability** %6, align 8
  %51 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  br label %62

52:                                               ; preds = %26
  %53 = load i32, i32* @STV_IMAGE_CIF_COLS, align 4
  %54 = load %struct.video_capability*, %struct.video_capability** %6, align 8
  %55 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @STV_IMAGE_CIF_ROWS, align 4
  %57 = load %struct.video_capability*, %struct.video_capability** %6, align 8
  %58 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  br label %62

59:                                               ; preds = %26
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %52, %45
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
