; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_cs_track_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_cs_track_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.r100_cs_track = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_5__*, %struct.TYPE_8__, %struct.TYPE_7__*, i64, %struct.TYPE_6__, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_8__ = type { i64, i64, i32* }
%struct.TYPE_7__ = type { i64, i64, i64, i32* }
%struct.TYPE_6__ = type { i64, i64, i64, i32* }

@.str = private unnamed_addr constant [39 x i8] c"[drm] No buffer for color buffer %d !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"[drm] Buffer too small for color buffer %d (need %lu have %lu) !\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"[drm] color buffer %d (%u %u %u %u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"[drm] No buffer for z buffer !\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"[drm] Buffer too small for z buffer (need %lu have %lu) !\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"[drm] zbuffer (%u %u %u %u)\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"[drm] No buffer for AA resolve buffer %d !\0A\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"[drm] Buffer too small for AA resolve buffer %d (need %lu have %lu) !\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"[drm] AA resolve buffer %d (%u %u %u %u)\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"(PW %u) Vertex array %u no buffer bound\0A\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"(PW %u) Vertex array %u need %lu dwords have %lu dwords\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Max indices %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"IMMD draw %u dwors but needs %lu dwords\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"VAP_VF_CNTL.NUM_VERTICES %u, VTX_SIZE %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"[drm] Invalid primitive walk %d for VAP_VF_CNTL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r100_cs_track_check(%struct.radeon_device* %0, %struct.r100_cs_track* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.r100_cs_track*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.r100_cs_track* %1, %struct.r100_cs_track** %5, align 8
  %11 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %12 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %17 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ %18, %15 ], [ 0, %19 ]
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %26 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %25, i32 0, i32 20
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %24
  %30 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %31 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %30, i32 0, i32 19
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %36 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %35, i32 0, i32 18
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %39, %34, %29, %24, %20
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %149, %40
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %152

45:                                               ; preds = %41
  %46 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %47 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %46, i32 0, i32 14
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load i32, i32* %6, align 4
  %57 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %536

60:                                               ; preds = %45
  %61 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %62 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %61, i32 0, i32 14
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %70 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %69, i32 0, i32 14
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = mul i64 %68, %76
  %78 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %79 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = mul i64 %77, %80
  store i64 %81, i64* %7, align 8
  %82 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %83 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %82, i32 0, i32 14
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %94 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %93, i32 0, i32 14
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @radeon_bo_size(i32* %100)
  %102 = sext i32 %101 to i64
  %103 = icmp ugt i64 %92, %102
  br i1 %103, label %104, label %148

104:                                              ; preds = %60
  %105 = load i32, i32* %6, align 4
  %106 = load i64, i64* %7, align 8
  %107 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %108 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %107, i32 0, i32 14
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @radeon_bo_size(i32* %114)
  %116 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %105, i64 %106, i32 %115)
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %119 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %118, i32 0, i32 14
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %127 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %126, i32 0, i32 14
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %135 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %134, i32 0, i32 14
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %143 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %117, i64 %125, i64 %133, i64 %141, i64 %144)
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %536

148:                                              ; preds = %60
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %6, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %6, align 4
  br label %41

152:                                              ; preds = %41
  %153 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %154 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %153, i32 0, i32 0
  store i32 0, i32* %154, align 8
  %155 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %156 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %229

159:                                              ; preds = %152
  %160 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %161 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %160, i32 0, i32 17
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %229

164:                                              ; preds = %159
  %165 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %166 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %165, i32 0, i32 16
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = icmp eq i32* %168, null
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %3, align 4
  br label %536

174:                                              ; preds = %164
  %175 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %176 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %175, i32 0, i32 16
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %180 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %179, i32 0, i32 16
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = mul i64 %178, %182
  %184 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %185 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = mul i64 %183, %186
  store i64 %187, i64* %7, align 8
  %188 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %189 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %188, i32 0, i32 16
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %7, align 8
  %193 = add i64 %192, %191
  store i64 %193, i64* %7, align 8
  %194 = load i64, i64* %7, align 8
  %195 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %196 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %195, i32 0, i32 16
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @radeon_bo_size(i32* %198)
  %200 = sext i32 %199 to i64
  %201 = icmp ugt i64 %194, %200
  br i1 %201, label %202, label %228

