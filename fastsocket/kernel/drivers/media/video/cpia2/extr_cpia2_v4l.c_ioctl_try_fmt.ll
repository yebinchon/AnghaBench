; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_try_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32 }
%struct.v4l2_format = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i64, i32, i32, i64, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_MJPEG = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_JPEG = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_JPEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.camera_data*)* @ioctl_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_try_fmt(i8* %0, %struct.camera_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.camera_data*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.camera_data* %1, %struct.camera_data** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.v4l2_format*
  store %struct.v4l2_format* %8, %struct.v4l2_format** %6, align 8
  %9 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %10 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %147

17:                                               ; preds = %2
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @V4L2_PIX_FMT_MJPEG, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %17
  %26 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %27 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %147

36:                                               ; preds = %25, %17
  %37 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %38 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 7
  store i32 %37, i32* %41, align 8
  %42 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %43 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 6
  store i64 0, i64* %45, align 8
  %46 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %47 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 5
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* @V4L2_COLORSPACE_JPEG, align 4
  %54 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %55 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 4
  store i32 %53, i32* %57, align 8
  %58 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %59 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %63 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %68 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @cpia2_match_video_size(i32 %66, i32 %71)
  switch i32 %72, label %137 [
    i32 128, label %73
    i32 131, label %82
    i32 129, label %91
    i32 132, label %100
    i32 133, label %109
    i32 134, label %118
    i32 135, label %127
    i32 130, label %136
  ]

73:                                               ; preds = %36
  %74 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %75 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i32 640, i32* %77, align 8
  %78 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %79 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store i32 480, i32* %81, align 4
  br label %146

82:                                               ; preds = %36
  %83 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %84 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i32 352, i32* %86, align 8
  %87 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %88 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  store i32 288, i32* %90, align 4
  br label %146

91:                                               ; preds = %36
  %92 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %93 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  store i32 320, i32* %95, align 8
  %96 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %97 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  store i32 240, i32* %99, align 4
  br label %146

100:                                              ; preds = %36
  %101 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %102 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  store i32 288, i32* %104, align 8
  %105 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %106 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  store i32 216, i32* %108, align 4
  br label %146

109:                                              ; preds = %36
  %110 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %111 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  store i32 256, i32* %113, align 8
  %114 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %115 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  store i32 192, i32* %117, align 4
  br label %146

118:                                              ; preds = %36
  %119 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %120 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  store i32 224, i32* %122, align 8
  %123 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %124 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  store i32 168, i32* %126, align 4
  br label %146

127:                                              ; preds = %36
  %128 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %129 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  store i32 192, i32* %131, align 8
  %132 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %133 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  store i32 144, i32* %135, align 4
  br label %146

136:                                              ; preds = %36
  br label %137

137:                                              ; preds = %36, %136
  %138 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %139 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  store i32 176, i32* %141, align 8
  %142 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %143 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 2
  store i32 144, i32* %145, align 4
  br label %146

146:                                              ; preds = %137, %127, %118, %109, %100, %91, %82, %73
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %146, %33, %14
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @cpia2_match_video_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
