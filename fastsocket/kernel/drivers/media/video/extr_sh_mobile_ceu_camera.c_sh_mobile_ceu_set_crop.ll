; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_set_crop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_set_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32, i32, %struct.TYPE_4__, %struct.sh_mobile_ceu_cam* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.sh_mobile_ceu_cam = type { %struct.TYPE_6__*, %struct.v4l2_rect }
%struct.TYPE_6__ = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i64, i64 }
%struct.v4l2_crop = type { %struct.v4l2_rect }
%struct.soc_camera_host = type { %struct.sh_mobile_ceu_dev* }
%struct.sh_mobile_ceu_dev = type { i32, i64, i32, i64 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"1: combined scales %u:%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"2: camera cropped to %ux%u@%u:%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"3: Adjusted output %ux%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"5: camera target %ux%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"CAPSR 0x%x, CFLCR 0x%x\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"6-9: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"10: CEU cropped to %ux%u@%u:%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"11: CEU scales %u:%u\0A\00", align 1
@CFLCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, %struct.v4l2_crop*)* @sh_mobile_ceu_set_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_ceu_set_crop(%struct.soc_camera_device* %0, %struct.v4l2_crop* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca %struct.v4l2_crop*, align 8
  %6 = alloca %struct.v4l2_rect*, align 8
  %7 = alloca %struct.soc_camera_host*, align 8
  %8 = alloca %struct.sh_mobile_ceu_dev*, align 8
  %9 = alloca %struct.v4l2_crop, align 8
  %10 = alloca %struct.sh_mobile_ceu_cam*, align 8
  %11 = alloca %struct.v4l2_rect*, align 8
  %12 = alloca %struct.v4l2_rect*, align 8
  %13 = alloca %struct.v4l2_subdev*, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.v4l2_format, align 4
  %16 = alloca %struct.v4l2_pix_format*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store %struct.v4l2_crop* %1, %struct.v4l2_crop** %5, align 8
  %26 = load %struct.v4l2_crop*, %struct.v4l2_crop** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %26, i32 0, i32 0
  store %struct.v4l2_rect* %27, %struct.v4l2_rect** %6, align 8
  %28 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %29 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.device*, %struct.device** %30, align 8
  %32 = call %struct.soc_camera_host* @to_soc_camera_host(%struct.device* %31)
  store %struct.soc_camera_host* %32, %struct.soc_camera_host** %7, align 8
  %33 = load %struct.soc_camera_host*, %struct.soc_camera_host** %7, align 8
  %34 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %33, i32 0, i32 0
  %35 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %34, align 8
  store %struct.sh_mobile_ceu_dev* %35, %struct.sh_mobile_ceu_dev** %8, align 8
  %36 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %37 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %36, i32 0, i32 3
  %38 = load %struct.sh_mobile_ceu_cam*, %struct.sh_mobile_ceu_cam** %37, align 8
  store %struct.sh_mobile_ceu_cam* %38, %struct.sh_mobile_ceu_cam** %10, align 8
  %39 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %9, i32 0, i32 0
  store %struct.v4l2_rect* %39, %struct.v4l2_rect** %11, align 8
  %40 = load %struct.sh_mobile_ceu_cam*, %struct.sh_mobile_ceu_cam** %10, align 8
  %41 = getelementptr inbounds %struct.sh_mobile_ceu_cam, %struct.sh_mobile_ceu_cam* %40, i32 0, i32 1
  store %struct.v4l2_rect* %41, %struct.v4l2_rect** %12, align 8
  %42 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %43 = call %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device* %42)
  store %struct.v4l2_subdev* %43, %struct.v4l2_subdev** %13, align 8
  %44 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %45 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.device*, %struct.device** %46, align 8
  store %struct.device* %47, %struct.device** %14, align 8
  %48 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %15, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store %struct.v4l2_pix_format* %49, %struct.v4l2_pix_format** %16, align 8
  %50 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %51 = call i32 @get_scales(%struct.soc_camera_device* %50, i32* %17, i32* %18)
  store i32 %51, i32* %25, align 4
  %52 = load i32, i32* %25, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %2
  %55 = load i32, i32* %25, align 4
  store i32 %55, i32* %3, align 4
  br label %266

