; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_vidioc_g_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_vidioc_g_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i64, i32 }
%struct.cx8802_fh = type { %struct.TYPE_6__, %struct.cx8802_dev* }
%struct.TYPE_6__ = type { i32 }
%struct.cx8802_dev = type { i32, i32, i32, i32 }

@V4L2_PIX_FMT_MPEG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"VIDIOC_G_FMT: w: %d, h: %d, f: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_g_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.cx8802_fh*, align 8
  %8 = alloca %struct.cx8802_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.cx8802_fh*
  store %struct.cx8802_fh* %10, %struct.cx8802_fh** %7, align 8
  %11 = load %struct.cx8802_fh*, %struct.cx8802_fh** %7, align 8
  %12 = getelementptr inbounds %struct.cx8802_fh, %struct.cx8802_fh* %11, i32 0, i32 1
  %13 = load %struct.cx8802_dev*, %struct.cx8802_dev** %12, align 8
  store %struct.cx8802_dev* %13, %struct.cx8802_dev** %8, align 8
  %14 = load i32, i32* @V4L2_PIX_FMT_MPEG, align 4
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 6
  store i32 %14, i32* %18, align 8
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %24 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %27 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 8
  %34 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %39 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  store i32 %40, i32* %44, align 4
  %45 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %46 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store i32 %47, i32* %51, align 8
  %52 = load %struct.cx8802_fh*, %struct.cx8802_fh** %7, align 8
  %53 = getelementptr inbounds %struct.cx8802_fh, %struct.cx8802_fh* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i32 %55, i32* %59, align 4
  %60 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %61 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %64 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.cx8802_fh*, %struct.cx8802_fh** %7, align 8
  %67 = getelementptr inbounds %struct.cx8802_fh, %struct.cx8802_fh* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dprintk(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %65, i32 %69)
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
