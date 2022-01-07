; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_pxa_camera_set_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_pxa_camera_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { %struct.soc_camera_format_xlate*, %struct.soc_camera_sense*, %struct.TYPE_3__ }
%struct.soc_camera_format_xlate = type { i64 }
%struct.soc_camera_sense = type { i32, i32, i64, i32 }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32 }
%struct.soc_camera_host = type { %struct.pxa_camera_dev* }
%struct.pxa_camera_dev = type { i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_framefmt = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Format %x not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PXA_CAMERA_PCLK_EN = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_mbus_fmt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to configure for format %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Camera driver produced an unsupported frame %dx%d\0A\00", align 1
@SOCAM_SENSE_PCLK_CHANGED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"pixel clock %lu set by the camera too high!\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, %struct.v4l2_format*)* @pxa_camera_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_camera_set_fmt(%struct.soc_camera_device* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.soc_camera_host*, align 8
  %7 = alloca %struct.pxa_camera_dev*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca %struct.soc_camera_format_xlate*, align 8
  %11 = alloca %struct.soc_camera_sense, align 8
  %12 = alloca %struct.v4l2_pix_format*, align 8
  %13 = alloca %struct.v4l2_mbus_framefmt, align 8
  %14 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %15 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %16 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  %19 = call %struct.soc_camera_host* @to_soc_camera_host(%struct.device* %18)
  store %struct.soc_camera_host* %19, %struct.soc_camera_host** %6, align 8
  %20 = load %struct.soc_camera_host*, %struct.soc_camera_host** %6, align 8
  %21 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %20, i32 0, i32 0
  %22 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %21, align 8
  store %struct.pxa_camera_dev* %22, %struct.pxa_camera_dev** %7, align 8
  %23 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %24 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.device*, %struct.device** %25, align 8
  store %struct.device* %26, %struct.device** %8, align 8
  %27 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %28 = call %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device* %27)
  store %struct.v4l2_subdev* %28, %struct.v4l2_subdev** %9, align 8
  store %struct.soc_camera_format_xlate* null, %struct.soc_camera_format_xlate** %10, align 8
  %29 = getelementptr inbounds %struct.soc_camera_sense, %struct.soc_camera_sense* %11, i32 0, i32 0
  %30 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %7, align 8
  %31 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %32, 4
  store i32 %33, i32* %29, align 8
  %34 = getelementptr inbounds %struct.soc_camera_sense, %struct.soc_camera_sense* %11, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.soc_camera_sense, %struct.soc_camera_sense* %11, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.soc_camera_sense, %struct.soc_camera_sense* %11, i32 0, i32 3
  %37 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %7, align 8
  %38 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %36, align 8
  %40 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store %struct.v4l2_pix_format* %42, %struct.v4l2_pix_format** %12, align 8
  %43 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %44 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %45 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.soc_camera_format_xlate* @soc_camera_xlate_by_fourcc(%struct.soc_camera_device* %43, i32 %46)
  store %struct.soc_camera_format_xlate* %47, %struct.soc_camera_format_xlate** %10, align 8
  %48 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %10, align 8
  %49 = icmp ne %struct.soc_camera_format_xlate* %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %2
  %51 = load %struct.device*, %struct.device** %8, align 8
  %52 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %53 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %182

58:                                               ; preds = %2
  %59 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %7, align 8
  %60 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PXA_CAMERA_PCLK_EN, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %67 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %66, i32 0, i32 1
  store %struct.soc_camera_sense* %11, %struct.soc_camera_sense** %67, align 8
  br label %68

68:                                               ; preds = %65, %58
  %69 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %70 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %13, i32 0, i32 4
  store i32 %71, i32* %72, align 4
  %73 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %74 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %13, i32 0, i32 3
  store i32 %75, i32* %76, align 8
  %77 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %78 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %13, i32 0, i32 2
  store i32 %79, i32* %80, align 4
  %81 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %82 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %13, i32 0, i32 1
  store i32 %83, i32* %84, align 8
  %85 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %10, align 8
  %86 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %13, i32 0, i32 0
  store i64 %87, i64* %88, align 8
  %89 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %90 = load i32, i32* @video, align 4
  %91 = load i32, i32* @s_mbus_fmt, align 4
  %92 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %89, i32 %90, i32 %91, %struct.v4l2_mbus_framefmt* %13)
  store i32 %92, i32* %14, align 4
  %93 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %13, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %10, align 8
  %96 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %94, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %68
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %182

102:                                              ; preds = %68
  %103 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %104 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %103, i32 0, i32 1
  store %struct.soc_camera_sense* null, %struct.soc_camera_sense** %104, align 8
  %105 = load i32, i32* %14, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.device*, %struct.device** %8, align 8
  %109 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %110 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  br label %156

113:                                              ; preds = %102
  %114 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %13, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %13, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @pxa_camera_check_frame(i32 %115, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %113
  %121 = load %struct.device*, %struct.device** %8, align 8
  %122 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %13, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %13, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %121, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %123, i32 %125)
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %14, align 4
  br label %155

129:                                              ; preds = %113
  %130 = getelementptr inbounds %struct.soc_camera_sense, %struct.soc_camera_sense* %11, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @SOCAM_SENSE_PCLK_CHANGED, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %154

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.soc_camera_sense, %struct.soc_camera_sense* %11, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.soc_camera_sense, %struct.soc_camera_sense* %11, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = icmp sgt i64 %137, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %135
  %143 = load %struct.device*, %struct.device** %8, align 8
  %144 = getelementptr inbounds %struct.soc_camera_sense, %struct.soc_camera_sense* %11, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @dev_err(%struct.device* %143, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %145)
  %147 = load i32, i32* @EIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %182

149:                                              ; preds = %135
  %150 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %7, align 8
  %151 = getelementptr inbounds %struct.soc_camera_sense, %struct.soc_camera_sense* %11, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @recalculate_fifo_timeout(%struct.pxa_camera_dev* %150, i64 %152)
  br label %154

154:                                              ; preds = %149, %129
  br label %155

155:                                              ; preds = %154, %120
  br label %156

156:                                              ; preds = %155, %107
  %157 = load i32, i32* %14, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = load i32, i32* %14, align 4
  store i32 %160, i32* %3, align 4
  br label %182

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %13, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %165 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  %166 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %13, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %169 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 4
  %170 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %13, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %173 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %13, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %12, align 8
  %177 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 4
  %178 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %10, align 8
  %179 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %180 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %179, i32 0, i32 0
  store %struct.soc_camera_format_xlate* %178, %struct.soc_camera_format_xlate** %180, align 8
  %181 = load i32, i32* %14, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %161, %159, %142, %99, %50
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(%struct.device*) #1

declare dso_local %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device*) #1

declare dso_local %struct.soc_camera_format_xlate* @soc_camera_xlate_by_fourcc(%struct.soc_camera_device*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i64 @pxa_camera_check_frame(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @recalculate_fifo_timeout(%struct.pxa_camera_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
