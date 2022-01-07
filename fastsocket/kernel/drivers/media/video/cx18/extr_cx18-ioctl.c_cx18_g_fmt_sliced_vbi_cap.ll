; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-ioctl.c_cx18_g_fmt_sliced_vbi_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-ioctl.c_cx18_g_fmt_sliced_vbi_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_sliced_vbi_format }
%struct.v4l2_sliced_vbi_format = type { i32, i64, i64*, i32 }
%struct.cx18 = type { i32 }
%struct.cx18_open_id = type { %struct.cx18* }

@vbi = common dso_local global i32 0, align 4
@g_sliced_fmt = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @cx18_g_fmt_sliced_vbi_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_g_fmt_sliced_vbi_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.cx18*, align 8
  %9 = alloca %struct.v4l2_sliced_vbi_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.cx18_open_id*
  %12 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %11, i32 0, i32 0
  %13 = load %struct.cx18*, %struct.cx18** %12, align 8
  store %struct.cx18* %13, %struct.cx18** %8, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.v4l2_sliced_vbi_format* %16, %struct.v4l2_sliced_vbi_format** %9, align 8
  %17 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %9, align 8
  %18 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %17, i32 0, i32 2
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %9, align 8
  %22 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %9, align 8
  %26 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %25, i32 0, i32 0
  store i32 144, i32* %26, align 8
  %27 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %9, align 8
  %28 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @memset(i32 %29, i32 0, i32 4)
  %31 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %9, align 8
  %32 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.cx18*, %struct.cx18** %8, align 8
  %34 = getelementptr inbounds %struct.cx18, %struct.cx18* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @vbi, align 4
  %37 = load i32, i32* @g_sliced_fmt, align 4
  %38 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i64 @v4l2_subdev_call(i32 %35, i32 %36, i32 %37, %struct.v4l2_sliced_vbi_format* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %3
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %61

46:                                               ; preds = %3
  %47 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %9, align 8
  %48 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %9, align 8
  %52 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %9, align 8
  %56 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %55, i32 0, i32 0
  store i32 144, i32* %56, align 8
  %57 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %9, align 8
  %58 = call i64 @cx18_get_service_set(%struct.v4l2_sliced_vbi_format* %57)
  %59 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %9, align 8
  %60 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %46, %43
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_sliced_vbi_format*) #1

declare dso_local i64 @cx18_get_service_set(%struct.v4l2_sliced_vbi_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
