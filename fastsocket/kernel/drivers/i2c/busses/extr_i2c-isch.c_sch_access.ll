; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-isch.c_sch_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-isch.c_sch_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32* }

@SMBHSTSTS = common dso_local global i8* null, align 8
@sch_adapter = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [19 x i8] c"SMBus busy (%02x)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"access size: %d %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@SMBHSTADD = common dso_local global i8* null, align 8
@SCH_QUICK = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@SMBHSTCMD = common dso_local global i8* null, align 8
@SMBHSTDAT0 = common dso_local global i8* null, align 8
@SMBHSTDAT1 = common dso_local global i8* null, align 8
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SMBBLKDAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Unsupported transaction %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"write size %d to 0x%04x\0A\00", align 1
@SMBHSTCNT = common dso_local global i8* null, align 8
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @sch_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sch_access(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
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
  %20 = load i8*, i8** @SMBHSTSTS, align 8
  %21 = call i32 @inb(i8* %20)
  %22 = and i32 %21, 15
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* %18, align 4
  %24 = and i32 %23, 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %7
  %27 = load i32, i32* %18, align 4
  %28 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch_adapter, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %283

31:                                               ; preds = %7
  %32 = load i32, i32* %14, align 4
  %33 = load i8, i8* %12, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %38 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch_adapter, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %32, i8* %37)
  %39 = load i32, i32* %14, align 4
  switch i32 %39, label %180 [
    i32 133, label %40
    i32 135, label %49
    i32 134, label %67
    i32 132, label %90
    i32 136, label %121
  ]

40:                                               ; preds = %31
  %41 = load i32, i32* %10, align 4
  %42 = shl i32 %41, 1
  %43 = load i8, i8* %12, align 1
  %44 = sext i8 %43 to i32
  %45 = or i32 %42, %44
  %46 = load i8*, i8** @SMBHSTADD, align 8
  %47 = call i32 @outb(i32 %45, i8* %46)
  %48 = load i32, i32* @SCH_QUICK, align 4
  store i32 %48, i32* %14, align 4
  br label %187

49:                                               ; preds = %31
  %50 = load i32, i32* %10, align 4
  %51 = shl i32 %50, 1
  %52 = load i8, i8* %12, align 1
  %53 = sext i8 %52 to i32
  %54 = or i32 %51, %53
  %55 = load i8*, i8** @SMBHSTADD, align 8
  %56 = call i32 @outb(i32 %54, i8* %55)
  %57 = load i8, i8* %12, align 1
  %58 = sext i8 %57 to i32
  %59 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %49
  %63 = load i32, i32* %13, align 4
  %64 = load i8*, i8** @SMBHSTCMD, align 8
  %65 = call i32 @outb(i32 %63, i8* %64)
  br label %66

66:                                               ; preds = %62, %49
  store i32 130, i32* %14, align 4
  br label %187

67:                                               ; preds = %31
  %68 = load i32, i32* %10, align 4
  %69 = shl i32 %68, 1
  %70 = load i8, i8* %12, align 1
  %71 = sext i8 %70 to i32
  %72 = or i32 %69, %71
  %73 = load i8*, i8** @SMBHSTADD, align 8
  %74 = call i32 @outb(i32 %72, i8* %73)
  %75 = load i32, i32* %13, align 4
  %76 = load i8*, i8** @SMBHSTCMD, align 8
  %77 = call i32 @outb(i32 %75, i8* %76)
  %78 = load i8, i8* %12, align 1
  %79 = sext i8 %78 to i32
  %80 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %67
  %84 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %85 = bitcast %union.i2c_smbus_data* %84 to i32*
  %86 = load i32, i32* %85, align 8
  %87 = load i8*, i8** @SMBHSTDAT0, align 8
  %88 = call i32 @outb(i32 %86, i8* %87)
  br label %89

89:                                               ; preds = %83, %67
  store i32 129, i32* %14, align 4
  br label %187

