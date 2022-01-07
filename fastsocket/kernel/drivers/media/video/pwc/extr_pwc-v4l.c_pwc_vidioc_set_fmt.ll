; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-v4l.c_pwc_vidioc_set_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-v4l.c_pwc_vidioc_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, i32, i32, i64 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@PWC_QLT_MASK = common dso_local global i32 0, align 4
@PWC_QLT_SHIFT = common dso_local global i32 0, align 4
@PWC_FPS_SNAPSHOT = common dso_local global i32 0, align 4
@PWC_FPS_FRMASK = common dso_local global i32 0, align 4
@PWC_FPS_SHIFT = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUV420 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_PWC1 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_PWC2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"Trying to set format to: width=%d height=%d fps=%d compression=%d snapshot=%d format=%c%c%c%c\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"pwc_set_video_mode(), return=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwc_device*, %struct.v4l2_format*)* @pwc_vidioc_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwc_vidioc_set_fmt(%struct.pwc_device* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwc_device*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %11 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %13 = call i32 @pwc_vidioc_try_fmt(%struct.pwc_device* %11, %struct.v4l2_format* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %150

18:                                               ; preds = %2
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %25 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %27 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %28 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %73

36:                                               ; preds = %18
  %37 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PWC_QLT_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @PWC_QLT_SHIFT, align 4
  %45 = ashr i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %47 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PWC_FPS_SNAPSHOT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %8, align 4
  %57 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %58 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PWC_FPS_FRMASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @PWC_FPS_SHIFT, align 4
  %65 = ashr i32 %63, %64
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %36
  %69 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %70 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %68, %36
  br label %73

73:                                               ; preds = %72, %18
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @V4L2_PIX_FMT_YUV420, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %73
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @V4L2_PIX_FMT_PWC1, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @V4L2_PIX_FMT_PWC2, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %150

88:                                               ; preds = %81, %77, %73
  %89 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %90 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* @EBUSY, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %150

96:                                               ; preds = %88
  %97 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %98 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %103 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %10, align 4
  %111 = and i32 %110, 255
  %112 = load i32, i32* %10, align 4
  %113 = ashr i32 %112, 8
  %114 = and i32 %113, 255
  %115 = load i32, i32* %10, align 4
  %116 = ashr i32 %115, 16
  %117 = and i32 %116, 255
  %118 = load i32, i32* %10, align 4
  %119 = ashr i32 %118, 24
  %120 = and i32 %119, 255
  %121 = call i32 (i8*, i32, ...) @PWC_DEBUG_IOCTL(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %106, i32 %107, i32 %108, i32 %109, i32 %111, i32 %114, i32 %117, i32 %120)
  %122 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %123 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %124 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %129 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @pwc_set_video_mode(%struct.pwc_device* %122, i32 %127, i32 %132, i32 %133, i32 %134, i32 %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = call i32 (i8*, i32, ...) @PWC_DEBUG_IOCTL(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %96
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %3, align 4
  br label %150

143:                                              ; preds = %96
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %146 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  %147 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %148 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %149 = call i32 @pwc_vidioc_fill_fmt(%struct.pwc_device* %147, %struct.v4l2_format* %148)
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %143, %141, %93, %85, %16
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @pwc_vidioc_try_fmt(%struct.pwc_device*, %struct.v4l2_format*) #1

declare dso_local i32 @PWC_DEBUG_IOCTL(i8*, i32, ...) #1

declare dso_local i32 @pwc_set_video_mode(%struct.pwc_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pwc_vidioc_fill_fmt(%struct.pwc_device*, %struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
