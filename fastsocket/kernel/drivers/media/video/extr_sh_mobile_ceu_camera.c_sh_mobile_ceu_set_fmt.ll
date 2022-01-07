; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_set_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32, i32, %struct.TYPE_5__, %struct.sh_mobile_ceu_cam* }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.sh_mobile_ceu_cam = type { %struct.v4l2_rect, %struct.TYPE_6__* }
%struct.v4l2_rect = type { i8*, i8*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i8*, i8* }
%struct.soc_camera_host = type { %struct.sh_mobile_ceu_dev* }
%struct.sh_mobile_ceu_dev = type { i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.soc_camera_format_xlate = type { %struct.TYPE_6__*, i32, i32 }
%struct.v4l2_crop = type { i32, %struct.v4l2_rect }

@.str = private unnamed_addr constant [21 x i8] c"Format %x not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"1: camera scales %u:%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"2: subwin %ux%u@%u:%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"3: scales %u:%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"4: camera output %ux%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"5-9: client scale %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Camera %d fmt %ux%u, requested %ux%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"10: W: %u : 0x%x = %u, H: %u : 0x%x = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, %struct.v4l2_format*)* @sh_mobile_ceu_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_ceu_set_fmt(%struct.soc_camera_device* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.soc_camera_host*, align 8
  %7 = alloca %struct.sh_mobile_ceu_dev*, align 8
  %8 = alloca %struct.sh_mobile_ceu_cam*, align 8
  %9 = alloca %struct.v4l2_pix_format*, align 8
  %10 = alloca %struct.v4l2_format, align 8
  %11 = alloca %struct.v4l2_pix_format*, align 8
  %12 = alloca %struct.v4l2_subdev*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.soc_camera_format_xlate*, align 8
  %16 = alloca %struct.v4l2_crop, align 8
  %17 = alloca %struct.v4l2_rect*, align 8
  %18 = alloca %struct.v4l2_rect, align 8
  %19 = alloca %struct.v4l2_rect, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %27 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %28 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.device*, %struct.device** %29, align 8
  %31 = call %struct.soc_camera_host* @to_soc_camera_host(%struct.device* %30)
  store %struct.soc_camera_host* %31, %struct.soc_camera_host** %6, align 8
  %32 = load %struct.soc_camera_host*, %struct.soc_camera_host** %6, align 8
  %33 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %32, i32 0, i32 0
  %34 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %33, align 8
  store %struct.sh_mobile_ceu_dev* %34, %struct.sh_mobile_ceu_dev** %7, align 8
  %35 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %36 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %35, i32 0, i32 3
  %37 = load %struct.sh_mobile_ceu_cam*, %struct.sh_mobile_ceu_cam** %36, align 8
  store %struct.sh_mobile_ceu_cam* %37, %struct.sh_mobile_ceu_cam** %8, align 8
  %38 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store %struct.v4l2_pix_format* %40, %struct.v4l2_pix_format** %9, align 8
  %41 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %42 = bitcast %struct.v4l2_format* %10 to i8*
  %43 = bitcast %struct.v4l2_format* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 24, i1 false)
  %44 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store %struct.v4l2_pix_format* %45, %struct.v4l2_pix_format** %11, align 8
  %46 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %47 = call %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device* %46)
  store %struct.v4l2_subdev* %47, %struct.v4l2_subdev** %12, align 8
  %48 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %49 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.device*, %struct.device** %50, align 8
  store %struct.device* %51, %struct.device** %13, align 8
  %52 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %53 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %14, align 4
  %55 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %16, i32 0, i32 1
  store %struct.v4l2_rect* %55, %struct.v4l2_rect** %17, align 8
  %56 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %57 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %61 [
    i32 133, label %59
    i32 134, label %60
    i32 132, label %64
  ]

59:                                               ; preds = %2
  store i32 1, i32* %25, align 4
  br label %65

60:                                               ; preds = %2
  br label %61

61:                                               ; preds = %2, %60
  %62 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %63 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %62, i32 0, i32 1
  store i32 132, i32* %63, align 4
  br label %64

64:                                               ; preds = %2, %61
  store i32 0, i32* %25, align 4
  br label %65