202:                                              ; preds = %174
  %203 = load i64, i64* %7, align 8
  %204 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %205 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %204, i32 0, i32 16
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 3
  %207 = load i32*, i32** %206, align 8
  %208 = call i32 @radeon_bo_size(i32* %207)
  %209 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i64 %203, i32 %208)
  %210 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %211 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %210, i32 0, i32 16
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %215 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %214, i32 0, i32 16
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %219 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %218, i32 0, i32 16
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %223 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %213, i64 %217, i64 %221, i64 %224)
  %226 = load i32, i32* @EINVAL, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %3, align 4
  br label %536

228:                                              ; preds = %174
  br label %229

229:                                              ; preds = %228, %159, %152
  %230 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %231 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %230, i32 0, i32 3
  store i32 0, i32* %231, align 8
  %232 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %233 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %313

236:                                              ; preds = %229
  %237 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %238 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %237, i32 0, i32 15
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %313

241:                                              ; preds = %236
  %242 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %243 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %242, i32 0, i32 13
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 2
  %245 = load i32*, i32** %244, align 8
  %246 = icmp eq i32* %245, null
  br i1 %246, label %247, label %252

247:                                              ; preds = %241
  %248 = load i32, i32* %6, align 4
  %249 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %248)
  %250 = load i32, i32* @EINVAL, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %3, align 4
  br label %536

252:                                              ; preds = %241
  %253 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %254 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %253, i32 0, i32 13
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %258 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %257, i32 0, i32 14
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i64 0
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = mul i64 %256, %262
  %264 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %265 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = mul i64 %263, %266
  store i64 %267, i64* %7, align 8
  %268 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %269 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %268, i32 0, i32 13
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* %7, align 8
  %273 = add i64 %272, %271
  store i64 %273, i64* %7, align 8
  %274 = load i64, i64* %7, align 8
  %275 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %276 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %275, i32 0, i32 13
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 2
  %278 = load i32*, i32** %277, align 8
  %279 = call i32 @radeon_bo_size(i32* %278)
  %280 = sext i32 %279 to i64
  %281 = icmp ugt i64 %274, %280
  br i1 %281, label %282, label %312

282:                                              ; preds = %252
  %283 = load i32, i32* %6, align 4
  %284 = load i64, i64* %7, align 8
  %285 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %286 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %285, i32 0, i32 13
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 2
  %288 = load i32*, i32** %287, align 8
  %289 = call i32 @radeon_bo_size(i32* %288)
  %290 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i64 0, i64 0), i32 %283, i64 %284, i32 %289)
  %291 = load i32, i32* %6, align 4
  %292 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %293 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %292, i32 0, i32 13
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %297 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %296, i32 0, i32 14
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i64 0
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %303 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %302, i32 0, i32 13
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %307 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %291, i64 %295, i64 %301, i64 %305, i64 %308)
  %310 = load i32, i32* @EINVAL, align 4
  %311 = sub nsw i32 0, %310
  store i32 %311, i32* %3, align 4
  br label %536

312:                                              ; preds = %252
  br label %313

313:                                              ; preds = %312, %236, %229
  %314 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %315 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %314, i32 0, i32 4
  store i32 0, i32* %315, align 4
  %316 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %317 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %316, i32 0, i32 5
  %318 = load i32, i32* %317, align 8
  %319 = ashr i32 %318, 4
  %320 = and i32 %319, 3
  store i32 %320, i32* %8, align 4
  %321 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %322 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %321, i32 0, i32 5
  %323 = load i32, i32* %322, align 8
  %324 = and i32 %323, 16384
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %313
  %327 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %328 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %327, i32 0, i32 6
  %329 = load i32, i32* %328, align 4
  store i32 %329, i32* %9, align 4
  br label %336

330:                                              ; preds = %313
  %331 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %332 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %331, i32 0, i32 5
  %333 = load i32, i32* %332, align 8
  %334 = ashr i32 %333, 16
  %335 = and i32 %334, 65535
  store i32 %335, i32* %9, align 4
  br label %336

336:                                              ; preds = %330, %326
  %337 = load i32, i32* %8, align 4
  switch i32 %337, label %519 [
    i32 1, label %338
    i32 2, label %418
    i32 3, label %493
  ]

338:                                              ; preds = %336
  store i32 0, i32* %6, align 4
  br label %339

339:                                              ; preds = %414, %338
  %340 = load i32, i32* %6, align 4
  %341 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %342 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %341, i32 0, i32 7
  %343 = load i32, i32* %342, align 8
  %344 = icmp ult i32 %340, %343
  br i1 %344, label %345, label %417

