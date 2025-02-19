; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_vidioc_enum_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_vidioc_enum_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i64, i32, i32, i64, i32 }

@poseidon_formats = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @vidioc_enum_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_fmt(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @poseidon_formats, align 8
  %9 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %8)
  %10 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %11 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ule i64 %9, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %43

17:                                               ; preds = %3
  %18 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %19 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @poseidon_formats, align 8
  %24 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @poseidon_formats, align 8
  %36 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strcpy(i32 %34, i32 %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %17, %14
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
