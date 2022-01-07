; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.em28xx_fh = type { %struct.em28xx* }
%struct.em28xx = type { i32, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.em28xx_fmt = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Fourcc format (%08x) invalid.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_FIELD_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.em28xx_fh*, align 8
  %9 = alloca %struct.em28xx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.em28xx_fmt*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.em28xx_fh*
  store %struct.em28xx_fh* %18, %struct.em28xx_fh** %8, align 8
  %19 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  %20 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %19, i32 0, i32 0
  %21 = load %struct.em28xx*, %struct.em28xx** %20, align 8
  store %struct.em28xx* %21, %struct.em28xx** %9, align 8
  %22 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %33 = call i32 @norm_maxw(%struct.em28xx* %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %35 = call i32 @norm_maxh(%struct.em28xx* %34)
  store i32 %35, i32* %13, align 4
  %36 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.em28xx_fmt* @format_by_fourcc(i32 %40)
  store %struct.em28xx_fmt* %41, %struct.em28xx_fmt** %16, align 8
  %42 = load %struct.em28xx_fmt*, %struct.em28xx_fmt** %16, align 8
  %43 = icmp ne %struct.em28xx_fmt* %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %3
  %45 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @em28xx_videodbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %181

53:                                               ; preds = %3
  %54 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %55 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %84

59:                                               ; preds = %53
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %13, align 4
  %62 = mul i32 3, %61
  %63 = udiv i32 %62, 4
  %64 = icmp ugt i32 %60, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %13, align 4
  br label %70

67:                                               ; preds = %59
  %68 = load i32, i32* %13, align 4
  %69 = udiv i32 %68, 2
  br label %70

70:                                               ; preds = %67, %65
  %71 = phi i32 [ %66, %65 ], [ %69, %67 ]
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %12, align 4
  %74 = mul i32 3, %73
  %75 = udiv i32 %74, 4
  %76 = icmp ugt i32 %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %12, align 4
  br label %82

79:                                               ; preds = %70
  %80 = load i32, i32* %12, align 4
  %81 = udiv i32 %80, 2
  br label %82

82:                                               ; preds = %79, %77
  %83 = phi i32 [ %78, %77 ], [ %81, %79 ]
  store i32 %83, i32* %10, align 4
  br label %88

84:                                               ; preds = %53
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @v4l_bound_align_image(i32* %10, i32 48, i32 %85, i32 1, i32* %11, i32 32, i32 %86, i32 1, i32 0)
  br label %88

88:                                               ; preds = %84, %82
  %89 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @get_scale(%struct.em28xx* %89, i32 %90, i32 %91, i32* %14, i32* %15)
  %93 = load i32, i32* %12, align 4
  %94 = zext i32 %93 to i64
  %95 = shl i64 %94, 12
  %96 = load i32, i32* %14, align 4
  %97 = zext i32 %96 to i64
  %98 = add nsw i64 %97, 4096
  %99 = udiv i64 %95, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %13, align 4
  %102 = zext i32 %101 to i64
  %103 = shl i64 %102, 12
  %104 = load i32, i32* %15, align 4
  %105 = zext i32 %104 to i64
  %106 = add nsw i64 %105, 4096
  %107 = udiv i64 %103, %106
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %111 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store i32 %109, i32* %113, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %116 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  store i32 %114, i32* %118, align 4
  %119 = load %struct.em28xx_fmt*, %struct.em28xx_fmt** %16, align 8
  %120 = getelementptr inbounds %struct.em28xx_fmt, %struct.em28xx_fmt* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %123 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 6
  store i32 %121, i32* %125, align 4
  %126 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %127 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.em28xx_fmt*, %struct.em28xx_fmt** %16, align 8
  %130 = getelementptr inbounds %struct.em28xx_fmt, %struct.em28xx_fmt* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %128, %131
  %133 = add nsw i32 %132, 7
  %134 = ashr i32 %133, 3
  %135 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %136 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  store i32 %134, i32* %138, align 4
  %139 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %140 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %11, align 4
  %145 = mul i32 %143, %144
  %146 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %147 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 3
  store i32 %145, i32* %149, align 4
  %150 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %151 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %152 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 5
  store i32 %150, i32* %154, align 4
  %155 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %156 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %88
  %160 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %161 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %162 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 4
  store i32 %160, i32* %164, align 4
  br label %180

165:                                              ; preds = %88
  %166 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %167 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  br label %174

172:                                              ; preds = %165
  %173 = load i32, i32* @V4L2_FIELD_TOP, align 4
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi i32 [ %171, %170 ], [ %173, %172 ]
  %176 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %177 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 4
  store i32 %175, i32* %179, align 4
  br label %180

180:                                              ; preds = %174, %159
  store i32 0, i32* %4, align 4
  br label %181

181:                                              ; preds = %180, %44
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @norm_maxw(%struct.em28xx*) #1

declare dso_local i32 @norm_maxh(%struct.em28xx*) #1

declare dso_local %struct.em28xx_fmt* @format_by_fourcc(i32) #1

declare dso_local i32 @em28xx_videodbg(i8*, i32) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @get_scale(%struct.em28xx*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
