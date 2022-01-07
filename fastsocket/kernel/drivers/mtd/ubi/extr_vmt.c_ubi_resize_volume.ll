; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_vmt.c_ubi_resize_volume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_vmt.c_ubi_resize_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { %struct.ubi_volume* }
%struct.ubi_volume = type { i32, i32, i64, i32, i32, i32*, i64, i64, i64, %struct.ubi_device* }
%struct.ubi_device = type { i32, i32, i32, i32, i32, i32*, i32, i64 }
%struct.ubi_vtbl_record = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"re-size device %d, volume %d to from %d to %d PEBs\00", align 1
@UBI_STATIC_VOLUME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"too small size %d, %d LEBs contain data\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBI_LEB_UNMAPPED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"not enough PEBs: requested %d, available %d\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"reserve more %d PEBs\00", align 1
@UBI_DYNAMIC_VOLUME = common dso_local global i64 0, align 8
@UBI_VOLUME_RESIZED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"check failed while re-sizing volume %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_resize_volume(%struct.ubi_volume_desc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_volume_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ubi_volume*, align 8
  %11 = alloca %struct.ubi_device*, align 8
  %12 = alloca %struct.ubi_vtbl_record, align 4
  %13 = alloca i32, align 4
  store %struct.ubi_volume_desc* %0, %struct.ubi_volume_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %4, align 8
  %15 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %14, i32 0, i32 0
  %16 = load %struct.ubi_volume*, %struct.ubi_volume** %15, align 8
  store %struct.ubi_volume* %16, %struct.ubi_volume** %10, align 8
  %17 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %18 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %17, i32 0, i32 9
  %19 = load %struct.ubi_device*, %struct.ubi_device** %18, align 8
  store %struct.ubi_device* %19, %struct.ubi_device** %11, align 8
  %20 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %21 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %13, align 4
  %23 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %24 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EROFS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %375

30:                                               ; preds = %2
  %31 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %32 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %36 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @dbg_gen(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %37, i32 %38)
  %40 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %41 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @UBI_STATIC_VOLUME, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %30
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %48 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %54 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, i32, ...) @dbg_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %375

59:                                               ; preds = %45, %30
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %62 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %375

66:                                               ; preds = %59
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 4
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i32* @kmalloc(i32 %70, i32 %71)
  store i32* %72, i32** %9, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %375

78:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %89, %78
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load i32, i32* @UBI_LEB_UNMAPPED, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %84, i32* %88, align 4
  br label %89

89:                                               ; preds = %83
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %79

92:                                               ; preds = %79
  %93 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %94 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %93, i32 0, i32 4
  %95 = call i32 @spin_lock(i32* %94)
  %96 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %97 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %98, 1
  br i1 %99, label %100, label %106

100:                                              ; preds = %92
  %101 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %102 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %101, i32 0, i32 4
  %103 = call i32 @spin_unlock(i32* %102)
  %104 = load i32, i32* @EBUSY, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %7, align 4
  br label %371

106:                                              ; preds = %92
  %107 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %108 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %107, i32 0, i32 4
  %109 = call i32 @spin_unlock(i32* %108)
  %110 = load i32, i32* %5, align 4
  %111 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %112 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %110, %113
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %180

117:                                              ; preds = %106
  %118 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %119 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %118, i32 0, i32 4
  %120 = call i32 @spin_lock(i32* %119)
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %123 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp sgt i32 %121, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %117
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %129 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (i8*, i32, ...) @dbg_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %127, i32 %130)
  %132 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %133 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %132, i32 0, i32 4
  %134 = call i32 @spin_unlock(i32* %133)
  %135 = load i32, i32* @ENOSPC, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %7, align 4
  br label %371

137:                                              ; preds = %117
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %140 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sub nsw i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %145 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, %143
  store i32 %147, i32* %145, align 4
  store i32 0, i32* %6, align 4
  br label %148

148:                                              ; preds = %166, %137
  %149 = load i32, i32* %6, align 4
  %150 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %151 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %169

154:                                              ; preds = %148
  %155 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %156 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %155, i32 0, i32 5
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %9, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %161, i32* %165, align 4
  br label %166

