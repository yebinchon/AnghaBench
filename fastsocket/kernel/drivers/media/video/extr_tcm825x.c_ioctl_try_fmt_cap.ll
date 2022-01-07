; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_ioctl_try_fmt_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_ioctl_try_fmt_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.v4l2_int_device = type { %struct.tcm825x_sensor* }
%struct.tcm825x_sensor = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [30 x i8] c"isize = %d num_capture = %lu\0A\00", align 1
@TCM825X_NUM_CAPTURE_FORMATS = common dso_local global i32 0, align 4
@tcm825x_sizes = common dso_local global %struct.TYPE_7__* null, align 8
@tcm825x_formats = common dso_local global %struct.TYPE_8__* null, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@TCM825X_BYTES_PER_PIXEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"format = 0x%08x\0A\00", align 1
@V4L2_COLORSPACE_JPEG = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_int_device*, %struct.v4l2_format*)* @ioctl_try_fmt_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_try_fmt_cap(%struct.v4l2_int_device* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca %struct.v4l2_int_device*, align 8
  %4 = alloca %struct.v4l2_format*, align 8
  %5 = alloca %struct.tcm825x_sensor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.v4l2_int_device* %0, %struct.v4l2_int_device** %3, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %4, align 8
  %9 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %3, align 8
  %10 = getelementptr inbounds %struct.v4l2_int_device, %struct.v4l2_int_device* %9, i32 0, i32 0
  %11 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %10, align 8
  store %struct.tcm825x_sensor* %11, %struct.tcm825x_sensor** %5, align 8
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.v4l2_pix_format* %14, %struct.v4l2_pix_format** %8, align 8
  %15 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %3, align 8
  %16 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %17 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %20 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @tcm825x_find_size(%struct.v4l2_int_device* %15, i32 %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %5, align 8
  %24 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @TCM825X_NUM_CAPTURE_FORMATS, align 4
  %29 = sext i32 %28 to i64
  %30 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @tcm825x_sizes, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %38 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @tcm825x_sizes, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %46 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %64, %2
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @TCM825X_NUM_CAPTURE_FORMATS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %53 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @tcm825x_formats, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %54, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %67

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %47

67:                                               ; preds = %62, %47
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @TCM825X_NUM_CAPTURE_FORMATS, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %71, %67
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @tcm825x_formats, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %80 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %82 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %83 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 8
  %84 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %85 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @TCM825X_BYTES_PER_PIXEL, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %90 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %92 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %95 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %93, %96
  %98 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %99 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %101 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %100, i32 0, i32 6
  store i64 0, i64* %101, align 8
  %102 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %5, align 8
  %103 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %107 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %111 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  switch i32 %112, label %114 [
    i32 128, label %113
    i32 129, label %118
  ]

113:                                              ; preds = %72
  br label %114

114:                                              ; preds = %72, %113
  %115 = load i32, i32* @V4L2_COLORSPACE_JPEG, align 4
  %116 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %117 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  br label %122

118:                                              ; preds = %72
  %119 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %120 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %121 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %118, %114
  ret i32 0
}

declare dso_local i32 @tcm825x_find_size(%struct.v4l2_int_device*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