345:                                              ; preds = %339
  %346 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %347 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %346, i32 0, i32 12
  %348 = load %struct.TYPE_5__*, %struct.TYPE_5__** %347, align 8
  %349 = load i32, i32* %6, align 4
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %355 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %354, i32 0, i32 8
  %356 = load i32, i32* %355, align 4
  %357 = mul nsw i32 %353, %356
  %358 = mul nsw i32 %357, 4
  %359 = sext i32 %358 to i64
  store i64 %359, i64* %7, align 8
  %360 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %361 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %360, i32 0, i32 12
  %362 = load %struct.TYPE_5__*, %struct.TYPE_5__** %361, align 8
  %363 = load i32, i32* %6, align 4
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %362, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 1
  %367 = load i32*, i32** %366, align 8
  %368 = icmp eq i32* %367, null
  br i1 %368, label %369, label %375

369:                                              ; preds = %345
  %370 = load i32, i32* %8, align 4
  %371 = load i32, i32* %6, align 4
  %372 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %370, i32 %371)
  %373 = load i32, i32* @EINVAL, align 4
  %374 = sub nsw i32 0, %373
  store i32 %374, i32* %3, align 4
  br label %536

375:                                              ; preds = %345
  %376 = load i64, i64* %7, align 8
  %377 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %378 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %377, i32 0, i32 12
  %379 = load %struct.TYPE_5__*, %struct.TYPE_5__** %378, align 8
  %380 = load i32, i32* %6, align 4
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %379, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %382, i32 0, i32 1
  %384 = load i32*, i32** %383, align 8
  %385 = call i32 @radeon_bo_size(i32* %384)
  %386 = sext i32 %385 to i64
  %387 = icmp ugt i64 %376, %386
  br i1 %387, label %388, label %413

388:                                              ; preds = %375
  %389 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %390 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* %8, align 4
  %393 = load i32, i32* %6, align 4
  %394 = load i64, i64* %7, align 8
  %395 = lshr i64 %394, 2
  %396 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %397 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %396, i32 0, i32 12
  %398 = load %struct.TYPE_5__*, %struct.TYPE_5__** %397, align 8
  %399 = load i32, i32* %6, align 4
  %400 = zext i32 %399 to i64
  %401 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %398, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %401, i32 0, i32 1
  %403 = load i32*, i32** %402, align 8
  %404 = call i32 @radeon_bo_size(i32* %403)
  %405 = ashr i32 %404, 2
  %406 = call i32 @dev_err(i32 %391, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i32 %392, i32 %393, i64 %395, i32 %405)
  %407 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %408 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %407, i32 0, i32 8
  %409 = load i32, i32* %408, align 4
  %410 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %409)
  %411 = load i32, i32* @EINVAL, align 4
  %412 = sub nsw i32 0, %411
  store i32 %412, i32* %3, align 4
  br label %536

413:                                              ; preds = %375
  br label %414

414:                                              ; preds = %413
  %415 = load i32, i32* %6, align 4
  %416 = add i32 %415, 1
  store i32 %416, i32* %6, align 4
  br label %339

417:                                              ; preds = %339
  br label %524

418:                                              ; preds = %336
  store i32 0, i32* %6, align 4
  br label %419

419:                                              ; preds = %489, %418
  %420 = load i32, i32* %6, align 4
  %421 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %422 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %421, i32 0, i32 7
  %423 = load i32, i32* %422, align 8
  %424 = icmp ult i32 %420, %423
  br i1 %424, label %425, label %492

425:                                              ; preds = %419
  %426 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %427 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %426, i32 0, i32 12
  %428 = load %struct.TYPE_5__*, %struct.TYPE_5__** %427, align 8
  %429 = load i32, i32* %6, align 4
  %430 = zext i32 %429 to i64
  %431 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %428, i64 %430
  %432 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = load i32, i32* %9, align 4
  %435 = sub i32 %434, 1
  %436 = mul i32 %433, %435
  %437 = mul i32 %436, 4
  %438 = zext i32 %437 to i64
  store i64 %438, i64* %7, align 8
  %439 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %440 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %439, i32 0, i32 12
  %441 = load %struct.TYPE_5__*, %struct.TYPE_5__** %440, align 8
  %442 = load i32, i32* %6, align 4
  %443 = zext i32 %442 to i64
  %444 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %441, i64 %443
  %445 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %444, i32 0, i32 1
  %446 = load i32*, i32** %445, align 8
  %447 = icmp eq i32* %446, null
  br i1 %447, label %448, label %454