166:                                              ; preds = %154
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %148

169:                                              ; preds = %148
  %170 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %171 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %170, i32 0, i32 5
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @kfree(i32* %172)
  %174 = load i32*, i32** %9, align 8
  %175 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %176 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %175, i32 0, i32 5
  store i32* %174, i32** %176, align 8
  %177 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %178 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %177, i32 0, i32 4
  %179 = call i32 @spin_unlock(i32* %178)
  br label %180

180:                                              ; preds = %169, %106
  %181 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %182 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %181, i32 0, i32 5
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = call i32 @memcpy(%struct.ubi_vtbl_record* %12, i32* %186, i32 4)
  %188 = load i32, i32* %5, align 4
  %189 = call i32 @cpu_to_be32(i32 %188)
  %190 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %12, i32 0, i32 0
  store i32 %189, i32* %190, align 4
  %191 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %192 = load i32, i32* %13, align 4
  %193 = call i32 @ubi_change_vtbl_record(%struct.ubi_device* %191, i32 %192, %struct.ubi_vtbl_record* %12)
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %180
  br label %350

197:                                              ; preds = %180
  %198 = load i32, i32* %8, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %309

200:                                              ; preds = %197
  store i32 0, i32* %6, align 4
  br label %201

201:                                              ; preds = %217, %200
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* %8, align 4
  %204 = sub nsw i32 0, %203
  %205 = icmp slt i32 %202, %204
  br i1 %205, label %206, label %220

206:                                              ; preds = %201
  %207 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %208 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %209 = load i32, i32* %5, align 4
  %210 = load i32, i32* %6, align 4
  %211 = add nsw i32 %209, %210
  %212 = call i32 @ubi_eba_unmap_leb(%struct.ubi_device* %207, %struct.ubi_volume* %208, i32 %211)
  store i32 %212, i32* %7, align 4
  %213 = load i32, i32* %7, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %206
  br label %350

216:                                              ; preds = %206
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %6, align 4
  br label %201

220:                                              ; preds = %201
  %221 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %222 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %221, i32 0, i32 4
  %223 = call i32 @spin_lock(i32* %222)
  %224 = load i32, i32* %8, align 4
  %225 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %226 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, %224
  store i32 %228, i32* %226, align 4
  %229 = load i32, i32* %8, align 4
  %230 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %231 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = sub nsw i32 %232, %229
  store i32 %233, i32* %231, align 8
  %234 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %235 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %238 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = sub nsw i32 %236, %239
  store i32 %240, i32* %8, align 4
  %241 = load i32, i32* %8, align 4
  %242 = icmp sgt i32 %241, 0
  br i1 %242, label %243, label %278

243:                                              ; preds = %220
  %244 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %245 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %8, align 4
  %248 = icmp sge i32 %246, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %243
  %250 = load i32, i32* %8, align 4
  br label %255

251:                                              ; preds = %243
  %252 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %253 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  br label %255

255:                                              ; preds = %251, %249
  %256 = phi i32 [ %250, %249 ], [ %254, %251 ]
  store i32 %256, i32* %8, align 4
  %257 = load i32, i32* %8, align 4
  %258 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %259 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = sub nsw i32 %260, %257
  store i32 %261, i32* %259, align 8
  %262 = load i32, i32* %8, align 4
  %263 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %264 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, %262
  store i32 %266, i32* %264, align 4
  %267 = load i32, i32* %8, align 4
  %268 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %269 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %270, %267
  store i32 %271, i32* %269, align 4
  %272 = load i32, i32* %8, align 4
  %273 = icmp sgt i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %255
  %275 = load i32, i32* %8, align 4
  %276 = call i32 @ubi_msg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %275)
  br label %277

277:                                              ; preds = %274, %255
  br label %278

278:                                              ; preds = %277, %220
  store i32 0, i32* %6, align 4
  br label %279

279:                                              ; preds = %295, %278
  %280 = load i32, i32* %6, align 4
  %281 = load i32, i32* %5, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %298

283:                                              ; preds = %279
  %284 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %285 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %284, i32 0, i32 5
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %6, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = load i32*, i32** %9, align 8
  %292 = load i32, i32* %6, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  store i32 %290, i32* %294, align 4
  br label %295

