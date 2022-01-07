; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_enum_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_enum_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (i32*, i32)* }
%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i32 }
%struct.vpfe_device = type { i32 }
%struct.vpfe_pixel_format = type { %struct.v4l2_fmtdesc }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"vpfe_enum_fmt_vid_cap\0A\00", align 1
@ccdc_dev = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @vpfe_enum_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_enum_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  %8 = alloca %struct.vpfe_device*, align 8
  %9 = alloca %struct.vpfe_pixel_format*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.vpfe_device* @video_drvdata(%struct.file* %12)
  store %struct.vpfe_device* %13, %struct.vpfe_device** %8, align 8
  %14 = load i32, i32* @debug, align 4
  %15 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %16 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %15, i32 0, i32 0
  %17 = call i32 @v4l2_dbg(i32 1, i32 %14, i32* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ccdc_dev, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64 (i32*, i32)*, i64 (i32*, i32)** %20, align 8
  %22 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 %21(i32* %11, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %50

30:                                               ; preds = %3
  %31 = load i32, i32* %11, align 4
  %32 = call %struct.vpfe_pixel_format* @vpfe_lookup_pix_format(i32 %31)
  store %struct.vpfe_pixel_format* %32, %struct.vpfe_pixel_format** %9, align 8
  %33 = load %struct.vpfe_pixel_format*, %struct.vpfe_pixel_format** %9, align 8
  %34 = icmp ne %struct.vpfe_pixel_format* null, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  %39 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %40 = load %struct.vpfe_pixel_format*, %struct.vpfe_pixel_format** %9, align 8
  %41 = getelementptr inbounds %struct.vpfe_pixel_format, %struct.vpfe_pixel_format* %40, i32 0, i32 0
  %42 = bitcast %struct.v4l2_fmtdesc* %39 to i8*
  %43 = bitcast %struct.v4l2_fmtdesc* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %4, align 4
  br label %50

47:                                               ; preds = %30
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %35, %27
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.vpfe_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local %struct.vpfe_pixel_format* @vpfe_lookup_pix_format(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
