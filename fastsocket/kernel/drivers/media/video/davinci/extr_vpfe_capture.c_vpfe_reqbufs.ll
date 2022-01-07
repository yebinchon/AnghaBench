; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_reqbufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.vpfe_fh* }
%struct.vpfe_fh = type { i32 }
%struct.v4l2_requestbuffers = type { i64, i32 }
%struct.vpfe_device = type { i32, i64, i32, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"vpfe_reqbufs\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid buffer type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_MEMORY_USERPTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"vpfe_reqbufs: USERPTR IO not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Only one IO user allowed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@vpfe_videobuf_qops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)* @vpfe_reqbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_reqbufs(%struct.file* %0, i8* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_requestbuffers*, align 8
  %8 = alloca %struct.vpfe_device*, align 8
  %9 = alloca %struct.vpfe_fh*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.vpfe_device* @video_drvdata(%struct.file* %11)
  store %struct.vpfe_device* %12, %struct.vpfe_device** %8, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.vpfe_fh*, %struct.vpfe_fh** %14, align 8
  store %struct.vpfe_fh* %15, %struct.vpfe_fh** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* @debug, align 4
  %17 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %18 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %17, i32 0, i32 7
  %19 = call i32 @v4l2_dbg(i32 1, i32 %16, i32* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %21 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %27 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %26, i32 0, i32 7
  %28 = call i32 @v4l2_err(i32* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %100

31:                                               ; preds = %3
  %32 = load i64, i64* @V4L2_MEMORY_USERPTR, align 8
  %33 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i32, i32* @debug, align 4
  %39 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %40 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %39, i32 0, i32 7
  %41 = call i32 @v4l2_dbg(i32 1, i32 %38, i32* %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %100

44:                                               ; preds = %31
  %45 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %46 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %45, i32 0, i32 2
  %47 = call i32 @mutex_lock_interruptible(i32* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %100

52:                                               ; preds = %44
  %53 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %54 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %59 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %58, i32 0, i32 7
  %60 = call i32 @v4l2_err(i32* %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %10, align 4
  br label %95

63:                                               ; preds = %52
  %64 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %68 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %70 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %69, i32 0, i32 3
  %71 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %72 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %71, i32 0, i32 6
  %73 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %77 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.vpfe_fh*, %struct.vpfe_fh** %9, align 8
  %83 = call i32 @videobuf_queue_dma_contig_init(i32* %70, i32* @vpfe_videobuf_qops, i32* null, i32* %72, i32 %75, i32 %81, i32 4, %struct.vpfe_fh* %82)
  %84 = load %struct.vpfe_fh*, %struct.vpfe_fh** %9, align 8
  %85 = getelementptr inbounds %struct.vpfe_fh, %struct.vpfe_fh* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  %86 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %87 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %89 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %88, i32 0, i32 4
  %90 = call i32 @INIT_LIST_HEAD(i32* %89)
  %91 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %92 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %91, i32 0, i32 3
  %93 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %94 = call i32 @videobuf_reqbufs(i32* %92, %struct.v4l2_requestbuffers* %93)
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %63, %57
  %96 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %97 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %96, i32 0, i32 2
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %95, %50, %37, %25
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.vpfe_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @videobuf_queue_dma_contig_init(i32*, i32*, i32*, i32*, i32, i32, i32, %struct.vpfe_fh*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @videobuf_reqbufs(i32*, %struct.v4l2_requestbuffers*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
