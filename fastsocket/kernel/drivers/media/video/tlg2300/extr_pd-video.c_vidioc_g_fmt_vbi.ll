; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_vidioc_g_fmt_vbi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_vidioc_g_fmt_vbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_vbi_format }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32*, i32, i8**, i32 }
%struct.front_face = type { %struct.poseidon* }
%struct.poseidon = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@V4L2_PIX_FMT_GREY = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L_NTSC_VBI_LINES = common dso_local global i8* null, align 8
@V4L_PAL_VBI_LINES = common dso_local global i8* null, align 8
@V4L2_VBI_UNSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_g_fmt_vbi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_fmt_vbi(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.front_face*, align 8
  %8 = alloca %struct.poseidon*, align 8
  %9 = alloca %struct.v4l2_vbi_format*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.front_face*
  store %struct.front_face* %11, %struct.front_face** %7, align 8
  %12 = load %struct.front_face*, %struct.front_face** %7, align 8
  %13 = getelementptr inbounds %struct.front_face, %struct.front_face* %12, i32 0, i32 0
  %14 = load %struct.poseidon*, %struct.poseidon** %13, align 8
  store %struct.poseidon* %14, %struct.poseidon** %8, align 8
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.v4l2_vbi_format* %17, %struct.v4l2_vbi_format** %9, align 8
  %18 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %19 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %18, i32 0, i32 0
  store i32 1440, i32* %19, align 8
  %20 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %21 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %20, i32 0, i32 1
  store i32 27000000, i32* %21, align 4
  %22 = load i32, i32* @V4L2_PIX_FMT_GREY, align 4
  %23 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %24 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 8
  %25 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %26 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %25, i32 0, i32 2
  store i32 256, i32* %26, align 8
  %27 = load %struct.poseidon*, %struct.poseidon** %8, align 8
  %28 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @V4L2_STD_525_60, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %3
  %36 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %37 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 10, i32* %39, align 4
  %40 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %41 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 264, i32* %43, align 4
  %44 = load i8*, i8** @V4L_NTSC_VBI_LINES, align 8
  %45 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %46 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %45, i32 0, i32 5
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  store i8* %44, i8** %48, align 8
  %49 = load i8*, i8** @V4L_NTSC_VBI_LINES, align 8
  %50 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %51 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %50, i32 0, i32 5
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  store i8* %49, i8** %53, align 8
  br label %73

54:                                               ; preds = %3
  %55 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %56 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 6, i32* %58, align 4
  %59 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %60 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 314, i32* %62, align 4
  %63 = load i8*, i8** @V4L_PAL_VBI_LINES, align 8
  %64 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %65 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %64, i32 0, i32 5
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  store i8* %63, i8** %67, align 8
  %68 = load i8*, i8** @V4L_PAL_VBI_LINES, align 8
  %69 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %70 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %69, i32 0, i32 5
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  store i8* %68, i8** %72, align 8
  br label %73

73:                                               ; preds = %54, %35
  %74 = load i32, i32* @V4L2_VBI_UNSYNC, align 4
  %75 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %76 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.front_face*, %struct.front_face** %7, align 8
  %78 = call i32 @logs(%struct.front_face* %77)
  ret i32 0
}

declare dso_local i32 @logs(%struct.front_face*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
