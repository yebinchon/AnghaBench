; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_pxa_camera_set_crop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_pxa_camera_set_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32, i32, %struct.TYPE_6__, %struct.soc_camera_sense*, %struct.TYPE_5__*, %struct.pxa_cam* }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.soc_camera_sense = type { i32, i32, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.pxa_cam = type { i32 }
%struct.v4l2_crop = type { i32, i32, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.soc_camera_host = type { %struct.pxa_camera_dev* }
%struct.pxa_camera_dev = type { i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, %struct.v4l2_rect }

@PXA_CAMERA_PCLK_EN = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_crop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to crop to %ux%u@%u:%u\0A\00", align 1
@g_mbus_fmt = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUV422P = common dso_local global i64 0, align 8
@s_mbus_fmt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Inconsistent state. Use S_FMT to repair\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SOCAM_SENSE_PCLK_CHANGED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"pixel clock %lu set by the camera too high!\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, %struct.v4l2_crop*)* @pxa_camera_set_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_camera_set_crop(%struct.soc_camera_device* %0, %struct.v4l2_crop* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca %struct.v4l2_crop*, align 8
  %6 = alloca %struct.v4l2_rect*, align 8
  %7 = alloca %struct.soc_camera_host*, align 8
  %8 = alloca %struct.pxa_camera_dev*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.v4l2_subdev*, align 8
  %11 = alloca %struct.soc_camera_sense, align 8
  %12 = alloca %struct.v4l2_mbus_framefmt, align 4
  %13 = alloca %struct.pxa_cam*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store %struct.v4l2_crop* %1, %struct.v4l2_crop** %5, align 8
  %16 = load %struct.v4l2_crop*, %struct.v4l2_crop** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %16, i32 0, i32 2
  store %struct.v4l2_rect* %17, %struct.v4l2_rect** %6, align 8
  %18 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %19 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  %22 = call %struct.soc_camera_host* @to_soc_camera_host(%struct.device* %21)
  store %struct.soc_camera_host* %22, %struct.soc_camera_host** %7, align 8
  %23 = load %struct.soc_camera_host*, %struct.soc_camera_host** %7, align 8
  %24 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %23, i32 0, i32 0
  %25 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %24, align 8
  store %struct.pxa_camera_dev* %25, %struct.pxa_camera_dev** %8, align 8
  %26 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %27 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.device*, %struct.device** %28, align 8
  store %struct.device* %29, %struct.device** %9, align 8
  %30 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %31 = call %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device* %30)
  store %struct.v4l2_subdev* %31, %struct.v4l2_subdev** %10, align 8
  %32 = getelementptr inbounds %struct.soc_camera_sense, %struct.soc_camera_sense* %11, i32 0, i32 0
  %33 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %34 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %35, 4
  store i32 %36, i32* %32, align 8
  %37 = getelementptr inbounds %struct.soc_camera_sense, %struct.soc_camera_sense* %11, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.soc_camera_sense, %struct.soc_camera_sense* %11, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.soc_camera_sense, %struct.soc_camera_sense* %11, i32 0, i32 3
  %40 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %41 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %39, align 8
  %43 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %44 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %43, i32 0, i32 5
  %45 = load %struct.pxa_cam*, %struct.pxa_cam** %44, align 8
  store %struct.pxa_cam* %45, %struct.pxa_cam** %13, align 8
  %46 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %47 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %46, i32 0, i32 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %14, align 8
  %53 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %54 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PXA_CAMERA_PCLK_EN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %2
  %60 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %61 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %60, i32 0, i32 3
  store %struct.soc_camera_sense* %11, %struct.soc_camera_sense** %61, align 8
  br label %62

62:                                               ; preds = %59, %2
  %63 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %64 = load i32, i32* @video, align 4
  %65 = load i32, i32* @s_crop, align 4
  %66 = load %struct.v4l2_crop*, %struct.v4l2_crop** %5, align 8
  %67 = bitcast %struct.v4l2_crop* %66 to %struct.v4l2_mbus_framefmt*
  %68 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %63, i32 %64, i32 %65, %struct.v4l2_mbus_framefmt* %67)
  store i32 %68, i32* %15, align 4
  %69 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %70 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %69, i32 0, i32 3
  store %struct.soc_camera_sense* null, %struct.soc_camera_sense** %70, align 8
  %71 = load i32, i32* %15, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %62
  %74 = load %struct.device*, %struct.device** %9, align 8
  %75 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %76 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %79 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %82 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %85 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %80, i32 %83, i32 %86)
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %3, align 4
  br label %179

