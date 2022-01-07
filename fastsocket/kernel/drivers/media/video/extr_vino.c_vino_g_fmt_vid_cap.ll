; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_g_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_g_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.vino_channel_settings = type { i32, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@vino_drvdata = common dso_local global %struct.TYPE_7__* null, align 8
@vino_data_formats = common dso_local global %struct.TYPE_8__* null, align 8
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vino_g_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_g_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.vino_channel_settings*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call %struct.vino_channel_settings* @video_drvdata(%struct.file* %10)
  store %struct.vino_channel_settings* %11, %struct.vino_channel_settings** %7, align 8
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.v4l2_pix_format* %14, %struct.v4l2_pix_format** %9, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vino_drvdata, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %20 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %24 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %22, %26
  %28 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %29 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sdiv i32 %27, %30
  %32 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %33 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %35 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %39 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %37, %41
  %43 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %44 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sdiv i32 %42, %45
  %47 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %48 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vino_data_formats, align 8
  %50 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %51 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %57 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %59 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 4
  %61 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %62 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %67 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %70 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %74 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %72, %76
  %78 = mul nsw i32 %68, %77
  %79 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %80 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sdiv i32 %78, %81
  %83 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %84 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vino_data_formats, align 8
  %86 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %7, align 8
  %87 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %93 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 8
  %94 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %95 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %94, i32 0, i32 4
  store i64 0, i64* %95, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vino_drvdata, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  ret i32 0
}

declare dso_local %struct.vino_channel_settings* @video_drvdata(%struct.file*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
