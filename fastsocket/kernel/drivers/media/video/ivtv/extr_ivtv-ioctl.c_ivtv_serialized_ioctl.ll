; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_serialized_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_serialized_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32 }
%struct.file = type { i32 }
%struct.video_device = type { i32 }
%struct.ivtv_open_id = type { i32 }

@ivtv_debug = common dso_local global i32 0, align 4
@IVTV_DBGFLG_IOCTL = common dso_local global i32 0, align 4
@V4L2_DEBUG_IOCTL = common dso_local global i32 0, align 4
@V4L2_DEBUG_IOCTL_ARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ivtv*, %struct.file*, i32, i64)* @ivtv_serialized_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ivtv_serialized_ioctl(%struct.ivtv* %0, %struct.file* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ivtv*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.video_device*, align 8
  %11 = alloca %struct.ivtv_open_id*, align 8
  %12 = alloca i64, align 8
  store %struct.ivtv* %0, %struct.ivtv** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.file*, %struct.file** %7, align 8
  %14 = call %struct.video_device* @video_devdata(%struct.file* %13)
  store %struct.video_device* %14, %struct.video_device** %10, align 8
  %15 = load %struct.file*, %struct.file** %7, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ivtv_open_id* @fh2id(i32 %17)
  store %struct.ivtv_open_id* %18, %struct.ivtv_open_id** %11, align 8
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %32 [
    i32 137, label %20
    i32 129, label %20
    i32 132, label %20
    i32 131, label %20
    i32 128, label %20
    i32 133, label %20
    i32 134, label %20
    i32 138, label %20
    i32 140, label %20
    i32 139, label %20
    i32 136, label %20
    i32 135, label %20
    i32 130, label %20
    i32 141, label %20
  ]

20:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %21 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %22 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %21, i32 0, i32 0
  %23 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %11, align 8
  %24 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @v4l2_prio_check(i32* %22, i32 %25)
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i64, i64* %12, align 8
  store i64 %30, i64* %5, align 8
  br label %51

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %4
  %33 = load i32, i32* @ivtv_debug, align 4
  %34 = load i32, i32* @IVTV_DBGFLG_IOCTL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* @V4L2_DEBUG_IOCTL, align 4
  %39 = load i32, i32* @V4L2_DEBUG_IOCTL_ARG, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.video_device*, %struct.video_device** %10, align 8
  %42 = getelementptr inbounds %struct.video_device, %struct.video_device* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %37, %32
  %44 = load %struct.file*, %struct.file** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i64, i64* %9, align 8
  %47 = call i64 @video_ioctl2(%struct.file* %44, i32 %45, i64 %46)
  store i64 %47, i64* %12, align 8
  %48 = load %struct.video_device*, %struct.video_device** %10, align 8
  %49 = getelementptr inbounds %struct.video_device, %struct.video_device* %48, i32 0, i32 0
  store i32 0, i32* %49, align 4
  %50 = load i64, i64* %12, align 8
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %43, %29
  %52 = load i64, i64* %5, align 8
  ret i64 %52
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.ivtv_open_id* @fh2id(i32) #1

declare dso_local i64 @v4l2_prio_check(i32*, i32) #1

declare dso_local i64 @video_ioctl2(%struct.file*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