90:                                               ; preds = %31
  %91 = load i32, i32* %10, align 4
  %92 = shl i32 %91, 1
  %93 = load i8, i8* %12, align 1
  %94 = sext i8 %93 to i32
  %95 = or i32 %92, %94
  %96 = load i8*, i8** @SMBHSTADD, align 8
  %97 = call i32 @outb(i32 %95, i8* %96)
  %98 = load i32, i32* %13, align 4
  %99 = load i8*, i8** @SMBHSTCMD, align 8
  %100 = call i32 @outb(i32 %98, i8* %99)
  %101 = load i8, i8* %12, align 1
  %102 = sext i8 %101 to i32
  %103 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %90
  %107 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %108 = bitcast %union.i2c_smbus_data* %107 to i32*
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, 255
  %111 = load i8*, i8** @SMBHSTDAT0, align 8
  %112 = call i32 @outb(i32 %110, i8* %111)
  %113 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %114 = bitcast %union.i2c_smbus_data* %113 to i32*
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, 65280
  %117 = ashr i32 %116, 8
  %118 = load i8*, i8** @SMBHSTDAT1, align 8
  %119 = call i32 @outb(i32 %117, i8* %118)
  br label %120

120:                                              ; preds = %106, %90
  store i32 128, i32* %14, align 4
  br label %187

121:                                              ; preds = %31
  %122 = load i32, i32* %10, align 4
  %123 = shl i32 %122, 1
  %124 = load i8, i8* %12, align 1
  %125 = sext i8 %124 to i32
  %126 = or i32 %123, %125
  %127 = load i8*, i8** @SMBHSTADD, align 8
  %128 = call i32 @outb(i32 %126, i8* %127)
  %129 = load i32, i32* %13, align 4
  %130 = load i8*, i8** @SMBHSTCMD, align 8
  %131 = call i32 @outb(i32 %129, i8* %130)
  %132 = load i8, i8* %12, align 1
  %133 = sext i8 %132 to i32
  %134 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %179

137:                                              ; preds = %121
  %138 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %139 = bitcast %union.i2c_smbus_data* %138 to i32**
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %17, align 4
  %143 = load i32, i32* %17, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %137
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %145, %137
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %8, align 4
  br label %283

152:                                              ; preds = %145
  %153 = load i32, i32* %17, align 4
  %154 = load i8*, i8** @SMBHSTDAT0, align 8
  %155 = call i32 @outb(i32 %153, i8* %154)
  store i32 1, i32* %16, align 4
  br label %156

156:                                              ; preds = %175, %152
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %17, align 4
  %159 = icmp sle i32 %157, %158
  br i1 %159, label %160, label %178

160:                                              ; preds = %156
  %161 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %162 = bitcast %union.i2c_smbus_data* %161 to i32**
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %16, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @SMBBLKDAT, align 4
  %169 = load i32, i32* %16, align 4
  %170 = add nsw i32 %168, %169
  %171 = sub nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = inttoptr i64 %172 to i8*
  %174 = call i32 @outb(i32 %167, i8* %173)
  br label %175

175:                                              ; preds = %160
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %16, align 4
  br label %156

178:                                              ; preds = %156
  br label %179

179:                                              ; preds = %178, %121
  store i32 131, i32* %14, align 4
  br label %187

180:                                              ; preds = %31
  %181 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %182 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %181, i32 0, i32 0
  %183 = load i32, i32* %14, align 4
  %184 = call i32 @dev_warn(i32* %182, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* @EOPNOTSUPP, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %8, align 4
  br label %283

187:                                              ; preds = %179, %120, %89, %66, %40
  %188 = load i32, i32* %14, align 4
  %189 = load i8*, i8** @SMBHSTCNT, align 8
  %190 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch_adapter, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %188, i8* %189)
  %191 = load i8*, i8** @SMBHSTCNT, align 8
  %192 = call i32 @inb(i8* %191)
  %193 = and i32 %192, 176
  %194 = load i32, i32* %14, align 4
  %195 = and i32 %194, 7
  %196 = or i32 %193, %195
  %197 = load i8*, i8** @SMBHSTCNT, align 8
  %198 = call i32 @outb(i32 %196, i8* %197)
  %199 = call i32 (...) @sch_transaction()
  store i32 %199, i32* %19, align 4
  %200 = load i32, i32* %19, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %187
  %203 = load i32, i32* %19, align 4
  store i32 %203, i32* %8, align 4
  br label %283

