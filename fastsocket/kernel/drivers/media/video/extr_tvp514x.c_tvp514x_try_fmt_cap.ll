; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp514x.c_tvp514x_try_fmt_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp514x.c_tvp514x_try_fmt_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_format = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i64, i32, i32, i64, i32, i32 }
%struct.tvp514x_decoder = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@STD_INVALID = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Try FMT: pixelformat - %s, bytesperline - %dWidth - %d, Height - %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_format*)* @tvp514x_try_fmt_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp514x_try_fmt_cap(%struct.v4l2_subdev* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.tvp514x_decoder*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_pix_format*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev* %10)
  store %struct.tvp514x_decoder* %11, %struct.tvp514x_decoder** %6, align 8
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %13 = icmp eq %struct.v4l2_format* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %148

17:                                               ; preds = %2
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %23, %17
  %28 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store %struct.v4l2_pix_format* %30, %struct.v4l2_pix_format** %8, align 8
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %32 = call i32 @tvp514x_get_current_std(%struct.v4l2_subdev* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @STD_INVALID, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %148

39:                                               ; preds = %27
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %42 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %44 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %52 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %54 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %53, i32 0, i32 3
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %62 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %84, %39
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %66 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %63
  %70 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %71 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %74 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %73, i32 0, i32 2
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %72, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  br label %87

83:                                               ; preds = %69
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %63

87:                                               ; preds = %82, %63
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %90 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %93, %87
  %95 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %96 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %95, i32 0, i32 2
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %104 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  %105 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %106 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %107 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %106, i32 0, i32 7
  store i32 %105, i32* %107, align 4
  %108 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %109 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = mul nsw i32 %110, 2
  %112 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %113 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 8
  %114 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %115 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %118 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %116, %119
  %121 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %122 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %124 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %125 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 8
  %126 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %127 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %126, i32 0, i32 5
  store i64 0, i64* %127, align 8
  %128 = load i32, i32* @debug, align 4
  %129 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %130 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %131 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %130, i32 0, i32 2
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %139 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %142 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %145 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @v4l2_dbg(i32 1, i32 %128, %struct.v4l2_subdev* %129, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %137, i32 %140, i32 %143, i32 %146)
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %94, %36, %14
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev*) #1

declare dso_local i32 @tvp514x_get_current_std(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
