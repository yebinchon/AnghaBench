; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_set_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_set_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i32, i32 }

@CX25840_COMPOSITE1 = common dso_local global i32 0, align 4
@CX25840_COMPOSITE8 = common dso_local global i32 0, align 4
@CX25840_COMPONENT_ON = common dso_local global i32 0, align 4
@cx25840_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"decoder set video input %d, audio input %d\0A\00", align 1
@CX25840_VIN1_CH1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"vid_input 0x%x\0A\00", align 1
@CX25840_SVIDEO_ON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"mux cfg 0x%x comp=%d\0A\00", align 1
@CX25840_SVIDEO_LUMA1 = common dso_local global i32 0, align 4
@CX25840_SVIDEO_LUMA8 = common dso_local global i32 0, align 4
@CX25840_SVIDEO_CHROMA4 = common dso_local global i32 0, align 4
@CX25840_SVIDEO_CHROMA8 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"0x%04x is not a valid video input!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CX25840_SVIDEO_CHROMA7 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"0x%04x is not a valid audio input!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @set_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_input(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx25840_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %15 = call i32 @i2c_get_clientdata(%struct.i2c_client* %14)
  %16 = call %struct.cx25840_state* @to_state(i32 %15)
  store %struct.cx25840_state* %16, %struct.cx25840_state** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @CX25840_COMPOSITE1, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @CX25840_COMPOSITE8, align 4
  %23 = icmp ule i32 %21, %22
  br label %24

24:                                               ; preds = %20, %3
  %25 = phi i1 [ false, %3 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @CX25840_COMPONENT_ON, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @CX25840_COMPONENT_ON, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 240
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 3840
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* @cx25840_debug, align 4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (i32, i32, %struct.i2c_client*, i8*, i32, ...) @v4l_dbg(i32 1, i32 %37, %struct.i2c_client* %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @CX25840_VIN1_CH1, align 4
  %44 = icmp uge i32 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %24
  %46 = load i32, i32* @cx25840_debug, align 4
  %47 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i32, i32, %struct.i2c_client*, i8*, i32, ...) @v4l_dbg(i32 1, i32 %46, %struct.i2c_client* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 255
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @CX25840_SVIDEO_ON, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @CX25840_SVIDEO_ON, align 4
  %59 = icmp ne i32 %57, %58
  br label %60

60:                                               ; preds = %54, %45
  %61 = phi i1 [ false, %45 ], [ %59, %54 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* @cx25840_debug, align 4
  %64 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 (i32, i32, %struct.i2c_client*, i8*, i32, ...) @v4l_dbg(i32 1, i32 %63, %struct.i2c_client* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %66)
  br label %131

68:                                               ; preds = %24
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @CX25840_COMPOSITE1, align 4
  %74 = sub i32 %72, %73
  %75 = add i32 240, %74
  store i32 %75, i32* %13, align 4
  br label %130

76:                                               ; preds = %68
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, -4081
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @CX25840_SVIDEO_LUMA1, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %96, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @CX25840_SVIDEO_LUMA8, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @CX25840_SVIDEO_CHROMA4, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @CX25840_SVIDEO_CHROMA8, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %92, %88, %84, %80, %76
  %97 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @v4l_err(%struct.i2c_client* %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %284

102:                                              ; preds = %92
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @CX25840_SVIDEO_LUMA1, align 4
  %105 = sub nsw i32 %103, %104
  %106 = ashr i32 %105, 4
  %107 = add nsw i32 240, %106
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @CX25840_SVIDEO_CHROMA7, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %102
  %112 = load i32, i32* %13, align 4
  %113 = and i32 %112, 63
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @CX25840_SVIDEO_CHROMA7, align 4
  %116 = sub nsw i32 %114, %115
  %117 = ashr i32 %116, 2
  %118 = load i32, i32* %13, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %13, align 4
  br label %129

120:                                              ; preds = %102
  %121 = load i32, i32* %13, align 4
  %122 = and i32 %121, 207
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @CX25840_SVIDEO_CHROMA4, align 4
  %125 = sub nsw i32 %123, %124
  %126 = ashr i32 %125, 4
  %127 = load i32, i32* %13, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %13, align 4
  br label %129

129:                                              ; preds = %120, %111
  br label %130

130:                                              ; preds = %129, %71
  br label %131

131:                                              ; preds = %130, %60
  %132 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %133 = call i64 @is_cx2388x(%struct.cx25840_state* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %170, label %135

135:                                              ; preds = %131
  %136 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %137 = call i64 @is_cx231xx(%struct.cx25840_state* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %170, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %7, align 4
  switch i32 %140, label %163 [
    i32 128, label %141
    i32 133, label %142
    i32 132, label %145
    i32 131, label %150
    i32 130, label %155
    i32 129, label %158
  ]

141:                                              ; preds = %139
  br label %169

142:                                              ; preds = %139
  %143 = load i32, i32* %13, align 4
  %144 = and i32 %143, -49
  store i32 %144, i32* %13, align 4
  br label %169

145:                                              ; preds = %139
  %146 = load i32, i32* %13, align 4
  %147 = and i32 %146, -49
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  %149 = or i32 %148, 16
  store i32 %149, i32* %13, align 4
  br label %169

150:                                              ; preds = %139
  %151 = load i32, i32* %13, align 4
  %152 = and i32 %151, -49
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = or i32 %153, 32
  store i32 %154, i32* %13, align 4
  br label %169

155:                                              ; preds = %139
  %156 = load i32, i32* %13, align 4
  %157 = and i32 %156, -193
  store i32 %157, i32* %13, align 4
  br label %169

158:                                              ; preds = %139
  %159 = load i32, i32* %13, align 4
  %160 = and i32 %159, -193
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %13, align 4
  %162 = or i32 %161, 64
  store i32 %162, i32* %13, align 4
  br label %169

163:                                              ; preds = %139
  %164 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @v4l_err(%struct.i2c_client* %164, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %4, align 4
  br label %284

169:                                              ; preds = %158, %155, %150, %145, %142, %141
  br label %170

170:                                              ; preds = %169, %135, %131
  %171 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %172 = load i32, i32* %13, align 4
  %173 = call i32 @cx25840_write(%struct.i2c_client* %171, i32 259, i32 %172)
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %170
  %177 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %178 = call i32 @cx25840_and_or(%struct.i2c_client* %177, i32 1025, i32 -7, i32 6)
  br label %186

179:                                              ; preds = %170
  %180 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %181 = load i32, i32* %9, align 4
  %182 = icmp ne i32 %181, 0
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i32 0, i32 2
  %185 = call i32 @cx25840_and_or(%struct.i2c_client* %180, i32 1025, i32 -7, i32 %184)
  br label %186

186:                                              ; preds = %179, %176
  %187 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %188 = call i64 @is_cx2388x(%struct.cx25840_state* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %216, label %190

190:                                              ; preds = %186
  %191 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %192 = call i64 @is_cx231xx(%struct.cx25840_state* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %216, label %194

194:                                              ; preds = %190
  %195 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %196 = load i32, i32* %13, align 4
  %197 = and i32 %196, 128
  %198 = icmp eq i32 %197, 0
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i32 2, i32 0
  %201 = call i32 @cx25840_and_or(%struct.i2c_client* %195, i32 258, i32 -3, i32 %200)
  %202 = load i32, i32* %13, align 4
  %203 = and i32 %202, 192
  %204 = icmp ne i32 %203, 192
  br i1 %204, label %205, label %212

205:                                              ; preds = %194
  %206 = load i32, i32* %13, align 4
  %207 = and i32 %206, 48
  %208 = icmp ne i32 %207, 48
  br i1 %208, label %209, label %212

209:                                              ; preds = %205
  %210 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %211 = call i32 @cx25840_and_or(%struct.i2c_client* %210, i32 258, i32 -5, i32 4)
  br label %215

212:                                              ; preds = %205, %194
  %213 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %214 = call i32 @cx25840_and_or(%struct.i2c_client* %213, i32 258, i32 -5, i32 0)
  br label %215

215:                                              ; preds = %212, %209
  br label %244

216:                                              ; preds = %190, %186
  %217 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %218 = load i32, i32* %10, align 4
  %219 = icmp ne i32 %218, 0
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i32 4, i32 0
  %222 = call i32 @cx25840_and_or(%struct.i2c_client* %217, i32 258, i32 -5, i32 %221)
  %223 = load i32, i32* %9, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %216
  %226 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %227 = call i32 @cx25840_and_or(%struct.i2c_client* %226, i32 258, i32 -3, i32 0)
  br label %243

228:                                              ; preds = %216
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %242, label %231

231:                                              ; preds = %228
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* @CX25840_SVIDEO_CHROMA7, align 4
  %234 = icmp sge i32 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %237 = call i32 @cx25840_and_or(%struct.i2c_client* %236, i32 258, i32 -3, i32 2)
  br label %241

238:                                              ; preds = %231
  %239 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %240 = call i32 @cx25840_and_or(%struct.i2c_client* %239, i32 258, i32 -3, i32 0)
  br label %241

241:                                              ; preds = %238, %235
  br label %242

242:                                              ; preds = %241, %228
  br label %243

243:                                              ; preds = %242, %225
  br label %244

244:                                              ; preds = %243, %215
  %245 = load i32, i32* %6, align 4
  %246 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %247 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* %7, align 4
  %249 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %250 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %249, i32 0, i32 1
  store i32 %248, i32* %250, align 4
  %251 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %252 = call i32 @cx25840_audio_set_path(%struct.i2c_client* %251)
  %253 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %254 = call i32 @input_change(%struct.i2c_client* %253)
  %255 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %256 = call i64 @is_cx2388x(%struct.cx25840_state* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %269

258:                                              ; preds = %244
  %259 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %260 = call i32 @cx25840_write(%struct.i2c_client* %259, i32 292, i32 3)
  %261 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %262 = call i32 @cx25840_write(%struct.i2c_client* %261, i32 324, i32 5)
  %263 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %264 = call i32 @cx25840_write(%struct.i2c_client* %263, i32 2324, i32 160)
  %265 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %266 = call i32 @cx25840_write(%struct.i2c_client* %265, i32 2328, i32 160)
  %267 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %268 = call i32 @cx25840_write(%struct.i2c_client* %267, i32 2329, i32 1)
  br label %283

269:                                              ; preds = %244
  %270 = load %struct.cx25840_state*, %struct.cx25840_state** %8, align 8
  %271 = call i64 @is_cx231xx(%struct.cx25840_state* %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %282

273:                                              ; preds = %269
  %274 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %275 = call i32 @cx25840_write(%struct.i2c_client* %274, i32 292, i32 3)
  %276 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %277 = call i32 @cx25840_write(%struct.i2c_client* %276, i32 2324, i32 160)
  %278 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %279 = call i32 @cx25840_write(%struct.i2c_client* %278, i32 2328, i32 160)
  %280 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %281 = call i32 @cx25840_write(%struct.i2c_client* %280, i32 2329, i32 1)
  br label %282

282:                                              ; preds = %273, %269
  br label %283

283:                                              ; preds = %282, %258
  store i32 0, i32* %4, align 4
  br label %284

284:                                              ; preds = %283, %163, %96
  %285 = load i32, i32* %4, align 4
  ret i32 %285
}

declare dso_local %struct.cx25840_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, i32, ...) #1

declare dso_local i32 @v4l_err(%struct.i2c_client*, i8*, i32) #1

declare dso_local i64 @is_cx2388x(%struct.cx25840_state*) #1

declare dso_local i64 @is_cx231xx(%struct.cx25840_state*) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @cx25840_and_or(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @cx25840_audio_set_path(%struct.i2c_client*) #1

declare dso_local i32 @input_change(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