89:                                               ; preds = %62
  %90 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %91 = load i32, i32* @video, align 4
  %92 = load i32, i32* @g_mbus_fmt, align 4
  %93 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %90, i32 %91, i32 %92, %struct.v4l2_mbus_framefmt* %12)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %3, align 4
  br label %179

98:                                               ; preds = %89
  %99 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %12, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %12, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @pxa_camera_check_frame(i32 %100, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %138

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %12, i32 0, i32 1
  %107 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %12, i32 0, i32 0
  %108 = load i64, i64* %14, align 8
  %109 = load i64, i64* @V4L2_PIX_FMT_YUV422P, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 4, i32 0
  %113 = call i32 @v4l_bound_align_image(i32* %106, i32 48, i32 2048, i32 1, i32* %107, i32 32, i32 2048, i32 0, i32 %112)
  %114 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %115 = load i32, i32* @video, align 4
  %116 = load i32, i32* @s_mbus_fmt, align 4
  %117 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %114, i32 %115, i32 %116, %struct.v4l2_mbus_framefmt* %12)
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %15, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %105
  %121 = load i32, i32* %15, align 4
  store i32 %121, i32* %3, align 4
  br label %179

122:                                              ; preds = %105
  %123 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %12, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %12, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @pxa_camera_check_frame(i32 %124, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %122
  %130 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %131 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load %struct.device*, %struct.device** %132, align 8
  %134 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %133, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %179

137:                                              ; preds = %122
  br label %138

138:                                              ; preds = %137, %98
  %139 = getelementptr inbounds %struct.soc_camera_sense, %struct.soc_camera_sense* %11, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @SOCAM_SENSE_PCLK_CHANGED, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %163

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.soc_camera_sense, %struct.soc_camera_sense* %11, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.soc_camera_sense, %struct.soc_camera_sense* %11, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = icmp sgt i64 %146, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %144
  %152 = load %struct.device*, %struct.device** %9, align 8
  %153 = getelementptr inbounds %struct.soc_camera_sense, %struct.soc_camera_sense* %11, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @dev_err(%struct.device* %152, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %154)
  %156 = load i32, i32* @EIO, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %3, align 4
  br label %179

158:                                              ; preds = %144
  %159 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %160 = getelementptr inbounds %struct.soc_camera_sense, %struct.soc_camera_sense* %11, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @recalculate_fifo_timeout(%struct.pxa_camera_dev* %159, i64 %161)
  br label %163

163:                                              ; preds = %158, %138
  %164 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %12, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %167 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %12, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %171 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %173 = load %struct.pxa_cam*, %struct.pxa_cam** %13, align 8
  %174 = getelementptr inbounds %struct.pxa_cam, %struct.pxa_cam* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i64, i64* %14, align 8
  %177 = call i32 @pxa_camera_setup_cicr(%struct.soc_camera_device* %172, i32 %175, i64 %176)
  %178 = load i32, i32* %15, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %163, %151, %129, %120, %96, %73
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(%struct.device*) #1

declare dso_local %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i64 @pxa_camera_check_frame(i32, i32) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @recalculate_fifo_timeout(%struct.pxa_camera_dev*, i64) #1

declare dso_local i32 @pxa_camera_setup_cicr(%struct.soc_camera_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
