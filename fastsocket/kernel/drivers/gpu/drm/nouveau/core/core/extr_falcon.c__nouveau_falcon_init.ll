; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_falcon.c__nouveau_falcon_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_falcon.c__nouveau_falcon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_device = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nouveau_falcon = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.nouveau_falcon*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32*, i32 }
%struct.firmware = type { i32, i32 }

@__const._nouveau_falcon_init.name = private unnamed_addr constant [32 x i8] c"internal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [20 x i8] c"falcon version: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"secret level: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"code limit: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"data limit: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"nouveau/nv%02x_fuc%03x\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"nouveau/nv%02x_fuc%03xd\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"unable to load firmware data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"nouveau/nv%02x_fuc%03xc\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"unable to load firmware code\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"firmware: %s (%s)\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"static code/data segments\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"self-bootstrapping\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"core allocation failed, %d\0A\00", align 1
@NV_C0 = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [31 x i8] c"ucode exceeds falcon limit(s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_nouveau_falcon_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nouveau_device*, align 8
  %5 = alloca %struct.nouveau_falcon*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %11 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %12 = call %struct.nouveau_device* @nv_device(%struct.nouveau_object* %11)
  store %struct.nouveau_device* %12, %struct.nouveau_device** %4, align 8
  %13 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %14 = bitcast %struct.nouveau_object* %13 to i8*
  %15 = bitcast i8* %14 to %struct.nouveau_falcon*
  store %struct.nouveau_falcon* %15, %struct.nouveau_falcon** %5, align 8
  %16 = bitcast [32 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @__const._nouveau_falcon_init.name, i32 0, i32 0), i64 32, i1 false)
  %17 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %18 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %17, i32 0, i32 7
  %19 = call i32 @nouveau_engine_init(i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %2, align 4
  br label %586

24:                                               ; preds = %1
  %25 = load %struct.nouveau_device*, %struct.nouveau_device** %4, align 8
  %26 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 163
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load %struct.nouveau_device*, %struct.nouveau_device** %4, align 8
  %31 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 170
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.nouveau_device*, %struct.nouveau_device** %4, align 8
  %36 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 172
  br i1 %38, label %39, label %50

39:                                               ; preds = %34, %29, %24
  %40 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %41 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %43 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 552960
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %49 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %62

50:                                               ; preds = %34
  %51 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %52 = call i32 @nv_ro32(%struct.nouveau_falcon* %51, i32 300)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, 15
  %55 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %56 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %57, 48
  %59 = ashr i32 %58, 4
  %60 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %61 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %50, %39
  %63 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %64 = call i32 @nv_ro32(%struct.nouveau_falcon* %63, i32 264)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, 511
  %67 = shl i32 %66, 8
  %68 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %69 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load i32, i32* %10, align 4
  %72 = and i32 %71, 261632
  %73 = ashr i32 %72, 1
  %74 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %75 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %78 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %79 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (%struct.nouveau_falcon*, i8*, ...) @nv_debug(%struct.nouveau_falcon* %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %83 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %84 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (%struct.nouveau_falcon*, i8*, ...) @nv_debug(%struct.nouveau_falcon* %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %88 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %89 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (%struct.nouveau_falcon*, i8*, ...) @nv_debug(%struct.nouveau_falcon* %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %94 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %95 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (%struct.nouveau_falcon*, i8*, ...) @nv_debug(%struct.nouveau_falcon* %93, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  %99 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %100 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %122

103:                                              ; preds = %62
  %104 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %105 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %106, 4
  br i1 %107, label %108, label %122

108:                                              ; preds = %103
  %109 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %110 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %115 = call i32 @nv_wait(%struct.nouveau_falcon* %114, i32 8, i32 16, i32 16)
  br label %119

116:                                              ; preds = %108
  %117 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %118 = call i32 @nv_wait(%struct.nouveau_falcon* %117, i32 384, i32 -2147483648, i32 0)
  br label %119

119:                                              ; preds = %116, %113
  %120 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %121 = call i32 @nv_wo32(%struct.nouveau_falcon* %120, i32 4, i32 16)
  br label %122

122:                                              ; preds = %119, %103, %62
  %123 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %124 = call i32 @nv_wo32(%struct.nouveau_falcon* %123, i32 20, i32 -1)
  %125 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %126 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %178, label %130

130:                                              ; preds = %122
  %131 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %132 = load %struct.nouveau_device*, %struct.nouveau_device** %4, align 8
  %133 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %136 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = ashr i32 %137, 12
  %139 = call i32 @snprintf(i8* %131, i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %134, i32 %138)
  %140 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %141 = load %struct.nouveau_device*, %struct.nouveau_device** %4, align 8
  %142 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %141, i32 0, i32 2
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = call i32 @request_firmware(%struct.firmware** %6, i8* %140, i32* %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %175

148:                                              ; preds = %130
  %149 = load %struct.firmware*, %struct.firmware** %6, align 8
  %150 = getelementptr inbounds %struct.firmware, %struct.firmware* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.firmware*, %struct.firmware** %6, align 8
  %153 = getelementptr inbounds %struct.firmware, %struct.firmware* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @GFP_KERNEL, align 4
  %156 = call i8* @kmemdup(i32 %151, i32 %154, i32 %155)
  %157 = bitcast i8* %156 to i32*
  %158 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %159 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  store i32* %157, i32** %160, align 8
  %161 = load %struct.firmware*, %struct.firmware** %6, align 8
  %162 = getelementptr inbounds %struct.firmware, %struct.firmware* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %165 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %164, i32 0, i32 6
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  store i32 %163, i32* %166, align 8
  %167 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %168 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  store i32* null, i32** %169, align 8
  %170 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %171 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 2
  store i32 0, i32* %172, align 8
  %173 = load %struct.firmware*, %struct.firmware** %6, align 8
  %174 = call i32 @release_firmware(%struct.firmware* %173)
  br label %175

175:                                              ; preds = %148, %130
  %176 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %177 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %176, i32 0, i32 3
  store i32 1, i32* %177, align 4
  br label %178

178:                                              ; preds = %175, %122
  %179 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %180 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %287, label %184

184:                                              ; preds = %178
  %185 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %186 = load %struct.nouveau_device*, %struct.nouveau_device** %4, align 8
  %187 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %190 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = ashr i32 %191, 12
  %193 = call i32 @snprintf(i8* %185, i32 32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %188, i32 %192)
  %194 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %195 = load %struct.nouveau_device*, %struct.nouveau_device** %4, align 8
  %196 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %195, i32 0, i32 2
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = call i32 @request_firmware(%struct.firmware** %6, i8* %194, i32* %198)
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %184
  %203 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %204 = call i32 (%struct.nouveau_falcon*, i8*, ...) @nv_error(%struct.nouveau_falcon* %203, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %205 = load i32, i32* %8, align 4
  store i32 %205, i32* %2, align 4
  br label %586

206:                                              ; preds = %184
  %207 = load %struct.firmware*, %struct.firmware** %6, align 8
  %208 = getelementptr inbounds %struct.firmware, %struct.firmware* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.firmware*, %struct.firmware** %6, align 8
  %211 = getelementptr inbounds %struct.firmware, %struct.firmware* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @GFP_KERNEL, align 4
  %214 = call i8* @kmemdup(i32 %209, i32 %212, i32 %213)
  %215 = bitcast i8* %214 to i32*
  %216 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %217 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  store i32* %215, i32** %218, align 8
  %219 = load %struct.firmware*, %struct.firmware** %6, align 8
  %220 = getelementptr inbounds %struct.firmware, %struct.firmware* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %223 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %222, i32 0, i32 4
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 2
  store i32 %221, i32* %224, align 8
  %225 = load %struct.firmware*, %struct.firmware** %6, align 8
  %226 = call i32 @release_firmware(%struct.firmware* %225)
  %227 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %228 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %227, i32 0, i32 4
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %235, label %232

232:                                              ; preds = %206
  %233 = load i32, i32* @ENOMEM, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %2, align 4
  br label %586

235:                                              ; preds = %206
  %236 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %237 = load %struct.nouveau_device*, %struct.nouveau_device** %4, align 8
  %238 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %241 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = ashr i32 %242, 12
  %244 = call i32 @snprintf(i8* %236, i32 32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %239, i32 %243)
  %245 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %246 = load %struct.nouveau_device*, %struct.nouveau_device** %4, align 8
  %247 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %246, i32 0, i32 2
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = call i32 @request_firmware(%struct.firmware** %6, i8* %245, i32* %249)
  store i32 %250, i32* %8, align 4
  %251 = load i32, i32* %8, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %235
  %254 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %255 = call i32 (%struct.nouveau_falcon*, i8*, ...) @nv_error(%struct.nouveau_falcon* %254, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %256 = load i32, i32* %8, align 4
  store i32 %256, i32* %2, align 4
  br label %586

257:                                              ; preds = %235
  %258 = load %struct.firmware*, %struct.firmware** %6, align 8
  %259 = getelementptr inbounds %struct.firmware, %struct.firmware* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.firmware*, %struct.firmware** %6, align 8
  %262 = getelementptr inbounds %struct.firmware, %struct.firmware* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @GFP_KERNEL, align 4
  %265 = call i8* @kmemdup(i32 %260, i32 %263, i32 %264)
  %266 = bitcast i8* %265 to i32*
  %267 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %268 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %267, i32 0, i32 6
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 1
  store i32* %266, i32** %269, align 8
  %270 = load %struct.firmware*, %struct.firmware** %6, align 8
  %271 = getelementptr inbounds %struct.firmware, %struct.firmware* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %274 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %273, i32 0, i32 6
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 2
  store i32 %272, i32* %275, align 8
  %276 = load %struct.firmware*, %struct.firmware** %6, align 8
  %277 = call i32 @release_firmware(%struct.firmware* %276)
  %278 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %279 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %278, i32 0, i32 6
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = icmp ne i32* %281, null
  br i1 %282, label %286, label %283

283:                                              ; preds = %257
  %284 = load i32, i32* @ENOMEM, align 4
  %285 = sub nsw i32 0, %284
  store i32 %285, i32* %2, align 4
  br label %586

286:                                              ; preds = %257
  br label %287

287:                                              ; preds = %286, %178
  %288 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %289 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %290 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %291 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %290, i32 0, i32 4
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 1
  %293 = load i32*, i32** %292, align 8
  %294 = icmp ne i32* %293, null
  %295 = zext i1 %294 to i64
  %296 = select i1 %294, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0)
  %297 = call i32 (%struct.nouveau_falcon*, i8*, ...) @nv_debug(%struct.nouveau_falcon* %288, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %289, i8* %296)
  %298 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %299 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %298, i32 0, i32 4
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 1
  %301 = load i32*, i32** %300, align 8
  %302 = icmp ne i32* %301, null
  br i1 %302, label %353, label %303

303:                                              ; preds = %287
  %304 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %305 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %304, i32 0, i32 5
  %306 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %305, align 8
  %307 = icmp ne %struct.nouveau_falcon* %306, null
  br i1 %307, label %353, label %308

308:                                              ; preds = %303
  %309 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %310 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %313 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %312, i32 0, i32 6
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %317 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %316, i32 0, i32 5
  %318 = call i32 @nouveau_gpuobj_new(i32 %311, i32* null, i32 %315, i32 256, i32 0, %struct.nouveau_falcon** %317)
  store i32 %318, i32* %8, align 4
  %319 = load i32, i32* %8, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %326

321:                                              ; preds = %308
  %322 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %323 = load i32, i32* %8, align 4
  %324 = call i32 (%struct.nouveau_falcon*, i8*, ...) @nv_error(%struct.nouveau_falcon* %322, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %323)
  %325 = load i32, i32* %8, align 4
  store i32 %325, i32* %2, align 4
  br label %586

326:                                              ; preds = %308
  store i32 0, i32* %9, align 4
  br label %327

327:                                              ; preds = %349, %326
  %328 = load i32, i32* %9, align 4
  %329 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %330 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %329, i32 0, i32 6
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = icmp slt i32 %328, %332
  br i1 %333, label %334, label %352

334:                                              ; preds = %327
  %335 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %336 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %335, i32 0, i32 5
  %337 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %336, align 8
  %338 = load i32, i32* %9, align 4
  %339 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %340 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %339, i32 0, i32 6
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %340, i32 0, i32 1
  %342 = load i32*, i32** %341, align 8
  %343 = load i32, i32* %9, align 4
  %344 = sdiv i32 %343, 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %342, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @nv_wo32(%struct.nouveau_falcon* %337, i32 %338, i32 %347)
  br label %349

349:                                              ; preds = %334
  %350 = load i32, i32* %9, align 4
  %351 = add nsw i32 %350, 4
  store i32 %351, i32* %9, align 4
  br label %327

352:                                              ; preds = %327
  br label %353

353:                                              ; preds = %352, %303, %287
  %354 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %355 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %354, i32 0, i32 5
  %356 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %355, align 8
  %357 = icmp ne %struct.nouveau_falcon* %356, null
  br i1 %357, label %358, label %385

358:                                              ; preds = %353
  %359 = load %struct.nouveau_device*, %struct.nouveau_device** %4, align 8
  %360 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = load i64, i64* @NV_C0, align 8
  %363 = icmp slt i64 %361, %362
  br i1 %363, label %364, label %367

364:                                              ; preds = %358
  %365 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %366 = call i32 @nv_wo32(%struct.nouveau_falcon* %365, i32 1560, i32 67108864)
  br label %370

367:                                              ; preds = %358
  %368 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %369 = call i32 @nv_wo32(%struct.nouveau_falcon* %368, i32 1560, i32 276)
  br label %370

370:                                              ; preds = %367, %364
  %371 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %372 = call i32 @nv_wo32(%struct.nouveau_falcon* %371, i32 284, i32 0)
  %373 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %374 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %375 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %374, i32 0, i32 5
  %376 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %375, align 8
  %377 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  %379 = ashr i32 %378, 8
  %380 = call i32 @nv_wo32(%struct.nouveau_falcon* %373, i32 272, i32 %379)
  %381 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %382 = call i32 @nv_wo32(%struct.nouveau_falcon* %381, i32 276, i32 0)
  %383 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %384 = call i32 @nv_wo32(%struct.nouveau_falcon* %383, i32 280, i32 26128)
  br label %477

385:                                              ; preds = %353
  %386 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %387 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %386, i32 0, i32 6
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %391 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %390, i32 0, i32 6
  %392 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = icmp sgt i32 %389, %393
  br i1 %394, label %405, label %395

395:                                              ; preds = %385
  %396 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %397 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %396, i32 0, i32 4
  %398 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 8
  %400 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %401 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %400, i32 0, i32 4
  %402 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = icmp sgt i32 %399, %403
  br i1 %404, label %405, label %410

405:                                              ; preds = %395, %385
  %406 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %407 = call i32 (%struct.nouveau_falcon*, i8*, ...) @nv_error(%struct.nouveau_falcon* %406, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %408 = load i32, i32* @EINVAL, align 4
  %409 = sub nsw i32 0, %408
  store i32 %409, i32* %2, align 4
  br label %586

410:                                              ; preds = %395
  %411 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %412 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = icmp slt i32 %413, 3
  br i1 %414, label %415, label %441

415:                                              ; preds = %410
  %416 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %417 = call i32 @nv_wo32(%struct.nouveau_falcon* %416, i32 4088, i32 1048576)
  store i32 0, i32* %9, align 4
  br label %418

418:                                              ; preds = %437, %415
  %419 = load i32, i32* %9, align 4
  %420 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %421 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %420, i32 0, i32 6
  %422 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %421, i32 0, i32 2
  %423 = load i32, i32* %422, align 8
  %424 = sdiv i32 %423, 4
  %425 = icmp slt i32 %419, %424
  br i1 %425, label %426, label %440

426:                                              ; preds = %418
  %427 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %428 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %429 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %428, i32 0, i32 6
  %430 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %429, i32 0, i32 1
  %431 = load i32*, i32** %430, align 8
  %432 = load i32, i32* %9, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %431, i64 %433
  %435 = load i32, i32* %434, align 4
  %436 = call i32 @nv_wo32(%struct.nouveau_falcon* %427, i32 4084, i32 %435)
  br label %437

437:                                              ; preds = %426
  %438 = load i32, i32* %9, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %9, align 4
  br label %418

440:                                              ; preds = %418
  br label %476

441:                                              ; preds = %410
  %442 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %443 = call i32 @nv_wo32(%struct.nouveau_falcon* %442, i32 384, i32 16777216)
  store i32 0, i32* %9, align 4
  br label %444

444:                                              ; preds = %472, %441
  %445 = load i32, i32* %9, align 4
  %446 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %447 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %446, i32 0, i32 6
  %448 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %447, i32 0, i32 2
  %449 = load i32, i32* %448, align 8
  %450 = sdiv i32 %449, 4
  %451 = icmp slt i32 %445, %450
  br i1 %451, label %452, label %475

452:                                              ; preds = %444
  %453 = load i32, i32* %9, align 4
  %454 = and i32 %453, 63
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %461

456:                                              ; preds = %452
  %457 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %458 = load i32, i32* %9, align 4
  %459 = ashr i32 %458, 6
  %460 = call i32 @nv_wo32(%struct.nouveau_falcon* %457, i32 392, i32 %459)
  br label %461

461:                                              ; preds = %456, %452
  %462 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %463 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %464 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %463, i32 0, i32 6
  %465 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %464, i32 0, i32 1
  %466 = load i32*, i32** %465, align 8
  %467 = load i32, i32* %9, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i32, i32* %466, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = call i32 @nv_wo32(%struct.nouveau_falcon* %462, i32 388, i32 %470)
  br label %472

472:                                              ; preds = %461
  %473 = load i32, i32* %9, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %9, align 4
  br label %444

475:                                              ; preds = %444
  br label %476

476:                                              ; preds = %475, %440
  br label %477

477:                                              ; preds = %476, %370
  %478 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %479 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = icmp slt i32 %480, 3
  br i1 %481, label %482, label %529

482:                                              ; preds = %477
  %483 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %484 = call i32 @nv_wo32(%struct.nouveau_falcon* %483, i32 4088, i32 0)
  store i32 0, i32* %9, align 4
  br label %485

485:                                              ; preds = %511, %482
  %486 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %487 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %486, i32 0, i32 5
  %488 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %487, align 8
  %489 = icmp ne %struct.nouveau_falcon* %488, null
  br i1 %489, label %498, label %490

490:                                              ; preds = %485
  %491 = load i32, i32* %9, align 4
  %492 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %493 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %492, i32 0, i32 4
  %494 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %493, i32 0, i32 2
  %495 = load i32, i32* %494, align 8
  %496 = sdiv i32 %495, 4
  %497 = icmp slt i32 %491, %496
  br label %498

498:                                              ; preds = %490, %485
  %499 = phi i1 [ false, %485 ], [ %497, %490 ]
  br i1 %499, label %500, label %514

500:                                              ; preds = %498
  %501 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %502 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %503 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %502, i32 0, i32 4
  %504 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %503, i32 0, i32 1
  %505 = load i32*, i32** %504, align 8
  %506 = load i32, i32* %9, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i32, i32* %505, i64 %507
  %509 = load i32, i32* %508, align 4
  %510 = call i32 @nv_wo32(%struct.nouveau_falcon* %501, i32 4084, i32 %509)
  br label %511

511:                                              ; preds = %500
  %512 = load i32, i32* %9, align 4
  %513 = add nsw i32 %512, 1
  store i32 %513, i32* %9, align 4
  br label %485

514:                                              ; preds = %498
  br label %515

515:                                              ; preds = %525, %514
  %516 = load i32, i32* %9, align 4
  %517 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %518 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %517, i32 0, i32 4
  %519 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 8
  %521 = icmp slt i32 %516, %520
  br i1 %521, label %522, label %528

522:                                              ; preds = %515
  %523 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %524 = call i32 @nv_wo32(%struct.nouveau_falcon* %523, i32 4084, i32 0)
  br label %525

525:                                              ; preds = %522
  %526 = load i32, i32* %9, align 4
  %527 = add nsw i32 %526, 4
  store i32 %527, i32* %9, align 4
  br label %515

528:                                              ; preds = %515
  br label %577

529:                                              ; preds = %477
  %530 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %531 = call i32 @nv_wo32(%struct.nouveau_falcon* %530, i32 448, i32 16777216)
  store i32 0, i32* %9, align 4
  br label %532

532:                                              ; preds = %558, %529
  %533 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %534 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %533, i32 0, i32 5
  %535 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %534, align 8
  %536 = icmp ne %struct.nouveau_falcon* %535, null
  br i1 %536, label %545, label %537

537:                                              ; preds = %532
  %538 = load i32, i32* %9, align 4
  %539 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %540 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %539, i32 0, i32 4
  %541 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %540, i32 0, i32 2
  %542 = load i32, i32* %541, align 8
  %543 = sdiv i32 %542, 4
  %544 = icmp slt i32 %538, %543
  br label %545

545:                                              ; preds = %537, %532
  %546 = phi i1 [ false, %532 ], [ %544, %537 ]
  br i1 %546, label %547, label %561

547:                                              ; preds = %545
  %548 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %549 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %550 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %549, i32 0, i32 4
  %551 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %550, i32 0, i32 1
  %552 = load i32*, i32** %551, align 8
  %553 = load i32, i32* %9, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds i32, i32* %552, i64 %554
  %556 = load i32, i32* %555, align 4
  %557 = call i32 @nv_wo32(%struct.nouveau_falcon* %548, i32 452, i32 %556)
  br label %558

558:                                              ; preds = %547
  %559 = load i32, i32* %9, align 4
  %560 = add nsw i32 %559, 1
  store i32 %560, i32* %9, align 4
  br label %532

561:                                              ; preds = %545
  br label %562

562:                                              ; preds = %573, %561
  %563 = load i32, i32* %9, align 4
  %564 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %565 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %564, i32 0, i32 4
  %566 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %565, i32 0, i32 0
  %567 = load i32, i32* %566, align 8
  %568 = sdiv i32 %567, 4
  %569 = icmp slt i32 %563, %568
  br i1 %569, label %570, label %576

570:                                              ; preds = %562
  %571 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %572 = call i32 @nv_wo32(%struct.nouveau_falcon* %571, i32 452, i32 0)
  br label %573

573:                                              ; preds = %570
  %574 = load i32, i32* %9, align 4
  %575 = add nsw i32 %574, 1
  store i32 %575, i32* %9, align 4
  br label %562

576:                                              ; preds = %562
  br label %577

577:                                              ; preds = %576, %528
  %578 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %579 = call i32 @nv_wo32(%struct.nouveau_falcon* %578, i32 268, i32 1)
  %580 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %581 = call i32 @nv_wo32(%struct.nouveau_falcon* %580, i32 260, i32 0)
  %582 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %583 = call i32 @nv_wo32(%struct.nouveau_falcon* %582, i32 256, i32 2)
  %584 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %585 = call i32 @nv_wo32(%struct.nouveau_falcon* %584, i32 72, i32 3)
  store i32 0, i32* %2, align 4
  br label %586

586:                                              ; preds = %577, %405, %321, %283, %253, %232, %202, %22
  %587 = load i32, i32* %2, align 4
  ret i32 %587
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_object*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nouveau_engine_init(i32*) #1

declare dso_local i32 @nv_ro32(%struct.nouveau_falcon*, i32) #1

declare dso_local i32 @nv_debug(%struct.nouveau_falcon*, i8*, ...) #1

declare dso_local i32 @nv_wait(%struct.nouveau_falcon*, i32, i32, i32) #1

declare dso_local i32 @nv_wo32(%struct.nouveau_falcon*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i8* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @nv_error(%struct.nouveau_falcon*, i8*, ...) #1

declare dso_local i32 @nouveau_gpuobj_new(i32, i32*, i32, i32, i32, %struct.nouveau_falcon**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