65:                                               ; preds = %64, %59
  %66 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %67 = load i32, i32* %14, align 4
  %68 = call %struct.soc_camera_format_xlate* @soc_camera_xlate_by_fourcc(%struct.soc_camera_device* %66, i32 %67)
  store %struct.soc_camera_format_xlate* %68, %struct.soc_camera_format_xlate** %15, align 8
  %69 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %15, align 8
  %70 = icmp ne %struct.soc_camera_format_xlate* %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.device*, %struct.device** %13, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @dev_warn(%struct.device* %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %313

77:                                               ; preds = %65
  %78 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %79 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %16, i32 0, i32 0
  store i32 %78, i32* %79, align 8
  %80 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %81 = load %struct.v4l2_rect*, %struct.v4l2_rect** %17, align 8
  %82 = call i32 @client_g_rect(%struct.v4l2_subdev* %80, %struct.v4l2_rect* %81)
  store i32 %82, i32* %24, align 4
  %83 = load i32, i32* %24, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* %24, align 4
  store i32 %86, i32* %3, align 4
  br label %313

87:                                               ; preds = %77
  %88 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %89 = load %struct.v4l2_rect*, %struct.v4l2_rect** %17, align 8
  %90 = call i32 @get_camera_scales(%struct.v4l2_subdev* %88, %struct.v4l2_rect* %89, i32* %20, i32* %21)
  store i32 %90, i32* %24, align 4
  %91 = load i32, i32* %24, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %24, align 4
  store i32 %94, i32* %3, align 4
  br label %313

95:                                               ; preds = %87
  %96 = load %struct.device*, %struct.device** %13, align 8
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* %21, align 4
  %99 = call i32 (%struct.device*, i8*, i32, ...) @dev_geo(%struct.device* %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %98)
  %100 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %101 = load i32, i32* %20, align 4
  %102 = load i32, i32* %21, align 4
  %103 = call i32 @get_camera_subwin(%struct.soc_camera_device* %100, %struct.v4l2_rect* %18, i32 %101, i32 %102)
  store i32 %103, i32* %24, align 4
  %104 = load i32, i32* %24, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %95
  %107 = load i32, i32* %24, align 4
  store i32 %107, i32* %3, align 4
  br label %313

108:                                              ; preds = %95
  %109 = load %struct.device*, %struct.device** %13, align 8
  %110 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = ptrtoint i8* %111 to i32
  %113 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (%struct.device*, i8*, i32, ...) @dev_geo(%struct.device* %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %112, i8* %114, i32 %116, i32 %118)
  %120 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %123 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %122, i32 0, i32 3
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @calc_generic_scale(i8* %121, i8* %124)
  store i32 %125, i32* %23, align 4
  %126 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %129 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @calc_generic_scale(i8* %127, i8* %130)
  store i32 %131, i32* %22, align 4
  %132 = load %struct.device*, %struct.device** %13, align 8
  %133 = load i32, i32* %23, align 4
  %134 = load i32, i32* %22, align 4
  %135 = call i32 (%struct.device*, i8*, i32, ...) @dev_geo(%struct.device* %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %133, i32 %134)
  %136 = load %struct.v4l2_rect*, %struct.v4l2_rect** %17, align 8
  %137 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = load i32, i32* %23, align 4
  %140 = call i8* @scale_down(i8* %138, i32 %139)
  %141 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %142 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %141, i32 0, i32 3
  store i8* %140, i8** %142, align 8
  %143 = load %struct.v4l2_rect*, %struct.v4l2_rect** %17, align 8
  %144 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load i32, i32* %22, align 4
  %147 = call i8* @scale_down(i8* %145, i32 %146)
  %148 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %149 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %148, i32 0, i32 2
  store i8* %147, i8** %149, align 8
  %150 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %15, align 8
  %151 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %150, i32 0, i32 0
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %156 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* %14, align 4
  switch i32 %157, label %159 [
    i32 131, label %158
    i32 129, label %158
    i32 130, label %158
    i32 128, label %158
  ]

158:                                              ; preds = %108, %108, %108, %108
  store i32 1, i32* %26, align 4
  br label %160

159:                                              ; preds = %108
  store i32 0, i32* %26, align 4
  br label %160

160:                                              ; preds = %159, %158
  %161 = load %struct.device*, %struct.device** %13, align 8
  %162 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %163 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %162, i32 0, i32 3
  %164 = load i8*, i8** %163, align 8
  %165 = ptrtoint i8* %164 to i32
  %166 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %167 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %166, i32 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 (%struct.device*, i8*, i32, ...) @dev_geo(%struct.device* %161, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %165, i8* %168)
  %170 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %171 = load %struct.v4l2_rect*, %struct.v4l2_rect** %17, align 8
  %172 = load i32, i32* %26, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %160
  %175 = load i32, i32* %25, align 4
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  br label %178

178:                                              ; preds = %174, %160
  %179 = phi i1 [ false, %160 ], [ %177, %174 ]
  %180 = zext i1 %179 to i32
  %181 = call i32 @client_scale(%struct.soc_camera_device* %170, %struct.v4l2_rect* %171, %struct.v4l2_rect* %18, %struct.v4l2_rect* %19, %struct.v4l2_format* %10, i32 %180)
  store i32 %181, i32* %24, align 4
  %182 = load %struct.device*, %struct.device** %13, align 8
  %183 = load i32, i32* %24, align 4
  %184 = call i32 (%struct.device*, i8*, i32, ...) @dev_geo(%struct.device* %182, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %183)
  %185 = load %struct.device*, %struct.device** %13, align 8
  %186 = load i32, i32* %24, align 4
  %187 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %188 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %187, i32 0, i32 3
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %191 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %190, i32 0, i32 2
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %194 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %193, i32 0, i32 3
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %197 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %196, i32 0, i32 2
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @dev_dbg(%struct.device* %185, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %186, i8* %189, i8* %192, i8* %195, i8* %198)
  %200 = load i32, i32* %24, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %178
  %203 = load i32, i32* %24, align 4
  store i32 %203, i32* %3, align 4
  br label %313

204:                                              ; preds = %178
  %205 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %206 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %205, i32 0, i32 3
  %207 = load i8*, i8** %206, align 8
  %208 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %209 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %208, i32 0, i32 3
  %210 = load i8*, i8** %209, align 8
  %211 = icmp ugt i8* %207, %210
  br i1 %211, label %212, label %218

212:                                              ; preds = %204
  %213 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %214 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %213, i32 0, i32 3
  %215 = load i8*, i8** %214, align 8
  %216 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %217 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %216, i32 0, i32 3
  store i8* %215, i8** %217, align 8
  br label %218

218:                                              ; preds = %212, %204
  %219 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %220 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %219, i32 0, i32 3
  %221 = load i8*, i8** %220, align 8
  %222 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 1
  %223 = load i8*, i8** %222, align 8
  %224 = icmp ugt i8* %221, %223
  br i1 %224, label %225, label %230

225:                                              ; preds = %218
  %226 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 1
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %229 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %228, i32 0, i32 3
  store i8* %227, i8** %229, align 8
  br label %230

230:                                              ; preds = %225, %218
  %231 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %232 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %231, i32 0, i32 2
  %233 = load i8*, i8** %232, align 8
  %234 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %235 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %234, i32 0, i32 2
  %236 = load i8*, i8** %235, align 8
  %237 = icmp ugt i8* %233, %236
  br i1 %237, label %238, label %244

238:                                              ; preds = %230
  %239 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %240 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %239, i32 0, i32 2
  %241 = load i8*, i8** %240, align 8
  %242 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %243 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %242, i32 0, i32 2
  store i8* %241, i8** %243, align 8
  br label %244

244:                                              ; preds = %238, %230
  %245 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %246 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %245, i32 0, i32 2
  %247 = load i8*, i8** %246, align 8
  %248 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 0
  %249 = load i8*, i8** %248, align 8
  %250 = icmp ugt i8* %247, %249
  br i1 %250, label %251, label %256

251:                                              ; preds = %244
  %252 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %255 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %254, i32 0, i32 2
  store i8* %253, i8** %255, align 8
  br label %256

256:                                              ; preds = %251, %244
  %257 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 1
  %258 = load i8*, i8** %257, align 8
  %259 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %260 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %259, i32 0, i32 3
  %261 = call i32 @calc_scale(i8* %258, i8** %260)
  store i32 %261, i32* %23, align 4
  %262 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 0
  %263 = load i8*, i8** %262, align 8
  %264 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %265 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %264, i32 0, i32 2
  %266 = call i32 @calc_scale(i8* %263, i8** %265)
  store i32 %266, i32* %22, align 4
  %267 = load %struct.device*, %struct.device** %13, align 8
  %268 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 1
  %269 = load i8*, i8** %268, align 8
  %270 = ptrtoint i8* %269 to i32
  %271 = load i32, i32* %23, align 4
  %272 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %273 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %272, i32 0, i32 3
  %274 = load i8*, i8** %273, align 8
  %275 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 0
  %276 = load i8*, i8** %275, align 8
  %277 = load i32, i32* %22, align 4
  %278 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %279 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %278, i32 0, i32 2
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 (%struct.device*, i8*, i32, ...) @dev_geo(%struct.device* %267, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %270, i32 %271, i8* %274, i8* %276, i32 %277, i8* %280)
  %282 = load i32, i32* %23, align 4
  %283 = load i32, i32* %22, align 4
  %284 = shl i32 %283, 16
  %285 = or i32 %282, %284
  %286 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %7, align 8
  %287 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %286, i32 0, i32 0
  store i32 %285, i32* %287, align 4
  %288 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %15, align 8
  %289 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %292 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %291, i32 0, i32 1
  store i32 %290, i32* %292, align 4
  %293 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %15, align 8
  %294 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %297 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 8
  %298 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %15, align 8
  %299 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %298, i32 0, i32 0
  %300 = load %struct.TYPE_6__*, %struct.TYPE_6__** %299, align 8
  %301 = load %struct.sh_mobile_ceu_cam*, %struct.sh_mobile_ceu_cam** %8, align 8
  %302 = getelementptr inbounds %struct.sh_mobile_ceu_cam, %struct.sh_mobile_ceu_cam* %301, i32 0, i32 1
  store %struct.TYPE_6__* %300, %struct.TYPE_6__** %302, align 8
  %303 = load %struct.sh_mobile_ceu_cam*, %struct.sh_mobile_ceu_cam** %8, align 8
  %304 = getelementptr inbounds %struct.sh_mobile_ceu_cam, %struct.sh_mobile_ceu_cam* %303, i32 0, i32 0
  %305 = bitcast %struct.v4l2_rect* %304 to i8*
  %306 = bitcast %struct.v4l2_rect* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %305, i8* align 8 %306, i64 24, i1 false)
  %307 = load i32, i32* %25, align 4
  %308 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %7, align 8
  %309 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %308, i32 0, i32 1
  store i32 %307, i32* %309, align 4
  %310 = load i32, i32* %26, align 4
  %311 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %7, align 8
  %312 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %311, i32 0, i32 2
  store i32 %310, i32* %312, align 4
  store i32 0, i32* %3, align 4
  br label %313

313:                                              ; preds = %256, %202, %106, %93, %85, %71
  %314 = load i32, i32* %3, align 4
  ret i32 %314
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device*) #1

declare dso_local %struct.soc_camera_format_xlate* @soc_camera_xlate_by_fourcc(%struct.soc_camera_device*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @client_g_rect(%struct.v4l2_subdev*, %struct.v4l2_rect*) #1

declare dso_local i32 @get_camera_scales(%struct.v4l2_subdev*, %struct.v4l2_rect*, i32*, i32*) #1

declare dso_local i32 @dev_geo(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @get_camera_subwin(%struct.soc_camera_device*, %struct.v4l2_rect*, i32, i32) #1

declare dso_local i32 @calc_generic_scale(i8*, i8*) #1

declare dso_local i8* @scale_down(i8*, i32) #1

declare dso_local i32 @client_scale(%struct.soc_camera_device*, %struct.v4l2_rect*, %struct.v4l2_rect*, %struct.v4l2_rect*, %struct.v4l2_format*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @calc_scale(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
