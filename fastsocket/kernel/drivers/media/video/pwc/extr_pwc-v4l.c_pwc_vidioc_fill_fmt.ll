; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-v4l.c_pwc_vidioc_fill_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-v4l.c_pwc_vidioc_fill_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i64, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUV420 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_PWC1 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_PWC2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"pwc_vidioc_fill_fmt() width=%d, height=%d, bytesperline=%d, sizeimage=%d, pixelformat=%c%c%c%c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwc_device*, %struct.v4l2_format*)* @pwc_vidioc_fill_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwc_vidioc_fill_fmt(%struct.pwc_device* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca %struct.pwc_device*, align 8
  %4 = alloca %struct.v4l2_format*, align 8
  store %struct.pwc_device* %0, %struct.pwc_device** %3, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %4, align 8
  %5 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = call i32 @memset(%struct.TYPE_6__* %7, i32 0, i32 4)
  %9 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %10 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 4
  %17 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %18 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %26 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 5
  store i32 %25, i32* %29, align 4
  %30 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %31 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @V4L2_PIX_FMT_YUV420, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %2
  %36 = load i64, i64* @V4L2_PIX_FMT_YUV420, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %39 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  store i32 %37, i32* %41, align 4
  %42 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %43 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 3
  %48 = sdiv i32 %47, 2
  %49 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %50 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  store i32 %48, i32* %52, align 4
  %53 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %54 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %59 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %57, %62
  %64 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %65 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  store i32 %63, i32* %67, align 4
  br label %105

68:                                               ; preds = %2
  %69 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %70 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = sdiv i32 %71, 4
  %73 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %74 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  store i32 %72, i32* %76, align 4
  %77 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %78 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %84 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 4
  store i32 %82, i32* %86, align 4
  %87 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %88 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @DEVICE_USE_CODEC1(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %68
  %93 = load i32, i32* @V4L2_PIX_FMT_PWC1, align 4
  %94 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %95 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i32 %93, i32* %97, align 4
  br label %104

98:                                               ; preds = %68
  %99 = load i32, i32* @V4L2_PIX_FMT_PWC2, align 4
  %100 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %101 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  store i32 %99, i32* %103, align 4
  br label %104

104:                                              ; preds = %98, %92
  br label %105

105:                                              ; preds = %104, %35
  %106 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %107 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %112 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %117 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %122 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %127 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 255
  %132 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %133 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 8
  %138 = and i32 %137, 255
  %139 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %140 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = ashr i32 %143, 16
  %145 = and i32 %144, 255
  %146 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %147 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = ashr i32 %150, 24
  %152 = and i32 %151, 255
  %153 = call i32 @PWC_DEBUG_IOCTL(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %115, i32 %120, i32 %125, i32 %131, i32 %138, i32 %145, i32 %152)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @DEVICE_USE_CODEC1(i32) #1

declare dso_local i32 @PWC_DEBUG_IOCTL(i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
