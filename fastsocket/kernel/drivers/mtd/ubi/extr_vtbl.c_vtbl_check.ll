; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_vtbl.c_vtbl_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_vtbl.c_vtbl_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32, i32 }
%struct.ubi_vtbl_record = type { i32, i32, i8*, i32, i32, i32, i32, i32 }

@UBI_CRC32_INIT = common dso_local global i32 0, align 4
@UBI_VTBL_RECORD_SIZE_CRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"bad CRC at record %u: %#08x, not %#08x\00", align 1
@empty_vtbl_record = common dso_local global i32 0, align 4
@UBI_VTBL_RECORD_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"bad data_pad, has to be %d\00", align 1
@UBI_VID_DYNAMIC = common dso_local global i32 0, align 4
@UBI_VID_STATIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"too large reserved_pebs %d, good PEBs %d\00", align 1
@UBI_VOL_NAME_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"volumes %d and %d have the same name \22%s\22\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"volume table check failed: record %d, error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_vtbl_record*)* @vtbl_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtbl_check(%struct.ubi_device* %0, %struct.ubi_vtbl_record* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_vtbl_record*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_vtbl_record* %1, %struct.ubi_vtbl_record** %5, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %217, %2
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %22 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %220

25:                                               ; preds = %19
  %26 = call i32 (...) @cond_resched()
  %27 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %27, i64 %29
  %31 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @be32_to_cpu(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %34, i64 %36
  %38 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be32_to_cpu(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %41, i64 %43
  %45 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @be32_to_cpu(i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %48, i64 %50
  %52 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %13, align 4
  %54 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %54, i64 %56
  %58 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %11, align 4
  %60 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %60, i64 %62
  %64 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @be16_to_cpu(i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %67, i64 %69
  %71 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  store i8* %73, i8** %16, align 8
  %74 = load i32, i32* @UBI_CRC32_INIT, align 4
  %75 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %75, i64 %77
  %79 = load i32, i32* @UBI_VTBL_RECORD_SIZE_CRC, align 4
  %80 = call i32 @crc32(i32 %74, %struct.ubi_vtbl_record* %78, i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %81, i64 %83
  %85 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @be32_to_cpu(i32 %86)
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %25
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %93, i64 %95
  %97 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @be32_to_cpu(i32 %98)
  %100 = call i32 (i8*, i32, i32, ...) @ubi_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92, i32 %99)
  %101 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %101, i64 %103
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @ubi_dbg_dump_vtbl_record(%struct.ubi_vtbl_record* %104, i32 %105)
  store i32 1, i32* %3, align 4
  br label %319

107:                                              ; preds = %25
  %108 = load i32, i32* %8, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %111, i64 %113
  %115 = load i32, i32* @UBI_VTBL_RECORD_SIZE, align 4
  %116 = call i64 @memcmp(%struct.ubi_vtbl_record* %114, i32* @empty_vtbl_record, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  store i32 2, i32* %14, align 4
  br label %307

119:                                              ; preds = %110
  br label %217

120:                                              ; preds = %107
  %121 = load i32, i32* %8, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %132, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %9, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %10, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %12, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129, %126, %123, %120
  store i32 3, i32* %14, align 4
  br label %307

133:                                              ; preds = %129
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %136 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %134, %137
  br i1 %138, label %142, label %139

139:                                              ; preds = %133
  %140 = load i32, i32* %9, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139, %133
  store i32 4, i32* %14, align 4
  br label %307

143:                                              ; preds = %139
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %146 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = sub nsw i32 %147, 1
  %149 = and i32 %144, %148
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 1
  br i1 %151, label %152, label %156

152:                                              ; preds = %143
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i32 5, i32* %14, align 4
  br label %307

156:                                              ; preds = %152, %143
  %157 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %158 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %9, align 4
  %161 = srem i32 %159, %160
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %156
  %166 = load i32, i32* %7, align 4
  %167 = call i32 (i8*, i32, ...) @dbg_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %166)
  store i32 6, i32* %14, align 4
  br label %307

168:                                              ; preds = %156
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @UBI_VID_DYNAMIC, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %168
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* @UBI_VID_STATIC, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  store i32 7, i32* %14, align 4
  br label %307

177:                                              ; preds = %172, %168
  %178 = load i32, i32* %13, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load i32, i32* %13, align 4
  %182 = icmp ne i32 %181, 1
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  store i32 8, i32* %14, align 4
  br label %307

184:                                              ; preds = %180, %177
  %185 = load i32, i32* %8, align 4
  %186 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %187 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = icmp sgt i32 %185, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %184
  %191 = load i32, i32* %8, align 4
  %192 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %193 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i8*, i32, ...) @dbg_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %191, i32 %194)
  store i32 9, i32* %14, align 4
  br label %307

196:                                              ; preds = %184
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* @UBI_VOL_NAME_MAX, align 4
  %199 = icmp sgt i32 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  store i32 10, i32* %14, align 4
  br label %307

201:                                              ; preds = %196
  %202 = load i8*, i8** %16, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 0
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %201
  store i32 11, i32* %14, align 4
  br label %307

208:                                              ; preds = %201
  %209 = load i32, i32* %12, align 4
  %210 = load i8*, i8** %16, align 8
  %211 = load i32, i32* %12, align 4
  %212 = add nsw i32 %211, 1
  %213 = call i32 @strnlen(i8* %210, i32 %212)
  %214 = icmp ne i32 %209, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %208
  store i32 12, i32* %14, align 4
  br label %307

216:                                              ; preds = %208
  br label %217

217:                                              ; preds = %216, %119
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %6, align 4
  br label %19

220:                                              ; preds = %19
  store i32 0, i32* %6, align 4
  br label %221

221:                                              ; preds = %303, %220
  %222 = load i32, i32* %6, align 4
  %223 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %224 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = sub nsw i32 %225, 1
  %227 = icmp slt i32 %222, %226
  br i1 %227, label %228, label %306

228:                                              ; preds = %221
  %229 = load i32, i32* %6, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %7, align 4
  br label %231

231:                                              ; preds = %299, %228
  %232 = load i32, i32* %7, align 4
  %233 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %234 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = icmp slt i32 %232, %235
  br i1 %236, label %237, label %302

237:                                              ; preds = %231
  %238 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %238, i64 %240
  %242 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @be16_to_cpu(i32 %243)
  store i32 %244, i32* %17, align 4
  %245 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %246 = load i32, i32* %7, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %245, i64 %247
  %249 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @be16_to_cpu(i32 %250)
  store i32 %251, i32* %18, align 4
  %252 = load i32, i32* %17, align 4
  %253 = icmp sgt i32 %252, 0
  br i1 %253, label %254, label %298

254:                                              ; preds = %237
  %255 = load i32, i32* %17, align 4
  %256 = load i32, i32* %18, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %298

258:                                              ; preds = %254
  %259 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %260 = load i32, i32* %6, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %259, i64 %261
  %263 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %262, i32 0, i32 2
  %264 = load i8*, i8** %263, align 8
  %265 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %266 = load i32, i32* %7, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %265, i64 %267
  %269 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %268, i32 0, i32 2
  %270 = load i8*, i8** %269, align 8
  %271 = load i32, i32* %17, align 4
  %272 = call i32 @strncmp(i8* %264, i8* %270, i32 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %298, label %274

274:                                              ; preds = %258
  %275 = load i32, i32* %6, align 4
  %276 = load i32, i32* %7, align 4
  %277 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %278 = load i32, i32* %6, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %277, i64 %279
  %281 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %280, i32 0, i32 2
  %282 = load i8*, i8** %281, align 8
  %283 = call i32 (i8*, i32, i32, ...) @ubi_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %275, i32 %276, i8* %282)
  %284 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %285 = load i32, i32* %6, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %284, i64 %286
  %288 = load i32, i32* %6, align 4
  %289 = call i32 @ubi_dbg_dump_vtbl_record(%struct.ubi_vtbl_record* %287, i32 %288)
  %290 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %291 = load i32, i32* %7, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %290, i64 %292
  %294 = load i32, i32* %7, align 4
  %295 = call i32 @ubi_dbg_dump_vtbl_record(%struct.ubi_vtbl_record* %293, i32 %294)
  %296 = load i32, i32* @EINVAL, align 4
  %297 = sub nsw i32 0, %296
  store i32 %297, i32* %3, align 4
  br label %319

298:                                              ; preds = %258, %254, %237
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %7, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %7, align 4
  br label %231

302:                                              ; preds = %231
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %6, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %6, align 4
  br label %221

306:                                              ; preds = %221
  store i32 0, i32* %3, align 4
  br label %319

307:                                              ; preds = %215, %207, %200, %190, %183, %176, %165, %155, %142, %132, %118
  %308 = load i32, i32* %6, align 4
  %309 = load i32, i32* %14, align 4
  %310 = call i32 (i8*, i32, i32, ...) @ubi_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %308, i32 %309)
  %311 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %5, align 8
  %312 = load i32, i32* %6, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %311, i64 %313
  %315 = load i32, i32* %6, align 4
  %316 = call i32 @ubi_dbg_dump_vtbl_record(%struct.ubi_vtbl_record* %314, i32 %315)
  %317 = load i32, i32* @EINVAL, align 4
  %318 = sub nsw i32 0, %317
  store i32 %318, i32* %3, align 4
  br label %319

319:                                              ; preds = %307, %306, %274, %90
  %320 = load i32, i32* %3, align 4
  ret i32 %320
}

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @crc32(i32, %struct.ubi_vtbl_record*, i32) #1

declare dso_local i32 @ubi_err(i8*, i32, i32, ...) #1

declare dso_local i32 @ubi_dbg_dump_vtbl_record(%struct.ubi_vtbl_record*, i32) #1

declare dso_local i64 @memcmp(%struct.ubi_vtbl_record*, i32*, i32) #1

declare dso_local i32 @dbg_err(i8*, i32, ...) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
