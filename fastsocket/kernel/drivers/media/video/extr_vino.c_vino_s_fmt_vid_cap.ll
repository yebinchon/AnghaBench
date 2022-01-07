; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i64, i32, i32, i64, i32 }
%struct.vino_channel_settings = type { i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64, i64 }

@vino_drvdata = common dso_local global %struct.TYPE_7__* null, align 8
@VINO_DATA_FMT_NONE = common dso_local global i32 0, align 4
@VINO_DATA_FMT_GREY = common dso_local global i64 0, align 8
@vino_data_formats = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"data format = %s\0A\00", align 1
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vino_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.vino_channel_settings*, align 8
  %8 = alloca i32, align 4
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
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vino_drvdata, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %21 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @vino_find_data_format(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @VINO_DATA_FMT_NONE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %3
  %28 = load i64, i64* @VINO_DATA_FMT_GREY, align 8
  %29 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %30 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vino_data_formats, align 8
  %32 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %33 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %39 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 8
  br label %45

40:                                               ; preds = %3
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %44 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %40, %27
  %46 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %47 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %48 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %51 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @vino_set_scaling(%struct.vino_channel_settings* %46, i64 %49, i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vino_data_formats, align 8
  %55 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %56 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %63 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %67 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %65, %69
  %71 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %72 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %71, i32 0, i32 6
  store i64 %70, i64* %72, align 8
  %73 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %74 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %78 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %76, %80
  %82 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %83 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %85 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %86 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %88 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %91 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %93 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %96 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %100 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %98, %102
  %104 = mul nsw i32 %94, %103
  %105 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %106 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = sdiv i32 %104, %107
  %109 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %110 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vino_data_formats, align 8
  %112 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %113 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %119 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %121 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %120, i32 0, i32 3
  store i64 0, i64* %121, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vino_drvdata, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32* %123, i64 %124)
  ret i32 0
}

declare dso_local %struct.vino_channel_settings* @video_drvdata(%struct.file*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vino_find_data_format(i32) #1

declare dso_local i32 @vino_set_scaling(%struct.vino_channel_settings*, i64, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
