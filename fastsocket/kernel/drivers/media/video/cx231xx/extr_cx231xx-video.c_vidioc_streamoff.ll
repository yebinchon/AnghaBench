; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_vidioc_streamoff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_vidioc_streamoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cx231xx_fh = type { i64, i32, %struct.cx231xx* }
%struct.cx231xx = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_streamoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_streamoff(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx231xx_fh*, align 8
  %9 = alloca %struct.cx231xx*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.cx231xx_fh*
  store %struct.cx231xx_fh* %12, %struct.cx231xx_fh** %8, align 8
  %13 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %14 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %13, i32 0, i32 2
  %15 = load %struct.cx231xx*, %struct.cx231xx** %14, align 8
  store %struct.cx231xx* %15, %struct.cx231xx** %9, align 8
  %16 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %17 = call i32 @check_dev(%struct.cx231xx* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %57

22:                                               ; preds = %3
  %23 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %24 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %30 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %57

37:                                               ; preds = %28, %22
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %41 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %57

47:                                               ; preds = %37
  %48 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %49 = load i32, i32* @video, align 4
  %50 = load i32, i32* @s_stream, align 4
  %51 = call i32 @cx25840_call(%struct.cx231xx* %48, i32 %49, i32 %50, i32 0)
  %52 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %53 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %52, i32 0, i32 1
  %54 = call i32 @videobuf_streamoff(i32* %53)
  %55 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %56 = call i32 @res_free(%struct.cx231xx_fh* %55)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %47, %44, %34, %20
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @check_dev(%struct.cx231xx*) #1

declare dso_local i32 @cx25840_call(%struct.cx231xx*, i32, i32, i32) #1

declare dso_local i32 @videobuf_streamoff(i32*) #1

declare dso_local i32 @res_free(%struct.cx231xx_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
