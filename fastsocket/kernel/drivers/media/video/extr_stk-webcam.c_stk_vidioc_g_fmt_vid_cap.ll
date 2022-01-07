; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_vidioc_g_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_vidioc_g_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.stk_camera = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@stk_sizes = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"ERROR: mode invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_SBGGR8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @stk_vidioc_g_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk_vidioc_g_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.v4l2_pix_format*, align 8
  %9 = alloca %struct.stk_camera*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.v4l2_pix_format* %13, %struct.v4l2_pix_format** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.stk_camera*
  store %struct.stk_camera* %15, %struct.stk_camera** %9, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %36, %3
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stk_sizes, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stk_sizes, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %29 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %27, %31
  br label %33

33:                                               ; preds = %21, %16
  %34 = phi i1 [ false, %16 ], [ %32, %21 ]
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %16

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stk_sizes, align 8
  %42 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %41)
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = call i32 @STK_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %106

48:                                               ; preds = %39
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stk_sizes, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %56 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stk_sizes, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %64 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %66 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %67 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %69 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %70 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 8
  %71 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %72 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %76 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  %77 = load %struct.stk_camera*, %struct.stk_camera** %9, align 8
  %78 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @V4L2_PIX_FMT_SBGGR8, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %48
  %84 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %85 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %88 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  br label %96

89:                                               ; preds = %48
  %90 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %91 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 2, %92
  %94 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %95 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %89, %83
  %97 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %98 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %101 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %99, %102
  %104 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %105 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %96, %44
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @STK_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
