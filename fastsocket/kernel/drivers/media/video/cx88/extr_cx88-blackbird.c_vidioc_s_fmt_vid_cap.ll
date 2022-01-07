; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_vidioc_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_vidioc_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i64, i32 }
%struct.cx8802_fh = type { %struct.TYPE_4__, %struct.cx8802_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.cx8802_dev = type { i32, i32, i32, i32, %struct.cx88_core* }
%struct.cx88_core = type { i32 }

@V4L2_PIX_FMT_MPEG = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_FRAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"VIDIOC_S_FMT: w: %d, h: %d, f: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.cx8802_fh*, align 8
  %8 = alloca %struct.cx8802_dev*, align 8
  %9 = alloca %struct.cx88_core*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.cx8802_fh*
  store %struct.cx8802_fh* %11, %struct.cx8802_fh** %7, align 8
  %12 = load %struct.cx8802_fh*, %struct.cx8802_fh** %7, align 8
  %13 = getelementptr inbounds %struct.cx8802_fh, %struct.cx8802_fh* %12, i32 0, i32 1
  %14 = load %struct.cx8802_dev*, %struct.cx8802_dev** %13, align 8
  store %struct.cx8802_dev* %14, %struct.cx8802_dev** %8, align 8
  %15 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %16 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %15, i32 0, i32 4
  %17 = load %struct.cx88_core*, %struct.cx88_core** %16, align 8
  store %struct.cx88_core* %17, %struct.cx88_core** %9, align 8
  %18 = load i32, i32* @V4L2_PIX_FMT_MPEG, align 4
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 6
  store i32 %18, i32* %22, align 8
  %23 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %28 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %31 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 8
  %38 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %43 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %48 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %55 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.cx8802_fh*, %struct.cx8802_fh** %7, align 8
  %62 = getelementptr inbounds %struct.cx8802_fh, %struct.cx8802_fh* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.cx88_core*, %struct.cx88_core** %9, align 8
  %65 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %66 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %71 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %76 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @cx88_set_scale(%struct.cx88_core* %64, i32 %69, i32 %74, i32 %79)
  %81 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %82 = load i32, i32* @CX2341X_ENC_SET_FRAME_SIZE, align 4
  %83 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %84 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %89 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @blackbird_api_cmd(%struct.cx8802_dev* %81, i32 %82, i32 2, i32 0, i32 %87, i32 %92)
  %94 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %95 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %100 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %105 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dprintk(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %103, i32 %108)
  ret i32 0
}

declare dso_local i32 @cx88_set_scale(%struct.cx88_core*, i32, i32, i32) #1

declare dso_local i32 @blackbird_api_cmd(%struct.cx8802_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
