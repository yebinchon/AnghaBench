; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_vidioc_enum_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_vidioc_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_input = type { i64, i64, i32, i64, i64, i32, i32 }
%struct.front_face = type { i32 }

@POSEIDON_INPUTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@pd_inputs = common dso_local global %struct.TYPE_2__* null, align 8
@V4L2_INPUT_TYPE_TUNER = common dso_local global i32 0, align 4
@V4L2_STD_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @vidioc_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.front_face*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.front_face*
  store %struct.front_face* %10, %struct.front_face** %8, align 8
  %11 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @POSEIDON_INPUTS, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %50

24:                                               ; preds = %15
  %25 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pd_inputs, align 8
  %29 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strcpy(i32 %27, i32 %34)
  %36 = load i32, i32* @V4L2_INPUT_TYPE_TUNER, align 4
  %37 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @V4L2_STD_ALL, align 4
  %44 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.front_face*, %struct.front_face** %8, align 8
  %49 = call i32 @logs(%struct.front_face* %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %24, %21
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @logs(%struct.front_face*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
