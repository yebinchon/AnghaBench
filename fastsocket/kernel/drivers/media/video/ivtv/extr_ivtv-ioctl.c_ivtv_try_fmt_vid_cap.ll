; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ivtv_open_id = type { i64, %struct.ivtv* }
%struct.ivtv = type { i64 }

@IVTV_ENC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @ivtv_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.ivtv_open_id*, align 8
  %8 = alloca %struct.ivtv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.ivtv_open_id*
  store %struct.ivtv_open_id* %13, %struct.ivtv_open_id** %7, align 8
  %14 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %7, align 8
  %15 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %14, i32 0, i32 1
  %16 = load %struct.ivtv*, %struct.ivtv** %15, align 8
  store %struct.ivtv* %16, %struct.ivtv** %8, align 8
  %17 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  store i32 2, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @min(i32 %27, i32 720)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @max(i32 %29, i32 2)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %7, align 8
  %32 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IVTV_ENC_STREAM_TYPE_YUV, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %37, -32
  store i32 %38, i32* %10, align 4
  store i32 32, i32* %11, align 4
  br label %39

39:                                               ; preds = %36, %3
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %42 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 576, i32 480
  %47 = call i32 @min(i32 %40, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @max(i32 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.file*, %struct.file** %4, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %54 = call i32 @ivtv_g_fmt_vid_cap(%struct.file* %51, i8* %52, %struct.v4l2_format* %53)
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %62 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i32 %60, i32* %64, align 4
  ret i32 0
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @ivtv_g_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
