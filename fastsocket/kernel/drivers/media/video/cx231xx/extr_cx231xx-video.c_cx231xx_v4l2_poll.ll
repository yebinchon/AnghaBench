; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_cx231xx_v4l2_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_cx231xx_v4l2_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx231xx_fh* }
%struct.cx231xx_fh = type { i64, i32, %struct.cx231xx* }
%struct.cx231xx = type { i32 }

@POLLERR = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @cx231xx_v4l2_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_v4l2_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cx231xx_fh*, align 8
  %7 = alloca %struct.cx231xx*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %10, align 8
  store %struct.cx231xx_fh* %11, %struct.cx231xx_fh** %6, align 8
  %12 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %6, align 8
  %13 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %12, i32 0, i32 2
  %14 = load %struct.cx231xx*, %struct.cx231xx** %13, align 8
  store %struct.cx231xx* %14, %struct.cx231xx** %7, align 8
  %15 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %16 = call i32 @check_dev(%struct.cx231xx* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %51

21:                                               ; preds = %2
  %22 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %6, align 8
  %23 = call i32 @res_get(%struct.cx231xx_fh* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @POLLERR, align 4
  store i32 %30, i32* %3, align 4
  br label %51

31:                                               ; preds = %21
  %32 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %33 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %6, align 8
  %34 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load i64, i64* @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %39 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %6, align 8
  %40 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37, %31
  %44 = load %struct.file*, %struct.file** %4, align 8
  %45 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %6, align 8
  %46 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %45, i32 0, i32 1
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @videobuf_poll_stream(%struct.file* %44, i32* %46, i32* %47)
  store i32 %48, i32* %3, align 4
  br label %51

49:                                               ; preds = %37
  %50 = load i32, i32* @POLLERR, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %43, %29, %19
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @check_dev(%struct.cx231xx*) #1

declare dso_local i32 @res_get(%struct.cx231xx_fh*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @videobuf_poll_stream(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
