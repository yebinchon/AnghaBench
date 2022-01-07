; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ali15x3.c_ali15x3_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ali15x3.c_ali15x3_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32* }

@SMBHSTSTS = common dso_local global i32 0, align 4
@MAX_TIMEOUT = common dso_local global i32 0, align 4
@ALI15X3_STS_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Idle wait Timeout! STS=0x%02x\0A\00", align 1
@SMBHSTADD = common dso_local global i32 0, align 4
@ALI15X3_QUICK = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@SMBHSTCMD = common dso_local global i32 0, align 4
@SMBHSTDAT0 = common dso_local global i32 0, align 4
@SMBHSTDAT1 = common dso_local global i32 0, align 4
@SMBHSTCNT = common dso_local global i32 0, align 4
@ALI15X3_BLOCK_CLR = common dso_local global i32 0, align 4
@SMBBLKDAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported transaction %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Blk: len=%d, i=%d, data=%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @ali15x3_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ali15x3_access(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %20 = load i32, i32* @SMBHSTSTS, align 4
  %21 = call i32 @outb_p(i32 255, i32 %20)
  %22 = load i32, i32* @SMBHSTSTS, align 4
  %23 = call i32 @inb_p(i32 %22)
  store i32 %23, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %24

24:                                               ; preds = %40, %7
  %25 = load i32, i32* %19, align 4
  %26 = load i32, i32* @MAX_TIMEOUT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %18, align 4
  %30 = load i32, i32* @ALI15X3_STS_IDLE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %28, %24
  %35 = phi i1 [ false, %24 ], [ %33, %28 ]
  br i1 %35, label %36, label %43

36:                                               ; preds = %34
  %37 = call i32 @msleep(i32 1)
  %38 = load i32, i32* @SMBHSTSTS, align 4
  %39 = call i32 @inb_p(i32 %38)
  store i32 %39, i32* %18, align 4
  br label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %19, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %19, align 4
  br label %24

43:                                               ; preds = %34
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* @MAX_TIMEOUT, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %49 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %18, align 4
  %51 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %47, %43
  %53 = load i32, i32* %14, align 4
  switch i32 %53, label %213 [
    i32 129, label %54
    i32 131, label %65
    i32 130, label %85
    i32 128, label %110
    i32 132, label %143
  ]

54:                                               ; preds = %52
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %55, 127
  %57 = shl i32 %56, 1
  %58 = load i8, i8* %12, align 1
  %59 = sext i8 %58 to i32
  %60 = and i32 %59, 1
  %61 = or i32 %57, %60
  %62 = load i32, i32* @SMBHSTADD, align 4
  %63 = call i32 @outb_p(i32 %61, i32 %62)
  %64 = load i32, i32* @ALI15X3_QUICK, align 4
  store i32 %64, i32* %14, align 4
  br label %220

65:                                               ; preds = %52
  %66 = load i32, i32* %10, align 4
  %67 = and i32 %66, 127
  %68 = shl i32 %67, 1
  %69 = load i8, i8* %12, align 1
  %70 = sext i8 %69 to i32
  %71 = and i32 %70, 1
  %72 = or i32 %68, %71
  %73 = load i32, i32* @SMBHSTADD, align 4
  %74 = call i32 @outb_p(i32 %72, i32 %73)
  %75 = load i8, i8* %12, align 1
  %76 = sext i8 %75 to i32
  %77 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %65
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @SMBHSTCMD, align 4
  %83 = call i32 @outb_p(i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %65
  store i32 135, i32* %14, align 4
  br label %220

85:                                               ; preds = %52
  %86 = load i32, i32* %10, align 4
  %87 = and i32 %86, 127
  %88 = shl i32 %87, 1
  %89 = load i8, i8* %12, align 1
  %90 = sext i8 %89 to i32
  %91 = and i32 %90, 1
  %92 = or i32 %88, %91
  %93 = load i32, i32* @SMBHSTADD, align 4
  %94 = call i32 @outb_p(i32 %92, i32 %93)
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @SMBHSTCMD, align 4
  %97 = call i32 @outb_p(i32 %95, i32 %96)
  %98 = load i8, i8* %12, align 1
  %99 = sext i8 %98 to i32
  %100 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %85
  %104 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %105 = bitcast %union.i2c_smbus_data* %104 to i32*
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @SMBHSTDAT0, align 4
  %108 = call i32 @outb_p(i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %103, %85
  store i32 134, i32* %14, align 4
  br label %220

110:                                              ; preds = %52
  %111 = load i32, i32* %10, align 4
  %112 = and i32 %111, 127
  %113 = shl i32 %112, 1
  %114 = load i8, i8* %12, align 1
  %115 = sext i8 %114 to i32
  %116 = and i32 %115, 1
  %117 = or i32 %113, %116
  %118 = load i32, i32* @SMBHSTADD, align 4
  %119 = call i32 @outb_p(i32 %117, i32 %118)
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* @SMBHSTCMD, align 4
  %122 = call i32 @outb_p(i32 %120, i32 %121)
  %123 = load i8, i8* %12, align 1
  %124 = sext i8 %123 to i32
  %125 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %110
  %129 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %130 = bitcast %union.i2c_smbus_data* %129 to i32*
  %131 = load i32, i32* %130, align 8
  %132 = and i32 %131, 255
  %133 = load i32, i32* @SMBHSTDAT0, align 4
  %134 = call i32 @outb_p(i32 %132, i32 %133)
  %135 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %136 = bitcast %union.i2c_smbus_data* %135 to i32*
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, 65280
  %139 = ashr i32 %138, 8
  %140 = load i32, i32* @SMBHSTDAT1, align 4
  %141 = call i32 @outb_p(i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %128, %110
  store i32 133, i32* %14, align 4
  br label %220

143:                                              ; preds = %52
  %144 = load i32, i32* %10, align 4
  %145 = and i32 %144, 127
  %146 = shl i32 %145, 1
  %147 = load i8, i8* %12, align 1
  %148 = sext i8 %147 to i32
  %149 = and i32 %148, 1
  %150 = or i32 %146, %149
  %151 = load i32, i32* @SMBHSTADD, align 4
  %152 = call i32 @outb_p(i32 %150, i32 %151)
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* @SMBHSTCMD, align 4
  %155 = call i32 @outb_p(i32 %153, i32 %154)
  %156 = load i8, i8* %12, align 1
  %157 = sext i8 %156 to i32
  %158 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %161, label %212

161:                                              ; preds = %143
  %162 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %163 = bitcast %union.i2c_smbus_data* %162 to i32**
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %17, align 4
  %167 = load i32, i32* %17, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %161
  store i32 0, i32* %17, align 4
  %170 = load i32, i32* %17, align 4
  %171 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %172 = bitcast %union.i2c_smbus_data* %171 to i32**
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  store i32 %170, i32* %174, align 4
  br label %175

175:                                              ; preds = %169, %161
  %176 = load i32, i32* %17, align 4
  %177 = icmp sgt i32 %176, 32
  br i1 %177, label %178, label %184

178:                                              ; preds = %175
  store i32 32, i32* %17, align 4
  %179 = load i32, i32* %17, align 4
  %180 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %181 = bitcast %union.i2c_smbus_data* %180 to i32**
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  store i32 %179, i32* %183, align 4
  br label %184

184:                                              ; preds = %178, %175
  %185 = load i32, i32* %17, align 4
  %186 = load i32, i32* @SMBHSTDAT0, align 4
  %187 = call i32 @outb_p(i32 %185, i32 %186)
  %188 = load i32, i32* @SMBHSTCNT, align 4
  %189 = call i32 @inb_p(i32 %188)
  %190 = load i32, i32* @ALI15X3_BLOCK_CLR, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @SMBHSTCNT, align 4
  %193 = call i32 @outb_p(i32 %191, i32 %192)
  store i32 1, i32* %16, align 4
  br label %194

194:                                              ; preds = %208, %184
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %17, align 4
  %197 = icmp sle i32 %195, %196
  br i1 %197, label %198, label %211

198:                                              ; preds = %194
  %199 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %200 = bitcast %union.i2c_smbus_data* %199 to i32**
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %16, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @SMBBLKDAT, align 4
  %207 = call i32 @outb_p(i32 %205, i32 %206)
  br label %208

208:                                              ; preds = %198
  %209 = load i32, i32* %16, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %16, align 4
  br label %194

211:                                              ; preds = %194
  br label %212

212:                                              ; preds = %211, %143
  store i32 136, i32* %14, align 4
  br label %220

213:                                              ; preds = %52
  %214 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %215 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %214, i32 0, i32 0
  %216 = load i32, i32* %14, align 4
  %217 = call i32 @dev_warn(i32* %215, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %216)
  %218 = load i32, i32* @EOPNOTSUPP, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %8, align 4
  br label %314

220:                                              ; preds = %212, %142, %109, %84, %54
  %221 = load i32, i32* %14, align 4
  %222 = load i32, i32* @SMBHSTCNT, align 4
  %223 = call i32 @outb_p(i32 %221, i32 %222)
  %224 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %225 = call i32 @ali15x3_transaction(%struct.i2c_adapter* %224)
  store i32 %225, i32* %18, align 4
  %226 = load i32, i32* %18, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %220
  %229 = load i32, i32* %18, align 4
  store i32 %229, i32* %8, align 4
  br label %314

230:                                              ; preds = %220
  %231 = load i8, i8* %12, align 1
  %232 = sext i8 %231 to i32
  %233 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %232, %234
  br i1 %235, label %240, label %236

236:                                              ; preds = %230
  %237 = load i32, i32* %14, align 4
  %238 = load i32, i32* @ALI15X3_QUICK, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %236, %230
  store i32 0, i32* %8, align 4
  br label %314

241:                                              ; preds = %236
  %242 = load i32, i32* %14, align 4
  switch i32 %242, label %313 [
    i32 135, label %243
    i32 134, label %248
    i32 133, label %253
    i32 136, label %262
  ]

243:                                              ; preds = %241
  %244 = load i32, i32* @SMBHSTDAT0, align 4
  %245 = call i32 @inb_p(i32 %244)
  %246 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %247 = bitcast %union.i2c_smbus_data* %246 to i32*
  store i32 %245, i32* %247, align 8
  br label %313

248:                                              ; preds = %241
  %249 = load i32, i32* @SMBHSTDAT0, align 4
  %250 = call i32 @inb_p(i32 %249)
  %251 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %252 = bitcast %union.i2c_smbus_data* %251 to i32*
  store i32 %250, i32* %252, align 8
  br label %313

253:                                              ; preds = %241
  %254 = load i32, i32* @SMBHSTDAT0, align 4
  %255 = call i32 @inb_p(i32 %254)
  %256 = load i32, i32* @SMBHSTDAT1, align 4
  %257 = call i32 @inb_p(i32 %256)
  %258 = shl i32 %257, 8
  %259 = add nsw i32 %255, %258
  %260 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %261 = bitcast %union.i2c_smbus_data* %260 to i32*
  store i32 %259, i32* %261, align 8
  br label %313

262:                                              ; preds = %241
  %263 = load i32, i32* @SMBHSTDAT0, align 4
  %264 = call i32 @inb_p(i32 %263)
  store i32 %264, i32* %17, align 4
  %265 = load i32, i32* %17, align 4
  %266 = icmp sgt i32 %265, 32
  br i1 %266, label %267, label %268

267:                                              ; preds = %262
  store i32 32, i32* %17, align 4
  br label %268

268:                                              ; preds = %267, %262
  %269 = load i32, i32* %17, align 4
  %270 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %271 = bitcast %union.i2c_smbus_data* %270 to i32**
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 0
  store i32 %269, i32* %273, align 4
  %274 = load i32, i32* @SMBHSTCNT, align 4
  %275 = call i32 @inb_p(i32 %274)
  %276 = load i32, i32* @ALI15X3_BLOCK_CLR, align 4
  %277 = or i32 %275, %276
  %278 = load i32, i32* @SMBHSTCNT, align 4
  %279 = call i32 @outb_p(i32 %277, i32 %278)
  store i32 1, i32* %16, align 4
  br label %280

280:                                              ; preds = %309, %268
  %281 = load i32, i32* %16, align 4
  %282 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %283 = bitcast %union.i2c_smbus_data* %282 to i32**
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 0
  %286 = load i32, i32* %285, align 4
  %287 = icmp sle i32 %281, %286
  br i1 %287, label %288, label %312

288:                                              ; preds = %280
  %289 = load i32, i32* @SMBBLKDAT, align 4
  %290 = call i32 @inb_p(i32 %289)
  %291 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %292 = bitcast %union.i2c_smbus_data* %291 to i32**
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %16, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  store i32 %290, i32* %296, align 4
  %297 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %298 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %297, i32 0, i32 0
  %299 = load i32, i32* %17, align 4
  %300 = load i32, i32* %16, align 4
  %301 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %302 = bitcast %union.i2c_smbus_data* %301 to i32**
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %16, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @dev_dbg(i32* %298, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %299, i32 %300, i32 %307)
  br label %309

309:                                              ; preds = %288
  %310 = load i32, i32* %16, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %16, align 4
  br label %280

312:                                              ; preds = %280
  br label %313

313:                                              ; preds = %241, %312, %253, %248, %243
  store i32 0, i32* %8, align 4
  br label %314

314:                                              ; preds = %313, %240, %228, %213
  %315 = load i32, i32* %8, align 4
  ret i32 %315
}

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @ali15x3_transaction(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
