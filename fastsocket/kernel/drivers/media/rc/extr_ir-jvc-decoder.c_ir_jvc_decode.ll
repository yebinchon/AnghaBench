; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ir-jvc-decoder.c_ir_jvc_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ir-jvc-decoder.c_ir_jvc_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.jvc_dec }
%struct.jvc_dec = type { i32, i32, i32, i32, i32, i32 }
%struct.ir_raw_event = type { i32, i32, i64 }

@RC_TYPE_JVC = common dso_local global i32 0, align 4
@JVC_UNIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"JVC decode started at state %d (%uus %s)\0A\00", align 1
@JVC_HEADER_PULSE = common dso_local global i32 0, align 4
@JVC_HEADER_SPACE = common dso_local global i32 0, align 4
@JVC_BIT_PULSE = common dso_local global i32 0, align 4
@JVC_BIT_1_SPACE = common dso_local global i32 0, align 4
@JVC_BIT_0_SPACE = common dso_local global i32 0, align 4
@JVC_NBITS = common dso_local global i32 0, align 4
@JVC_TRAILER_PULSE = common dso_local global i32 0, align 4
@JVC_TRAILER_SPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"JVC scancode 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"JVC repeat\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"JVC invalid repeat msg\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"JVC decode failed at state %d (%uus %s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i64, i64)* @ir_jvc_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_jvc_decode(%struct.rc_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ir_raw_event, align 8
  %6 = alloca %struct.rc_dev*, align 8
  %7 = alloca %struct.jvc_dec*, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.ir_raw_event* %5 to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  store i64 %1, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  store i64 %2, i64* %11, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %6, align 8
  %12 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %13 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store %struct.jvc_dec* %15, %struct.jvc_dec** %7, align 8
  %16 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %17 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RC_TYPE_JVC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %305

25:                                               ; preds = %3
  %26 = bitcast %struct.ir_raw_event* %5 to { i64, i64 }*
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @is_timing_event(i64 %28, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %39 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %38, i32 0, i32 0
  store i32 130, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %33
  store i32 0, i32* %4, align 4
  br label %305

41:                                               ; preds = %25
  %42 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @JVC_UNIT, align 4
  %45 = load i32, i32* @JVC_UNIT, align 4
  %46 = sdiv i32 %45, 2
  %47 = call i32 @geq_margin(i32 %43, i32 %44, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  br label %290

50:                                               ; preds = %41
  %51 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %52 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @TO_US(i32 %55)
  %57 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @TO_STR(i32 %58)
  %60 = call i32 (i32, i8*, ...) @IR_dprintk(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %288, %50
  %62 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %63 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %289 [
    i32 130, label %65
    i32 131, label %94
    i32 134, label %111
    i32 133, label %128
    i32 129, label %182
    i32 128, label %199
    i32 132, label %269
  ]

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  br label %289

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @JVC_HEADER_PULSE, align 4
  %74 = load i32, i32* @JVC_UNIT, align 4
  %75 = sdiv i32 %74, 2
  %76 = call i32 @eq_margin(i32 %72, i32 %73, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %70
  br label %289

79:                                               ; preds = %70
  %80 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %81 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %80, i32 0, i32 5
  store i32 0, i32* %81, align 4
  %82 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %83 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  %84 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %85 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %91 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %93 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %92, i32 0, i32 0
  store i32 131, i32* %93, align 4
  store i32 0, i32* %4, align 4
  br label %305

94:                                               ; preds = %61
  %95 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %289

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @JVC_HEADER_SPACE, align 4
  %103 = load i32, i32* @JVC_UNIT, align 4
  %104 = sdiv i32 %103, 2
  %105 = call i32 @eq_margin(i32 %101, i32 %102, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %99
  br label %289

108:                                              ; preds = %99
  %109 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %110 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %109, i32 0, i32 0
  store i32 134, i32* %110, align 4
  store i32 0, i32* %4, align 4
  br label %305

111:                                              ; preds = %61
  %112 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  br label %289

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @JVC_BIT_PULSE, align 4
  %120 = load i32, i32* @JVC_UNIT, align 4
  %121 = sdiv i32 %120, 2
  %122 = call i32 @eq_margin(i32 %118, i32 %119, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %116
  br label %289

125:                                              ; preds = %116
  %126 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %127 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %126, i32 0, i32 0
  store i32 133, i32* %127, align 4
  store i32 0, i32* %4, align 4
  br label %305

128:                                              ; preds = %61
  %129 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %289

133:                                              ; preds = %128
  %134 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %135 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 1
  store i32 %137, i32* %135, align 4
  %138 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @JVC_BIT_1_SPACE, align 4
  %141 = load i32, i32* @JVC_UNIT, align 4
  %142 = sdiv i32 %141, 2
  %143 = call i32 @eq_margin(i32 %139, i32 %140, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %133
  %146 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %147 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, 1
  store i32 %149, i32* %147, align 4
  %150 = load i32, i32* @JVC_BIT_1_SPACE, align 4
  %151 = call i32 @decrease_duration(%struct.ir_raw_event* %5, i32 %150)
  br label %165

152:                                              ; preds = %133
  %153 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @JVC_BIT_0_SPACE, align 4
  %156 = load i32, i32* @JVC_UNIT, align 4
  %157 = sdiv i32 %156, 2
  %158 = call i32 @eq_margin(i32 %154, i32 %155, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %152
  %161 = load i32, i32* @JVC_BIT_0_SPACE, align 4
  %162 = call i32 @decrease_duration(%struct.ir_raw_event* %5, i32 %161)
  br label %164

163:                                              ; preds = %152
  br label %289

164:                                              ; preds = %160
  br label %165

165:                                              ; preds = %164, %145
  %166 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %167 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  %170 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %171 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @JVC_NBITS, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %165
  %176 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %177 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %176, i32 0, i32 0
  store i32 129, i32* %177, align 4
  br label %181

178:                                              ; preds = %165
  %179 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %180 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %179, i32 0, i32 0
  store i32 134, i32* %180, align 4
  br label %181

181:                                              ; preds = %178, %175
  store i32 0, i32* %4, align 4
  br label %305

182:                                              ; preds = %61
  %183 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %182
  br label %289

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @JVC_TRAILER_PULSE, align 4
  %191 = load i32, i32* @JVC_UNIT, align 4
  %192 = sdiv i32 %191, 2
  %193 = call i32 @eq_margin(i32 %189, i32 %190, i32 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %187
  br label %289

196:                                              ; preds = %187
  %197 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %198 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %197, i32 0, i32 0
  store i32 128, i32* %198, align 4
  store i32 0, i32* %4, align 4
  br label %305

199:                                              ; preds = %61
  %200 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  br label %289

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @JVC_TRAILER_SPACE, align 4
  %208 = load i32, i32* @JVC_UNIT, align 4
  %209 = sdiv i32 %208, 2
  %210 = call i32 @geq_margin(i32 %206, i32 %207, i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %204
  br label %289

213:                                              ; preds = %204
  %214 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %215 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %249

218:                                              ; preds = %213
  %219 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %220 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = ashr i32 %221, 8
  %223 = and i32 %222, 255
  %224 = call i32 @bitrev8(i32 %223)
  %225 = shl i32 %224, 8
  %226 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %227 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = ashr i32 %228, 0
  %230 = and i32 %229, 255
  %231 = call i32 @bitrev8(i32 %230)
  %232 = shl i32 %231, 0
  %233 = or i32 %225, %232
  store i32 %233, i32* %8, align 4
  %234 = load i32, i32* %8, align 4
  %235 = call i32 (i32, i8*, ...) @IR_dprintk(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %234)
  %236 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %237 = load i32, i32* %8, align 4
  %238 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %239 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @rc_keydown(%struct.rc_dev* %236, i32 %237, i32 %240)
  %242 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %243 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %242, i32 0, i32 1
  store i32 0, i32* %243, align 4
  %244 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %245 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %248 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %247, i32 0, i32 4
  store i32 %246, i32* %248, align 4
  br label %264

249:                                              ; preds = %213
  %250 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %251 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %254 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = icmp eq i32 %252, %255
  br i1 %256, label %257, label %261

257:                                              ; preds = %249
  %258 = call i32 (i32, i8*, ...) @IR_dprintk(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %259 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %260 = call i32 @rc_repeat(%struct.rc_dev* %259)
  br label %263

261:                                              ; preds = %249
  %262 = call i32 (i32, i8*, ...) @IR_dprintk(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %289

263:                                              ; preds = %257
  br label %264

264:                                              ; preds = %263, %218
  %265 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %266 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %265, i32 0, i32 5
  store i32 0, i32* %266, align 4
  %267 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %268 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %267, i32 0, i32 0
  store i32 132, i32* %268, align 4
  store i32 0, i32* %4, align 4
  br label %305

269:                                              ; preds = %61
  %270 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %274, label %273

273:                                              ; preds = %269
  br label %289

274:                                              ; preds = %269
  %275 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @JVC_HEADER_PULSE, align 4
  %278 = load i32, i32* @JVC_UNIT, align 4
  %279 = sdiv i32 %278, 2
  %280 = call i32 @eq_margin(i32 %276, i32 %277, i32 %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %274
  %283 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %284 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %283, i32 0, i32 0
  store i32 130, i32* %284, align 4
  br label %288

285:                                              ; preds = %274
  %286 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %287 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %286, i32 0, i32 0
  store i32 134, i32* %287, align 4
  br label %288

288:                                              ; preds = %285, %282
  br label %61

289:                                              ; preds = %61, %273, %261, %212, %203, %195, %186, %163, %132, %124, %115, %107, %98, %78, %69
  br label %290

290:                                              ; preds = %289, %49
  %291 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %292 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @TO_US(i32 %295)
  %297 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @TO_STR(i32 %298)
  %300 = call i32 (i32, i8*, ...) @IR_dprintk(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %293, i32 %296, i32 %299)
  %301 = load %struct.jvc_dec*, %struct.jvc_dec** %7, align 8
  %302 = getelementptr inbounds %struct.jvc_dec, %struct.jvc_dec* %301, i32 0, i32 0
  store i32 130, i32* %302, align 4
  %303 = load i32, i32* @EINVAL, align 4
  %304 = sub nsw i32 0, %303
  store i32 %304, i32* %4, align 4
  br label %305

305:                                              ; preds = %290, %264, %196, %181, %125, %108, %79, %40, %24
  %306 = load i32, i32* %4, align 4
  ret i32 %306
}

declare dso_local i32 @is_timing_event(i64, i64) #1

declare dso_local i32 @geq_margin(i32, i32, i32) #1

declare dso_local i32 @IR_dprintk(i32, i8*, ...) #1

declare dso_local i32 @TO_US(i32) #1

declare dso_local i32 @TO_STR(i32) #1

declare dso_local i32 @eq_margin(i32, i32, i32) #1

declare dso_local i32 @decrease_duration(%struct.ir_raw_event*, i32) #1

declare dso_local i32 @bitrev8(i32) #1

declare dso_local i32 @rc_keydown(%struct.rc_dev*, i32, i32) #1

declare dso_local i32 @rc_repeat(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
