; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm90.c_lm90_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm90.c_lm90_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@lm90 = common dso_local global i32 0, align 4
@LM90_REG_R_MAN_ID = common dso_local global i32 0, align 4
@LM90_REG_R_CHIP_ID = common dso_local global i32 0, align 4
@LM90_REG_R_CONFIG1 = common dso_local global i32 0, align 4
@LM90_REG_R_CONVRATE = common dso_local global i32 0, align 4
@LM90_REG_R_CONFIG2 = common dso_local global i32 0, align 4
@lm99 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Assuming LM99 chip at 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"If it is an LM89, pass force_lm86=%d,0x%02x when loading the lm90 driver\0A\00", align 1
@lm86 = common dso_local global i32 0, align 4
@adm1032 = common dso_local global i32 0, align 4
@adt7461 = common dso_local global i32 0, align 4
@max6657 = common dso_local global i32 0, align 4
@max6680 = common dso_local global i32 0, align 4
@max6646 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"Unsupported chip at 0x%02x (man_id=0x%02X, chip_id=0x%02X)\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"lm90\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"adm1032\00", align 1
@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@I2C_CLIENT_PEC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"lm99\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"lm86\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"max6657\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"max6680\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"adt7461\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"max6646\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @lm90_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm90_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 1
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %17, align 8
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %8, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %23 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %24 = call i64 @i2c_check_functionality(%struct.i2c_adapter* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %293

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @lm90, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %228

37:                                               ; preds = %34
  %38 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %39 = load i32, i32* @LM90_REG_R_MAN_ID, align 4
  %40 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %37
  %43 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %44 = load i32, i32* @LM90_REG_R_CHIP_ID, align 4
  %45 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %42
  %48 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %49 = load i32, i32* @LM90_REG_R_CONFIG1, align 4
  %50 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %54 = load i32, i32* @LM90_REG_R_CONVRATE, align 4
  %55 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %53, i32 %54)
  store i32 %55, i32* %14, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52, %47, %42, %37
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %293

60:                                               ; preds = %52
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 76
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 77
  br i1 %65, label %66, label %126

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %11, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %126

69:                                               ; preds = %66
  %70 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %71 = load i32, i32* @LM90_REG_R_CONFIG2, align 4
  %72 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %70, i32 %71)
  store i32 %72, i32* %15, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %293

77:                                               ; preds = %69
  %78 = load i32, i32* %13, align 4
  %79 = and i32 %78, 42
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %125

81:                                               ; preds = %77
  %82 = load i32, i32* %15, align 4
  %83 = and i32 %82, 248
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %125

85:                                               ; preds = %81
  %86 = load i32, i32* %14, align 4
  %87 = icmp sle i32 %86, 9
  br i1 %87, label %88, label %125

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = icmp eq i32 %89, 76
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i32, i32* %12, align 4
  %93 = and i32 %92, 240
  %94 = icmp eq i32 %93, 32
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* @lm90, align 4
  store i32 %96, i32* %6, align 4
  br label %124

97:                                               ; preds = %91, %88
  %98 = load i32, i32* %12, align 4
  %99 = and i32 %98, 240
  %100 = icmp eq i32 %99, 48
  br i1 %100, label %101, label %113

101:                                              ; preds = %97
  %102 = load i32, i32* @lm99, align 4
  store i32 %102, i32* %6, align 4
  %103 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %104 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %103, i32 0, i32 0
  %105 = load i32, i32* %9, align 4
  %106 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %108 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %107, i32 0, i32 0
  %109 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %110 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %109)
  %111 = load i32, i32* %9, align 4
  %112 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %108, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %110, i32 %111)
  br label %123

113:                                              ; preds = %97
  %114 = load i32, i32* %9, align 4
  %115 = icmp eq i32 %114, 76
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load i32, i32* %12, align 4
  %118 = and i32 %117, 240
  %119 = icmp eq i32 %118, 16
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32, i32* @lm86, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %120, %116, %113
  br label %123

123:                                              ; preds = %122, %101
  br label %124

124:                                              ; preds = %123, %95
  br label %125

125:                                              ; preds = %124, %85, %81, %77
  br label %215

126:                                              ; preds = %66, %63
  %127 = load i32, i32* %9, align 4
  %128 = icmp eq i32 %127, 76
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %9, align 4
  %131 = icmp eq i32 %130, 77
  br i1 %131, label %132, label %162

132:                                              ; preds = %129, %126
  %133 = load i32, i32* %11, align 4
  %134 = icmp eq i32 %133, 65
  br i1 %134, label %135, label %162

135:                                              ; preds = %132
  %136 = load i32, i32* %12, align 4
  %137 = and i32 %136, 240
  %138 = icmp eq i32 %137, 64
  br i1 %138, label %139, label %148

139:                                              ; preds = %135
  %140 = load i32, i32* %13, align 4
  %141 = and i32 %140, 63
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load i32, i32* %14, align 4
  %145 = icmp sle i32 %144, 10
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = load i32, i32* @adm1032, align 4
  store i32 %147, i32* %6, align 4
  br label %161

148:                                              ; preds = %143, %139, %135
  %149 = load i32, i32* %12, align 4
  %150 = icmp eq i32 %149, 81
  br i1 %150, label %151, label %160

151:                                              ; preds = %148
  %152 = load i32, i32* %13, align 4
  %153 = and i32 %152, 27
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %151
  %156 = load i32, i32* %14, align 4
  %157 = icmp sle i32 %156, 10
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i32, i32* @adt7461, align 4
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %158, %155, %151, %148
  br label %161

