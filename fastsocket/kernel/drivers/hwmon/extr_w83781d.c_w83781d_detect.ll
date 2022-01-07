; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_w83781d_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_w83781d_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }
%struct.w83781d_data = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@W83781D_REG_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Detection of w83781d chip failed at step 3\0A\00", align 1
@W83781D_REG_BANK = common dso_local global i32 0, align 4
@W83781D_REG_CHIPMAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Detection of w83781d chip failed at step 4\0A\00", align 1
@W83781D_REG_I2C_ADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Detection of w83781d chip failed at step 5\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"w83781d chip vendor is neither Winbond nor Asus\0A\00", align 1
@W83781D_REG_WCHIPID = common dso_local global i32 0, align 4
@w83781d = common dso_local global i32 0, align 4
@w83782d = common dso_local global i32 0, align 4
@w83783s = common dso_local global i32 0, align 4
@as99127f = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [63 x i8] c"Ignoring 'force' parameter for unknown chip at address 0x%02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"Device at 0x%02x appears to be the same as ISA device\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"w83781d\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"w83782d\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"w83783s\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"as99127f\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @w83781d_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83781d_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.w83781d_data*, align 8
  %11 = alloca %struct.i2c_adapter*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = call %struct.w83781d_data* (...) @w83781d_data_if_isa()
  store %struct.w83781d_data* %15, %struct.w83781d_data** %10, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 1
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %17, align 8
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %11, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %12, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %23 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %24 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %252

29:                                               ; preds = %3
  %30 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %31 = icmp ne %struct.w83781d_data* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %34 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %109

39:                                               ; preds = %36
  %40 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %41 = load i32, i32* @W83781D_REG_CONFIG, align 4
  %42 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %40, i32 %41)
  %43 = and i32 %42, 128
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %47 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %46, i32 0, i32 0
  %48 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %47, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %242

49:                                               ; preds = %39
  %50 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %51 = load i32, i32* @W83781D_REG_BANK, align 4
  %52 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %54 = load i32, i32* @W83781D_REG_CHIPMAN, align 4
  %55 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, 7
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %83, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, 128
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 163
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 195
  br i1 %68, label %79, label %69

69:                                               ; preds = %66, %63, %59
  %70 = load i32, i32* %8, align 4
  %71 = and i32 %70, 128
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 92
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 18
  br i1 %78, label %79, label %83

79:                                               ; preds = %76, %66
  %80 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %81 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %80, i32 0, i32 0
  %82 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %81, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %242

83:                                               ; preds = %76, %73, %69, %49
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, 128
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %88, 163
  br i1 %89, label %97, label %90

90:                                               ; preds = %87, %83
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, 128
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  %96 = icmp eq i32 %95, 92
  br i1 %96, label %97, label %108

97:                                               ; preds = %94, %87
  %98 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %99 = load i32, i32* @W83781D_REG_I2C_ADDR, align 4
  %100 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %98, i32 %99)
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %105 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %104, i32 0, i32 0
  %106 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %105, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %242

107:                                              ; preds = %97
  br label %108

108:                                              ; preds = %107, %94, %90
  br label %109

109:                                              ; preds = %108, %36
  %110 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %111 = load i32, i32* @W83781D_REG_BANK, align 4
  %112 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %113 = load i32, i32* @W83781D_REG_BANK, align 4
  %114 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %112, i32 %113)
  %115 = and i32 %114, 120
  %116 = or i32 %115, 128
  %117 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %110, i32 %111, i32 %116)
  %118 = load i32, i32* %6, align 4
  %119 = icmp sle i32 %118, 0
  br i1 %119, label %120, label %205

120:                                              ; preds = %109
  %121 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %122 = load i32, i32* @W83781D_REG_CHIPMAN, align 4
  %123 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %121, i32 %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp eq i32 %124, 92
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i32 0, i32* %14, align 4
  br label %136

127:                                              ; preds = %120
  %128 = load i32, i32* %9, align 4
  %129 = icmp eq i32 %128, 18
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 1, i32* %14, align 4
  br label %135

131:                                              ; preds = %127
  %132 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %133 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %132, i32 0, i32 0
  %134 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %133, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %242

135:                                              ; preds = %130
  br label %136

