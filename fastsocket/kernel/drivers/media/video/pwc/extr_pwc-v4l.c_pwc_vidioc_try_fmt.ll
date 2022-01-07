; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-v4l.c_pwc_vidioc_try_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-v4l.c_pwc_vidioc_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { %struct.TYPE_8__, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.v4l2_format = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i64 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Bad video type must be V4L2_BUF_TYPE_VIDEO_CAPTURE\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"codec1 is only supported for old pwc webcam\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"codec23 is only supported for new pwc webcam\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unsupported pixel format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwc_device*, %struct.v4l2_format*)* @pwc_vidioc_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwc_vidioc_try_fmt(%struct.pwc_device* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwc_device*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  store %struct.pwc_device* %0, %struct.pwc_device** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %6 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = call i32 @PWC_DEBUG_IOCTL(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %131

15:                                               ; preds = %2
  %16 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %44 [
    i32 128, label %21
    i32 130, label %22
    i32 129, label %33
  ]

21:                                               ; preds = %15
  br label %48

22:                                               ; preds = %15
  %23 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %24 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @DEVICE_USE_CODEC23(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = call i32 @PWC_DEBUG_IOCTL(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %131

32:                                               ; preds = %22
  br label %48

33:                                               ; preds = %15
  %34 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %35 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @DEVICE_USE_CODEC1(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = call i32 @PWC_DEBUG_IOCTL(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %131

43:                                               ; preds = %33
  br label %48

44:                                               ; preds = %15
  %45 = call i32 @PWC_DEBUG_IOCTL(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %131

48:                                               ; preds = %43, %32, %21
  %49 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %55 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %53, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %48
  %60 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %61 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %65 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i64 %63, i64* %67, align 8
  br label %89

68:                                               ; preds = %48
  %69 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %70 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %75 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %73, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %68
  %80 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %81 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %85 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i64 %83, i64* %87, align 8
  br label %88

88:                                               ; preds = %79, %68
  br label %89

89:                                               ; preds = %88, %59
  %90 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %91 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %96 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %94, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %89
  %101 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %102 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %106 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  store i64 %104, i64* %108, align 8
  br label %130

109:                                              ; preds = %89
  %110 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %111 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %116 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp slt i64 %114, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %109
  %121 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %122 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %126 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  store i64 %124, i64* %128, align 8
  br label %129

129:                                              ; preds = %120, %109
  br label %130

130:                                              ; preds = %129, %100
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %44, %39, %28, %11
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @PWC_DEBUG_IOCTL(i8*) #1

declare dso_local i32 @DEVICE_USE_CODEC23(i32) #1

declare dso_local i32 @DEVICE_USE_CODEC1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
