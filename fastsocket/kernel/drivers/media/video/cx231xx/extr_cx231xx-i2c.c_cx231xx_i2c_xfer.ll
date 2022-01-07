; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-i2c.c_cx231xx_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-i2c.c_cx231xx_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.cx231xx_i2c* }
%struct.cx231xx_i2c = type { i32, %struct.cx231xx* }
%struct.cx231xx = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [22 x i8] c"%s %s addr=%x len=%d:\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"nonstop\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" no device\0A\00", align 1
@i2c_debug = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c" ERROR: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @cx231xx_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx231xx_i2c*, align 8
  %9 = alloca %struct.cx231xx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %14, i32 0, i32 0
  %16 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %15, align 8
  store %struct.cx231xx_i2c* %16, %struct.cx231xx_i2c** %8, align 8
  %17 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %8, align 8
  %18 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %17, i32 0, i32 1
  %19 = load %struct.cx231xx*, %struct.cx231xx** %18, align 8
  store %struct.cx231xx* %19, %struct.cx231xx** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %283

23:                                               ; preds = %3
  %24 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %25 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %268, %23
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %271

31:                                               ; preds = %27
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i64 %34
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = ashr i32 %37, 1
  store i32 %38, i32* %10, align 4
  %39 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i64 %41
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @I2C_M_RD, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, 1
  %53 = icmp eq i32 %50, %52
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i64 %59
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, ...) @dprintk2(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %55, i32 %56, i32 %62)
  %64 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i64 %66
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %31
  %72 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %73 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %73, i64 %75
  %77 = call i32 @cx231xx_i2c_check_for_device(%struct.i2c_adapter* %72, %struct.i2c_msg* %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %71
  %81 = call i32 (i32, i8*, ...) @dprintk2(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %82 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %83 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %4, align 4
  br label %283

86:                                               ; preds = %71
  br label %258

87:                                               ; preds = %31
  %88 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %88, i64 %90
  %92 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @I2C_M_RD, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %133

97:                                               ; preds = %87
  %98 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %99 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %99, i64 %101
  %103 = call i32 @cx231xx_i2c_recv_bytes(%struct.i2c_adapter* %98, %struct.i2c_msg* %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* @i2c_debug, align 4
  %105 = icmp sge i32 %104, 2
  br i1 %105, label %106, label %132

106:                                              ; preds = %97
  store i32 0, i32* %13, align 4
  br label %107

107:                                              ; preds = %128, %106
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %109, i64 %111
  %113 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %108, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %107
  %117 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %117, i64 %119
  %121 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %116
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %13, align 4
  br label %107

131:                                              ; preds = %107
  br label %132

132:                                              ; preds = %131, %97
  br label %257

133:                                              ; preds = %87
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  %136 = load i32, i32* %7, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %220

138:                                              ; preds = %133
  %139 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %139, i64 %142
  %144 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @I2C_M_RD, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %220

149:                                              ; preds = %138
  %150 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %150, i64 %152
  %154 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %156, i64 %159
  %161 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %155, %162
  br i1 %163, label %164, label %220

164:                                              ; preds = %149
  %165 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %165, i64 %167
  %169 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = icmp sle i32 %170, 2
  br i1 %171, label %172, label %220

172:                                              ; preds = %164
  %173 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %8, align 8
  %174 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %175, 3
  br i1 %176, label %177, label %220

177:                                              ; preds = %172
  %178 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %179 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %180 = load i32, i32* %12, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %179, i64 %181
  %183 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %184 = load i32, i32* %12, align 4
  %185 = add nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %183, i64 %186
  %188 = call i32 @cx231xx_i2c_recv_bytes_with_saddr(%struct.i2c_adapter* %178, %struct.i2c_msg* %182, %struct.i2c_msg* %187)
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* @i2c_debug, align 4
  %190 = icmp sge i32 %189, 2
  br i1 %190, label %191, label %217

191:                                              ; preds = %177
  store i32 0, i32* %13, align 4
  br label %192

192:                                              ; preds = %213, %191
  %193 = load i32, i32* %13, align 4
  %194 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %195 = load i32, i32* %12, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %194, i64 %196
  %198 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %193, %199
  br i1 %200, label %201, label %216

201:                                              ; preds = %192
  %202 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %202, i64 %204
  %206 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %205, i32 0, i32 3
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %211)
  br label %213

213:                                              ; preds = %201
  %214 = load i32, i32* %13, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %13, align 4
  br label %192

216:                                              ; preds = %192
  br label %217

217:                                              ; preds = %216, %177
  %218 = load i32, i32* %12, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %12, align 4
  br label %256

220:                                              ; preds = %172, %164, %149, %138, %133
  %221 = load i32, i32* @i2c_debug, align 4
  %222 = icmp sge i32 %221, 2
  br i1 %222, label %223, label %249

223:                                              ; preds = %220
  store i32 0, i32* %13, align 4
  br label %224

224:                                              ; preds = %245, %223
  %225 = load i32, i32* %13, align 4
  %226 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %226, i64 %228
  %230 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = icmp slt i32 %225, %231
  br i1 %232, label %233, label %248

233:                                              ; preds = %224
  %234 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %234, i64 %236
  %238 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %237, i32 0, i32 3
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %13, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %243)
  br label %245

245:                                              ; preds = %233
  %246 = load i32, i32* %13, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %13, align 4
  br label %224

248:                                              ; preds = %224
  br label %249

249:                                              ; preds = %248, %220
  %250 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %251 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %252 = load i32, i32* %12, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %251, i64 %253
  %255 = call i32 @cx231xx_i2c_send_bytes(%struct.i2c_adapter* %250, %struct.i2c_msg* %254)
  store i32 %255, i32* %11, align 4
  br label %256

256:                                              ; preds = %249, %217
  br label %257

257:                                              ; preds = %256, %132
  br label %258

258:                                              ; preds = %257, %86
  %259 = load i32, i32* %11, align 4
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %258
  br label %276

262:                                              ; preds = %258
  %263 = load i32, i32* @i2c_debug, align 4
  %264 = icmp sge i32 %263, 2
  br i1 %264, label %265, label %267

265:                                              ; preds = %262
  %266 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %267

267:                                              ; preds = %265, %262
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %12, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %12, align 4
  br label %27

271:                                              ; preds = %27
  %272 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %273 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %272, i32 0, i32 0
  %274 = call i32 @mutex_unlock(i32* %273)
  %275 = load i32, i32* %7, align 4
  store i32 %275, i32* %4, align 4
  br label %283

276:                                              ; preds = %261
  %277 = load i32, i32* %11, align 4
  %278 = call i32 (i32, i8*, ...) @dprintk2(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %277)
  %279 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %280 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %279, i32 0, i32 0
  %281 = call i32 @mutex_unlock(i32* %280)
  %282 = load i32, i32* %11, align 4
  store i32 %282, i32* %4, align 4
  br label %283

283:                                              ; preds = %276, %271, %80, %22
  %284 = load i32, i32* %4, align 4
  ret i32 %284
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dprintk2(i32, i8*, ...) #1

declare dso_local i32 @cx231xx_i2c_check_for_device(%struct.i2c_adapter*, %struct.i2c_msg*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cx231xx_i2c_recv_bytes(%struct.i2c_adapter*, %struct.i2c_msg*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @cx231xx_i2c_recv_bytes_with_saddr(%struct.i2c_adapter*, %struct.i2c_msg*, %struct.i2c_msg*) #1

declare dso_local i32 @cx231xx_i2c_send_bytes(%struct.i2c_adapter*, %struct.i2c_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
