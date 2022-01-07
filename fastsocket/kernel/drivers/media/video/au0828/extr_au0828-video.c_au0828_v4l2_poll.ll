; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_au0828_v4l2_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_au0828_v4l2_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.au0828_fh* }
%struct.au0828_fh = type { i64, i32, i32, %struct.au0828_dev* }
%struct.au0828_dev = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@AU0828_RESOURCE_VIDEO = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i64 0, align 8
@AU0828_RESOURCE_VBI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @au0828_v4l2_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au0828_v4l2_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.au0828_fh*, align 8
  %7 = alloca %struct.au0828_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.au0828_fh*, %struct.au0828_fh** %10, align 8
  store %struct.au0828_fh* %11, %struct.au0828_fh** %6, align 8
  %12 = load %struct.au0828_fh*, %struct.au0828_fh** %6, align 8
  %13 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %12, i32 0, i32 3
  %14 = load %struct.au0828_dev*, %struct.au0828_dev** %13, align 8
  store %struct.au0828_dev* %14, %struct.au0828_dev** %7, align 8
  %15 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %16 = call i32 @check_dev(%struct.au0828_dev* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %61

21:                                               ; preds = %2
  %22 = load %struct.au0828_fh*, %struct.au0828_fh** %6, align 8
  %23 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load %struct.au0828_fh*, %struct.au0828_fh** %6, align 8
  %29 = load i32, i32* @AU0828_RESOURCE_VIDEO, align 4
  %30 = call i32 @res_get(%struct.au0828_fh* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @POLLERR, align 4
  store i32 %33, i32* %3, align 4
  br label %61

34:                                               ; preds = %27
  %35 = load %struct.file*, %struct.file** %4, align 8
  %36 = load %struct.au0828_fh*, %struct.au0828_fh** %6, align 8
  %37 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %36, i32 0, i32 2
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @videobuf_poll_stream(%struct.file* %35, i32* %37, i32* %38)
  store i32 %39, i32* %3, align 4
  br label %61

40:                                               ; preds = %21
  %41 = load %struct.au0828_fh*, %struct.au0828_fh** %6, align 8
  %42 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = load %struct.au0828_fh*, %struct.au0828_fh** %6, align 8
  %48 = load i32, i32* @AU0828_RESOURCE_VBI, align 4
  %49 = call i32 @res_get(%struct.au0828_fh* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @POLLERR, align 4
  store i32 %52, i32* %3, align 4
  br label %61

53:                                               ; preds = %46
  %54 = load %struct.file*, %struct.file** %4, align 8
  %55 = load %struct.au0828_fh*, %struct.au0828_fh** %6, align 8
  %56 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %55, i32 0, i32 1
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @videobuf_poll_stream(%struct.file* %54, i32* %56, i32* %57)
  store i32 %58, i32* %3, align 4
  br label %61

59:                                               ; preds = %40
  %60 = load i32, i32* @POLLERR, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %53, %51, %34, %32, %19
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @check_dev(%struct.au0828_dev*) #1

declare dso_local i32 @res_get(%struct.au0828_fh*, i32) #1

declare dso_local i32 @videobuf_poll_stream(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
