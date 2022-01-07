; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwgroup.c_ccwgroup_create_from_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwgroup.c_ccwgroup_create_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ccw_driver = type { i32 }
%struct.ccwgroup_device = type { i32, i32, %struct.TYPE_15__, i32, %struct.TYPE_16__**, i32 }
%struct.TYPE_15__ = type { i32, %struct.device*, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@CCW_BUS_ID_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ccwgroup_bus_type = common dso_local global i32 0, align 4
@ccwgroup_release = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@dev_attr_ungroup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccwgroup_create_from_string(%struct.device* %0, i32 %1, %struct.ccw_driver* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ccw_driver*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ccwgroup_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ccw_driver* %2, %struct.ccw_driver** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %19 = load i32, i32* @CCW_BUS_ID_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %15, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %16, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = add i64 56, %25
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.ccwgroup_device* @kzalloc(i32 %27, i32 %28)
  store %struct.ccwgroup_device* %29, %struct.ccwgroup_device** %12, align 8
  %30 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %31 = icmp ne %struct.ccwgroup_device* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %338

35:                                               ; preds = %5
  %36 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %37 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %36, i32 0, i32 5
  %38 = call i32 @atomic_set(i32* %37, i32 0)
  %39 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %40 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %39, i32 0, i32 3
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %43 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %42, i32 0, i32 3
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %47 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %50 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %52 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 2
  store i32* @ccwgroup_bus_type, i32** %53, align 8
  %54 = load %struct.device*, %struct.device** %7, align 8
  %55 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %56 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  store %struct.device* %54, %struct.device** %57, align 8
  %58 = load i32, i32* @ccwgroup_release, align 4
  %59 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %60 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %63 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %62, i32 0, i32 2
  %64 = call i32 @device_initialize(%struct.TYPE_15__* %63)
  %65 = load i8*, i8** %11, align 8
  store i8* %65, i8** %17, align 8
  store i32 0, i32* %14, align 4
  br label %66

66:                                               ; preds = %181, %35
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i8*, i8** %17, align 8
  %72 = icmp ne i8* %71, null
  br label %73

73:                                               ; preds = %70, %66
  %74 = phi i1 [ false, %66 ], [ %72, %70 ]
  br i1 %74, label %75, label %184

75:                                               ; preds = %73
  %76 = call i32 @__get_next_bus_id(i8** %17, i8* %22)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %254

80:                                               ; preds = %75
  %81 = call i32 @__is_valid_bus_id(i8* %22)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %13, align 4
  br label %254

86:                                               ; preds = %80
  %87 = load %struct.ccw_driver*, %struct.ccw_driver** %9, align 8
  %88 = call %struct.TYPE_16__* @get_ccwdev_by_busid(%struct.ccw_driver* %87, i8* %22)
  %89 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %90 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %89, i32 0, i32 4
  %91 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %91, i64 %93
  store %struct.TYPE_16__* %88, %struct.TYPE_16__** %94, align 8
  %95 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %96 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %95, i32 0, i32 4
  %97 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %97, i64 %99
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = icmp ne %struct.TYPE_16__* %101, null
  br i1 %102, label %103, label %123

103:                                              ; preds = %86
  %104 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %105 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %104, i32 0, i32 4
  %106 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %106, i64 %108
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %115 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %114, i32 0, i32 4
  %116 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %116, i64 0
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %113, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %103, %86
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %13, align 4
  br label %254

126:                                              ; preds = %103
  %127 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %128 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %127, i32 0, i32 4
  %129 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %128, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %129, i64 %131
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @spin_lock_irq(i32 %135)
  %137 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %138 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %137, i32 0, i32 4
  %139 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %138, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %139, i64 %141
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = call %struct.ccwgroup_device* @dev_get_drvdata(%struct.TYPE_15__* %144)
  %146 = icmp ne %struct.ccwgroup_device* %145, null
  br i1 %146, label %147, label %160

147:                                              ; preds = %126
  %148 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %149 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %148, i32 0, i32 4
  %150 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %149, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %150, i64 %152
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @spin_unlock_irq(i32 %156)
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %13, align 4
  br label %254

160:                                              ; preds = %126
  %161 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %162 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %161, i32 0, i32 4
  %163 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %162, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %163, i64 %165
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %170 = call i32 @dev_set_drvdata(%struct.TYPE_15__* %168, %struct.ccwgroup_device* %169)
  %171 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %172 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %171, i32 0, i32 4
  %173 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %172, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %173, i64 %175
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @spin_unlock_irq(i32 %179)
  br label %181

181:                                              ; preds = %160
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %14, align 4
  br label %66

184:                                              ; preds = %73
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %184
  %189 = load i8*, i8** %17, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %194, label %191

191:                                              ; preds = %188
  %192 = load i32, i32* @EINVAL, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %13, align 4
  br label %254

194:                                              ; preds = %188, %184
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %194
  %199 = load i8*, i8** %17, align 8
  %200 = call i64 @strlen(i8* %199)
  %201 = icmp sgt i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %13, align 4
  br label %254

205:                                              ; preds = %198, %194
  %206 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %207 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %206, i32 0, i32 2
  %208 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %209 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %208, i32 0, i32 4
  %210 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %210, i64 0
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 0
  %214 = call i32 @dev_name(%struct.TYPE_15__* %213)
  %215 = call i32 @dev_set_name(%struct.TYPE_15__* %207, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %214)
  %216 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %217 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %216, i32 0, i32 2
  %218 = call i32 @device_add(%struct.TYPE_15__* %217)
  store i32 %218, i32* %13, align 4
  %219 = load i32, i32* %13, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %205
  br label %254

222:                                              ; preds = %205
  %223 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %224 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %223, i32 0, i32 2
  %225 = call i32 @get_device(%struct.TYPE_15__* %224)
  %226 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %227 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %226, i32 0, i32 2
  %228 = call i32 @device_create_file(%struct.TYPE_15__* %227, i32* @dev_attr_ungroup)
  store i32 %228, i32* %13, align 4
  %229 = load i32, i32* %13, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %222
  %232 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %233 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %232, i32 0, i32 2
  %234 = call i32 @device_unregister(%struct.TYPE_15__* %233)
  br label %254

235:                                              ; preds = %222
  %236 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %237 = call i32 @__ccwgroup_create_symlinks(%struct.ccwgroup_device* %236)
  store i32 %237, i32* %13, align 4
  %238 = load i32, i32* %13, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %247, label %240

240:                                              ; preds = %235
  %241 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %242 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %241, i32 0, i32 3
  %243 = call i32 @mutex_unlock(i32* %242)
  %244 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %245 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %244, i32 0, i32 2
  %246 = call i32 @put_device(%struct.TYPE_15__* %245)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %338

247:                                              ; preds = %235
  %248 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %249 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %248, i32 0, i32 2
  %250 = call i32 @device_remove_file(%struct.TYPE_15__* %249, i32* @dev_attr_ungroup)
  %251 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %252 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %251, i32 0, i32 2
  %253 = call i32 @device_unregister(%struct.TYPE_15__* %252)
  br label %254

254:                                              ; preds = %247, %231, %221, %202, %191, %147, %123, %83, %79
  store i32 0, i32* %14, align 4
  br label %255

255:                                              ; preds = %327, %254
  %256 = load i32, i32* %14, align 4
  %257 = load i32, i32* %10, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %259, label %330

259:                                              ; preds = %255
  %260 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %261 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %260, i32 0, i32 4
  %262 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %261, align 8
  %263 = load i32, i32* %14, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %262, i64 %264
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %265, align 8
  %267 = icmp ne %struct.TYPE_16__* %266, null
  br i1 %267, label %268, label %326

268:                                              ; preds = %259
  %269 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %270 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %269, i32 0, i32 4
  %271 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %270, align 8
  %272 = load i32, i32* %14, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %271, i64 %273
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @spin_lock_irq(i32 %277)
  %279 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %280 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %279, i32 0, i32 4
  %281 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %280, align 8
  %282 = load i32, i32* %14, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %281, i64 %283
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %285, i32 0, i32 0
  %287 = call %struct.ccwgroup_device* @dev_get_drvdata(%struct.TYPE_15__* %286)
  %288 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %289 = icmp eq %struct.ccwgroup_device* %287, %288
  br i1 %289, label %290, label %300

290:                                              ; preds = %268
  %291 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %292 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %291, i32 0, i32 4
  %293 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %292, align 8
  %294 = load i32, i32* %14, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %293, i64 %295
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 0
  %299 = call i32 @dev_set_drvdata(%struct.TYPE_15__* %298, %struct.ccwgroup_device* null)
  br label %300

300:                                              ; preds = %290, %268
  %301 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %302 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %301, i32 0, i32 4
  %303 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %302, align 8
  %304 = load i32, i32* %14, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %303, i64 %305
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @spin_unlock_irq(i32 %309)
  %311 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %312 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %311, i32 0, i32 4
  %313 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %312, align 8
  %314 = load i32, i32* %14, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %313, i64 %315
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 0
  %319 = call i32 @put_device(%struct.TYPE_15__* %318)
  %320 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %321 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %320, i32 0, i32 4
  %322 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %321, align 8
  %323 = load i32, i32* %14, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %322, i64 %324
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %325, align 8
  br label %326

326:                                              ; preds = %300, %259
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* %14, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %14, align 4
  br label %255

330:                                              ; preds = %255
  %331 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %332 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %331, i32 0, i32 3
  %333 = call i32 @mutex_unlock(i32* %332)
  %334 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %12, align 8
  %335 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %334, i32 0, i32 2
  %336 = call i32 @put_device(%struct.TYPE_15__* %335)
  %337 = load i32, i32* %13, align 4
  store i32 %337, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %338

338:                                              ; preds = %330, %240, %32
  %339 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %339)
  %340 = load i32, i32* %6, align 4
  ret i32 %340
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ccwgroup_device* @kzalloc(i32, i32) #2

declare dso_local i32 @atomic_set(i32*, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @device_initialize(%struct.TYPE_15__*) #2

declare dso_local i32 @__get_next_bus_id(i8**, i8*) #2

declare dso_local i32 @__is_valid_bus_id(i8*) #2

declare dso_local %struct.TYPE_16__* @get_ccwdev_by_busid(%struct.ccw_driver*, i8*) #2

declare dso_local i32 @spin_lock_irq(i32) #2

declare dso_local %struct.ccwgroup_device* @dev_get_drvdata(%struct.TYPE_15__*) #2

declare dso_local i32 @spin_unlock_irq(i32) #2

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_15__*, %struct.ccwgroup_device*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @dev_set_name(%struct.TYPE_15__*, i8*, i32) #2

declare dso_local i32 @dev_name(%struct.TYPE_15__*) #2

declare dso_local i32 @device_add(%struct.TYPE_15__*) #2

declare dso_local i32 @get_device(%struct.TYPE_15__*) #2

declare dso_local i32 @device_create_file(%struct.TYPE_15__*, i32*) #2

declare dso_local i32 @device_unregister(%struct.TYPE_15__*) #2

declare dso_local i32 @__ccwgroup_create_symlinks(%struct.ccwgroup_device*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @put_device(%struct.TYPE_15__*) #2

declare dso_local i32 @device_remove_file(%struct.TYPE_15__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