56:                                               ; preds = %2
  %57 = load %struct.device*, %struct.device** %14, align 8
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %18, align 4
  %60 = call i32 (%struct.device*, i8*, i32, ...) @dev_geo(%struct.device* %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %13, align 8
  %62 = load %struct.v4l2_crop*, %struct.v4l2_crop** %5, align 8
  %63 = call i32 @client_s_crop(%struct.v4l2_subdev* %61, %struct.v4l2_crop* %62, %struct.v4l2_crop* %9)
  store i32 %63, i32* %25, align 4
  %64 = load i32, i32* %25, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %25, align 4
  store i32 %67, i32* %3, align 4
  br label %266

68:                                               ; preds = %56
  %69 = load %struct.device*, %struct.device** %14, align 8
  %70 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %71 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %74 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %77 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %80 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (%struct.device*, i8*, i32, ...) @dev_geo(%struct.device* %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %75, i64 %78, i64 %81)
  %83 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %84 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %17, align 4
  %87 = call i8* @scale_down(i32 %85, i32 %86)
  %88 = ptrtoint i8* %87 to i32
  store i32 %88, i32* %21, align 4
  %89 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %90 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %18, align 4
  %93 = call i8* @scale_down(i32 %91, i32 %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %22, align 4
  %95 = load i32, i32* %21, align 4
  %96 = icmp ugt i32 %95, 2560
  br i1 %96, label %97, label %98

97:                                               ; preds = %68
  store i32 2560, i32* %21, align 4
  br label %103

98:                                               ; preds = %68
  %99 = load i32, i32* %21, align 4
  %100 = icmp ult i32 %99, 2
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 2, i32* %21, align 4
  br label %102

102:                                              ; preds = %101, %98
  br label %103

103:                                              ; preds = %102, %97
  %104 = load i32, i32* %22, align 4
  %105 = icmp ugt i32 %104, 1920
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 1920, i32* %22, align 4
  br label %112

107:                                              ; preds = %103
  %108 = load i32, i32* %22, align 4
  %109 = icmp ult i32 %108, 4
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 4, i32* %22, align 4
  br label %111

111:                                              ; preds = %110, %107
  br label %112

112:                                              ; preds = %111, %106
  %113 = load %struct.device*, %struct.device** %14, align 8
  %114 = load i32, i32* %21, align 4
  %115 = load i32, i32* %22, align 4
  %116 = call i32 (%struct.device*, i8*, i32, ...) @dev_geo(%struct.device* %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %114, i32 %115)
  %117 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %118 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %17, align 4
  %121 = call i8* @scale_down(i32 %119, i32 %120)
  %122 = ptrtoint i8* %121 to i32
  %123 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %16, align 8
  %124 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %126 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %18, align 4
  %129 = call i8* @scale_down(i32 %127, i32 %128)
  %130 = ptrtoint i8* %129 to i32
  %131 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %16, align 8
  %132 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.device*, %struct.device** %14, align 8
  %134 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %16, align 8
  %135 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %16, align 8
  %138 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (%struct.device*, i8*, i32, ...) @dev_geo(%struct.device* %133, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %136, i32 %139)
  %141 = load %struct.sh_mobile_ceu_cam*, %struct.sh_mobile_ceu_cam** %10, align 8
  %142 = getelementptr inbounds %struct.sh_mobile_ceu_cam, %struct.sh_mobile_ceu_cam* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %16, align 8
  %147 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 4
  %148 = load %struct.sh_mobile_ceu_cam*, %struct.sh_mobile_ceu_cam** %10, align 8
  %149 = getelementptr inbounds %struct.sh_mobile_ceu_cam, %struct.sh_mobile_ceu_cam* %148, i32 0, i32 0
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %16, align 8
  %154 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  %155 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %8, align 8
  %156 = call i32 @capture_save_reset(%struct.sh_mobile_ceu_dev* %155)
  store i32 %156, i32* %23, align 4
  %157 = load %struct.device*, %struct.device** %14, align 8
  %158 = load i32, i32* %23, align 4
  %159 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %8, align 8
  %160 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @dev_dbg(%struct.device* %157, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %158, i32 %161)
  %163 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %164 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %167 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = sub nsw i64 %168, %165
  store i64 %169, i64* %167, align 8
  %170 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %171 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %174 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = sub nsw i64 %175, %172
  store i64 %176, i64* %174, align 8
  %177 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %178 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %15, i32 0, i32 0
  store i32 %177, i32* %178, align 4
  %179 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %180 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %181 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %182 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %183 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %8, align 8
  %184 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %112
  %188 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %8, align 8
  %189 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  %192 = xor i1 %191, true
  br label %193

193:                                              ; preds = %187, %112
  %194 = phi i1 [ false, %112 ], [ %192, %187 ]
  %195 = zext i1 %194 to i32
  %196 = call i32 @client_scale(%struct.soc_camera_device* %179, %struct.v4l2_rect* %180, %struct.v4l2_rect* %181, %struct.v4l2_rect* %182, %struct.v4l2_format* %15, i32 %195)
  store i32 %196, i32* %25, align 4
  %197 = load %struct.device*, %struct.device** %14, align 8
  %198 = load i32, i32* %25, align 4
  %199 = call i32 (%struct.device*, i8*, i32, ...) @dev_geo(%struct.device* %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %198)
  %200 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %201 = load i32, i32* %21, align 4
  %202 = load i32, i32* %22, align 4
  %203 = call i32 @sh_mobile_ceu_set_rect(%struct.soc_camera_device* %200, i32 %201, i32 %202)
  %204 = load %struct.device*, %struct.device** %14, align 8
  %205 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %206 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %209 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %212 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %215 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = call i32 (%struct.device*, i8*, i32, ...) @dev_geo(%struct.device* %204, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %207, i32 %210, i64 %213, i64 %216)
  %218 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %219 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @calc_scale(i32 %220, i32* %21)
  store i32 %221, i32* %19, align 4
  %222 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %223 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @calc_scale(i32 %224, i32* %22)
  store i32 %225, i32* %20, align 4
  %226 = load %struct.device*, %struct.device** %14, align 8
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* %20, align 4
  %229 = call i32 (%struct.device*, i8*, i32, ...) @dev_geo(%struct.device* %226, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %227, i32 %228)
  %230 = load i32, i32* %19, align 4
  %231 = load i32, i32* %20, align 4
  %232 = shl i32 %231, 16
  %233 = or i32 %230, %232
  store i32 %233, i32* %24, align 4
  %234 = load i32, i32* %24, align 4
  %235 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %8, align 8
  %236 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp ne i32 %234, %237
  br i1 %238, label %239, label %247

239:                                              ; preds = %193
  %240 = load i32, i32* %24, align 4
  %241 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %8, align 8
  %242 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 8
  %243 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %8, align 8
  %244 = load i32, i32* @CFLCR, align 4
  %245 = load i32, i32* %24, align 4
  %246 = call i32 @ceu_write(%struct.sh_mobile_ceu_dev* %243, i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %239, %193
  %248 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %8, align 8
  %249 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %247
  %253 = load i32, i32* %23, align 4
  %254 = or i32 %253, 1
  store i32 %254, i32* %23, align 4
  br label %255

255:                                              ; preds = %252, %247
  %256 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %8, align 8
  %257 = load i32, i32* %23, align 4
  %258 = call i32 @capture_restore(%struct.sh_mobile_ceu_dev* %256, i32 %257)
  %259 = load i32, i32* %21, align 4
  %260 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %261 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %260, i32 0, i32 0
  store i32 %259, i32* %261, align 8
  %262 = load i32, i32* %22, align 4
  %263 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %264 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 4
  %265 = load i32, i32* %25, align 4
  store i32 %265, i32* %3, align 4
  br label %266

266:                                              ; preds = %255, %66, %54
  %267 = load i32, i32* %3, align 4
  ret i32 %267
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(%struct.device*) #1

declare dso_local %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device*) #1

declare dso_local i32 @get_scales(%struct.soc_camera_device*, i32*, i32*) #1

declare dso_local i32 @dev_geo(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @client_s_crop(%struct.v4l2_subdev*, %struct.v4l2_crop*, %struct.v4l2_crop*) #1

declare dso_local i8* @scale_down(i32, i32) #1

declare dso_local i32 @capture_save_reset(%struct.sh_mobile_ceu_dev*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @client_scale(%struct.soc_camera_device*, %struct.v4l2_rect*, %struct.v4l2_rect*, %struct.v4l2_rect*, %struct.v4l2_format*, i32) #1

declare dso_local i32 @sh_mobile_ceu_set_rect(%struct.soc_camera_device*, i32, i32) #1

declare dso_local i32 @calc_scale(i32, i32*) #1

declare dso_local i32 @ceu_write(%struct.sh_mobile_ceu_dev*, i32, i32) #1

declare dso_local i32 @capture_restore(%struct.sh_mobile_ceu_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
