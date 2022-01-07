; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.zoran_fh = type { %struct.zoran* }
%struct.zoran = type { i32 }

@V4L2_PIX_FMT_MJPEG = common dso_local global i64 0, align 8
@NUM_FORMATS = common dso_local global i32 0, align 4
@zoran_formats = common dso_local global %struct.TYPE_6__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@BUZ_MIN_WIDTH = common dso_local global i32 0, align 4
@BUZ_MAX_WIDTH = common dso_local global i32 0, align 4
@BUZ_MIN_HEIGHT = common dso_local global i32 0, align 4
@BUZ_MAX_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @zoran_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zoran_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.zoran_fh*, align 8
  %9 = alloca %struct.zoran*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.zoran_fh*
  store %struct.zoran_fh* %13, %struct.zoran_fh** %8, align 8
  %14 = load %struct.zoran_fh*, %struct.zoran_fh** %8, align 8
  %15 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %14, i32 0, i32 0
  %16 = load %struct.zoran*, %struct.zoran** %15, align 8
  store %struct.zoran* %16, %struct.zoran** %9, align 8
  %17 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @V4L2_PIX_FMT_MJPEG, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = load %struct.zoran_fh*, %struct.zoran_fh** %8, align 8
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %28 = call i32 @zoran_try_fmt_vid_out(%struct.file* %25, %struct.zoran_fh* %26, %struct.v4l2_format* %27)
  store i32 %28, i32* %4, align 4
  br label %93

29:                                               ; preds = %3
  %30 = load %struct.zoran*, %struct.zoran** %9, align 8
  %31 = getelementptr inbounds %struct.zoran, %struct.zoran* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %52, %29
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @NUM_FORMATS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zoran_formats, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %43, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %55

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %33

55:                                               ; preds = %50, %33
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @NUM_FORMATS, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.zoran*, %struct.zoran** %9, align 8
  %61 = getelementptr inbounds %struct.zoran, %struct.zoran* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %93

65:                                               ; preds = %55
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zoran_formats, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @DIV_ROUND_UP(i32 %71, i32 8)
  store i32 %72, i32* %10, align 4
  %73 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* @BUZ_MIN_WIDTH, align 4
  %78 = load i32, i32* @BUZ_MAX_WIDTH, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %79, 2
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 1, i32 2
  %83 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* @BUZ_MIN_HEIGHT, align 4
  %88 = load i32, i32* @BUZ_MAX_HEIGHT, align 4
  %89 = call i32 @v4l_bound_align_image(i32* %76, i32 %77, i32 %78, i32 %82, i32* %86, i32 %87, i32 %88, i32 0, i32 0)
  %90 = load %struct.zoran*, %struct.zoran** %9, align 8
  %91 = getelementptr inbounds %struct.zoran, %struct.zoran* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %65, %59, %24
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @zoran_try_fmt_vid_out(%struct.file*, %struct.zoran_fh*, %struct.v4l2_format*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
