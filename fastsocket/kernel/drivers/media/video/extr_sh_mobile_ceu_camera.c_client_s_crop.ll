; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_client_s_crop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_client_s_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.v4l2_crop = type { %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i64, i64 }
%struct.v4l2_cropcap = type { %struct.v4l2_rect, %struct.v4l2_rect }

@video = common dso_local global i32 0, align 4
@s_crop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Camera S_CROP successful for %ux%u@%u:%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Fix camera S_CROP for %ux%u@%u:%u to %ux%u@%u:%u\0A\00", align 1
@cropcap = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Camera S_CROP %d for %ux%u@%u:%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Camera S_CROP %d for max %ux%u@%u:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_crop*, %struct.v4l2_crop*)* @client_s_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_s_crop(%struct.v4l2_subdev* %0, %struct.v4l2_crop* %1, %struct.v4l2_crop* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_crop*, align 8
  %7 = alloca %struct.v4l2_crop*, align 8
  %8 = alloca %struct.v4l2_rect*, align 8
  %9 = alloca %struct.v4l2_rect*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.v4l2_cropcap, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_crop* %1, %struct.v4l2_crop** %6, align 8
  store %struct.v4l2_crop* %2, %struct.v4l2_crop** %7, align 8
  %15 = load %struct.v4l2_crop*, %struct.v4l2_crop** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %15, i32 0, i32 1
  store %struct.v4l2_rect* %16, %struct.v4l2_rect** %8, align 8
  %17 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %17, i32 0, i32 1
  store %struct.v4l2_rect* %18, %struct.v4l2_rect** %9, align 8
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.device*, %struct.device** %22, align 8
  store %struct.device* %23, %struct.device** %10, align 8
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %25 = load i32, i32* @video, align 4
  %26 = load i32, i32* @s_crop, align 4
  %27 = load %struct.v4l2_crop*, %struct.v4l2_crop** %6, align 8
  %28 = bitcast %struct.v4l2_crop* %27 to %struct.v4l2_cropcap*
  %29 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %24, i32 %25, i32 %26, %struct.v4l2_cropcap* %28)
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %31 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %32 = call i32 @client_g_rect(%struct.v4l2_subdev* %30, %struct.v4l2_rect* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %4, align 4
  br label %330

37:                                               ; preds = %3
  %38 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %39 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %40 = call i32 @memcmp(%struct.v4l2_rect* %38, %struct.v4l2_rect* %39, i32 24)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %37
  %43 = load %struct.device*, %struct.device** %10, align 8
  %44 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %45 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %48 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %51 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %54 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @dev_dbg(%struct.device* %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49, i64 %52, i64 %55)
  store i32 0, i32* %4, align 4
  br label %330

57:                                               ; preds = %37
  %58 = load %struct.device*, %struct.device** %10, align 8
  %59 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %60 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %63 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = zext i32 %64 to i64
  %66 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %67 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %70 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %73 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = zext i32 %74 to i64
  %76 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %77 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %80 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %83 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (%struct.device*, i8*, i32, i64, i64, i64, i64, ...) @dev_geo(%struct.device* %58, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %61, i64 %65, i64 %68, i64 %71, i64 %75, i32 %78, i64 %81, i64 %84)
  %86 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %87 = load i32, i32* @video, align 4
  %88 = load i32, i32* @cropcap, align 4
  %89 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %86, i32 %87, i32 %88, %struct.v4l2_cropcap* %11)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %57
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %4, align 4
  br label %330

94:                                               ; preds = %57
  %95 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %96 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %95, i32 0, i32 2
  %97 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %98 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %11, i32 0, i32 0
  %100 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %11, i32 0, i32 0
  %103 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @soc_camera_limit_side(i64* %96, i32* %98, i64 %101, i32 2, i32 %104)
  %106 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %107 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %106, i32 0, i32 3
  %108 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %109 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %11, i32 0, i32 0
  %111 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %11, i32 0, i32 0
  %114 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @soc_camera_limit_side(i64* %107, i32* %109, i64 %112, i32 4, i32 %115)
  %117 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %118 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @max(i32 %119, i32 2)
  store i32 %120, i32* %13, align 4
  %121 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %122 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @max(i32 %123, i32 2)
  store i32 %124, i32* %14, align 4
  br label %125

125:                                              ; preds = %260, %94
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %152, label %128

