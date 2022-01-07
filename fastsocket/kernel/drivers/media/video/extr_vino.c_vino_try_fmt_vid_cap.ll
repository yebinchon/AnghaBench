; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.vino_channel_settings = type { i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"requested: w = %d, h = %d\0A\00", align 1
@vino_drvdata = common dso_local global %struct.TYPE_7__* null, align 8
@VINO_DATA_FMT_NONE = common dso_local global i64 0, align 8
@VINO_DATA_FMT_GREY = common dso_local global i64 0, align 8
@vino_data_formats = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"data format = %s\0A\00", align 1
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vino_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.vino_channel_settings*, align 8
  %8 = alloca %struct.vino_channel_settings, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = call %struct.vino_channel_settings* @video_drvdata(%struct.file* %11)
  store %struct.vino_channel_settings* %12, %struct.vino_channel_settings** %7, align 8
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %14 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.v4l2_pix_format* %15, %struct.v4l2_pix_format** %10, align 8
  %16 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %17 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %20 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vino_drvdata, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %28 = call i32 @memcpy(%struct.vino_channel_settings* %8, %struct.vino_channel_settings* %27, i32 32)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vino_drvdata, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %34 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @vino_find_data_format(i32 %35)
  %37 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %8, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  %38 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %8, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @VINO_DATA_FMT_NONE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %3
  %43 = load i64, i64* @VINO_DATA_FMT_GREY, align 8
  %44 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %8, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vino_data_formats, align 8
  %46 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %8, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %52 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %42, %3
  %54 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %58 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @vino_set_scaling(%struct.vino_channel_settings* %8, i32 %56, i32 %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vino_data_formats, align 8
  %62 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %8, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %8, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %8, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %70, %73
  %75 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %8, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sdiv i32 %74, %76
  %78 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %79 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %8, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %8, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %82, %85
  %87 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %8, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = sdiv i32 %86, %88
  %90 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %91 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %93 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %94 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 4
  %95 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %8, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %98 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %8, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %8, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %8, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %103, %106
  %108 = mul nsw i32 %100, %107
  %109 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %8, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = sdiv i32 %108, %110
  %112 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %113 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vino_data_formats, align 8
  %115 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %8, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %121 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 8
  %122 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %123 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %122, i32 0, i32 4
  store i64 0, i64* %123, align 8
  ret i32 0
}

declare dso_local %struct.vino_channel_settings* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(%struct.vino_channel_settings*, %struct.vino_channel_settings*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @vino_find_data_format(i32) #1

declare dso_local i32 @vino_set_scaling(%struct.vino_channel_settings*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
