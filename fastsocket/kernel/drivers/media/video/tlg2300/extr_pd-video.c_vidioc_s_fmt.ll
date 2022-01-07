; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_vidioc_s_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_vidioc_s_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.front_face = type { %struct.poseidon* }
%struct.poseidon = type { i32, %struct.file* }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_s_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.front_face*, align 8
  %9 = alloca %struct.poseidon*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.front_face*
  store %struct.front_face* %11, %struct.front_face** %8, align 8
  %12 = load %struct.front_face*, %struct.front_face** %8, align 8
  %13 = getelementptr inbounds %struct.front_face, %struct.front_face* %12, i32 0, i32 0
  %14 = load %struct.poseidon*, %struct.poseidon** %13, align 8
  store %struct.poseidon* %14, %struct.poseidon** %9, align 8
  %15 = load %struct.front_face*, %struct.front_face** %8, align 8
  %16 = call i32 @logs(%struct.front_face* %15)
  %17 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %59

25:                                               ; preds = %3
  %26 = load %struct.poseidon*, %struct.poseidon** %9, align 8
  %27 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.poseidon*, %struct.poseidon** %9, align 8
  %30 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %29, i32 0, i32 1
  %31 = load %struct.file*, %struct.file** %30, align 8
  %32 = icmp eq %struct.file* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.file*, %struct.file** %5, align 8
  %35 = load %struct.poseidon*, %struct.poseidon** %9, align 8
  %36 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %35, i32 0, i32 1
  store %struct.file* %34, %struct.file** %36, align 8
  br label %50

37:                                               ; preds = %25
  %38 = load %struct.file*, %struct.file** %5, align 8
  %39 = load %struct.poseidon*, %struct.poseidon** %9, align 8
  %40 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %39, i32 0, i32 1
  %41 = load %struct.file*, %struct.file** %40, align 8
  %42 = icmp ne %struct.file* %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.poseidon*, %struct.poseidon** %9, align 8
  %45 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %59

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %33
  %51 = load %struct.poseidon*, %struct.poseidon** %9, align 8
  %52 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @pd_vidioc_s_fmt(%struct.poseidon* %51, i32* %54)
  %56 = load %struct.poseidon*, %struct.poseidon** %9, align 8
  %57 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %50, %43, %22
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @logs(%struct.front_face*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pd_vidioc_s_fmt(%struct.poseidon*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
