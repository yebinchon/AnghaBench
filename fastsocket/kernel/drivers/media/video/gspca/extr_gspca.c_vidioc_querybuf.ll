; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_querybuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_querybuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64 }
%struct.gspca_dev = type { i64, %struct.gspca_frame* }
%struct.gspca_frame = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vidioc_querybuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querybuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.gspca_dev*, align 8
  %9 = alloca %struct.gspca_frame*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.gspca_dev*
  store %struct.gspca_dev* %11, %struct.gspca_dev** %8, align 8
  %12 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %21 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp uge i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %39

27:                                               ; preds = %16
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %29 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %28, i32 0, i32 1
  %30 = load %struct.gspca_frame*, %struct.gspca_frame** %29, align 8
  %31 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %30, i64 %33
  store %struct.gspca_frame* %34, %struct.gspca_frame** %9, align 8
  %35 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %36 = load %struct.gspca_frame*, %struct.gspca_frame** %9, align 8
  %37 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %36, i32 0, i32 0
  %38 = call i32 @memcpy(%struct.v4l2_buffer* %35, i32* %37, i32 8)
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %27, %24
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @memcpy(%struct.v4l2_buffer*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
