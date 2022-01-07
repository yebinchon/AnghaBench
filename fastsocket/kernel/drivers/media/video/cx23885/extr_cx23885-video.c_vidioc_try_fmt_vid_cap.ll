; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-video.c_vidioc_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-video.c_vidioc_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.cx23885_dev = type { i32 }
%struct.cx23885_fmt = type { i32 }
%struct.cx23885_fh = type { %struct.cx23885_dev* }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.cx23885_dev*, align 8
  %9 = alloca %struct.cx23885_fmt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.cx23885_fh*
  %15 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %14, i32 0, i32 0
  %16 = load %struct.cx23885_dev*, %struct.cx23885_dev** %15, align 8
  store %struct.cx23885_dev* %16, %struct.cx23885_dev** %8, align 8
  %17 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.cx23885_fmt* @format_by_fourcc(i32 %21)
  store %struct.cx23885_fmt* %22, %struct.cx23885_fmt** %9, align 8
  %23 = load %struct.cx23885_fmt*, %struct.cx23885_fmt** %9, align 8
  %24 = icmp eq %struct.cx23885_fmt* null, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %111

28:                                               ; preds = %3
  %29 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %35 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @norm_maxw(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %39 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @norm_maxh(i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %28
  %46 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %12, align 4
  %52 = udiv i32 %51, 2
  %53 = icmp ugt i32 %50, %52
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 129, i32 130
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %45, %28
  %57 = load i32, i32* %10, align 4
  switch i32 %57, label %62 [
    i32 128, label %58
    i32 130, label %58
    i32 129, label %61
  ]

58:                                               ; preds = %56, %56
  %59 = load i32, i32* %12, align 4
  %60 = udiv i32 %59, 2
  store i32 %60, i32* %12, align 4
  br label %65

61:                                               ; preds = %56
  br label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %111

65:                                               ; preds = %61, %58
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 4
  %71 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @v4l_bound_align_image(i32* %74, i32 48, i32 %75, i32 2, i32* %79, i32 32, i32 %80, i32 0, i32 0)
  %82 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.cx23885_fmt*, %struct.cx23885_fmt** %9, align 8
  %88 = getelementptr inbounds %struct.cx23885_fmt, %struct.cx23885_fmt* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %86, %89
  %91 = ashr i32 %90, 3
  %92 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %93 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  store i32 %91, i32* %95, align 4
  %96 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %97 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %102 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = mul i32 %100, %105
  %107 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %108 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 4
  store i32 %106, i32* %110, align 4
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %65, %62, %25
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.cx23885_fmt* @format_by_fourcc(i32) #1

declare dso_local i32 @norm_maxw(i32) #1

declare dso_local i32 @norm_maxh(i32) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