295:                                              ; preds = %283
  %296 = load i32, i32* %6, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %6, align 4
  br label %279

298:                                              ; preds = %279
  %299 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %300 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %299, i32 0, i32 5
  %301 = load i32*, i32** %300, align 8
  %302 = call i32 @kfree(i32* %301)
  %303 = load i32*, i32** %9, align 8
  %304 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %305 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %304, i32 0, i32 5
  store i32* %303, i32** %305, align 8
  %306 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %307 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %306, i32 0, i32 4
  %308 = call i32 @spin_unlock(i32* %307)
  br label %309

309:                                              ; preds = %298, %197
  %310 = load i32, i32* %5, align 4
  %311 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %312 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %311, i32 0, i32 1
  store i32 %310, i32* %312, align 4
  %313 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %314 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %313, i32 0, i32 2
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @UBI_DYNAMIC_VOLUME, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %337

318:                                              ; preds = %309
  %319 = load i32, i32* %5, align 4
  %320 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %321 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %320, i32 0, i32 3
  store i32 %319, i32* %321, align 8
  %322 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %323 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %322, i32 0, i32 7
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %326 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %325, i32 0, i32 6
  store i64 %324, i64* %326, align 8
  %327 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %328 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 8
  %330 = sext i32 %329 to i64
  %331 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %332 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %331, i32 0, i32 7
  %333 = load i64, i64* %332, align 8
  %334 = mul nsw i64 %330, %333
  %335 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %336 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %335, i32 0, i32 8
  store i64 %334, i64* %336, align 8
  br label %337

337:                                              ; preds = %318, %309
  %338 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %339 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %340 = load i32, i32* @UBI_VOLUME_RESIZED, align 4
  %341 = call i32 @ubi_volume_notify(%struct.ubi_device* %338, %struct.ubi_volume* %339, i32 %340)
  %342 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %343 = call i64 @paranoid_check_volumes(%struct.ubi_device* %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %337
  %346 = load i32, i32* %13, align 4
  %347 = call i32 (i8*, i32, ...) @dbg_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %346)
  br label %348

348:                                              ; preds = %345, %337
  %349 = load i32, i32* %7, align 4
  store i32 %349, i32* %3, align 4
  br label %375

350:                                              ; preds = %215, %196
  %351 = load i32, i32* %8, align 4
  %352 = icmp sgt i32 %351, 0
  br i1 %352, label %353, label %370

353:                                              ; preds = %350
  %354 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %355 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %354, i32 0, i32 4
  %356 = call i32 @spin_lock(i32* %355)
  %357 = load i32, i32* %8, align 4
  %358 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %359 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = sub nsw i32 %360, %357
  store i32 %361, i32* %359, align 4
  %362 = load i32, i32* %8, align 4
  %363 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %364 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = add nsw i32 %365, %362
  store i32 %366, i32* %364, align 8
  %367 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %368 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %367, i32 0, i32 4
  %369 = call i32 @spin_unlock(i32* %368)
  br label %370

370:                                              ; preds = %353, %350
  br label %371

371:                                              ; preds = %370, %126, %100
  %372 = load i32*, i32** %9, align 8
  %373 = call i32 @kfree(i32* %372)
  %374 = load i32, i32* %7, align 4
  store i32 %374, i32* %3, align 4
  br label %375

375:                                              ; preds = %371, %348, %75, %65, %51, %27
  %376 = load i32, i32* %3, align 4
  ret i32 %376
}

declare dso_local i32 @dbg_gen(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dbg_err(i8*, i32, ...) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memcpy(%struct.ubi_vtbl_record*, i32*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ubi_change_vtbl_record(%struct.ubi_device*, i32, %struct.ubi_vtbl_record*) #1

declare dso_local i32 @ubi_eba_unmap_leb(%struct.ubi_device*, %struct.ubi_volume*, i32) #1

declare dso_local i32 @ubi_msg(i8*, i32) #1

declare dso_local i32 @ubi_volume_notify(%struct.ubi_device*, %struct.ubi_volume*, i32) #1

declare dso_local i64 @paranoid_check_volumes(%struct.ubi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
