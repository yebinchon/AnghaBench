; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ali1535.c_ali1535_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ali1535.c_ali1535_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32* }

@SMBHSTSTS = common dso_local global i32 0, align 4
@MAX_TIMEOUT = common dso_local global i32 0, align 4
@ALI1535_STS_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Idle wait Timeout! STS=0x%02x\0A\00", align 1
@SMBHSTADD = common dso_local global i32 0, align 4
@ALI1535_QUICK = common dso_local global i32 0, align 4
@SMBHSTTYP = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@SMBHSTCMD = common dso_local global i32 0, align 4
@SMBHSTDAT0 = common dso_local global i32 0, align 4
@SMBHSTDAT1 = common dso_local global i32 0, align 4
@ALI1535_BLOCK_CLR = common dso_local global i32 0, align 4
@SMBBLKDAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported transaction %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Blk: len=%d, i=%d, data=%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @ali1535_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ali1535_access(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %union.i2c_smbus_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %8, align 8
  store i32 %1, i32* %9, align 4
  store i16 %2, i16* %10, align 2
  store i8 %3, i8* %11, align 1
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %14, align 8
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @SMBHSTSTS, align 4
  %21 = call i32 @inb_p(i32 %20)
  store i32 %21, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %22

22:                                               ; preds = %38, %7
  %23 = load i32, i32* %18, align 4
  %24 = load i32, i32* @MAX_TIMEOUT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* @ALI1535_STS_IDLE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %26, %22
  %33 = phi i1 [ false, %22 ], [ %31, %26 ]
  br i1 %33, label %34, label %41

34:                                               ; preds = %32
  %35 = call i32 @msleep(i32 1)
  %36 = load i32, i32* @SMBHSTSTS, align 4
  %37 = call i32 @inb_p(i32 %36)
  store i32 %37, i32* %17, align 4
  br label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %18, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %18, align 4
  br label %22

41:                                               ; preds = %32
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* @MAX_TIMEOUT, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %47 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %46, i32 0, i32 0
  %48 = load i32, i32* %17, align 4
  %49 = call i32 @dev_warn(i32* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %45, %41
  %51 = load i32, i32* @SMBHSTSTS, align 4
  %52 = call i32 @outb_p(i32 255, i32 %51)
  %53 = load i32, i32* %13, align 4
  switch i32 %53, label %228 [
    i32 129, label %54
    i32 131, label %68
    i32 130, label %91
    i32 128, label %119
    i32 132, label %155
  ]

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, 127
  %57 = shl i32 %56, 1
  %58 = load i8, i8* %11, align 1
  %59 = sext i8 %58 to i32
  %60 = and i32 %59, 1
  %61 = or i32 %57, %60
  %62 = load i32, i32* @SMBHSTADD, align 4
  %63 = call i32 @outb_p(i32 %61, i32 %62)
  %64 = load i32, i32* @ALI1535_QUICK, align 4
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @SMBHSTTYP, align 4
  %67 = call i32 @outb_p(i32 %65, i32 %66)
  br label %235

68:                                               ; preds = %50
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, 127
  %71 = shl i32 %70, 1
  %72 = load i8, i8* %11, align 1
  %73 = sext i8 %72 to i32
  %74 = and i32 %73, 1
  %75 = or i32 %71, %74
  %76 = load i32, i32* @SMBHSTADD, align 4
  %77 = call i32 @outb_p(i32 %75, i32 %76)
  store i32 135, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @SMBHSTTYP, align 4
  %80 = call i32 @outb_p(i32 %78, i32 %79)
  %81 = load i8, i8* %11, align 1
  %82 = sext i8 %81 to i32
  %83 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %68
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @SMBHSTCMD, align 4
  %89 = call i32 @outb_p(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %68
  br label %235

91:                                               ; preds = %50
  %92 = load i32, i32* %9, align 4
  %93 = and i32 %92, 127
  %94 = shl i32 %93, 1
  %95 = load i8, i8* %11, align 1
  %96 = sext i8 %95 to i32
  %97 = and i32 %96, 1
  %98 = or i32 %94, %97
  %99 = load i32, i32* @SMBHSTADD, align 4
  %100 = call i32 @outb_p(i32 %98, i32 %99)
  store i32 134, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @SMBHSTTYP, align 4
  %103 = call i32 @outb_p(i32 %101, i32 %102)
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @SMBHSTCMD, align 4
  %106 = call i32 @outb_p(i32 %104, i32 %105)
  %107 = load i8, i8* %11, align 1
  %108 = sext i8 %107 to i32
  %109 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %91
  %113 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %114 = bitcast %union.i2c_smbus_data* %113 to i32*
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @SMBHSTDAT0, align 4
  %117 = call i32 @outb_p(i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %112, %91
  br label %235

119:                                              ; preds = %50
  %120 = load i32, i32* %9, align 4
  %121 = and i32 %120, 127
  %122 = shl i32 %121, 1
  %123 = load i8, i8* %11, align 1
  %124 = sext i8 %123 to i32
  %125 = and i32 %124, 1
  %126 = or i32 %122, %125
  %127 = load i32, i32* @SMBHSTADD, align 4
  %128 = call i32 @outb_p(i32 %126, i32 %127)
  store i32 133, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* @SMBHSTTYP, align 4
  %131 = call i32 @outb_p(i32 %129, i32 %130)
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @SMBHSTCMD, align 4
  %134 = call i32 @outb_p(i32 %132, i32 %133)
  %135 = load i8, i8* %11, align 1
  %136 = sext i8 %135 to i32
  %137 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %140, label %154

140:                                              ; preds = %119
  %141 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %142 = bitcast %union.i2c_smbus_data* %141 to i32*
  %143 = load i32, i32* %142, align 8
  %144 = and i32 %143, 255
  %145 = load i32, i32* @SMBHSTDAT0, align 4
  %146 = call i32 @outb_p(i32 %144, i32 %145)
  %147 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %148 = bitcast %union.i2c_smbus_data* %147 to i32*
  %149 = load i32, i32* %148, align 8
  %150 = and i32 %149, 65280
  %151 = ashr i32 %150, 8
  %152 = load i32, i32* @SMBHSTDAT1, align 4
  %153 = call i32 @outb_p(i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %140, %119
  br label %235

155:                                              ; preds = %50
  %156 = load i32, i32* %9, align 4
  %157 = and i32 %156, 127
  %158 = shl i32 %157, 1
  %159 = load i8, i8* %11, align 1
  %160 = sext i8 %159 to i32
  %161 = and i32 %160, 1
  %162 = or i32 %158, %161
  %163 = load i32, i32* @SMBHSTADD, align 4
  %164 = call i32 @outb_p(i32 %162, i32 %163)
  store i32 136, i32* %13, align 4
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* @SMBHSTTYP, align 4
  %167 = call i32 @outb_p(i32 %165, i32 %166)
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* @SMBHSTCMD, align 4
  %170 = call i32 @outb_p(i32 %168, i32 %169)
  %171 = load i8, i8* %11, align 1
  %172 = sext i8 %171 to i32
  %173 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %172, %174
  br i1 %175, label %176, label %227

176:                                              ; preds = %155
  %177 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %178 = bitcast %union.i2c_smbus_data* %177 to i32**
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %16, align 4
  %182 = load i32, i32* %16, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %176
  store i32 0, i32* %16, align 4
  %185 = load i32, i32* %16, align 4
  %186 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %187 = bitcast %union.i2c_smbus_data* %186 to i32**
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  store i32 %185, i32* %189, align 4
  br label %190

190:                                              ; preds = %184, %176
  %191 = load i32, i32* %16, align 4
  %192 = icmp sgt i32 %191, 32
  br i1 %192, label %193, label %199

193:                                              ; preds = %190
  store i32 32, i32* %16, align 4
  %194 = load i32, i32* %16, align 4
  %195 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %196 = bitcast %union.i2c_smbus_data* %195 to i32**
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  store i32 %194, i32* %198, align 4
  br label %199

199:                                              ; preds = %193, %190
  %200 = load i32, i32* %16, align 4
  %201 = load i32, i32* @SMBHSTDAT0, align 4
  %202 = call i32 @outb_p(i32 %200, i32 %201)
  %203 = load i32, i32* @SMBHSTTYP, align 4
  %204 = call i32 @inb_p(i32 %203)
  %205 = load i32, i32* @ALI1535_BLOCK_CLR, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @SMBHSTTYP, align 4
  %208 = call i32 @outb_p(i32 %206, i32 %207)
  store i32 1, i32* %15, align 4
  br label %209

209:                                              ; preds = %223, %199
  %210 = load i32, i32* %15, align 4
  %211 = load i32, i32* %16, align 4
  %212 = icmp sle i32 %210, %211
  br i1 %212, label %213, label %226

213:                                              ; preds = %209
  %214 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %215 = bitcast %union.i2c_smbus_data* %214 to i32**
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @SMBBLKDAT, align 4
  %222 = call i32 @outb_p(i32 %220, i32 %221)
  br label %223

223:                                              ; preds = %213
  %224 = load i32, i32* %15, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %15, align 4
  br label %209

226:                                              ; preds = %209
  br label %227

227:                                              ; preds = %226, %155
  br label %235

228:                                              ; preds = %50
  %229 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %230 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %229, i32 0, i32 0
  %231 = load i32, i32* %13, align 4
  %232 = call i32 @dev_warn(i32* %230, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %231)
  %233 = load i64, i64* @EOPNOTSUPP, align 8
  %234 = sub nsw i64 0, %233
  store i64 %234, i64* %19, align 8
  br label %325

235:                                              ; preds = %227, %154, %118, %90, %54
  %236 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %237 = call i64 @ali1535_transaction(%struct.i2c_adapter* %236)
  store i64 %237, i64* %19, align 8
  %238 = load i64, i64* %19, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %235
  br label %325

241:                                              ; preds = %235
  %242 = load i8, i8* %11, align 1
  %243 = sext i8 %242 to i32
  %244 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp eq i32 %243, %245
  br i1 %246, label %251, label %247

247:                                              ; preds = %241
  %248 = load i32, i32* %13, align 4
  %249 = load i32, i32* @ALI1535_QUICK, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %247, %241
  store i64 0, i64* %19, align 8
  br label %325

252:                                              ; preds = %247
  %253 = load i32, i32* %13, align 4
  switch i32 %253, label %324 [
    i32 135, label %254
    i32 134, label %259
    i32 133, label %264
    i32 136, label %273
  ]

254:                                              ; preds = %252
  %255 = load i32, i32* @SMBHSTDAT0, align 4
  %256 = call i32 @inb_p(i32 %255)
  %257 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %258 = bitcast %union.i2c_smbus_data* %257 to i32*
  store i32 %256, i32* %258, align 8
  br label %324

259:                                              ; preds = %252
  %260 = load i32, i32* @SMBHSTDAT0, align 4
  %261 = call i32 @inb_p(i32 %260)
  %262 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %263 = bitcast %union.i2c_smbus_data* %262 to i32*
  store i32 %261, i32* %263, align 8
  br label %324

264:                                              ; preds = %252
  %265 = load i32, i32* @SMBHSTDAT0, align 4
  %266 = call i32 @inb_p(i32 %265)
  %267 = load i32, i32* @SMBHSTDAT1, align 4
  %268 = call i32 @inb_p(i32 %267)
  %269 = shl i32 %268, 8
  %270 = add nsw i32 %266, %269
  %271 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %272 = bitcast %union.i2c_smbus_data* %271 to i32*
  store i32 %270, i32* %272, align 8
  br label %324

273:                                              ; preds = %252
  %274 = load i32, i32* @SMBHSTDAT0, align 4
  %275 = call i32 @inb_p(i32 %274)
  store i32 %275, i32* %16, align 4
  %276 = load i32, i32* %16, align 4
  %277 = icmp sgt i32 %276, 32
  br i1 %277, label %278, label %279

278:                                              ; preds = %273
  store i32 32, i32* %16, align 4
  br label %279

279:                                              ; preds = %278, %273
  %280 = load i32, i32* %16, align 4
  %281 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %282 = bitcast %union.i2c_smbus_data* %281 to i32**
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 0
  store i32 %280, i32* %284, align 4
  %285 = load i32, i32* @SMBHSTTYP, align 4
  %286 = call i32 @inb_p(i32 %285)
  %287 = load i32, i32* @ALI1535_BLOCK_CLR, align 4
  %288 = or i32 %286, %287
  %289 = load i32, i32* @SMBHSTTYP, align 4
  %290 = call i32 @outb_p(i32 %288, i32 %289)
  store i32 1, i32* %15, align 4
  br label %291

291:                                              ; preds = %320, %279
  %292 = load i32, i32* %15, align 4
  %293 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %294 = bitcast %union.i2c_smbus_data* %293 to i32**
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 0
  %297 = load i32, i32* %296, align 4
  %298 = icmp sle i32 %292, %297
  br i1 %298, label %299, label %323

299:                                              ; preds = %291
  %300 = load i32, i32* @SMBBLKDAT, align 4
  %301 = call i32 @inb_p(i32 %300)
  %302 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %303 = bitcast %union.i2c_smbus_data* %302 to i32**
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %15, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  store i32 %301, i32* %307, align 4
  %308 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %309 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %308, i32 0, i32 0
  %310 = load i32, i32* %16, align 4
  %311 = load i32, i32* %15, align 4
  %312 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %313 = bitcast %union.i2c_smbus_data* %312 to i32**
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %15, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @dev_dbg(i32* %309, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %310, i32 %311, i32 %318)
  br label %320

320:                                              ; preds = %299
  %321 = load i32, i32* %15, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %15, align 4
  br label %291

323:                                              ; preds = %291
  br label %324

324:                                              ; preds = %252, %323, %264, %259, %254
  br label %325

325:                                              ; preds = %324, %251, %240, %228
  %326 = load i64, i64* %19, align 8
  ret i64 %326
}

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i64 @ali1535_transaction(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