128:                                              ; preds = %125
  %129 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %130 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %131 = call i64 @is_smaller(%struct.v4l2_rect* %129, %struct.v4l2_rect* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %135 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %136 = call i64 @is_inside(%struct.v4l2_rect* %134, %struct.v4l2_rect* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %133, %128
  %139 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %11, i32 0, i32 0
  %140 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %13, align 4
  %143 = icmp ugt i32 %141, %142
  br i1 %143, label %150, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %11, i32 0, i32 0
  %146 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %14, align 4
  %149 = icmp ugt i32 %147, %148
  br label %150

150:                                              ; preds = %144, %138
  %151 = phi i1 [ true, %138 ], [ %149, %144 ]
  br label %152

152:                                              ; preds = %150, %133, %125
  %153 = phi i1 [ false, %133 ], [ false, %125 ], [ %151, %150 ]
  br i1 %153, label %154, label %287

154:                                              ; preds = %152
  %155 = load i32, i32* %13, align 4
  %156 = mul i32 %155, 2
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %14, align 4
  %158 = mul i32 %157, 2
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %13, align 4
  %160 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %161 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* %14, align 4
  %163 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %164 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %166 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %169 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = icmp sgt i64 %167, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %154
  %173 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %11, i32 0, i32 0
  %174 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %177 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %176, i32 0, i32 2
  store i64 %175, i64* %177, align 8
  br label %178

178:                                              ; preds = %172, %154
  %179 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %180 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %183 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = zext i32 %184 to i64
  %186 = add nsw i64 %181, %185
  %187 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %188 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %191 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = zext i32 %192 to i64
  %194 = add nsw i64 %189, %193
  %195 = icmp slt i64 %186, %194
  br i1 %195, label %196, label %212

196:                                              ; preds = %178
  %197 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %198 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %201 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = zext i32 %202 to i64
  %204 = add nsw i64 %199, %203
  %205 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %206 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = sub nsw i64 %204, %207
  %209 = trunc i64 %208 to i32
  %210 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %211 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  br label %212

212:                                              ; preds = %196, %178
  %213 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %214 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %217 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = icmp sgt i64 %215, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %212
  %221 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %11, i32 0, i32 0
  %222 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %225 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %224, i32 0, i32 3
  store i64 %223, i64* %225, align 8
  br label %226

226:                                              ; preds = %220, %212
  %227 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %228 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %231 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = zext i32 %232 to i64
  %234 = add nsw i64 %229, %233
  %235 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %236 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %239 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = zext i32 %240 to i64
  %242 = add nsw i64 %237, %241
  %243 = icmp slt i64 %234, %242
  br i1 %243, label %244, label %260

244:                                              ; preds = %226
  %245 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %246 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %249 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = zext i32 %250 to i64
  %252 = add nsw i64 %247, %251
  %253 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %254 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = sub nsw i64 %252, %255
  %257 = trunc i64 %256 to i32
  %258 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %259 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 4
  br label %260

260:                                              ; preds = %244, %226
  %261 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %262 = load i32, i32* @video, align 4
  %263 = load i32, i32* @s_crop, align 4
  %264 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %265 = bitcast %struct.v4l2_crop* %264 to %struct.v4l2_cropcap*
  %266 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %261, i32 %262, i32 %263, %struct.v4l2_cropcap* %265)
  %267 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %268 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %269 = call i32 @client_g_rect(%struct.v4l2_subdev* %267, %struct.v4l2_rect* %268)
  store i32 %269, i32* %12, align 4
  %270 = load %struct.device*, %struct.device** %10, align 8
  %271 = load i32, i32* %12, align 4
  %272 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %273 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = zext i32 %274 to i64
  %276 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %277 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = zext i32 %278 to i64
  %280 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %281 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %284 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %283, i32 0, i32 3
  %285 = load i64, i64* %284, align 8
  %286 = call i32 (%struct.device*, i8*, i32, i64, i64, i64, i64, ...) @dev_geo(%struct.device* %270, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %271, i64 %275, i64 %279, i64 %282, i64 %285)
  br label %125

287:                                              ; preds = %152
  %288 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %289 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %290 = call i64 @is_smaller(%struct.v4l2_rect* %288, %struct.v4l2_rect* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %297, label %292

292:                                              ; preds = %287
  %293 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %294 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %295 = call i64 @is_inside(%struct.v4l2_rect* %293, %struct.v4l2_rect* %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %328

297:                                              ; preds = %292, %287
  %298 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %299 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %11, i32 0, i32 0
  %300 = bitcast %struct.v4l2_rect* %298 to i8*
  %301 = bitcast %struct.v4l2_rect* %299 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %300, i8* align 8 %301, i64 24, i1 false)
  %302 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %303 = load i32, i32* @video, align 4
  %304 = load i32, i32* @s_crop, align 4
  %305 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %306 = bitcast %struct.v4l2_crop* %305 to %struct.v4l2_cropcap*
  %307 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %302, i32 %303, i32 %304, %struct.v4l2_cropcap* %306)
  %308 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %309 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %310 = call i32 @client_g_rect(%struct.v4l2_subdev* %308, %struct.v4l2_rect* %309)
  store i32 %310, i32* %12, align 4
  %311 = load %struct.device*, %struct.device** %10, align 8
  %312 = load i32, i32* %12, align 4
  %313 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %314 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = zext i32 %315 to i64
  %317 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %318 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = zext i32 %319 to i64
  %321 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %322 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %321, i32 0, i32 2
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %325 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %324, i32 0, i32 3
  %326 = load i64, i64* %325, align 8
  %327 = call i32 (%struct.device*, i8*, i32, i64, i64, i64, i64, ...) @dev_geo(%struct.device* %311, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %312, i64 %316, i64 %320, i64 %323, i64 %326)
  br label %328

328:                                              ; preds = %297, %292
  %329 = load i32, i32* %12, align 4
  store i32 %329, i32* %4, align 4
  br label %330

330:                                              ; preds = %328, %92, %42, %35
  %331 = load i32, i32* %4, align 4
  ret i32 %331
}

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, %struct.v4l2_cropcap*) #1

declare dso_local i32 @client_g_rect(%struct.v4l2_subdev*, %struct.v4l2_rect*) #1

declare dso_local i32 @memcmp(%struct.v4l2_rect*, %struct.v4l2_rect*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @dev_geo(%struct.device*, i8*, i32, i64, i64, i64, i64, ...) #1

declare dso_local i32 @soc_camera_limit_side(i64*, i32*, i64, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @is_smaller(%struct.v4l2_rect*, %struct.v4l2_rect*) #1

declare dso_local i64 @is_inside(%struct.v4l2_rect*, %struct.v4l2_rect*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
