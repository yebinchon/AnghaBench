; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio.c_mmc_sdio_init_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio.c_mmc_sdio_init_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, %struct.mmc_card*, i32 }
%struct.mmc_card = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64, i64 }

@use_spi_crc = common dso_local global i32 0, align 4
@MMC_TYPE_SD_COMBO = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@MMC_TYPE_SDIO = common dso_local global i64 0, align 8
@MMC_BUSMODE_PUSHPULL = common dso_local global i32 0, align 4
@sd_type = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32, %struct.mmc_card*)* @mmc_sdio_init_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_sdio_init_card(%struct.mmc_host* %0, i32 %1, %struct.mmc_card* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_card*, align 8
  %8 = alloca %struct.mmc_card*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mmc_card* %2, %struct.mmc_card** %7, align 8
  %11 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %12 = icmp ne %struct.mmc_host* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %17 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %24 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %25 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mmc_send_io_op_cond(%struct.mmc_host* %23, i32 %26, i32* %6)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %292

31:                                               ; preds = %3
  %32 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %33 = call i64 @mmc_host_is_spi(%struct.mmc_host* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %37 = load i32, i32* @use_spi_crc, align 4
  %38 = call i32 @mmc_spi_set_crc(%struct.mmc_host* %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %292

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %31
  %44 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %45 = call %struct.mmc_card* @mmc_alloc_card(%struct.mmc_host* %44, i32* null)
  store %struct.mmc_card* %45, %struct.mmc_card** %8, align 8
  %46 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %47 = call i64 @IS_ERR(%struct.mmc_card* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %51 = call i32 @PTR_ERR(%struct.mmc_card* %50)
  store i32 %51, i32* %9, align 4
  br label %292

52:                                               ; preds = %43
  %53 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %54 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %55 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %56, %57
  %59 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %60 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @mmc_sd_get_cid(%struct.mmc_host* %53, i32 %58, i32 %61, i32* null)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %92, label %65

65:                                               ; preds = %52
  %66 = load i64, i64* @MMC_TYPE_SD_COMBO, align 8
  %67 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %68 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %70 = icmp ne %struct.mmc_card* %69, null
  br i1 %70, label %71, label %91

71:                                               ; preds = %65
  %72 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %73 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @MMC_TYPE_SD_COMBO, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %86, label %77

77:                                               ; preds = %71
  %78 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %79 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %82 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @memcmp(i32 %80, i32 %83, i32 4)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %77, %71
  %87 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %88 = call i32 @mmc_remove_card(%struct.mmc_card* %87)
  %89 = load i32, i32* @ENOENT, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %294

91:                                               ; preds = %77, %65
  br label %110

92:                                               ; preds = %52
  %93 = load i64, i64* @MMC_TYPE_SDIO, align 8
  %94 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %95 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %97 = icmp ne %struct.mmc_card* %96, null
  br i1 %97, label %98, label %109

98:                                               ; preds = %92
  %99 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %100 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @MMC_TYPE_SDIO, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %106 = call i32 @mmc_remove_card(%struct.mmc_card* %105)
  %107 = load i32, i32* @ENOENT, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %294

109:                                              ; preds = %98, %92
  br label %110

110:                                              ; preds = %109, %91
  %111 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %112 = call i64 @mmc_host_is_spi(%struct.mmc_host* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %126, label %114

114:                                              ; preds = %110
  %115 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %116 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %117 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %116, i32 0, i32 4
  %118 = call i32 @mmc_send_relative_addr(%struct.mmc_host* %115, i32* %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %285

122:                                              ; preds = %114
  %123 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %124 = load i32, i32* @MMC_BUSMODE_PUSHPULL, align 4
  %125 = call i32 @mmc_set_bus_mode(%struct.mmc_host* %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %110
  %127 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %128 = icmp ne %struct.mmc_card* %127, null
  br i1 %128, label %146, label %129

129:                                              ; preds = %126
  %130 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %131 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @MMC_TYPE_SD_COMBO, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %129
  %136 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %137 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %138 = call i32 @mmc_sd_get_csd(%struct.mmc_host* %136, %struct.mmc_card* %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i32, i32* %9, align 4
  store i32 %142, i32* %4, align 4
  br label %294

143:                                              ; preds = %135
  %144 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %145 = call i32 @mmc_decode_cid(%struct.mmc_card* %144)
  br label %146

146:                                              ; preds = %143, %129, %126
  %147 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %148 = call i64 @mmc_host_is_spi(%struct.mmc_host* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %146
  %151 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %152 = call i32 @mmc_select_card(%struct.mmc_card* %151)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %285

156:                                              ; preds = %150
  br label %157

157:                                              ; preds = %156, %146
  %158 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %159 = call i32 @sdio_read_cccr(%struct.mmc_card* %158)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %285

163:                                              ; preds = %157
  %164 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %165 = call i32 @sdio_read_common_cis(%struct.mmc_card* %164)
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %285

169:                                              ; preds = %163
  %170 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %171 = icmp ne %struct.mmc_card* %170, null
  br i1 %171, label %172, label %204

172:                                              ; preds = %169
  %173 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %174 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %178 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %176, %180
  br i1 %181, label %182, label %192

182:                                              ; preds = %172
  %183 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %184 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %188 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %186, %190
  br label %192

192:                                              ; preds = %182, %172
  %193 = phi i1 [ false, %172 ], [ %191, %182 ]
  %194 = zext i1 %193 to i32
  store i32 %194, i32* %10, align 4
  %195 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %196 = call i32 @mmc_remove_card(%struct.mmc_card* %195)
  %197 = load i32, i32* %10, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %192
  %200 = load i32, i32* @ENOENT, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %4, align 4
  br label %294

202:                                              ; preds = %192
  %203 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  store %struct.mmc_card* %203, %struct.mmc_card** %8, align 8
  store i32 0, i32* %4, align 4
  br label %294

204:                                              ; preds = %169
  %205 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %206 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @MMC_TYPE_SD_COMBO, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %238

210:                                              ; preds = %204
  %211 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %212 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %213 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %214 = icmp ne %struct.mmc_card* %213, null
  %215 = zext i1 %214 to i32
  %216 = call i32 @mmc_sd_setup_card(%struct.mmc_host* %211, %struct.mmc_card* %212, i32 %215)
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* %9, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %233

219:                                              ; preds = %210
  %220 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %221 = call i32 @mmc_go_idle(%struct.mmc_host* %220)
  %222 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %223 = call i64 @mmc_host_is_spi(%struct.mmc_host* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %219
  %226 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %227 = load i32, i32* @use_spi_crc, align 4
  %228 = call i32 @mmc_spi_set_crc(%struct.mmc_host* %226, i32 %227)
  br label %229

229:                                              ; preds = %225, %219
  %230 = load i64, i64* @MMC_TYPE_SDIO, align 8
  %231 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %232 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %231, i32 0, i32 0
  store i64 %230, i64* %232, align 8
  br label %237

233:                                              ; preds = %210
  %234 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %235 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  store i32* @sd_type, i32** %236, align 8
  br label %237

237:                                              ; preds = %233, %229
  br label %238

238:                                              ; preds = %237, %204
  %239 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %240 = call i32 @sdio_disable_cd(%struct.mmc_card* %239)
  store i32 %240, i32* %9, align 4
  %241 = load i32, i32* %9, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %238
  br label %285

244:                                              ; preds = %238
  %245 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %246 = call i32 @sdio_enable_hs(%struct.mmc_card* %245)
  store i32 %246, i32* %9, align 4
  %247 = load i32, i32* %9, align 4
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %251 = call i32 @mmc_sd_go_highspeed(%struct.mmc_card* %250)
  br label %257

252:                                              ; preds = %244
  %253 = load i32, i32* %9, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %252
  br label %285

256:                                              ; preds = %252
  br label %257

257:                                              ; preds = %256, %249
  %258 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %259 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %260 = call i32 @mmc_sdio_get_max_clock(%struct.mmc_card* %259)
  %261 = call i32 @mmc_set_clock(%struct.mmc_host* %258, i32 %260)
  %262 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %263 = call i32 @sdio_enable_4bit_bus(%struct.mmc_card* %262)
  store i32 %263, i32* %9, align 4
  %264 = load i32, i32* %9, align 4
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %257
  %267 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %268 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @MMC_BUS_WIDTH_4, align 4
  %271 = call i32 @mmc_set_bus_width(i32 %269, i32 %270)
  br label %277

272:                                              ; preds = %257
  %273 = load i32, i32* %9, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %272
  br label %285

276:                                              ; preds = %272
  br label %277

277:                                              ; preds = %276, %266
  %278 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %279 = icmp ne %struct.mmc_card* %278, null
  br i1 %279, label %284, label %280

280:                                              ; preds = %277
  %281 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %282 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %283 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %282, i32 0, i32 1
  store %struct.mmc_card* %281, %struct.mmc_card** %283, align 8
  br label %284

284:                                              ; preds = %280, %277
  store i32 0, i32* %4, align 4
  br label %294

285:                                              ; preds = %275, %255, %243, %168, %162, %155, %121
  %286 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %287 = icmp ne %struct.mmc_card* %286, null
  br i1 %287, label %291, label %288

288:                                              ; preds = %285
  %289 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %290 = call i32 @mmc_remove_card(%struct.mmc_card* %289)
  br label %291

291:                                              ; preds = %288, %285
  br label %292

292:                                              ; preds = %291, %49, %41, %30
  %293 = load i32, i32* %9, align 4
  store i32 %293, i32* %4, align 4
  br label %294

294:                                              ; preds = %292, %284, %202, %199, %141, %104, %86
  %295 = load i32, i32* %4, align 4
  ret i32 %295
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mmc_send_io_op_cond(%struct.mmc_host*, i32, i32*) #1

declare dso_local i64 @mmc_host_is_spi(%struct.mmc_host*) #1

declare dso_local i32 @mmc_spi_set_crc(%struct.mmc_host*, i32) #1

declare dso_local %struct.mmc_card* @mmc_alloc_card(%struct.mmc_host*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mmc_card*) #1

declare dso_local i32 @PTR_ERR(%struct.mmc_card*) #1

declare dso_local i32 @mmc_sd_get_cid(%struct.mmc_host*, i32, i32, i32*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @mmc_remove_card(%struct.mmc_card*) #1

declare dso_local i32 @mmc_send_relative_addr(%struct.mmc_host*, i32*) #1

declare dso_local i32 @mmc_set_bus_mode(%struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_sd_get_csd(%struct.mmc_host*, %struct.mmc_card*) #1

declare dso_local i32 @mmc_decode_cid(%struct.mmc_card*) #1

declare dso_local i32 @mmc_select_card(%struct.mmc_card*) #1

declare dso_local i32 @sdio_read_cccr(%struct.mmc_card*) #1

declare dso_local i32 @sdio_read_common_cis(%struct.mmc_card*) #1

declare dso_local i32 @mmc_sd_setup_card(%struct.mmc_host*, %struct.mmc_card*, i32) #1

declare dso_local i32 @mmc_go_idle(%struct.mmc_host*) #1

declare dso_local i32 @sdio_disable_cd(%struct.mmc_card*) #1

declare dso_local i32 @sdio_enable_hs(%struct.mmc_card*) #1

declare dso_local i32 @mmc_sd_go_highspeed(%struct.mmc_card*) #1

declare dso_local i32 @mmc_set_clock(%struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_sdio_get_max_clock(%struct.mmc_card*) #1

declare dso_local i32 @sdio_enable_4bit_bus(%struct.mmc_card*) #1

declare dso_local i32 @mmc_set_bus_width(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
