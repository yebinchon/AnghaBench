; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-i801.c_i801_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-i801.c_i801_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32 }
%struct.i801_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FEATURE_SMBUS_PEC = common dso_local global i32 0, align 4
@I2C_CLIENT_PEC = common dso_local global i16 0, align 2
@I801_QUICK = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [28 x i8] c"Unsupported transaction %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SMBAUXCTL_CRC = common dso_local global i32 0, align 4
@ENABLE_INT9 = common dso_local global i32 0, align 4
@SMBAUXCTL_E32B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @i801_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i801_access(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
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
  %20 = alloca %struct.i801_priv*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %22 = call %struct.i801_priv* @i2c_get_adapdata(%struct.i2c_adapter* %21)
  store %struct.i801_priv* %22, %struct.i801_priv** %20, align 8
  %23 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %24 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @FEATURE_SMBUS_PEC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %7
  %30 = load i16, i16* %11, align 2
  %31 = zext i16 %30 to i32
  %32 = load i16, i16* @I2C_CLIENT_PEC, align 2
  %33 = zext i16 %32 to i32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 132
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 133
  br label %42

42:                                               ; preds = %39, %36, %29, %7
  %43 = phi i1 [ false, %36 ], [ false, %29 ], [ false, %7 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %14, align 4
  switch i32 %45, label %183 [
    i32 132, label %46
    i32 135, label %58
    i32 134, label %80
    i32 131, label %108
    i32 136, label %145
    i32 133, label %160
  ]

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %47, 127
  %49 = shl i32 %48, 1
  %50 = load i8, i8* %12, align 1
  %51 = sext i8 %50 to i32
  %52 = and i32 %51, 1
  %53 = or i32 %49, %52
  %54 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %55 = call i32 @SMBHSTADD(%struct.i801_priv* %54)
  %56 = call i32 @outb_p(i32 %53, i32 %55)
  %57 = load i32, i32* @I801_QUICK, align 4
  store i32 %57, i32* %19, align 4
  br label %192

58:                                               ; preds = %42
  %59 = load i32, i32* %10, align 4
  %60 = and i32 %59, 127
  %61 = shl i32 %60, 1
  %62 = load i8, i8* %12, align 1
  %63 = sext i8 %62 to i32
  %64 = and i32 %63, 1
  %65 = or i32 %61, %64
  %66 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %67 = call i32 @SMBHSTADD(%struct.i801_priv* %66)
  %68 = call i32 @outb_p(i32 %65, i32 %67)
  %69 = load i8, i8* %12, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %58
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %77 = call i32 @SMBHSTCMD(%struct.i801_priv* %76)
  %78 = call i32 @outb_p(i32 %75, i32 %77)
  br label %79

79:                                               ; preds = %74, %58
  store i32 130, i32* %19, align 4
  br label %192

80:                                               ; preds = %42
  %81 = load i32, i32* %10, align 4
  %82 = and i32 %81, 127
  %83 = shl i32 %82, 1
  %84 = load i8, i8* %12, align 1
  %85 = sext i8 %84 to i32
  %86 = and i32 %85, 1
  %87 = or i32 %83, %86
  %88 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %89 = call i32 @SMBHSTADD(%struct.i801_priv* %88)
  %90 = call i32 @outb_p(i32 %87, i32 %89)
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %93 = call i32 @SMBHSTCMD(%struct.i801_priv* %92)
  %94 = call i32 @outb_p(i32 %91, i32 %93)
  %95 = load i8, i8* %12, align 1
  %96 = sext i8 %95 to i32
  %97 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %80
  %101 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %102 = bitcast %union.i2c_smbus_data* %101 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %105 = call i32 @SMBHSTDAT0(%struct.i801_priv* %104)
  %106 = call i32 @outb_p(i32 %103, i32 %105)
  br label %107

107:                                              ; preds = %100, %80
  store i32 129, i32* %19, align 4
  br label %192

108:                                              ; preds = %42
  %109 = load i32, i32* %10, align 4
  %110 = and i32 %109, 127
  %111 = shl i32 %110, 1
  %112 = load i8, i8* %12, align 1
  %113 = sext i8 %112 to i32
  %114 = and i32 %113, 1
  %115 = or i32 %111, %114
  %116 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %117 = call i32 @SMBHSTADD(%struct.i801_priv* %116)
  %118 = call i32 @outb_p(i32 %115, i32 %117)
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %121 = call i32 @SMBHSTCMD(%struct.i801_priv* %120)
  %122 = call i32 @outb_p(i32 %119, i32 %121)
  %123 = load i8, i8* %12, align 1
  %124 = sext i8 %123 to i32
  %125 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %144

128:                                              ; preds = %108
  %129 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %130 = bitcast %union.i2c_smbus_data* %129 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 255
  %133 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %134 = call i32 @SMBHSTDAT0(%struct.i801_priv* %133)
  %135 = call i32 @outb_p(i32 %132, i32 %134)
  %136 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %137 = bitcast %union.i2c_smbus_data* %136 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 65280
  %140 = ashr i32 %139, 8
  %141 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %142 = call i32 @SMBHSTDAT1(%struct.i801_priv* %141)
  %143 = call i32 @outb_p(i32 %140, i32 %142)
  br label %144

144:                                              ; preds = %128, %108
  store i32 128, i32* %19, align 4
  br label %192

145:                                              ; preds = %42
  %146 = load i32, i32* %10, align 4
  %147 = and i32 %146, 127
  %148 = shl i32 %147, 1
  %149 = load i8, i8* %12, align 1
  %150 = sext i8 %149 to i32
  %151 = and i32 %150, 1
  %152 = or i32 %148, %151
  %153 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %154 = call i32 @SMBHSTADD(%struct.i801_priv* %153)
  %155 = call i32 @outb_p(i32 %152, i32 %154)
  %156 = load i32, i32* %13, align 4
  %157 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %158 = call i32 @SMBHSTCMD(%struct.i801_priv* %157)
  %159 = call i32 @outb_p(i32 %156, i32 %158)
  store i32 1, i32* %17, align 4
  br label %192

160:                                              ; preds = %42
  %161 = load i32, i32* %10, align 4
  %162 = and i32 %161, 127
  %163 = shl i32 %162, 1
  %164 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %165 = call i32 @SMBHSTADD(%struct.i801_priv* %164)
  %166 = call i32 @outb_p(i32 %163, i32 %165)
  %167 = load i8, i8* %12, align 1
  %168 = sext i8 %167 to i32
  %169 = load i8, i8* @I2C_SMBUS_READ, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %168, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %160
  %173 = load i32, i32* %13, align 4
  %174 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %175 = call i32 @SMBHSTDAT1(%struct.i801_priv* %174)
  %176 = call i32 @outb_p(i32 %173, i32 %175)
  br label %182

177:                                              ; preds = %160
  %178 = load i32, i32* %13, align 4
  %179 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %180 = call i32 @SMBHSTCMD(%struct.i801_priv* %179)
  %181 = call i32 @outb_p(i32 %178, i32 %180)
  br label %182

182:                                              ; preds = %177, %172
  store i32 1, i32* %17, align 4
  br label %192

183:                                              ; preds = %42
  %184 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %185 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %184, i32 0, i32 1
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i32, i32* %14, align 4
  %189 = call i32 @dev_err(i32* %187, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* @EOPNOTSUPP, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %8, align 4
  br label %290

192:                                              ; preds = %182, %145, %144, %107, %79, %46
  %193 = load i32, i32* %16, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %192
  %196 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %197 = call i32 @SMBAUXCTL(%struct.i801_priv* %196)
  %198 = call i32 @inb_p(i32 %197)
  %199 = load i32, i32* @SMBAUXCTL_CRC, align 4
  %200 = or i32 %198, %199
  %201 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %202 = call i32 @SMBAUXCTL(%struct.i801_priv* %201)
  %203 = call i32 @outb_p(i32 %200, i32 %202)
  br label %214

204:                                              ; preds = %192
  %205 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %206 = call i32 @SMBAUXCTL(%struct.i801_priv* %205)
  %207 = call i32 @inb_p(i32 %206)
  %208 = load i32, i32* @SMBAUXCTL_CRC, align 4
  %209 = xor i32 %208, -1
  %210 = and i32 %207, %209
  %211 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %212 = call i32 @SMBAUXCTL(%struct.i801_priv* %211)
  %213 = call i32 @outb_p(i32 %210, i32 %212)
  br label %214

214:                                              ; preds = %204, %195
  %215 = load i32, i32* %17, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %214
  %218 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %219 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %220 = load i8, i8* %12, align 1
  %221 = load i32, i32* %14, align 4
  %222 = load i32, i32* %16, align 4
  %223 = call i32 @i801_block_transaction(%struct.i801_priv* %218, %union.i2c_smbus_data* %219, i8 signext %220, i32 %221, i32 %222)
  store i32 %223, i32* %18, align 4
  br label %230

224:                                              ; preds = %214
  %225 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %226 = load i32, i32* %19, align 4
  %227 = load i32, i32* @ENABLE_INT9, align 4
  %228 = or i32 %226, %227
  %229 = call i32 @i801_transaction(%struct.i801_priv* %225, i32 %228)
  store i32 %229, i32* %18, align 4
  br label %230

230:                                              ; preds = %224, %217
  %231 = load i32, i32* %16, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %230
  %234 = load i32, i32* %17, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %248

236:                                              ; preds = %233, %230
  %237 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %238 = call i32 @SMBAUXCTL(%struct.i801_priv* %237)
  %239 = call i32 @inb_p(i32 %238)
  %240 = load i32, i32* @SMBAUXCTL_CRC, align 4
  %241 = load i32, i32* @SMBAUXCTL_E32B, align 4
  %242 = or i32 %240, %241
  %243 = xor i32 %242, -1
  %244 = and i32 %239, %243
  %245 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %246 = call i32 @SMBAUXCTL(%struct.i801_priv* %245)
  %247 = call i32 @outb_p(i32 %244, i32 %246)
  br label %248

248:                                              ; preds = %236, %233
  %249 = load i32, i32* %17, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %248
  %252 = load i32, i32* %18, align 4
  store i32 %252, i32* %8, align 4
  br label %290

253:                                              ; preds = %248
  %254 = load i32, i32* %18, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %253
  %257 = load i32, i32* %18, align 4
  store i32 %257, i32* %8, align 4
  br label %290

258:                                              ; preds = %253
  %259 = load i8, i8* %12, align 1
  %260 = sext i8 %259 to i32
  %261 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %260, %262
  br i1 %263, label %268, label %264

264:                                              ; preds = %258
  %265 = load i32, i32* %19, align 4
  %266 = load i32, i32* @I801_QUICK, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %264, %258
  store i32 0, i32* %8, align 4
  br label %290

269:                                              ; preds = %264
  %270 = load i32, i32* %19, align 4
  %271 = and i32 %270, 127
  switch i32 %271, label %289 [
    i32 130, label %272
    i32 129, label %272
    i32 128, label %278
  ]

272:                                              ; preds = %269, %269
  %273 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %274 = call i32 @SMBHSTDAT0(%struct.i801_priv* %273)
  %275 = call i32 @inb_p(i32 %274)
  %276 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %277 = bitcast %union.i2c_smbus_data* %276 to i32*
  store i32 %275, i32* %277, align 4
  br label %289

278:                                              ; preds = %269
  %279 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %280 = call i32 @SMBHSTDAT0(%struct.i801_priv* %279)
  %281 = call i32 @inb_p(i32 %280)
  %282 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %283 = call i32 @SMBHSTDAT1(%struct.i801_priv* %282)
  %284 = call i32 @inb_p(i32 %283)
  %285 = shl i32 %284, 8
  %286 = add nsw i32 %281, %285
  %287 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %288 = bitcast %union.i2c_smbus_data* %287 to i32*
  store i32 %286, i32* %288, align 4
  br label %289

289:                                              ; preds = %269, %278, %272
  store i32 0, i32* %8, align 4
  br label %290

290:                                              ; preds = %289, %268, %256, %251, %183
  %291 = load i32, i32* %8, align 4
  ret i32 %291
}

declare dso_local %struct.i801_priv* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @SMBHSTADD(%struct.i801_priv*) #1

declare dso_local i32 @SMBHSTCMD(%struct.i801_priv*) #1

declare dso_local i32 @SMBHSTDAT0(%struct.i801_priv*) #1

declare dso_local i32 @SMBHSTDAT1(%struct.i801_priv*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @SMBAUXCTL(%struct.i801_priv*) #1

declare dso_local i32 @i801_block_transaction(%struct.i801_priv*, %union.i2c_smbus_data*, i8 signext, i32, i32) #1

declare dso_local i32 @i801_transaction(%struct.i801_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
