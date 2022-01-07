; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_s_crop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_s_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_crop = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.bttv_fh = type { i32, i64, i64, %struct.bttv*, i32 }
%struct.bttv = type { i64, %struct.TYPE_9__, %struct.bttv_crop*, i32, i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.bttv_crop = type { i64, i64, i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i8* }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OVERLAY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@VIDEO_RESOURCES = common dso_local global i32 0, align 4
@bttv_tvnorms = common dso_local global %struct.TYPE_10__* null, align 8
@MAX_HDELAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_crop*)* @bttv_s_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_s_crop(%struct.file* %0, i8* %1, %struct.v4l2_crop* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_crop*, align 8
  %8 = alloca %struct.bttv_fh*, align 8
  %9 = alloca %struct.bttv*, align 8
  %10 = alloca %struct.v4l2_rect*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bttv_crop, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_crop* %2, %struct.v4l2_crop** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.bttv_fh*
  store %struct.bttv_fh* %18, %struct.bttv_fh** %8, align 8
  %19 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %20 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %19, i32 0, i32 3
  %21 = load %struct.bttv*, %struct.bttv** %20, align 8
  store %struct.bttv* %21, %struct.bttv** %9, align 8
  %22 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %3
  %28 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OVERLAY, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %243

36:                                               ; preds = %27, %3
  %37 = load %struct.bttv*, %struct.bttv** %9, align 8
  %38 = getelementptr inbounds %struct.bttv, %struct.bttv* %37, i32 0, i32 4
  %39 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %40 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @v4l2_prio_check(i32* %38, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 0, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %4, align 4
  br label %243

47:                                               ; preds = %36
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  %50 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %51 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %50, i32 0, i32 3
  %52 = load %struct.bttv*, %struct.bttv** %51, align 8
  %53 = load i32, i32* @VIDEO_RESOURCES, align 4
  %54 = call i64 @locked_btres(%struct.bttv* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %4, align 4
  br label %243

58:                                               ; preds = %47
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bttv_tvnorms, align 8
  %60 = load %struct.bttv*, %struct.bttv** %9, align 8
  %61 = getelementptr inbounds %struct.bttv, %struct.bttv* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store %struct.v4l2_rect* %65, %struct.v4l2_rect** %10, align 8
  %66 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %67 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %71 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %69, %72
  store i32 %73, i32* %15, align 4
  %74 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %75 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %78 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %76, %79
  store i32 %80, i32* %16, align 4
  %81 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %82 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bttv*, %struct.bttv** %9, align 8
  %85 = getelementptr inbounds %struct.bttv, %struct.bttv* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @max(i32 %83, i32 %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 32
  %90 = load i32, i32* %16, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %58
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %4, align 4
  br label %243

94:                                               ; preds = %58
  %95 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %15, align 4
  %101 = sub nsw i32 %100, 48
  %102 = call i8* @clamp(i32 %98, i32 %99, i32 %101)
  %103 = ptrtoint i8* %102 to i32
  %104 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* @MAX_HDELAY, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @min(i32 %108, i32 %110)
  %112 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %115 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %15, align 4
  %119 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %118, %121
  %123 = call i8* @clamp(i32 %117, i32 48, i32 %122)
  %124 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  %126 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %127 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %16, align 4
  %132 = sub nsw i32 %131, 32
  %133 = call i8* @clamp(i32 %129, i32 %130, i32 %132)
  %134 = ptrtoint i8* %133 to i32
  %135 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  %141 = and i32 %140, -2
  %142 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %145 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %16, align 4
  %149 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %148, %151
  %153 = call i8* @clamp(i32 %147, i32 32, i32 %152)
  %154 = ptrtoint i8* %153 to i32
  %155 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  %161 = and i32 %160, -2
  %162 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  %164 = call i32 @bttv_crop_calc_limits(%struct.bttv_crop* %12)
  %165 = load %struct.bttv*, %struct.bttv** %9, align 8
  %166 = getelementptr inbounds %struct.bttv, %struct.bttv* %165, i32 0, i32 2
  %167 = load %struct.bttv_crop*, %struct.bttv_crop** %166, align 8
  %168 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %167, i64 1
  %169 = bitcast %struct.bttv_crop* %168 to i8*
  %170 = bitcast %struct.bttv_crop* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %169, i8* align 8 %170, i64 56, i1 false)
  %171 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %172 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %171, i32 0, i32 0
  store i32 1, i32* %172, align 8
  %173 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %174 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp slt i64 %175, %177
  br i1 %178, label %179, label %189

179:                                              ; preds = %94
  %180 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %183 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %182, i32 0, i32 1
  store i64 %181, i64* %183, align 8
  %184 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.bttv*, %struct.bttv** %9, align 8
  %187 = getelementptr inbounds %struct.bttv, %struct.bttv* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  store i64 %185, i64* %188, align 8
  br label %207

189:                                              ; preds = %94
  %190 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %191 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = icmp sgt i64 %192, %194
  br i1 %195, label %196, label %206

196:                                              ; preds = %189
  %197 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %200 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %199, i32 0, i32 1
  store i64 %198, i64* %200, align 8
  %201 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.bttv*, %struct.bttv** %9, align 8
  %204 = getelementptr inbounds %struct.bttv, %struct.bttv* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  store i64 %202, i64* %205, align 8
  br label %206

206:                                              ; preds = %196, %189
  br label %207

207:                                              ; preds = %206, %179
  %208 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %209 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = icmp slt i64 %210, %212
  br i1 %213, label %214, label %224

214:                                              ; preds = %207
  %215 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %218 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %217, i32 0, i32 2
  store i64 %216, i64* %218, align 8
  %219 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.bttv*, %struct.bttv** %9, align 8
  %222 = getelementptr inbounds %struct.bttv, %struct.bttv* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 1
  store i64 %220, i64* %223, align 8
  br label %242

224:                                              ; preds = %207
  %225 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %226 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = icmp sgt i64 %227, %229
  br i1 %230, label %231, label %241

231:                                              ; preds = %224
  %232 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %235 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %234, i32 0, i32 2
  store i64 %233, i64* %235, align 8
  %236 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %12, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.bttv*, %struct.bttv** %9, align 8
  %239 = getelementptr inbounds %struct.bttv, %struct.bttv* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 1
  store i64 %237, i64* %240, align 8
  br label %241

241:                                              ; preds = %231, %224
  br label %242

242:                                              ; preds = %241, %214
  store i32 0, i32* %4, align 4
  br label %243

243:                                              ; preds = %242, %92, %56, %45, %33
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

declare dso_local i32 @v4l2_prio_check(i32*, i32) #1

declare dso_local i64 @locked_btres(%struct.bttv*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i8* @clamp(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bttv_crop_calc_limits(%struct.bttv_crop*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
