; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_vidioc_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_vidioc_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.cx88_core = type { i32 }
%struct.cx8800_fmt = type { i32 }
%struct.cx8800_fh = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.cx88_core* }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.cx88_core*, align 8
  %9 = alloca %struct.cx8800_fmt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.cx8800_fh*
  %15 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.cx88_core*, %struct.cx88_core** %17, align 8
  store %struct.cx88_core* %18, %struct.cx88_core** %8, align 8
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.cx8800_fmt* @format_by_fourcc(i32 %23)
  store %struct.cx8800_fmt* %24, %struct.cx8800_fmt** %9, align 8
  %25 = load %struct.cx8800_fmt*, %struct.cx8800_fmt** %9, align 8
  %26 = icmp eq %struct.cx8800_fmt* null, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %113

30:                                               ; preds = %3
  %31 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load %struct.cx88_core*, %struct.cx88_core** %8, align 8
  %37 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @norm_maxw(i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.cx88_core*, %struct.cx88_core** %8, align 8
  %41 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @norm_maxh(i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %30
  %48 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = udiv i32 %53, 2
  %55 = icmp ugt i32 %52, %54
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 129, i32 130
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %47, %30
  %59 = load i32, i32* %10, align 4
  switch i32 %59, label %64 [
    i32 128, label %60
    i32 130, label %60
    i32 129, label %63
  ]

60:                                               ; preds = %58, %58
  %61 = load i32, i32* %12, align 4
  %62 = udiv i32 %61, 2
  store i32 %62, i32* %12, align 4
  br label %67

63:                                               ; preds = %58
  br label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %113

67:                                               ; preds = %63, %60
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 4
  %73 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @v4l_bound_align_image(i32* %76, i32 48, i32 %77, i32 2, i32* %81, i32 32, i32 %82, i32 0, i32 0)
  %84 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.cx8800_fmt*, %struct.cx8800_fmt** %9, align 8
  %90 = getelementptr inbounds %struct.cx8800_fmt, %struct.cx8800_fmt* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %88, %91
  %93 = ashr i32 %92, 3
  %94 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %95 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  store i32 %93, i32* %97, align 4
  %98 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %99 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %104 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = mul i32 %102, %107
  %109 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %110 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 4
  store i32 %108, i32* %112, align 4
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %67, %64, %27
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.cx8800_fmt* @format_by_fourcc(i32) #1

declare dso_local i32 @norm_maxw(i32) #1

declare dso_local i32 @norm_maxh(i32) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
