; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-ioctl.c_cx18_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-ioctl.c_cx18_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cx18_open_id = type { i32, %struct.cx18* }
%struct.cx18 = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@V4L2_MBUS_FMT_FIXED = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_mbus_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @cx18_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.cx18_open_id*, align 8
  %9 = alloca %struct.cx18*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.cx18_open_id*
  store %struct.cx18_open_id* %15, %struct.cx18_open_id** %8, align 8
  %16 = load %struct.cx18_open_id*, %struct.cx18_open_id** %8, align 8
  %17 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %16, i32 0, i32 1
  %18 = load %struct.cx18*, %struct.cx18** %17, align 8
  store %struct.cx18* %18, %struct.cx18** %9, align 8
  %19 = load %struct.cx18*, %struct.cx18** %9, align 8
  %20 = getelementptr inbounds %struct.cx18, %struct.cx18* %19, i32 0, i32 3
  %21 = load %struct.cx18_open_id*, %struct.cx18_open_id** %8, align 8
  %22 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @v4l2_prio_check(i32* %20, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %4, align 4
  br label %94

29:                                               ; preds = %3
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %33 = call i32 @cx18_try_fmt_vid_cap(%struct.file* %30, i8* %31, %struct.v4l2_format* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %4, align 4
  br label %94

38:                                               ; preds = %29
  %39 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %12, align 4
  %44 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %13, align 4
  %49 = load %struct.cx18*, %struct.cx18** %9, align 8
  %50 = getelementptr inbounds %struct.cx18, %struct.cx18* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %38
  %56 = load %struct.cx18*, %struct.cx18** %9, align 8
  %57 = getelementptr inbounds %struct.cx18, %struct.cx18* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %94

63:                                               ; preds = %55, %38
  %64 = load %struct.cx18*, %struct.cx18** %9, align 8
  %65 = getelementptr inbounds %struct.cx18, %struct.cx18* %64, i32 0, i32 2
  %66 = call i64 @atomic_read(i32* %65)
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @EBUSY, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %94

71:                                               ; preds = %63
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.cx18*, %struct.cx18** %9, align 8
  %74 = getelementptr inbounds %struct.cx18, %struct.cx18* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i32 0, i32 0
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.cx18*, %struct.cx18** %9, align 8
  %79 = getelementptr inbounds %struct.cx18, %struct.cx18* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i32 0, i32 1
  store i32 %77, i32* %81, align 4
  %82 = load i32, i32* @V4L2_MBUS_FMT_FIXED, align 4
  %83 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i32 0, i32 2
  store i32 %82, i32* %83, align 4
  %84 = load %struct.cx18*, %struct.cx18** %9, align 8
  %85 = getelementptr inbounds %struct.cx18, %struct.cx18* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @video, align 4
  %88 = load i32, i32* @s_mbus_fmt, align 4
  %89 = call i32 @v4l2_subdev_call(i32 %86, i32 %87, i32 %88, %struct.v4l2_mbus_framefmt* %10)
  %90 = load %struct.file*, %struct.file** %5, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %93 = call i32 @cx18_g_fmt_vid_cap(%struct.file* %90, i8* %91, %struct.v4l2_format* %92)
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %71, %68, %62, %36, %27
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @v4l2_prio_check(i32*, i32) #1

declare dso_local i32 @cx18_try_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @cx18_g_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
