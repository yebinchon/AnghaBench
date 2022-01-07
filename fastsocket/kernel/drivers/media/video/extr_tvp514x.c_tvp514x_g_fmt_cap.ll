; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp514x.c_tvp514x_g_fmt_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp514x.c_tvp514x_g_fmt_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_format = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.tvp514x_decoder = type { %struct.TYPE_4__ }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Current FMT: bytesperline - %dWidth - %d, Height - %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_format*)* @tvp514x_g_fmt_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp514x_g_fmt_cap(%struct.v4l2_subdev* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.tvp514x_decoder*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev* %7)
  store %struct.tvp514x_decoder* %8, %struct.tvp514x_decoder** %6, align 8
  %9 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %10 = icmp eq %struct.v4l2_format* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %46

14:                                               ; preds = %2
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %46

23:                                               ; preds = %14
  %24 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %25 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %28 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %27, i32 0, i32 0
  %29 = bitcast %struct.TYPE_4__* %26 to i8*
  %30 = bitcast %struct.TYPE_4__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 4 %30, i64 12, i1 false)
  %31 = load i32, i32* @debug, align 4
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %33 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %34 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %38 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %42 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @v4l2_dbg(i32 1, i32 %31, %struct.v4l2_subdev* %32, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %40, i32 %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %23, %20, %11
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
