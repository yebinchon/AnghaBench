; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_try_fmt_vid_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_try_fmt_vid_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i8* }
%struct.ivtv_open_id = type { i64 }

@IVTV_DEC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @ivtv_try_fmt_vid_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_try_fmt_vid_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.ivtv_open_id*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.ivtv_open_id*
  store %struct.ivtv_open_id* %13, %struct.ivtv_open_id** %7, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %9, align 8
  %24 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %10, align 4
  %29 = load %struct.file*, %struct.file** %4, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %32 = call i32 @ivtv_g_fmt_vid_out(%struct.file* %29, i8* %30, %struct.v4l2_format* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = call i8* @min(i8* %33, i32 720)
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i8* @max(i8* %35, i32 2)
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i8* @min(i8* %37, i32 576)
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i8* @max(i8* %39, i32 2)
  store i8* %40, i8** %9, align 8
  %41 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %7, align 8
  %42 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IVTV_DEC_STREAM_TYPE_YUV, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %3
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  br label %52

52:                                               ; preds = %46, %3
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %55 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i8* %53, i8** %57, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %60 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i8* %58, i8** %62, align 8
  %63 = load i32, i32* %11, align 4
  ret i32 %63
}

declare dso_local i32 @ivtv_g_fmt_vid_out(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i8* @min(i8*, i32) #1

declare dso_local i8* @max(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
