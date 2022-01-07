; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_vidioc_s_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_vidioc_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.cx231xx_fh = type { %struct.cx231xx* }
%struct.cx231xx = type { i32, i32, %struct.v4l2_mbus_framefmt* }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"vidioc_s_std : 0x%x\0A\00", align 1
@core = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@V4L2_MBUS_FMT_FIXED = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_mbus_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_mbus_framefmt**)* @vidioc_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_std(%struct.file* %0, i8* %1, %struct.v4l2_mbus_framefmt** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_mbus_framefmt**, align 8
  %8 = alloca %struct.cx231xx_fh*, align 8
  %9 = alloca %struct.cx231xx*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt, align 4
  %11 = alloca %struct.v4l2_format, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_mbus_framefmt** %2, %struct.v4l2_mbus_framefmt*** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.cx231xx_fh*
  store %struct.cx231xx_fh* %14, %struct.cx231xx_fh** %8, align 8
  %15 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %16 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %15, i32 0, i32 0
  %17 = load %struct.cx231xx*, %struct.cx231xx** %16, align 8
  store %struct.cx231xx* %17, %struct.cx231xx** %9, align 8
  %18 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %19 = call i32 @check_dev(%struct.cx231xx* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %4, align 4
  br label %80

24:                                               ; preds = %3
  %25 = load %struct.v4l2_mbus_framefmt**, %struct.v4l2_mbus_framefmt*** %7, align 8
  %26 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %25, align 8
  %27 = ptrtoint %struct.v4l2_mbus_framefmt* %26 to i32
  %28 = call i32 @cx231xx_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.v4l2_mbus_framefmt**, %struct.v4l2_mbus_framefmt*** %7, align 8
  %30 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %29, align 8
  %31 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %32 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %31, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %30, %struct.v4l2_mbus_framefmt** %32, align 8
  %33 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %34 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %40 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.file*, %struct.file** %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @vidioc_try_fmt_vid_cap(%struct.file* %45, i8* %46, %struct.v4l2_format* %11)
  %48 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %49 = load i32, i32* @core, align 4
  %50 = load i32, i32* @s_std, align 4
  %51 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %52 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %51, i32 0, i32 2
  %53 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %52, align 8
  %54 = call i32 @call_all(%struct.cx231xx* %48, i32 %49, i32 %50, %struct.v4l2_mbus_framefmt* %53)
  %55 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* @V4L2_MBUS_FMT_FIXED, align 4
  %58 = call i32 @v4l2_fill_mbus_format(%struct.v4l2_mbus_framefmt* %10, %struct.TYPE_5__* %56, i32 %57)
  %59 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %60 = load i32, i32* @video, align 4
  %61 = load i32, i32* @s_mbus_fmt, align 4
  %62 = call i32 @call_all(%struct.cx231xx* %59, i32 %60, i32 %61, %struct.v4l2_mbus_framefmt* %10)
  %63 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @v4l2_fill_pix_format(%struct.TYPE_5__* %64, %struct.v4l2_mbus_framefmt* %10)
  %66 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %71 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %77 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %79 = call i32 @cx231xx_do_mode_ctrl_overrides(%struct.cx231xx* %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %24, %22
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @check_dev(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_info(i8*, i32) #1

declare dso_local i32 @vidioc_try_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @call_all(%struct.cx231xx*, i32, i32, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @v4l2_fill_mbus_format(%struct.v4l2_mbus_framefmt*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @v4l2_fill_pix_format(%struct.TYPE_5__*, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @cx231xx_do_mode_ctrl_overrides(%struct.cx231xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
