; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, i32 }
%struct.i2c_driver = type { i32, i32, %struct.i2c_client_address_data* }
%struct.i2c_client_address_data = type { i16**, i16*, i16*, i16* }
%struct.i2c_client = type { i16, %struct.i2c_adapter* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I2C_CLIENT_END = common dso_local global i16 0, align 2
@ANY_I2C_BUS = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [60 x i8] c"found force parameter for adapter %d, addr 0x%02x, kind %d\0A\00", align 1
@I2C_FUNC_SMBUS_QUICK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"SMBus Quick command not supported, can't probe for chips\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"found probe parameter for adapter %d, addr 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"found ignore parameter for adapter %d, addr 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"found normal entry for adapter %d, addr 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_driver*)* @i2c_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_detect(%struct.i2c_adapter* %0, %struct.i2c_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_driver*, align 8
  %6 = alloca %struct.i2c_client_address_data*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_driver* %1, %struct.i2c_driver** %5, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %16 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %18 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %17, i32 0, i32 2
  %19 = load %struct.i2c_client_address_data*, %struct.i2c_client_address_data** %18, align 8
  store %struct.i2c_client_address_data* %19, %struct.i2c_client_address_data** %6, align 8
  %20 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %21 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.i2c_client_address_data*, %struct.i2c_client_address_data** %6, align 8
  %26 = icmp ne %struct.i2c_client_address_data* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %2
  store i32 0, i32* %3, align 4
  br label %379

28:                                               ; preds = %24
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.i2c_client* @kzalloc(i32 16, i32 %29)
  store %struct.i2c_client* %30, %struct.i2c_client** %7, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %32 = icmp ne %struct.i2c_client* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %379

36:                                               ; preds = %28
  %37 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 1
  store %struct.i2c_adapter* %37, %struct.i2c_adapter** %39, align 8
  %40 = load %struct.i2c_client_address_data*, %struct.i2c_client_address_data** %6, align 8
  %41 = getelementptr inbounds %struct.i2c_client_address_data, %struct.i2c_client_address_data* %40, i32 0, i32 0
  %42 = load i16**, i16*** %41, align 8
  %43 = icmp ne i16** %42, null
  br i1 %43, label %44, label %142

44:                                               ; preds = %36
  %45 = load %struct.i2c_client_address_data*, %struct.i2c_client_address_data** %6, align 8
  %46 = getelementptr inbounds %struct.i2c_client_address_data, %struct.i2c_client_address_data* %45, i32 0, i32 0
  %47 = load i16**, i16*** %46, align 8
  store i16** %47, i16*** %11, align 8
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %138, %44
  %49 = load i16**, i16*** %11, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i16*, i16** %49, i64 %51
  %53 = load i16*, i16** %52, align 8
  %54 = icmp ne i16* %53, null
  br i1 %54, label %55, label %141

55:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %134, %55
  %57 = load i16**, i16*** %11, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i16*, i16** %57, i64 %59
  %61 = load i16*, i16** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i16, i16* %61, i64 %63
  %65 = load i16, i16* %64, align 2
  %66 = zext i16 %65 to i32
  %67 = load i16, i16* @I2C_CLIENT_END, align 2
  %68 = zext i16 %67 to i32
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %137

70:                                               ; preds = %56
  %71 = load i16**, i16*** %11, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i16*, i16** %71, i64 %73
  %75 = load i16*, i16** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i16, i16* %75, i64 %77
  %79 = load i16, i16* %78, align 2
  %80 = zext i16 %79 to i32
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %97, label %83

83:                                               ; preds = %70
  %84 = load i16**, i16*** %11, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i16*, i16** %84, i64 %86
  %88 = load i16*, i16** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i16, i16* %88, i64 %90
  %92 = load i16, i16* %91, align 2
  %93 = zext i16 %92 to i32
  %94 = load i16, i16* @ANY_I2C_BUS, align 2
  %95 = zext i16 %94 to i32
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %133

97:                                               ; preds = %83, %70
  %98 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %98, i32 0, i32 1
  %100 = load i32, i32* %10, align 4
  %101 = load i16**, i16*** %11, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i16*, i16** %101, i64 %103
  %105 = load i16*, i16** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i16, i16* %105, i64 %108
  %110 = load i16, i16* %109, align 2
  %111 = load i32, i32* %12, align 4
  %112 = call i32 (i32*, i8*, i32, i16, ...) @dev_dbg(i32* %99, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %100, i16 zeroext %110, i32 %111)
  %113 = load i16**, i16*** %11, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i16*, i16** %113, i64 %115
  %117 = load i16*, i16** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i16, i16* %117, i64 %120
  %122 = load i16, i16* %121, align 2
  %123 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %124 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %123, i32 0, i32 0
  store i16 %122, i16* %124, align 8
  %125 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %126 = load i32, i32* %12, align 4
  %127 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %128 = call i32 @i2c_detect_address(%struct.i2c_client* %125, i32 %126, %struct.i2c_driver* %127)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %97
  br label %375

132:                                              ; preds = %97
  br label %133

133:                                              ; preds = %132, %83
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 2
  store i32 %136, i32* %8, align 4
  br label %56

137:                                              ; preds = %56
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %12, align 4
  br label %48

141:                                              ; preds = %48
  br label %142

142:                                              ; preds = %141, %36
  %143 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %144 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %147 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %145, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %142
  br label %375

152:                                              ; preds = %142
  %153 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %154 = load i32, i32* @I2C_FUNC_SMBUS_QUICK, align 4
  %155 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %153, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %184, label %157

157:                                              ; preds = %152
  %158 = load %struct.i2c_client_address_data*, %struct.i2c_client_address_data** %6, align 8
  %159 = getelementptr inbounds %struct.i2c_client_address_data, %struct.i2c_client_address_data* %158, i32 0, i32 1
  %160 = load i16*, i16** %159, align 8
  %161 = getelementptr inbounds i16, i16* %160, i64 0
  %162 = load i16, i16* %161, align 2
  %163 = zext i16 %162 to i32
  %164 = load i16, i16* @I2C_CLIENT_END, align 2
  %165 = zext i16 %164 to i32
  %166 = icmp eq i32 %163, %165
  br i1 %166, label %167, label %178

167:                                              ; preds = %157
  %168 = load %struct.i2c_client_address_data*, %struct.i2c_client_address_data** %6, align 8
  %169 = getelementptr inbounds %struct.i2c_client_address_data, %struct.i2c_client_address_data* %168, i32 0, i32 2
  %170 = load i16*, i16** %169, align 8
  %171 = getelementptr inbounds i16, i16* %170, i64 0
  %172 = load i16, i16* %171, align 2
  %173 = zext i16 %172 to i32
  %174 = load i16, i16* @I2C_CLIENT_END, align 2
  %175 = zext i16 %174 to i32
  %176 = icmp eq i32 %173, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %167
  br label %375

178:                                              ; preds = %167, %157
  %179 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %180 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %179, i32 0, i32 1
  %181 = call i32 @dev_warn(i32* %180, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %182 = load i32, i32* @EOPNOTSUPP, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %9, align 4
  br label %375

184:                                              ; preds = %152
  store i32 0, i32* %8, align 4
  br label %185

185:                                              ; preds = %251, %184
  %186 = load %struct.i2c_client_address_data*, %struct.i2c_client_address_data** %6, align 8
  %187 = getelementptr inbounds %struct.i2c_client_address_data, %struct.i2c_client_address_data* %186, i32 0, i32 1
  %188 = load i16*, i16** %187, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i16, i16* %188, i64 %190
  %192 = load i16, i16* %191, align 2
  %193 = zext i16 %192 to i32
  %194 = load i16, i16* @I2C_CLIENT_END, align 2
  %195 = zext i16 %194 to i32
  %196 = icmp ne i32 %193, %195
  br i1 %196, label %197, label %254

197:                                              ; preds = %185
  %198 = load %struct.i2c_client_address_data*, %struct.i2c_client_address_data** %6, align 8
  %199 = getelementptr inbounds %struct.i2c_client_address_data, %struct.i2c_client_address_data* %198, i32 0, i32 1
  %200 = load i16*, i16** %199, align 8
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i16, i16* %200, i64 %202
  %204 = load i16, i16* %203, align 2
  %205 = zext i16 %204 to i32
  %206 = load i32, i32* %10, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %220, label %208

208:                                              ; preds = %197
  %209 = load %struct.i2c_client_address_data*, %struct.i2c_client_address_data** %6, align 8
  %210 = getelementptr inbounds %struct.i2c_client_address_data, %struct.i2c_client_address_data* %209, i32 0, i32 1
  %211 = load i16*, i16** %210, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i16, i16* %211, i64 %213
  %215 = load i16, i16* %214, align 2
  %216 = zext i16 %215 to i32
  %217 = load i16, i16* @ANY_I2C_BUS, align 2
  %218 = zext i16 %217 to i32
  %219 = icmp eq i32 %216, %218
  br i1 %219, label %220, label %250

220:                                              ; preds = %208, %197
  %221 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %222 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %221, i32 0, i32 1
  %223 = load i32, i32* %10, align 4
  %224 = load %struct.i2c_client_address_data*, %struct.i2c_client_address_data** %6, align 8
  %225 = getelementptr inbounds %struct.i2c_client_address_data, %struct.i2c_client_address_data* %224, i32 0, i32 1
  %226 = load i16*, i16** %225, align 8
  %227 = load i32, i32* %8, align 4
  %228 = add nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i16, i16* %226, i64 %229
  %231 = load i16, i16* %230, align 2
  %232 = call i32 (i32*, i8*, i32, i16, ...) @dev_dbg(i32* %222, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %223, i16 zeroext %231)
  %233 = load %struct.i2c_client_address_data*, %struct.i2c_client_address_data** %6, align 8
  %234 = getelementptr inbounds %struct.i2c_client_address_data, %struct.i2c_client_address_data* %233, i32 0, i32 1
  %235 = load i16*, i16** %234, align 8
  %236 = load i32, i32* %8, align 4
  %237 = add nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i16, i16* %235, i64 %238
  %240 = load i16, i16* %239, align 2
  %241 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %242 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %241, i32 0, i32 0
  store i16 %240, i16* %242, align 8
  %243 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %244 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %245 = call i32 @i2c_detect_address(%struct.i2c_client* %243, i32 -1, %struct.i2c_driver* %244)
  store i32 %245, i32* %9, align 4
  %246 = load i32, i32* %9, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %220
  br label %375

249:                                              ; preds = %220
  br label %250

250:                                              ; preds = %249, %208
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %8, align 4
  %253 = add nsw i32 %252, 2
  store i32 %253, i32* %8, align 4
  br label %185

254:                                              ; preds = %185
  store i32 0, i32* %8, align 4
  br label %255

255:                                              ; preds = %371, %254
  %256 = load %struct.i2c_client_address_data*, %struct.i2c_client_address_data** %6, align 8
  %257 = getelementptr inbounds %struct.i2c_client_address_data, %struct.i2c_client_address_data* %256, i32 0, i32 2
  %258 = load i16*, i16** %257, align 8
  %259 = load i32, i32* %8, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i16, i16* %258, i64 %260
  %262 = load i16, i16* %261, align 2
  %263 = zext i16 %262 to i32
  %264 = load i16, i16* @I2C_CLIENT_END, align 2
  %265 = zext i16 %264 to i32
  %266 = icmp ne i32 %263, %265
  br i1 %266, label %267, label %374

267:                                              ; preds = %255
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %268

268:                                              ; preds = %336, %267
  %269 = load %struct.i2c_client_address_data*, %struct.i2c_client_address_data** %6, align 8
  %270 = getelementptr inbounds %struct.i2c_client_address_data, %struct.i2c_client_address_data* %269, i32 0, i32 3
  %271 = load i16*, i16** %270, align 8
  %272 = load i32, i32* %13, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i16, i16* %271, i64 %273
  %275 = load i16, i16* %274, align 2
  %276 = zext i16 %275 to i32
  %277 = load i16, i16* @I2C_CLIENT_END, align 2
  %278 = zext i16 %277 to i32
  %279 = icmp ne i32 %276, %278
  br i1 %279, label %280, label %339

280:                                              ; preds = %268
  %281 = load %struct.i2c_client_address_data*, %struct.i2c_client_address_data** %6, align 8
  %282 = getelementptr inbounds %struct.i2c_client_address_data, %struct.i2c_client_address_data* %281, i32 0, i32 3
  %283 = load i16*, i16** %282, align 8
  %284 = load i32, i32* %13, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i16, i16* %283, i64 %285
  %287 = load i16, i16* %286, align 2
  %288 = zext i16 %287 to i32
  %289 = load i32, i32* %10, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %303, label %291

291:                                              ; preds = %280
  %292 = load %struct.i2c_client_address_data*, %struct.i2c_client_address_data** %6, align 8
  %293 = getelementptr inbounds %struct.i2c_client_address_data, %struct.i2c_client_address_data* %292, i32 0, i32 3
  %294 = load i16*, i16** %293, align 8
  %295 = load i32, i32* %13, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i16, i16* %294, i64 %296
  %298 = load i16, i16* %297, align 2
  %299 = zext i16 %298 to i32
  %300 = load i16, i16* @ANY_I2C_BUS, align 2
  %301 = zext i16 %300 to i32
  %302 = icmp eq i32 %299, %301
  br i1 %302, label %303, label %335

303:                                              ; preds = %291, %280
  %304 = load %struct.i2c_client_address_data*, %struct.i2c_client_address_data** %6, align 8
  %305 = getelementptr inbounds %struct.i2c_client_address_data, %struct.i2c_client_address_data* %304, i32 0, i32 3
  %306 = load i16*, i16** %305, align 8
  %307 = load i32, i32* %13, align 4
  %308 = add nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i16, i16* %306, i64 %309
  %311 = load i16, i16* %310, align 2
  %312 = zext i16 %311 to i32
  %313 = load %struct.i2c_client_address_data*, %struct.i2c_client_address_data** %6, align 8
  %314 = getelementptr inbounds %struct.i2c_client_address_data, %struct.i2c_client_address_data* %313, i32 0, i32 2
  %315 = load i16*, i16** %314, align 8
  %316 = load i32, i32* %8, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i16, i16* %315, i64 %317
  %319 = load i16, i16* %318, align 2
  %320 = zext i16 %319 to i32
  %321 = icmp eq i32 %312, %320
  br i1 %321, label %322, label %335

322:                                              ; preds = %303
  %323 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %324 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %323, i32 0, i32 1
  %325 = load i32, i32* %10, align 4
  %326 = load %struct.i2c_client_address_data*, %struct.i2c_client_address_data** %6, align 8
  %327 = getelementptr inbounds %struct.i2c_client_address_data, %struct.i2c_client_address_data* %326, i32 0, i32 3
  %328 = load i16*, i16** %327, align 8
  %329 = load i32, i32* %13, align 4
  %330 = add nsw i32 %329, 1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i16, i16* %328, i64 %331
  %333 = load i16, i16* %332, align 2
  %334 = call i32 (i32*, i8*, i32, i16, ...) @dev_dbg(i32* %324, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %325, i16 zeroext %333)
  store i32 1, i32* %14, align 4
  br label %339

335:                                              ; preds = %303, %291
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %13, align 4
  %338 = add nsw i32 %337, 2
  store i32 %338, i32* %13, align 4
  br label %268

339:                                              ; preds = %322, %268
  %340 = load i32, i32* %14, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %339
  br label %371

343:                                              ; preds = %339
  %344 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %345 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %344, i32 0, i32 1
  %346 = load i32, i32* %10, align 4
  %347 = load %struct.i2c_client_address_data*, %struct.i2c_client_address_data** %6, align 8
  %348 = getelementptr inbounds %struct.i2c_client_address_data, %struct.i2c_client_address_data* %347, i32 0, i32 2
  %349 = load i16*, i16** %348, align 8
  %350 = load i32, i32* %8, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i16, i16* %349, i64 %351
  %353 = load i16, i16* %352, align 2
  %354 = call i32 (i32*, i8*, i32, i16, ...) @dev_dbg(i32* %345, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %346, i16 zeroext %353)
  %355 = load %struct.i2c_client_address_data*, %struct.i2c_client_address_data** %6, align 8
  %356 = getelementptr inbounds %struct.i2c_client_address_data, %struct.i2c_client_address_data* %355, i32 0, i32 2
  %357 = load i16*, i16** %356, align 8
  %358 = load i32, i32* %8, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i16, i16* %357, i64 %359
  %361 = load i16, i16* %360, align 2
  %362 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %363 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %362, i32 0, i32 0
  store i16 %361, i16* %363, align 8
  %364 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %365 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %366 = call i32 @i2c_detect_address(%struct.i2c_client* %364, i32 -1, %struct.i2c_driver* %365)
  store i32 %366, i32* %9, align 4
  %367 = load i32, i32* %9, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %343
  br label %375

370:                                              ; preds = %343
  br label %371

371:                                              ; preds = %370, %342
  %372 = load i32, i32* %8, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %8, align 4
  br label %255

374:                                              ; preds = %255
  br label %375

375:                                              ; preds = %374, %369, %248, %178, %177, %151, %131
  %376 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %377 = call i32 @kfree(%struct.i2c_client* %376)
  %378 = load i32, i32* %9, align 4
  store i32 %378, i32* %3, align 4
  br label %379

379:                                              ; preds = %375, %33, %27
  %380 = load i32, i32* %3, align 4
  ret i32 %380
}

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local %struct.i2c_client* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i16 zeroext, ...) #1

declare dso_local i32 @i2c_detect_address(%struct.i2c_client*, i32, %struct.i2c_driver*) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @kfree(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