136:                                              ; preds = %135, %126
  %137 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %138 = load i32, i32* @W83781D_REG_WCHIPID, align 4
  %139 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %137, i32 %138)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp eq i32 %140, 16
  br i1 %141, label %145, label %142

142:                                              ; preds = %136
  %143 = load i32, i32* %8, align 4
  %144 = icmp eq i32 %143, 17
  br i1 %144, label %145, label %150

145:                                              ; preds = %142, %136
  %146 = load i32, i32* %14, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32, i32* @w83781d, align 4
  store i32 %149, i32* %6, align 4
  br label %186

150:                                              ; preds = %145, %142
  %151 = load i32, i32* %8, align 4
  %152 = icmp eq i32 %151, 48
  br i1 %152, label %153, label %158

153:                                              ; preds = %150
  %154 = load i32, i32* %14, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i32, i32* @w83782d, align 4
  store i32 %157, i32* %6, align 4
  br label %185

158:                                              ; preds = %153, %150
  %159 = load i32, i32* %8, align 4
  %160 = icmp eq i32 %159, 64
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = load i32, i32* %14, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load i32, i32* %12, align 4
  %166 = icmp eq i32 %165, 45
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = load i32, i32* @w83783s, align 4
  store i32 %168, i32* %6, align 4
  br label %184

169:                                              ; preds = %164, %161, %158
  %170 = load i32, i32* %8, align 4
  %171 = icmp eq i32 %170, 49
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = load i32, i32* @as99127f, align 4
  store i32 %173, i32* %6, align 4
  br label %183

174:                                              ; preds = %169
  %175 = load i32, i32* %6, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %179 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %178, i32 0, i32 0
  %180 = load i32, i32* %12, align 4
  %181 = call i32 @dev_warn(i32* %179, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %180)
  br label %182

182:                                              ; preds = %177, %174
  br label %242

183:                                              ; preds = %172
  br label %184

184:                                              ; preds = %183, %167
  br label %185

185:                                              ; preds = %184, %156
  br label %186

186:                                              ; preds = %185, %148
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @w83781d, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %194, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* @w83782d, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %204

194:                                              ; preds = %190, %186
  %195 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %196 = load i32, i32* %8, align 4
  %197 = call i64 @w83781d_alias_detect(%struct.i2c_client* %195, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %194
  %200 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %201 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %200, i32 0, i32 0
  %202 = load i32, i32* %12, align 4
  %203 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %201, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %202)
  br label %242

204:                                              ; preds = %194, %190
  br label %205

205:                                              ; preds = %204, %109
  %206 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %207 = icmp ne %struct.w83781d_data* %206, null
  br i1 %207, label %208, label %212

208:                                              ; preds = %205
  %209 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %210 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %209, i32 0, i32 0
  %211 = call i32 @mutex_unlock(i32* %210)
  br label %212

212:                                              ; preds = %208, %205
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* @w83781d, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  br label %235

217:                                              ; preds = %212
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* @w83782d, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %13, align 8
  br label %234

222:                                              ; preds = %217
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* @w83783s, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %13, align 8
  br label %233

227:                                              ; preds = %222
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* @as99127f, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %227
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %13, align 8
  br label %232

232:                                              ; preds = %231, %227
  br label %233

233:                                              ; preds = %232, %226
  br label %234

234:                                              ; preds = %233, %221
  br label %235

235:                                              ; preds = %234, %216
  %236 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %237 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i8*, i8** %13, align 8
  %240 = load i32, i32* @I2C_NAME_SIZE, align 4
  %241 = call i32 @strlcpy(i32 %238, i8* %239, i32 %240)
  store i32 0, i32* %4, align 4
  br label %252

242:                                              ; preds = %199, %182, %131, %103, %79, %45
  %243 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %244 = icmp ne %struct.w83781d_data* %243, null
  br i1 %244, label %245, label %249

245:                                              ; preds = %242
  %246 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %247 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %246, i32 0, i32 0
  %248 = call i32 @mutex_unlock(i32* %247)
  br label %249

249:                                              ; preds = %245, %242
  %250 = load i32, i32* @ENODEV, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %4, align 4
  br label %252

252:                                              ; preds = %249, %235, %26
  %253 = load i32, i32* %4, align 4
  ret i32 %253
}

declare dso_local %struct.w83781d_data* @w83781d_data_if_isa(...) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i64 @w83781d_alias_detect(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
