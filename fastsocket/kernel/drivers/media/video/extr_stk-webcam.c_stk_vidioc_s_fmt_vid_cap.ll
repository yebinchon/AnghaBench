; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_vidioc_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_vidioc_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.stk_camera = type { %struct.TYPE_5__, i32, %struct.file* }
%struct.TYPE_5__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@stk_sizes = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @stk_vidioc_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk_vidioc_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stk_camera*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.stk_camera*
  store %struct.stk_camera* %11, %struct.stk_camera** %9, align 8
  %12 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %13 = icmp eq %struct.stk_camera* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %91

17:                                               ; preds = %3
  %18 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %19 = call i32 @is_present(%struct.stk_camera* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %91

24:                                               ; preds = %17
  %25 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %26 = call i64 @is_streaming(%struct.stk_camera* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %91

31:                                               ; preds = %24
  %32 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %33 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %32, i32 0, i32 2
  %34 = load %struct.file*, %struct.file** %33, align 8
  %35 = icmp ne %struct.file* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %38 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %37, i32 0, i32 2
  %39 = load %struct.file*, %struct.file** %38, align 8
  %40 = load %struct.file*, %struct.file** %5, align 8
  %41 = icmp ne %struct.file* %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %91

45:                                               ; preds = %36, %31
  %46 = load %struct.file*, %struct.file** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %49 = call i32 @stk_vidioc_try_fmt_vid_cap(%struct.file* %46, i8* %47, %struct.v4l2_format* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %91

54:                                               ; preds = %45
  %55 = load %struct.file*, %struct.file** %5, align 8
  %56 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %57 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %56, i32 0, i32 2
  store %struct.file* %55, %struct.file** %57, align 8
  %58 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %64 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %67 = call i32 @stk_free_buffers(%struct.stk_camera* %66)
  %68 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %74 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** @stk_sizes, align 8
  %76 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %85 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %88 = call i32 @stk_initialise(%struct.stk_camera* %87)
  %89 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %90 = call i32 @stk_setup_format(%struct.stk_camera* %89)
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %54, %52, %42, %28, %21, %14
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @is_present(%struct.stk_camera*) #1

declare dso_local i64 @is_streaming(%struct.stk_camera*) #1

declare dso_local i32 @stk_vidioc_try_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @stk_free_buffers(%struct.stk_camera*) #1

declare dso_local i32 @stk_initialise(%struct.stk_camera*) #1

declare dso_local i32 @stk_setup_format(%struct.stk_camera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
