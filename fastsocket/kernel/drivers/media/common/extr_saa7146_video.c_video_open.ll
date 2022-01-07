; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_video_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_video_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.file = type { %struct.saa7146_fh* }
%struct.saa7146_fh = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i64 }
%struct.saa7146_format = type { i32 }

@V4L2_PIX_FMT_BGR24 = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@video_qops = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, %struct.file*)* @video_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_open(%struct.saa7146_dev* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.saa7146_fh*, align 8
  %6 = alloca %struct.saa7146_format*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  store %struct.saa7146_fh* %9, %struct.saa7146_fh** %5, align 8
  %10 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %11 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 384, i32* %12, align 8
  %13 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %14 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i32 288, i32* %15, align 4
  %16 = load i32, i32* @V4L2_PIX_FMT_BGR24, align 4
  %17 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %18 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  store i32 %16, i32* %19, align 4
  %20 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %21 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %24 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %25 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  store i32 %23, i32* %26, align 8
  %27 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %28 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %29 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev* %27, i32 %31)
  store %struct.saa7146_format* %32, %struct.saa7146_format** %6, align 8
  %33 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %34 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %38 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %36, %40
  %42 = load %struct.saa7146_format*, %struct.saa7146_format** %6, align 8
  %43 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = sdiv i32 %45, 8
  %47 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %48 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load %struct.saa7146_fh*, %struct.saa7146_fh** %5, align 8
  %51 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %50, i32 0, i32 0
  %52 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %53 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %57 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %56, i32 0, i32 1
  %58 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %59 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %60 = load %struct.file*, %struct.file** %4, align 8
  %61 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %62 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %61, i32 0, i32 0
  %63 = call i32 @videobuf_queue_sg_init(i32* %51, i32* @video_qops, i32* %55, i32* %57, i32 %58, i32 %59, i32 4, %struct.file* %60, i32* %62)
  ret i32 0
}

declare dso_local %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @videobuf_queue_sg_init(i32*, i32*, i32*, i32*, i32, i32, i32, %struct.file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
