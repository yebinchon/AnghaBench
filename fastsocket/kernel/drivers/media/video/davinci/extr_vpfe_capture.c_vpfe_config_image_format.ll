; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_config_image_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_config_image_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 (...)* }
%struct.vpfe_device = type { i32, %struct.TYPE_16__, i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.vpfe_subdev_info* }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i64 }
%struct.vpfe_subdev_info = type { i32 }

@vpfe_standards = common dso_local global %struct.TYPE_15__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"standard not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_UYVY = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_SBGGR8 = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@g_fmt = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"error in getting g_fmt from sub device\0A\00", align 1
@ccdc_dev = common dso_local global %struct.TYPE_17__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpfe_device*, i32*)* @vpfe_config_image_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_config_image_format(%struct.vpfe_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpfe_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vpfe_subdev_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vpfe_device* %0, %struct.vpfe_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %10 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %9, i32 0, i32 5
  %11 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %10, align 8
  store %struct.vpfe_subdev_info* %11, %struct.vpfe_subdev_info** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %60, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** @vpfe_standards, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.TYPE_15__* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %63

17:                                               ; preds = %12
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** @vpfe_standards, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %17
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** @vpfe_standards, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %36 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** @vpfe_standards, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %45 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** @vpfe_standards, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %54 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %58 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %63

59:                                               ; preds = %17
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %12

63:                                               ; preds = %28, %12
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** @vpfe_standards, align 8
  %66 = call i32 @ARRAY_SIZE(%struct.TYPE_15__* %65)
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %70 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %69, i32 0, i32 2
  %71 = call i32 @v4l2_err(i32* %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %208

74:                                               ; preds = %63
  %75 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %76 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  %78 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %79 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  %81 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %82 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %86 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %89 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %93 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %96 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %100 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 5
  store i32 %98, i32* %103, align 4
  %104 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %105 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %109 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  store i32 %107, i32* %112, align 4
  %113 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %114 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %74
  %119 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %120 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %121 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 4
  store i32 %119, i32* %124, align 4
  %125 = load i32, i32* @V4L2_PIX_FMT_UYVY, align 4
  %126 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %127 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 3
  store i32 %125, i32* %130, align 4
  br label %144

131:                                              ; preds = %74
  %132 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %133 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %134 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 4
  store i32 %132, i32* %137, align 4
  %138 = load i32, i32* @V4L2_PIX_FMT_SBGGR8, align 4
  %139 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %140 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 3
  store i32 %138, i32* %143, align 4
  br label %144

144:                                              ; preds = %131, %118
  %145 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %146 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %145, i32 0, i32 2
  %147 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %6, align 8
  %148 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @video, align 4
  %151 = load i32, i32* @g_fmt, align 4
  %152 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %153 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %152, i32 0, i32 1
  %154 = call i32 @v4l2_device_call_until_err(i32* %146, i32 %149, i32 %150, i32 %151, %struct.TYPE_16__* %153)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %144
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @ENOIOCTLCMD, align 4
  %160 = sub nsw i32 0, %159
  %161 = icmp ne i32 %158, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %164 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %163, i32 0, i32 2
  %165 = call i32 @v4l2_err(i32* %164, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %3, align 4
  br label %208

167:                                              ; preds = %157, %144
  %168 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %169 = call i32 @vpfe_config_ccdc_image_format(%struct.vpfe_device* %168)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i32, i32* %8, align 4
  store i32 %173, i32* %3, align 4
  br label %208

174:                                              ; preds = %167
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %206, label %177

177:                                              ; preds = %174
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ccdc_dev, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i32 (...)*, i32 (...)** %180, align 8
  %182 = call i32 (...) %181()
  %183 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %184 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 1
  store i32 %182, i32* %187, align 4
  %188 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %189 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %195 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = mul nsw i32 %193, %199
  %201 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %202 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 2
  store i32 %200, i32* %205, align 4
  br label %206

206:                                              ; preds = %177, %174
  %207 = load i32, i32* %8, align 4
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %206, %172, %162, %68
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_15__*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @v4l2_device_call_until_err(i32*, i32, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @vpfe_config_ccdc_image_format(%struct.vpfe_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
