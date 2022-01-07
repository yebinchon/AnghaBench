; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_vidioc_streamon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_vidioc_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cafe_camera* }
%struct.cafe_camera = type { i64, i64, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@S_IDLE = common dso_local global i64 0, align 8
@S_STREAMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @cafe_vidioc_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_vidioc_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cafe_camera*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.cafe_camera*, %struct.cafe_camera** %10, align 8
  store %struct.cafe_camera* %11, %struct.cafe_camera** %7, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %43

18:                                               ; preds = %3
  %19 = load %struct.cafe_camera*, %struct.cafe_camera** %7, align 8
  %20 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %19, i32 0, i32 2
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.cafe_camera*, %struct.cafe_camera** %7, align 8
  %23 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @S_IDLE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %18
  %28 = load %struct.cafe_camera*, %struct.cafe_camera** %7, align 8
  %29 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %18
  br label %39

33:                                               ; preds = %27
  %34 = load %struct.cafe_camera*, %struct.cafe_camera** %7, align 8
  %35 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.cafe_camera*, %struct.cafe_camera** %7, align 8
  %37 = load i32, i32* @S_STREAMING, align 4
  %38 = call i32 @cafe_read_setup(%struct.cafe_camera* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %33, %32
  %40 = load %struct.cafe_camera*, %struct.cafe_camera** %7, align 8
  %41 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %40, i32 0, i32 2
  %42 = call i32 @mutex_unlock(i32* %41)
  br label %43

43:                                               ; preds = %39, %17
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cafe_read_setup(%struct.cafe_camera*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