204:                                              ; preds = %187
  %205 = load i8, i8* %12, align 1
  %206 = sext i8 %205 to i32
  %207 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %206, %208
  br i1 %209, label %214, label %210

210:                                              ; preds = %204
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* @SCH_QUICK, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %210, %204
  store i32 0, i32* %8, align 4
  br label %283

215:                                              ; preds = %210
  %216 = load i32, i32* %14, align 4
  switch i32 %216, label %282 [
    i32 130, label %217
    i32 129, label %217
    i32 128, label %222
    i32 131, label %231
  ]

217:                                              ; preds = %215, %215
  %218 = load i8*, i8** @SMBHSTDAT0, align 8
  %219 = call i32 @inb(i8* %218)
  %220 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %221 = bitcast %union.i2c_smbus_data* %220 to i32*
  store i32 %219, i32* %221, align 8
  br label %282

222:                                              ; preds = %215
  %223 = load i8*, i8** @SMBHSTDAT0, align 8
  %224 = call i32 @inb(i8* %223)
  %225 = load i8*, i8** @SMBHSTDAT1, align 8
  %226 = call i32 @inb(i8* %225)
  %227 = shl i32 %226, 8
  %228 = add nsw i32 %224, %227
  %229 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %230 = bitcast %union.i2c_smbus_data* %229 to i32*
  store i32 %228, i32* %230, align 8
  br label %282

231:                                              ; preds = %215
  %232 = load i8*, i8** @SMBHSTDAT0, align 8
  %233 = call i32 @inb(i8* %232)
  %234 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %235 = bitcast %union.i2c_smbus_data* %234 to i32**
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  store i32 %233, i32* %237, align 4
  %238 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %239 = bitcast %union.i2c_smbus_data* %238 to i32**
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %252, label %244

244:                                              ; preds = %231
  %245 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %246 = bitcast %union.i2c_smbus_data* %245 to i32**
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %251 = icmp sgt i32 %249, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %244, %231
  %253 = load i32, i32* @EPROTO, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %8, align 4
  br label %283

255:                                              ; preds = %244
  store i32 1, i32* %16, align 4
  br label %256

256:                                              ; preds = %278, %255
  %257 = load i32, i32* %16, align 4
  %258 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %259 = bitcast %union.i2c_smbus_data* %258 to i32**
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  %262 = load i32, i32* %261, align 4
  %263 = icmp sle i32 %257, %262
  br i1 %263, label %264, label %281

264:                                              ; preds = %256
  %265 = load i32, i32* @SMBBLKDAT, align 4
  %266 = load i32, i32* %16, align 4
  %267 = add nsw i32 %265, %266
  %268 = sub nsw i32 %267, 1
  %269 = sext i32 %268 to i64
  %270 = inttoptr i64 %269 to i8*
  %271 = call i32 @inb(i8* %270)
  %272 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %273 = bitcast %union.i2c_smbus_data* %272 to i32**
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %16, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  store i32 %271, i32* %277, align 4
  br label %278

278:                                              ; preds = %264
  %279 = load i32, i32* %16, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %16, align 4
  br label %256

281:                                              ; preds = %256
  br label %282

282:                                              ; preds = %215, %281, %222, %217
  store i32 0, i32* %8, align 4
  br label %283

283:                                              ; preds = %282, %252, %214, %202, %180, %149, %26
  %284 = load i32, i32* %8, align 4
  ret i32 %284
}

declare dso_local i32 @inb(i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @outb(i32, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @sch_transaction(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