448:                                              ; preds = %425
  %449 = load i32, i32* %8, align 4
  %450 = load i32, i32* %6, align 4
  %451 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %449, i32 %450)
  %452 = load i32, i32* @EINVAL, align 4
  %453 = sub nsw i32 0, %452
  store i32 %453, i32* %3, align 4
  br label %536

454:                                              ; preds = %425
  %455 = load i64, i64* %7, align 8
  %456 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %457 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %456, i32 0, i32 12
  %458 = load %struct.TYPE_5__*, %struct.TYPE_5__** %457, align 8
  %459 = load i32, i32* %6, align 4
  %460 = zext i32 %459 to i64
  %461 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %458, i64 %460
  %462 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %461, i32 0, i32 1
  %463 = load i32*, i32** %462, align 8
  %464 = call i32 @radeon_bo_size(i32* %463)
  %465 = sext i32 %464 to i64
  %466 = icmp ugt i64 %455, %465
  br i1 %466, label %467, label %488

467:                                              ; preds = %454
  %468 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %469 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 4
  %471 = load i32, i32* %8, align 4
  %472 = load i32, i32* %6, align 4
  %473 = load i64, i64* %7, align 8
  %474 = lshr i64 %473, 2
  %475 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %476 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %475, i32 0, i32 12
  %477 = load %struct.TYPE_5__*, %struct.TYPE_5__** %476, align 8
  %478 = load i32, i32* %6, align 4
  %479 = zext i32 %478 to i64
  %480 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %477, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %480, i32 0, i32 1
  %482 = load i32*, i32** %481, align 8
  %483 = call i32 @radeon_bo_size(i32* %482)
  %484 = ashr i32 %483, 2
  %485 = call i32 @dev_err(i32 %470, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i32 %471, i32 %472, i64 %474, i32 %484)
  %486 = load i32, i32* @EINVAL, align 4
  %487 = sub nsw i32 0, %486
  store i32 %487, i32* %3, align 4
  br label %536

488:                                              ; preds = %454
  br label %489

489:                                              ; preds = %488
  %490 = load i32, i32* %6, align 4
  %491 = add i32 %490, 1
  store i32 %491, i32* %6, align 4
  br label %419

492:                                              ; preds = %419
  br label %524

493:                                              ; preds = %336
  %494 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %495 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %494, i32 0, i32 9
  %496 = load i32, i32* %495, align 8
  %497 = load i32, i32* %9, align 4
  %498 = mul i32 %496, %497
  %499 = zext i32 %498 to i64
  store i64 %499, i64* %7, align 8
  %500 = load i64, i64* %7, align 8
  %501 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %502 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %501, i32 0, i32 10
  %503 = load i64, i64* %502, align 8
  %504 = icmp ne i64 %500, %503
  br i1 %504, label %505, label %518

505:                                              ; preds = %493
  %506 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %507 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %506, i32 0, i32 10
  %508 = load i64, i64* %507, align 8
  %509 = load i64, i64* %7, align 8
  %510 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i64 %508, i64 %509)
  %511 = load i32, i32* %9, align 4
  %512 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %513 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %512, i32 0, i32 9
  %514 = load i32, i32* %513, align 8
  %515 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 %511, i32 %514)
  %516 = load i32, i32* @EINVAL, align 4
  %517 = sub nsw i32 0, %516
  store i32 %517, i32* %3, align 4
  br label %536

518:                                              ; preds = %493
  br label %524

519:                                              ; preds = %336
  %520 = load i32, i32* %8, align 4
  %521 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0), i32 %520)
  %522 = load i32, i32* @EINVAL, align 4
  %523 = sub nsw i32 0, %522
  store i32 %523, i32* %3, align 4
  br label %536

524:                                              ; preds = %518, %492, %417
  %525 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %526 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %525, i32 0, i32 11
  %527 = load i32, i32* %526, align 8
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %535

529:                                              ; preds = %524
  %530 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %531 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %530, i32 0, i32 11
  store i32 0, i32* %531, align 8
  %532 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %533 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %534 = call i32 @r100_cs_track_texture_check(%struct.radeon_device* %532, %struct.r100_cs_track* %533)
  store i32 %534, i32* %3, align 4
  br label %536

535:                                              ; preds = %524
  store i32 0, i32* %3, align 4
  br label %536

536:                                              ; preds = %535, %529, %519, %505, %467, %448, %388, %369, %282, %247, %202, %170, %104, %55
  %537 = load i32, i32* %3, align 4
  ret i32 %537
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_bo_size(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i64, i32) #1

declare dso_local i32 @r100_cs_track_texture_check(%struct.radeon_device*, %struct.r100_cs_track*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
