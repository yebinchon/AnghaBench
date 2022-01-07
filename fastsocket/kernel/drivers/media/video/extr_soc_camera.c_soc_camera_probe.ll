; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera.c_soc_camera_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera.c_soc_camera_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.soc_camera_device = type { i32, i32, %struct.TYPE_7__, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.soc_camera_host = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.soc_camera_device*)*, i32 (%struct.soc_camera_device*)* }
%struct.soc_camera_link = type { i32 (%struct.soc_camera_link*, %struct.TYPE_7__*)*, i32, i32, i32 (%struct.soc_camera_link*)*, i64, i64, i32 (i32)* }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32 }
%struct.video_device_shadow = type { i32* }

@.str = private unnamed_addr constant [12 x i8] c"Probing %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@g_mbus_fmt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed creating the control symlink\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @soc_camera_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca %struct.soc_camera_host*, align 8
  %6 = alloca %struct.soc_camera_link*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt, align 4
  %10 = alloca %struct.video_device_shadow*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call %struct.soc_camera_device* @to_soc_camera_dev(%struct.device* %12)
  store %struct.soc_camera_device* %13, %struct.soc_camera_device** %4, align 8
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %16)
  store %struct.soc_camera_host* %17, %struct.soc_camera_host** %5, align 8
  %18 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %19 = call %struct.soc_camera_link* @to_soc_camera_link(%struct.soc_camera_device* %18)
  store %struct.soc_camera_link* %19, %struct.soc_camera_link** %6, align 8
  store %struct.device* null, %struct.device** %7, align 8
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = call i32 @dev_name(%struct.device* %21)
  %23 = call i32 @dev_info(%struct.device* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %25 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.soc_camera_link*, %struct.soc_camera_link** %6, align 8
  %28 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.soc_camera_link*, %struct.soc_camera_link** %6, align 8
  %31 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @regulator_bulk_get(i32 %26, i32 %29, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  br label %282

37:                                               ; preds = %1
  %38 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %39 = load %struct.soc_camera_link*, %struct.soc_camera_link** %6, align 8
  %40 = call i32 @soc_camera_power_set(%struct.soc_camera_device* %38, %struct.soc_camera_link* %39, i32 1)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %274

44:                                               ; preds = %37
  %45 = load %struct.soc_camera_link*, %struct.soc_camera_link** %6, align 8
  %46 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %45, i32 0, i32 6
  %47 = load i32 (i32)*, i32 (i32)** %46, align 8
  %48 = icmp ne i32 (i32)* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.soc_camera_link*, %struct.soc_camera_link** %6, align 8
  %51 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %50, i32 0, i32 6
  %52 = load i32 (i32)*, i32 (i32)** %51, align 8
  %53 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %54 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = call i32 %52(i32 %55)
  br label %57

57:                                               ; preds = %49, %44
  %58 = load %struct.soc_camera_host*, %struct.soc_camera_host** %5, align 8
  %59 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32 (%struct.soc_camera_device*)*, i32 (%struct.soc_camera_device*)** %61, align 8
  %63 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %64 = call i32 %62(%struct.soc_camera_device* %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %270

68:                                               ; preds = %57
  %69 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %70 = call i32 @video_dev_create(%struct.soc_camera_device* %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %262

74:                                               ; preds = %68
  %75 = load %struct.soc_camera_link*, %struct.soc_camera_link** %6, align 8
  %76 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %81 = load %struct.soc_camera_link*, %struct.soc_camera_link** %6, align 8
  %82 = call i32 @soc_camera_init_i2c(%struct.soc_camera_device* %80, %struct.soc_camera_link* %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %257

86:                                               ; preds = %79
  br label %151

87:                                               ; preds = %74
  %88 = load %struct.soc_camera_link*, %struct.soc_camera_link** %6, align 8
  %89 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %88, i32 0, i32 0
  %90 = load i32 (%struct.soc_camera_link*, %struct.TYPE_7__*)*, i32 (%struct.soc_camera_link*, %struct.TYPE_7__*)** %89, align 8
  %91 = icmp ne i32 (%struct.soc_camera_link*, %struct.TYPE_7__*)* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.soc_camera_link*, %struct.soc_camera_link** %6, align 8
  %94 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %93, i32 0, i32 3
  %95 = load i32 (%struct.soc_camera_link*)*, i32 (%struct.soc_camera_link*)** %94, align 8
  %96 = icmp ne i32 (%struct.soc_camera_link*)* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %92, %87
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %11, align 4
  br label %257

100:                                              ; preds = %92
  %101 = load %struct.soc_camera_link*, %struct.soc_camera_link** %6, align 8
  %102 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.soc_camera_link*, %struct.soc_camera_link** %6, align 8
  %107 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @request_module(i64 %108)
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %105, %100
  %111 = load %struct.soc_camera_link*, %struct.soc_camera_link** %6, align 8
  %112 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %111, i32 0, i32 0
  %113 = load i32 (%struct.soc_camera_link*, %struct.TYPE_7__*)*, i32 (%struct.soc_camera_link*, %struct.TYPE_7__*)** %112, align 8
  %114 = load %struct.soc_camera_link*, %struct.soc_camera_link** %6, align 8
  %115 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %116 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %115, i32 0, i32 2
  %117 = call i32 %113(%struct.soc_camera_link* %114, %struct.TYPE_7__* %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  br label %257

121:                                              ; preds = %110
  %122 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %123 = call %struct.device* @to_soc_camera_control(%struct.soc_camera_device* %122)
  store %struct.device* %123, %struct.device** %7, align 8
  %124 = load %struct.device*, %struct.device** %7, align 8
  %125 = icmp ne %struct.device* %124, null
  br i1 %125, label %126, label %143

126:                                              ; preds = %121
  %127 = load %struct.device*, %struct.device** %7, align 8
  %128 = getelementptr inbounds %struct.device, %struct.device* %127, i32 0, i32 0
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = icmp ne %struct.TYPE_5__* %129, null
  br i1 %130, label %131, label %143

131:                                              ; preds = %126
  %132 = load %struct.device*, %struct.device** %7, align 8
  %133 = call i32 @dev_get_drvdata(%struct.device* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  %136 = load %struct.device*, %struct.device** %7, align 8
  %137 = getelementptr inbounds %struct.device, %struct.device* %136, i32 0, i32 0
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @try_module_get(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %135, %131, %126, %121
  %144 = load %struct.soc_camera_link*, %struct.soc_camera_link** %6, align 8
  %145 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %144, i32 0, i32 3
  %146 = load i32 (%struct.soc_camera_link*)*, i32 (%struct.soc_camera_link*)** %145, align 8
  %147 = load %struct.soc_camera_link*, %struct.soc_camera_link** %6, align 8
  %148 = call i32 %146(%struct.soc_camera_link* %147)
  br label %256

149:                                              ; preds = %135
  br label %150

150:                                              ; preds = %149
  br label %151

151:                                              ; preds = %150, %86
  %152 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %153 = call i32 @soc_camera_init_user_formats(%struct.soc_camera_device* %152)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  br label %235

157:                                              ; preds = %151
  %158 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %159 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %160 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 4
  %161 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %162 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call %struct.video_device_shadow* @video_device_shadow_get(i32 %163)
  store %struct.video_device_shadow* %164, %struct.video_device_shadow** %10, align 8
  %165 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %166 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %165, i32 0, i32 1
  %167 = load %struct.video_device_shadow*, %struct.video_device_shadow** %10, align 8
  %168 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %167, i32 0, i32 0
  store i32* %166, i32** %168, align 8
  %169 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %170 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %169, i32 0, i32 1
  %171 = call i32 @mutex_lock(i32* %170)
  %172 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %173 = call i32 @soc_camera_video_start(%struct.soc_camera_device* %172)
  store i32 %173, i32* %11, align 4
  %174 = load i32, i32* %11, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %157
  br label %229

177:                                              ; preds = %157
  %178 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %179 = call %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device* %178)
  store %struct.v4l2_subdev* %179, %struct.v4l2_subdev** %8, align 8
  %180 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %181 = load i32, i32* @video, align 4
  %182 = load i32, i32* @g_mbus_fmt, align 4
  %183 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %180, i32 %181, i32 %182, %struct.v4l2_mbus_framefmt* %9)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %202, label %185

185:                                              ; preds = %177
  %186 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %189 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %188, i32 0, i32 6
  store i32 %187, i32* %189, align 4
  %190 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %193 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 4
  %194 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %197 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %196, i32 0, i32 4
  store i32 %195, i32* %197, align 4
  %198 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %201 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %200, i32 0, i32 3
  store i32 %199, i32* %201, align 4
  br label %202

202:                                              ; preds = %185, %177
  %203 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %204 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %207 = call %struct.device* @to_soc_camera_control(%struct.soc_camera_device* %206)
  %208 = getelementptr inbounds %struct.device, %struct.device* %207, i32 0, i32 1
  %209 = call i64 @sysfs_create_link(i32* %205, i32* %208, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %202
  %212 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %213 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %212, i32 0, i32 2
  %214 = call i32 @dev_warn(%struct.TYPE_7__* %213, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %215

215:                                              ; preds = %211, %202
  %216 = load %struct.soc_camera_host*, %struct.soc_camera_host** %5, align 8
  %217 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %216, i32 0, i32 0
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 1
  %220 = load i32 (%struct.soc_camera_device*)*, i32 (%struct.soc_camera_device*)** %219, align 8
  %221 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %222 = call i32 %220(%struct.soc_camera_device* %221)
  %223 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %224 = load %struct.soc_camera_link*, %struct.soc_camera_link** %6, align 8
  %225 = call i32 @soc_camera_power_set(%struct.soc_camera_device* %223, %struct.soc_camera_link* %224, i32 0)
  %226 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %227 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %226, i32 0, i32 1
  %228 = call i32 @mutex_unlock(i32* %227)
  store i32 0, i32* %2, align 4
  br label %284

229:                                              ; preds = %176
  %230 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %231 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %230, i32 0, i32 1
  %232 = call i32 @mutex_unlock(i32* %231)
  %233 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %234 = call i32 @soc_camera_free_user_formats(%struct.soc_camera_device* %233)
  br label %235

235:                                              ; preds = %229, %156
  %236 = load %struct.soc_camera_link*, %struct.soc_camera_link** %6, align 8
  %237 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %236, i32 0, i32 4
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %235
  %241 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %242 = call i32 @soc_camera_free_i2c(%struct.soc_camera_device* %241)
  br label %255

243:                                              ; preds = %235
  %244 = load %struct.soc_camera_link*, %struct.soc_camera_link** %6, align 8
  %245 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %244, i32 0, i32 3
  %246 = load i32 (%struct.soc_camera_link*)*, i32 (%struct.soc_camera_link*)** %245, align 8
  %247 = load %struct.soc_camera_link*, %struct.soc_camera_link** %6, align 8
  %248 = call i32 %246(%struct.soc_camera_link* %247)
  %249 = load %struct.device*, %struct.device** %7, align 8
  %250 = getelementptr inbounds %struct.device, %struct.device* %249, i32 0, i32 0
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @module_put(i32 %253)
  br label %255

255:                                              ; preds = %243, %240
  br label %256

256:                                              ; preds = %255, %143
  br label %257

257:                                              ; preds = %256, %120, %97, %85
  %258 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %259 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @video_device_release(i32 %260)
  br label %262

262:                                              ; preds = %257, %73
  %263 = load %struct.soc_camera_host*, %struct.soc_camera_host** %5, align 8
  %264 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %263, i32 0, i32 0
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 1
  %267 = load i32 (%struct.soc_camera_device*)*, i32 (%struct.soc_camera_device*)** %266, align 8
  %268 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %269 = call i32 %267(%struct.soc_camera_device* %268)
  br label %270

270:                                              ; preds = %262, %67
  %271 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %272 = load %struct.soc_camera_link*, %struct.soc_camera_link** %6, align 8
  %273 = call i32 @soc_camera_power_set(%struct.soc_camera_device* %271, %struct.soc_camera_link* %272, i32 0)
  br label %274

274:                                              ; preds = %270, %43
  %275 = load %struct.soc_camera_link*, %struct.soc_camera_link** %6, align 8
  %276 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.soc_camera_link*, %struct.soc_camera_link** %6, align 8
  %279 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @regulator_bulk_free(i32 %277, i32 %280)
  br label %282

282:                                              ; preds = %274, %36
  %283 = load i32, i32* %11, align 4
  store i32 %283, i32* %2, align 4
  br label %284

284:                                              ; preds = %282, %215
  %285 = load i32, i32* %2, align 4
  ret i32 %285
}

declare dso_local %struct.soc_camera_device* @to_soc_camera_dev(%struct.device*) #1

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local %struct.soc_camera_link* @to_soc_camera_link(%struct.soc_camera_device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @regulator_bulk_get(i32, i32, i32) #1

declare dso_local i32 @soc_camera_power_set(%struct.soc_camera_device*, %struct.soc_camera_link*, i32) #1

declare dso_local i32 @video_dev_create(%struct.soc_camera_device*) #1

declare dso_local i32 @soc_camera_init_i2c(%struct.soc_camera_device*, %struct.soc_camera_link*) #1

declare dso_local i32 @request_module(i64) #1

declare dso_local %struct.device* @to_soc_camera_control(%struct.soc_camera_device*) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @soc_camera_init_user_formats(%struct.soc_camera_device*) #1

declare dso_local %struct.video_device_shadow* @video_device_shadow_get(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @soc_camera_video_start(%struct.soc_camera_device*) #1

declare dso_local %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i64 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @soc_camera_free_user_formats(%struct.soc_camera_device*) #1

declare dso_local i32 @soc_camera_free_i2c(%struct.soc_camera_device*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @video_device_release(i32) #1

declare dso_local i32 @regulator_bulk_free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
