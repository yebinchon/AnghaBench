; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_vidioc_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_vidioc_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.cx8800_fh = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.cx8800_fh*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.cx8800_fh*
  store %struct.cx8800_fh* %11, %struct.cx8800_fh** %8, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %15 = call i32 @vidioc_try_fmt_vid_cap(%struct.file* %12, i8* %13, %struct.v4l2_format* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 0, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %51

20:                                               ; preds = %3
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @format_by_fourcc(i32 %25)
  %27 = load %struct.cx8800_fh*, %struct.cx8800_fh** %8, align 8
  %28 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cx8800_fh*, %struct.cx8800_fh** %8, align 8
  %35 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cx8800_fh*, %struct.cx8800_fh** %8, align 8
  %42 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cx8800_fh*, %struct.cx8800_fh** %8, align 8
  %49 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %20, %18
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @vidioc_try_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @format_by_fourcc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