161:                                              ; preds = %160, %146
  br label %214

162:                                              ; preds = %132, %129
  %163 = load i32, i32* %11, align 4
  %164 = icmp eq i32 %163, 77
  br i1 %164, label %165, label %213

165:                                              ; preds = %162
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %186

169:                                              ; preds = %165
  %170 = load i32, i32* %9, align 4
  %171 = icmp eq i32 %170, 76
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %9, align 4
  %174 = icmp eq i32 %173, 77
  br i1 %174, label %175, label %186

175:                                              ; preds = %172, %169
  %176 = load i32, i32* %13, align 4
  %177 = and i32 %176, 31
  %178 = load i32, i32* %11, align 4
  %179 = and i32 %178, 15
  %180 = icmp eq i32 %177, %179
  br i1 %180, label %181, label %186

181:                                              ; preds = %175
  %182 = load i32, i32* %14, align 4
  %183 = icmp sle i32 %182, 9
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = load i32, i32* @max6657, align 4
  store i32 %185, i32* %6, align 4
  br label %212

186:                                              ; preds = %181, %175, %172, %165
  %187 = load i32, i32* %12, align 4
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %198

189:                                              ; preds = %186
  %190 = load i32, i32* %13, align 4
  %191 = and i32 %190, 3
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %189
  %194 = load i32, i32* %14, align 4
  %195 = icmp sle i32 %194, 7
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = load i32, i32* @max6680, align 4
  store i32 %197, i32* %6, align 4
  br label %211

198:                                              ; preds = %193, %189, %186
  %199 = load i32, i32* %12, align 4
  %200 = icmp eq i32 %199, 89
  br i1 %200, label %201, label %210

201:                                              ; preds = %198
  %202 = load i32, i32* %13, align 4
  %203 = and i32 %202, 63
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %201
  %206 = load i32, i32* %14, align 4
  %207 = icmp sle i32 %206, 7
  br i1 %207, label %208, label %210

208:                                              ; preds = %205
  %209 = load i32, i32* @max6646, align 4
  store i32 %209, i32* %6, align 4
  br label %210

210:                                              ; preds = %208, %205, %201, %198
  br label %211

211:                                              ; preds = %210, %196
  br label %212

212:                                              ; preds = %211, %184
  br label %213

213:                                              ; preds = %212, %162
  br label %214

214:                                              ; preds = %213, %161
  br label %215

215:                                              ; preds = %214, %125
  %216 = load i32, i32* %6, align 4
  %217 = icmp sle i32 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %215
  %219 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %220 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %219, i32 0, i32 0
  %221 = load i32, i32* %9, align 4
  %222 = load i32, i32* %11, align 4
  %223 = load i32, i32* %12, align 4
  %224 = call i32 @dev_dbg(i32* %220, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %221, i32 %222, i32 %223)
  %225 = load i32, i32* @ENODEV, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %4, align 4
  br label %293

227:                                              ; preds = %215
  br label %228

228:                                              ; preds = %227, %34
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* @lm90, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %228
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %286

233:                                              ; preds = %228
  %234 = load i32, i32* %6, align 4
  %235 = load i32, i32* @adm1032, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %249

237:                                              ; preds = %233
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  %238 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %239 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %240 = call i64 @i2c_check_functionality(%struct.i2c_adapter* %238, i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %237
  %243 = load i32, i32* @I2C_CLIENT_PEC, align 4
  %244 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %245 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 4
  br label %248

248:                                              ; preds = %242, %237
  br label %285

249:                                              ; preds = %233
  %250 = load i32, i32* %6, align 4
  %251 = load i32, i32* @lm99, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %249
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %284

254:                                              ; preds = %249
  %255 = load i32, i32* %6, align 4
  %256 = load i32, i32* @lm86, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %254
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %10, align 8
  br label %283

259:                                              ; preds = %254
  %260 = load i32, i32* %6, align 4
  %261 = load i32, i32* @max6657, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %259
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %10, align 8
  br label %282

264:                                              ; preds = %259
  %265 = load i32, i32* %6, align 4
  %266 = load i32, i32* @max6680, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %264
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %10, align 8
  br label %281

269:                                              ; preds = %264
  %270 = load i32, i32* %6, align 4
  %271 = load i32, i32* @adt7461, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %269
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %10, align 8
  br label %280

274:                                              ; preds = %269
  %275 = load i32, i32* %6, align 4
  %276 = load i32, i32* @max6646, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %274
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %10, align 8
  br label %279

279:                                              ; preds = %278, %274
  br label %280

280:                                              ; preds = %279, %273
  br label %281

281:                                              ; preds = %280, %268
  br label %282

282:                                              ; preds = %281, %263
  br label %283

283:                                              ; preds = %282, %258
  br label %284

284:                                              ; preds = %283, %253
  br label %285

285:                                              ; preds = %284, %248
  br label %286

286:                                              ; preds = %285, %232
  %287 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %288 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load i8*, i8** %10, align 8
  %291 = load i32, i32* @I2C_NAME_SIZE, align 4
  %292 = call i32 @strlcpy(i32 %289, i8* %290, i32 %291)
  store i32 0, i32* %4, align 4
  br label %293

293:                                              ; preds = %286, %218, %74, %57, %26
  %294 = load i32, i32* %4, align 4
  ret i32 %294
}

declare dso_local i64 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
