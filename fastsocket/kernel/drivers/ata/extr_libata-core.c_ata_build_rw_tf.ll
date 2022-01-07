; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_build_rw_tf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_build_rw_tf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ata_device = type { i32, i32, i32 }

@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_TAG_INTERNAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@ATA_PROT_NCQ = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@ATA_CMD_FPDMA_WRITE = common dso_local global i32 0, align 4
@ATA_CMD_FPDMA_READ = common dso_local global i32 0, align 4
@ATA_TFLAG_FUA = common dso_local global i32 0, align 4
@ATA_DFLAG_LBA = common dso_local global i32 0, align 4
@ATA_DFLAG_LBA48 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATA_LBA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"block %u track %u cyl %u head %u sect %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_build_rw_tf(%struct.ata_taskfile* %0, %struct.ata_device* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_taskfile*, align 8
  %9 = alloca %struct.ata_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ata_taskfile* %0, %struct.ata_taskfile** %8, align 8
  store %struct.ata_device* %1, %struct.ata_device** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %19 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %22 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %27 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  %31 = call i64 @ata_ncq_enabled(%struct.ata_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %130

33:                                               ; preds = %6
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @ATA_TAG_INTERNAL, align 4
  %36 = icmp ne i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @likely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %130

40:                                               ; preds = %33
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i64 @lba_48_ok(i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ERANGE, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %321

48:                                               ; preds = %40
  %49 = load i32, i32* @ATA_PROT_NCQ, align 4
  %50 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %51 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %50, i32 0, i32 13
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @ATA_TFLAG_LBA, align 4
  %53 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %56 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %60 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %48
  %66 = load i32, i32* @ATA_CMD_FPDMA_WRITE, align 4
  %67 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %68 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %67, i32 0, i32 12
  store i32 %66, i32* %68, align 4
  br label %73

69:                                               ; preds = %48
  %70 = load i32, i32* @ATA_CMD_FPDMA_READ, align 4
  %71 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %72 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %71, i32 0, i32 12
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i32, i32* %13, align 4
  %75 = shl i32 %74, 3
  %76 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %77 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %11, align 4
  %79 = ashr i32 %78, 8
  %80 = and i32 %79, 255
  %81 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %82 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %11, align 4
  %84 = and i32 %83, 255
  %85 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %86 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %10, align 4
  %88 = ashr i32 %87, 40
  %89 = and i32 %88, 255
  %90 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %91 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %10, align 4
  %93 = ashr i32 %92, 32
  %94 = and i32 %93, 255
  %95 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %96 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %10, align 4
  %98 = ashr i32 %97, 24
  %99 = and i32 %98, 255
  %100 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %101 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %10, align 4
  %103 = ashr i32 %102, 16
  %104 = and i32 %103, 255
  %105 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %106 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %105, i32 0, i32 7
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %10, align 4
  %108 = ashr i32 %107, 8
  %109 = and i32 %108, 255
  %110 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %111 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %110, i32 0, i32 8
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %10, align 4
  %113 = and i32 %112, 255
  %114 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %115 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %114, i32 0, i32 9
  store i32 %113, i32* %115, align 4
  %116 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %117 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %116, i32 0, i32 10
  store i32 64, i32* %117, align 4
  %118 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %119 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @ATA_TFLAG_FUA, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %73
  %125 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %126 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %125, i32 0, i32 10
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, 128
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %124, %73
  br label %320

130:                                              ; preds = %33, %6
  %131 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  %132 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ATA_DFLAG_LBA, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %235

137:                                              ; preds = %130
  %138 = load i32, i32* @ATA_TFLAG_LBA, align 4
  %139 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %140 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %11, align 4
  %145 = call i64 @lba_28_ok(i32 %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %137
  %148 = load i32, i32* %10, align 4
  %149 = ashr i32 %148, 24
  %150 = and i32 %149, 15
  %151 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %152 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %151, i32 0, i32 10
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %200

155:                                              ; preds = %137
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %11, align 4
  %158 = call i64 @lba_48_ok(i32 %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %196

160:                                              ; preds = %155
  %161 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  %162 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @ATA_DFLAG_LBA48, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %160
  %168 = load i32, i32* @ERANGE, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %7, align 4
  br label %321

170:                                              ; preds = %160
  %171 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %172 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %173 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  %176 = load i32, i32* %11, align 4
  %177 = ashr i32 %176, 8
  %178 = and i32 %177, 255
  %179 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %180 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %179, i32 0, i32 11
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* %10, align 4
  %182 = ashr i32 %181, 40
  %183 = and i32 %182, 255
  %184 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %185 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* %10, align 4
  %187 = ashr i32 %186, 32
  %188 = and i32 %187, 255
  %189 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %190 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %189, i32 0, i32 5
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* %10, align 4
  %192 = ashr i32 %191, 24
  %193 = and i32 %192, 255
  %194 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %195 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %194, i32 0, i32 6
  store i32 %193, i32* %195, align 4
  br label %199

196:                                              ; preds = %155
  %197 = load i32, i32* @ERANGE, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %7, align 4
  br label %321

199:                                              ; preds = %170
  br label %200

200:                                              ; preds = %199, %147
  %201 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %202 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  %203 = call i64 @ata_rwcmd_protocol(%struct.ata_taskfile* %201, %struct.ata_device* %202)
  %204 = icmp slt i64 %203, 0
  %205 = zext i1 %204 to i32
  %206 = call i64 @unlikely(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %200
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %7, align 4
  br label %321

211:                                              ; preds = %200
  %212 = load i32, i32* %11, align 4
  %213 = and i32 %212, 255
  %214 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %215 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 4
  %216 = load i32, i32* %10, align 4
  %217 = ashr i32 %216, 16
  %218 = and i32 %217, 255
  %219 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %220 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %219, i32 0, i32 7
  store i32 %218, i32* %220, align 4
  %221 = load i32, i32* %10, align 4
  %222 = ashr i32 %221, 8
  %223 = and i32 %222, 255
  %224 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %225 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %224, i32 0, i32 8
  store i32 %223, i32* %225, align 4
  %226 = load i32, i32* %10, align 4
  %227 = and i32 %226, 255
  %228 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %229 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %228, i32 0, i32 9
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* @ATA_LBA, align 4
  %231 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %232 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %231, i32 0, i32 10
  %233 = load i32, i32* %232, align 4
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 4
  br label %319

235:                                              ; preds = %130
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* %11, align 4
  %238 = call i64 @lba_28_ok(i32 %236, i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %235
  %241 = load i32, i32* @ERANGE, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %7, align 4
  br label %321

243:                                              ; preds = %235
  %244 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %245 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  %246 = call i64 @ata_rwcmd_protocol(%struct.ata_taskfile* %244, %struct.ata_device* %245)
  %247 = icmp slt i64 %246, 0
  %248 = zext i1 %247 to i32
  %249 = call i64 @unlikely(i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %243
  %252 = load i32, i32* @EINVAL, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %7, align 4
  br label %321

254:                                              ; preds = %243
  %255 = load i32, i32* %10, align 4
  %256 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  %257 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = sdiv i32 %255, %258
  store i32 %259, i32* %17, align 4
  %260 = load i32, i32* %17, align 4
  %261 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  %262 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = sdiv i32 %260, %263
  store i32 %264, i32* %16, align 4
  %265 = load i32, i32* %17, align 4
  %266 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  %267 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = srem i32 %265, %268
  store i32 %269, i32* %15, align 4
  %270 = load i32, i32* %10, align 4
  %271 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  %272 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = srem i32 %270, %273
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %14, align 4
  %276 = load i32, i32* %10, align 4
  %277 = load i32, i32* %17, align 4
  %278 = load i32, i32* %16, align 4
  %279 = load i32, i32* %15, align 4
  %280 = load i32, i32* %14, align 4
  %281 = call i32 @DPRINTK(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %276, i32 %277, i32 %278, i32 %279, i32 %280)
  %282 = load i32, i32* %16, align 4
  %283 = ashr i32 %282, 16
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %296, label %285

285:                                              ; preds = %254
  %286 = load i32, i32* %15, align 4
  %287 = ashr i32 %286, 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %296, label %289

289:                                              ; preds = %285
  %290 = load i32, i32* %14, align 4
  %291 = ashr i32 %290, 8
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %289
  %294 = load i32, i32* %14, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %293, %289, %285, %254
  %297 = load i32, i32* @ERANGE, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %7, align 4
  br label %321

299:                                              ; preds = %293
  %300 = load i32, i32* %11, align 4
  %301 = and i32 %300, 255
  %302 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %303 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %302, i32 0, i32 1
  store i32 %301, i32* %303, align 4
  %304 = load i32, i32* %14, align 4
  %305 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %306 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %305, i32 0, i32 9
  store i32 %304, i32* %306, align 4
  %307 = load i32, i32* %16, align 4
  %308 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %309 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %308, i32 0, i32 8
  store i32 %307, i32* %309, align 4
  %310 = load i32, i32* %16, align 4
  %311 = ashr i32 %310, 8
  %312 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %313 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %312, i32 0, i32 7
  store i32 %311, i32* %313, align 4
  %314 = load i32, i32* %15, align 4
  %315 = load %struct.ata_taskfile*, %struct.ata_taskfile** %8, align 8
  %316 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %315, i32 0, i32 10
  %317 = load i32, i32* %316, align 4
  %318 = or i32 %317, %314
  store i32 %318, i32* %316, align 4
  br label %319

319:                                              ; preds = %299, %211
  br label %320

320:                                              ; preds = %319, %129
  store i32 0, i32* %7, align 4
  br label %321

321:                                              ; preds = %320, %296, %251, %240, %208, %196, %167, %45
  %322 = load i32, i32* %7, align 4
  ret i32 %322
}

declare dso_local i64 @ata_ncq_enabled(%struct.ata_device*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @lba_48_ok(i32, i32) #1

declare dso_local i64 @lba_28_ok(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ata_rwcmd_protocol(%struct.ata_taskfile*, %struct.ata_device*) #1

declare dso_local i32 @DPRINTK(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
