; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp514x.c_tvp514x_s_fmt_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp514x.c_tvp514x_s_fmt_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_format = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32 }
%struct.tvp514x_decoder = type { %struct.v4l2_pix_format }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_format*)* @tvp514x_s_fmt_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp514x_s_fmt_cap(%struct.v4l2_subdev* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.tvp514x_decoder*, align 8
  %7 = alloca %struct.v4l2_pix_format*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev* %9)
  store %struct.tvp514x_decoder* %10, %struct.tvp514x_decoder** %6, align 8
  %11 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %12 = icmp eq %struct.v4l2_format* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %43

25:                                               ; preds = %16
  %26 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.v4l2_pix_format* %28, %struct.v4l2_pix_format** %7, align 8
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %30 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %31 = call i32 @tvp514x_try_fmt_cap(%struct.v4l2_subdev* %29, %struct.v4l2_format* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %43

36:                                               ; preds = %25
  %37 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %38 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %37, i32 0, i32 0
  %39 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %40 = bitcast %struct.v4l2_pix_format* %38 to i8*
  %41 = bitcast %struct.v4l2_pix_format* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %36, %34, %22, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev*) #1

declare dso_local i32 @tvp514x_try_fmt_cap(%struct.v4l2_subdev*, %struct.v4l2_format*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
