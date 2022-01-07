; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_mode_init_ov_sensor_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_mode_init_ov_sensor_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, i32, %struct.gspca_dev }
%struct.gspca_dev = type { i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@OV7610_REG_COM_C = common dso_local global i32 0, align 4
@OV7670_R12_COM7 = common dso_local global i32 0, align 4
@OV7670_COM7_FMT_QVGA = common dso_local global i32 0, align 4
@OV7670_COM7_FMT_VGA = common dso_local global i32 0, align 4
@OV7670_COM7_FMT_MASK = common dso_local global i32 0, align 4
@OV7670_R13_COM8 = common dso_local global i32 0, align 4
@OV7670_COM8_AWB = common dso_local global i32 0, align 4
@OV7670_R17_HSTART = common dso_local global i32 0, align 4
@OV7670_R18_HSTOP = common dso_local global i32 0, align 4
@OV7670_R32_HREF = common dso_local global i32 0, align 4
@OV7670_R19_VSTART = common dso_local global i32 0, align 4
@OV7670_R1A_VSTOP = common dso_local global i32 0, align 4
@OV7670_R03_VREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @mode_init_ov_sensor_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mode_init_ov_sensor_regs(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  %10 = load %struct.sd*, %struct.sd** %2, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 2
  store %struct.gspca_dev* %11, %struct.gspca_dev** %3, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %17 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 1
  store i32 %22, i32* %4, align 4
  %23 = load %struct.sd*, %struct.sd** %2, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %373 [
    i32 140, label %26
    i32 139, label %69
    i32 128, label %149
    i32 135, label %165
    i32 134, label %182
    i32 133, label %182
    i32 129, label %182
    i32 132, label %241
    i32 131, label %241
    i32 130, label %274
    i32 138, label %353
    i32 137, label %364
    i32 136, label %364
  ]

26:                                               ; preds = %1
  %27 = load %struct.sd*, %struct.sd** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 32, i32 0
  %32 = call i32 @i2c_w_mask(%struct.sd* %27, i32 20, i32 %31, i32 32)
  %33 = load %struct.sd*, %struct.sd** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 32
  %38 = call i32 @i2c_w_mask(%struct.sd* %33, i32 40, i32 %37, i32 32)
  %39 = load %struct.sd*, %struct.sd** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 32, i32 58
  %44 = call i32 @i2c_w(%struct.sd* %39, i32 36, i32 %43)
  %45 = load %struct.sd*, %struct.sd** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 48, i32 96
  %50 = call i32 @i2c_w(%struct.sd* %45, i32 37, i32 %49)
  %51 = load %struct.sd*, %struct.sd** %2, align 8
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 64, i32 0
  %56 = call i32 @i2c_w_mask(%struct.sd* %51, i32 45, i32 %55, i32 64)
  %57 = load %struct.sd*, %struct.sd** %2, align 8
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 240, i32 144
  %62 = call i32 @i2c_w_mask(%struct.sd* %57, i32 103, i32 %61, i32 240)
  %63 = load %struct.sd*, %struct.sd** %2, align 8
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 32, i32 0
  %68 = call i32 @i2c_w_mask(%struct.sd* %63, i32 116, i32 %67, i32 32)
  br label %380

69:                                               ; preds = %1
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %74 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 1040, %75
  %77 = sdiv i32 %76, 2
  %78 = add nsw i32 %77, 496
  store i32 %78, i32* %5, align 4
  %79 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %80 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 776, %81
  %83 = sdiv i32 %82, 2
  store i32 %83, i32* %7, align 4
  br label %96

84:                                               ; preds = %69
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %86 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 2076, %87
  %89 = sdiv i32 %88, 2
  %90 = add nsw i32 %89, 256
  store i32 %90, i32* %5, align 4
  %91 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %92 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 1544, %93
  %95 = sdiv i32 %94, 2
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %84, %72
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %99 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %97, %100
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %104 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %102, %105
  store i32 %106, i32* %8, align 4
  %107 = load %struct.sd*, %struct.sd** %2, align 8
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 64, i32 0
  %112 = call i32 @i2c_w_mask(%struct.sd* %107, i32 18, i32 %111, i32 240)
  %113 = load %struct.sd*, %struct.sd** %2, align 8
  %114 = load i32, i32* %6, align 4
  %115 = ashr i32 %114, 1
  %116 = and i32 %115, 7
  %117 = shl i32 %116, 3
  %118 = load i32, i32* %5, align 4
  %119 = ashr i32 %118, 1
  %120 = and i32 %119, 7
  %121 = or i32 %117, %120
  %122 = call i32 @i2c_w_mask(%struct.sd* %113, i32 50, i32 %121, i32 63)
  %123 = load %struct.sd*, %struct.sd** %2, align 8
  %124 = load i32, i32* %8, align 4
  %125 = ashr i32 %124, 1
  %126 = and i32 %125, 3
  %127 = shl i32 %126, 2
  %128 = load i32, i32* %7, align 4
  %129 = ashr i32 %128, 1
  %130 = and i32 %129, 3
  %131 = or i32 %127, %130
  %132 = call i32 @i2c_w_mask(%struct.sd* %123, i32 3, i32 %131, i32 15)
  %133 = load %struct.sd*, %struct.sd** %2, align 8
  %134 = load i32, i32* %5, align 4
  %135 = ashr i32 %134, 4
  %136 = call i32 @i2c_w(%struct.sd* %133, i32 23, i32 %135)
  %137 = load %struct.sd*, %struct.sd** %2, align 8
  %138 = load i32, i32* %6, align 4
  %139 = ashr i32 %138, 4
  %140 = call i32 @i2c_w(%struct.sd* %137, i32 24, i32 %139)
  %141 = load %struct.sd*, %struct.sd** %2, align 8
  %142 = load i32, i32* %7, align 4
  %143 = ashr i32 %142, 3
  %144 = call i32 @i2c_w(%struct.sd* %141, i32 25, i32 %143)
  %145 = load %struct.sd*, %struct.sd** %2, align 8
  %146 = load i32, i32* %8, align 4
  %147 = ashr i32 %146, 3
  %148 = call i32 @i2c_w(%struct.sd* %145, i32 26, i32 %147)
  br label %380

149:                                              ; preds = %1
  %150 = load %struct.sd*, %struct.sd** %2, align 8
  %151 = load i32, i32* @OV7610_REG_COM_C, align 4
  %152 = load i32, i32* %4, align 4
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 32, i32 0
  %156 = call i32 @i2c_w_mask(%struct.sd* %150, i32 %151, i32 %155, i32 32)
  %157 = load %struct.sd*, %struct.sd** %2, align 8
  %158 = call i32 @i2c_w_mask(%struct.sd* %157, i32 19, i32 0, i32 32)
  %159 = load %struct.sd*, %struct.sd** %2, align 8
  %160 = call i32 @i2c_w_mask(%struct.sd* %159, i32 18, i32 4, i32 6)
  %161 = load %struct.sd*, %struct.sd** %2, align 8
  %162 = call i32 @i2c_w_mask(%struct.sd* %161, i32 45, i32 0, i32 64)
  %163 = load %struct.sd*, %struct.sd** %2, align 8
  %164 = call i32 @i2c_w_mask(%struct.sd* %163, i32 40, i32 32, i32 32)
  br label %374

165:                                              ; preds = %1
  %166 = load %struct.sd*, %struct.sd** %2, align 8
  %167 = load i32, i32* %4, align 4
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 32, i32 0
  %171 = call i32 @i2c_w_mask(%struct.sd* %166, i32 20, i32 %170, i32 32)
  %172 = load %struct.sd*, %struct.sd** %2, align 8
  %173 = load i32, i32* %4, align 4
  %174 = icmp ne i32 %173, 0
  %175 = zext i1 %174 to i64
  %176 = select i1 %174, i32 30, i32 158
  %177 = call i32 @i2c_w(%struct.sd* %172, i32 53, i32 %176)
  %178 = load %struct.sd*, %struct.sd** %2, align 8
  %179 = call i32 @i2c_w_mask(%struct.sd* %178, i32 19, i32 0, i32 32)
  %180 = load %struct.sd*, %struct.sd** %2, align 8
  %181 = call i32 @i2c_w_mask(%struct.sd* %180, i32 18, i32 4, i32 6)
  br label %374

182:                                              ; preds = %1, %1, %1
  %183 = load %struct.sd*, %struct.sd** %2, align 8
  %184 = load i32, i32* %4, align 4
  %185 = icmp ne i32 %184, 0
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i32 32, i32 0
  %188 = call i32 @i2c_w_mask(%struct.sd* %183, i32 20, i32 %187, i32 32)
  %189 = load %struct.sd*, %struct.sd** %2, align 8
  %190 = load i32, i32* %4, align 4
  %191 = icmp ne i32 %190, 0
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i32 0, i32 32
  %194 = call i32 @i2c_w_mask(%struct.sd* %189, i32 40, i32 %193, i32 32)
  %195 = load %struct.sd*, %struct.sd** %2, align 8
  %196 = load i32, i32* %4, align 4
  %197 = icmp ne i32 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i32 32, i32 58
  %200 = call i32 @i2c_w(%struct.sd* %195, i32 36, i32 %199)
  %201 = load %struct.sd*, %struct.sd** %2, align 8
  %202 = load i32, i32* %4, align 4
  %203 = icmp ne i32 %202, 0
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i32 48, i32 96
  %206 = call i32 @i2c_w(%struct.sd* %201, i32 37, i32 %205)
  %207 = load %struct.sd*, %struct.sd** %2, align 8
  %208 = load i32, i32* %4, align 4
  %209 = icmp ne i32 %208, 0
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i32 64, i32 0
  %212 = call i32 @i2c_w_mask(%struct.sd* %207, i32 45, i32 %211, i32 64)
  %213 = load %struct.sd*, %struct.sd** %2, align 8
  %214 = load i32, i32* %4, align 4
  %215 = icmp ne i32 %214, 0
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i32 176, i32 144
  %218 = call i32 @i2c_w_mask(%struct.sd* %213, i32 103, i32 %217, i32 240)
  %219 = load %struct.sd*, %struct.sd** %2, align 8
  %220 = load i32, i32* %4, align 4
  %221 = icmp ne i32 %220, 0
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i32 32, i32 0
  %224 = call i32 @i2c_w_mask(%struct.sd* %219, i32 116, i32 %223, i32 32)
  %225 = load %struct.sd*, %struct.sd** %2, align 8
  %226 = call i32 @i2c_w_mask(%struct.sd* %225, i32 19, i32 0, i32 32)
  %227 = load %struct.sd*, %struct.sd** %2, align 8
  %228 = call i32 @i2c_w_mask(%struct.sd* %227, i32 18, i32 4, i32 6)
  %229 = load %struct.sd*, %struct.sd** %2, align 8
  %230 = getelementptr inbounds %struct.sd, %struct.sd* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp eq i32 %231, 129
  br i1 %232, label %233, label %240

233:                                              ; preds = %182
  %234 = load %struct.sd*, %struct.sd** %2, align 8
  %235 = load i32, i32* %4, align 4
  %236 = icmp ne i32 %235, 0
  %237 = zext i1 %236 to i64
  %238 = select i1 %236, i32 30, i32 158
  %239 = call i32 @i2c_w(%struct.sd* %234, i32 53, i32 %238)
  br label %240

240:                                              ; preds = %233, %182
  br label %374

241:                                              ; preds = %1, %1
  %242 = load %struct.sd*, %struct.sd** %2, align 8
  %243 = load i32, i32* %4, align 4
  %244 = icmp ne i32 %243, 0
  %245 = zext i1 %244 to i64
  %246 = select i1 %244, i32 32, i32 0
  %247 = call i32 @i2c_w_mask(%struct.sd* %242, i32 20, i32 %246, i32 32)
  %248 = load %struct.sd*, %struct.sd** %2, align 8
  %249 = load i32, i32* %4, align 4
  %250 = icmp ne i32 %249, 0
  %251 = zext i1 %250 to i64
  %252 = select i1 %250, i32 0, i32 32
  %253 = call i32 @i2c_w_mask(%struct.sd* %248, i32 40, i32 %252, i32 32)
  %254 = load %struct.sd*, %struct.sd** %2, align 8
  %255 = load i32, i32* %4, align 4
  %256 = icmp ne i32 %255, 0
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i32 64, i32 0
  %259 = call i32 @i2c_w_mask(%struct.sd* %254, i32 45, i32 %258, i32 64)
  %260 = load %struct.sd*, %struct.sd** %2, align 8
  %261 = load i32, i32* %4, align 4
  %262 = icmp ne i32 %261, 0
  %263 = zext i1 %262 to i64
  %264 = select i1 %262, i32 240, i32 144
  %265 = call i32 @i2c_w_mask(%struct.sd* %260, i32 103, i32 %264, i32 240)
  %266 = load %struct.sd*, %struct.sd** %2, align 8
  %267 = load i32, i32* %4, align 4
  %268 = icmp ne i32 %267, 0
  %269 = zext i1 %268 to i64
  %270 = select i1 %268, i32 32, i32 0
  %271 = call i32 @i2c_w_mask(%struct.sd* %266, i32 116, i32 %270, i32 32)
  %272 = load %struct.sd*, %struct.sd** %2, align 8
  %273 = call i32 @i2c_w_mask(%struct.sd* %272, i32 18, i32 4, i32 4)
  br label %374

274:                                              ; preds = %1
  %275 = load %struct.sd*, %struct.sd** %2, align 8
  %276 = load i32, i32* @OV7670_R12_COM7, align 4
  %277 = load i32, i32* %4, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %274
  %280 = load i32, i32* @OV7670_COM7_FMT_QVGA, align 4
  br label %283

281:                                              ; preds = %274
  %282 = load i32, i32* @OV7670_COM7_FMT_VGA, align 4
  br label %283

283:                                              ; preds = %281, %279
  %284 = phi i32 [ %280, %279 ], [ %282, %281 ]
  %285 = load i32, i32* @OV7670_COM7_FMT_MASK, align 4
  %286 = call i32 @i2c_w_mask(%struct.sd* %275, i32 %276, i32 %284, i32 %285)
  %287 = load %struct.sd*, %struct.sd** %2, align 8
  %288 = call i32 @i2c_w_mask(%struct.sd* %287, i32 19, i32 0, i32 32)
  %289 = load %struct.sd*, %struct.sd** %2, align 8
  %290 = load i32, i32* @OV7670_R13_COM8, align 4
  %291 = load i32, i32* @OV7670_COM8_AWB, align 4
  %292 = load i32, i32* @OV7670_COM8_AWB, align 4
  %293 = call i32 @i2c_w_mask(%struct.sd* %289, i32 %290, i32 %291, i32 %292)
  %294 = load i32, i32* %4, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %283
  store i32 164, i32* %5, align 4
  store i32 28, i32* %6, align 4
  store i32 14, i32* %7, align 4
  store i32 494, i32* %8, align 4
  br label %298

297:                                              ; preds = %283
  store i32 158, i32* %5, align 4
  store i32 14, i32* %6, align 4
  store i32 10, i32* %7, align 4
  store i32 490, i32* %8, align 4
  br label %298

298:                                              ; preds = %297, %296
  %299 = load %struct.sd*, %struct.sd** %2, align 8
  %300 = load i32, i32* @OV7670_R17_HSTART, align 4
  %301 = load i32, i32* %5, align 4
  %302 = ashr i32 %301, 3
  %303 = call i32 @i2c_w(%struct.sd* %299, i32 %300, i32 %302)
  %304 = load %struct.sd*, %struct.sd** %2, align 8
  %305 = load i32, i32* @OV7670_R18_HSTOP, align 4
  %306 = load i32, i32* %6, align 4
  %307 = ashr i32 %306, 3
  %308 = call i32 @i2c_w(%struct.sd* %304, i32 %305, i32 %307)
  %309 = load %struct.sd*, %struct.sd** %2, align 8
  %310 = load i32, i32* @OV7670_R32_HREF, align 4
  %311 = call i32 @i2c_r(%struct.sd* %309, i32 %310)
  store i32 %311, i32* %9, align 4
  %312 = load i32, i32* %9, align 4
  %313 = and i32 %312, 192
  %314 = load i32, i32* %6, align 4
  %315 = and i32 %314, 7
  %316 = shl i32 %315, 3
  %317 = or i32 %313, %316
  %318 = load i32, i32* %5, align 4
  %319 = and i32 %318, 7
  %320 = or i32 %317, %319
  store i32 %320, i32* %9, align 4
  %321 = call i32 @msleep(i32 10)
  %322 = load %struct.sd*, %struct.sd** %2, align 8
  %323 = load i32, i32* @OV7670_R32_HREF, align 4
  %324 = load i32, i32* %9, align 4
  %325 = call i32 @i2c_w(%struct.sd* %322, i32 %323, i32 %324)
  %326 = load %struct.sd*, %struct.sd** %2, align 8
  %327 = load i32, i32* @OV7670_R19_VSTART, align 4
  %328 = load i32, i32* %7, align 4
  %329 = ashr i32 %328, 2
  %330 = call i32 @i2c_w(%struct.sd* %326, i32 %327, i32 %329)
  %331 = load %struct.sd*, %struct.sd** %2, align 8
  %332 = load i32, i32* @OV7670_R1A_VSTOP, align 4
  %333 = load i32, i32* %8, align 4
  %334 = ashr i32 %333, 2
  %335 = call i32 @i2c_w(%struct.sd* %331, i32 %332, i32 %334)
  %336 = load %struct.sd*, %struct.sd** %2, align 8
  %337 = load i32, i32* @OV7670_R03_VREF, align 4
  %338 = call i32 @i2c_r(%struct.sd* %336, i32 %337)
  store i32 %338, i32* %9, align 4
  %339 = load i32, i32* %9, align 4
  %340 = and i32 %339, 192
  %341 = load i32, i32* %8, align 4
  %342 = and i32 %341, 3
  %343 = shl i32 %342, 2
  %344 = or i32 %340, %343
  %345 = load i32, i32* %7, align 4
  %346 = and i32 %345, 3
  %347 = or i32 %344, %346
  store i32 %347, i32* %9, align 4
  %348 = call i32 @msleep(i32 10)
  %349 = load %struct.sd*, %struct.sd** %2, align 8
  %350 = load i32, i32* @OV7670_R03_VREF, align 4
  %351 = load i32, i32* %9, align 4
  %352 = call i32 @i2c_w(%struct.sd* %349, i32 %350, i32 %351)
  br label %374

353:                                              ; preds = %1
  %354 = load %struct.sd*, %struct.sd** %2, align 8
  %355 = load i32, i32* %4, align 4
  %356 = icmp ne i32 %355, 0
  %357 = zext i1 %356 to i64
  %358 = select i1 %356, i32 32, i32 0
  %359 = call i32 @i2c_w_mask(%struct.sd* %354, i32 20, i32 %358, i32 32)
  %360 = load %struct.sd*, %struct.sd** %2, align 8
  %361 = call i32 @i2c_w_mask(%struct.sd* %360, i32 19, i32 0, i32 32)
  %362 = load %struct.sd*, %struct.sd** %2, align 8
  %363 = call i32 @i2c_w_mask(%struct.sd* %362, i32 18, i32 4, i32 6)
  br label %374

364:                                              ; preds = %1, %1
  %365 = load %struct.sd*, %struct.sd** %2, align 8
  %366 = load i32, i32* %4, align 4
  %367 = icmp ne i32 %366, 0
  %368 = zext i1 %367 to i64
  %369 = select i1 %367, i32 32, i32 0
  %370 = call i32 @i2c_w_mask(%struct.sd* %365, i32 20, i32 %369, i32 32)
  %371 = load %struct.sd*, %struct.sd** %2, align 8
  %372 = call i32 @i2c_w_mask(%struct.sd* %371, i32 18, i32 4, i32 6)
  br label %374

373:                                              ; preds = %1
  br label %380

374:                                              ; preds = %364, %353, %298, %241, %240, %165, %149
  %375 = load %struct.sd*, %struct.sd** %2, align 8
  %376 = load %struct.sd*, %struct.sd** %2, align 8
  %377 = getelementptr inbounds %struct.sd, %struct.sd* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @i2c_w(%struct.sd* %375, i32 17, i32 %378)
  br label %380

380:                                              ; preds = %374, %373, %96, %26
  ret void
}

declare dso_local i32 @i2c_w_mask(%struct.sd*, i32, i32, i32) #1

declare dso_local i32 @i2c_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @i2c_r(%struct.sd*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
