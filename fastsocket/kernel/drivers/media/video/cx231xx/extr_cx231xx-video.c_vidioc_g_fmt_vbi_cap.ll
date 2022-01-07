; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_vidioc_g_fmt_vbi_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_vidioc_g_fmt_vbi_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32*, i8**, i64, i32, i32 }
%struct.cx231xx_fh = type { %struct.cx231xx* }
%struct.cx231xx = type { i32 }

@VBI_LINE_LENGTH = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_GREY = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@PAL_VBI_START_LINE = common dso_local global i8* null, align 8
@NTSC_VBI_START_LINE = common dso_local global i8* null, align 8
@PAL_VBI_LINES = common dso_local global i32 0, align 4
@NTSC_VBI_LINES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_g_fmt_vbi_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_fmt_vbi_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.cx231xx_fh*, align 8
  %8 = alloca %struct.cx231xx*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.cx231xx_fh*
  store %struct.cx231xx_fh* %10, %struct.cx231xx_fh** %7, align 8
  %11 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %12 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %11, i32 0, i32 0
  %13 = load %struct.cx231xx*, %struct.cx231xx** %12, align 8
  store %struct.cx231xx* %13, %struct.cx231xx** %8, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 27000000, i32* %17, align 8
  %18 = load i32, i32* @VBI_LINE_LENGTH, align 4
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 5
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* @V4L2_PIX_FMT_GREY, align 4
  %24 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  store i32 %23, i32* %27, align 8
  %28 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %33 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @V4L2_STD_625_50, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i8*, i8** @PAL_VBI_START_LINE, align 8
  br label %42

40:                                               ; preds = %3
  %41 = load i8*, i8** @NTSC_VBI_START_LINE, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i8* [ %39, %38 ], [ %41, %40 ]
  %44 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %45 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  store i8* %43, i8** %49, align 8
  %50 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %51 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @V4L2_STD_625_50, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i32, i32* @PAL_VBI_LINES, align 4
  br label %60

58:                                               ; preds = %42
  %59 = load i32, i32* @NTSC_VBI_LINES, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %63 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %61, i32* %67, align 4
  %68 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %69 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @V4L2_STD_625_50, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %60
  %75 = load i8*, i8** @PAL_VBI_START_LINE, align 8
  %76 = getelementptr i8, i8* %75, i64 312
  br label %80

77:                                               ; preds = %60
  %78 = load i8*, i8** @NTSC_VBI_START_LINE, align 8
  %79 = getelementptr i8, i8* %78, i64 263
  br label %80

80:                                               ; preds = %77, %74
  %81 = phi i8* [ %76, %74 ], [ %79, %77 ]
  %82 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %83 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 1
  store i8* %81, i8** %87, align 8
  %88 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %89 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %96 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 %94, i32* %100, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
