; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ir-nec-decoder.c_ir_nec_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ir-nec-decoder.c_ir_nec_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.nec_dec }
%struct.nec_dec = type { i32, i32, i32, i32, i32 }
%struct.ir_raw_event = type { i32, i32, i64 }

@RC_TYPE_NEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"NEC decode started at state %d (%uus %s)\0A\00", align 1
@NEC_HEADER_PULSE = common dso_local global i32 0, align 4
@NEC_UNIT = common dso_local global i32 0, align 4
@NECX_HEADER_PULSE = common dso_local global i32 0, align 4
@NEC_HEADER_SPACE = common dso_local global i32 0, align 4
@NEC_REPEAT_SPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Discarding last key repeat: event after key up\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Repeat last key\0A\00", align 1
@NEC_BIT_PULSE = common dso_local global i32 0, align 4
@NECX_REPEAT_BITS = common dso_local global i32 0, align 4
@NEC_TRAILER_SPACE = common dso_local global i32 0, align 4
@NEC_BIT_1_SPACE = common dso_local global i32 0, align 4
@NEC_BIT_0_SPACE = common dso_local global i32 0, align 4
@NEC_NBITS = common dso_local global i32 0, align 4
@NEC_TRAILER_PULSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"NEC checksum error: received 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"NEC (Ext) scancode 0x%06x\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"NEC scancode 0x%04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"NEC decode failed at state %d (%uus %s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i64, i64)* @ir_nec_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_nec_decode(%struct.rc_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ir_raw_event, align 8
  %6 = alloca %struct.rc_dev*, align 8
  %7 = alloca %struct.nec_dec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = bitcast %struct.ir_raw_event* %5 to { i64, i64 }*
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 0
  store i64 %1, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 1
  store i64 %2, i64* %15, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %6, align 8
  %16 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %17 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store %struct.nec_dec* %19, %struct.nec_dec** %7, align 8
  %20 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %21 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RC_TYPE_NEC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %352

29:                                               ; preds = %3
  %30 = bitcast %struct.ir_raw_event* %5 to { i64, i64 }*
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @is_timing_event(i64 %32, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %43 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %42, i32 0, i32 0
  store i32 130, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %37
  store i32 0, i32* %4, align 4
  br label %352

45:                                               ; preds = %29
  %46 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %47 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @TO_US(i32 %50)
  %52 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @TO_STR(i32 %53)
  %55 = call i32 (i32, i8*, ...) @IR_dprintk(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51, i32 %54)
  %56 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %57 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %337 [
    i32 130, label %59
    i32 131, label %95
    i32 133, label %135
    i32 132, label %152
    i32 129, label %236
    i32 128, label %253
  ]

59:                                               ; preds = %45
  %60 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  br label %337

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @NEC_HEADER_PULSE, align 4
  %68 = load i32, i32* @NEC_UNIT, align 4
  %69 = sdiv i32 %68, 2
  %70 = call i32 @eq_margin(i32 %66, i32 %67, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %74 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  %75 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %76 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %75, i32 0, i32 2
  store i32 0, i32* %76, align 4
  br label %90

77:                                               ; preds = %64
  %78 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @NECX_HEADER_PULSE, align 4
  %81 = load i32, i32* @NEC_UNIT, align 4
  %82 = sdiv i32 %81, 2
  %83 = call i32 @eq_margin(i32 %79, i32 %80, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %87 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  br label %89

88:                                               ; preds = %77
  br label %337

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89, %72
  %91 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %92 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %91, i32 0, i32 4
  store i32 0, i32* %92, align 4
  %93 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %94 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %93, i32 0, i32 0
  store i32 131, i32* %94, align 4
  store i32 0, i32* %4, align 4
  br label %352

95:                                               ; preds = %45
  %96 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %337

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @NEC_HEADER_SPACE, align 4
  %104 = load i32, i32* @NEC_UNIT, align 4
  %105 = sdiv i32 %104, 2
  %106 = call i32 @eq_margin(i32 %102, i32 %103, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %110 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %109, i32 0, i32 0
  store i32 133, i32* %110, align 4
  store i32 0, i32* %4, align 4
  br label %352

111:                                              ; preds = %100
  %112 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @NEC_REPEAT_SPACE, align 4
  %115 = load i32, i32* @NEC_UNIT, align 4
  %116 = sdiv i32 %115, 2
  %117 = call i32 @eq_margin(i32 %113, i32 %114, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %111
  %120 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %121 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %119
  %125 = call i32 (i32, i8*, ...) @IR_dprintk(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %132

126:                                              ; preds = %119
  %127 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %128 = call i32 @rc_repeat(%struct.rc_dev* %127)
  %129 = call i32 (i32, i8*, ...) @IR_dprintk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %130 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %131 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %130, i32 0, i32 0
  store i32 129, i32* %131, align 4
  br label %132

132:                                              ; preds = %126, %124
  store i32 0, i32* %4, align 4
  br label %352

133:                                              ; preds = %111
  br label %134

134:                                              ; preds = %133
  br label %337

135:                                              ; preds = %45
  %136 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %135
  br label %337

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @NEC_BIT_PULSE, align 4
  %144 = load i32, i32* @NEC_UNIT, align 4
  %145 = sdiv i32 %144, 2
  %146 = call i32 @eq_margin(i32 %142, i32 %143, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %140
  br label %337

149:                                              ; preds = %140
  %150 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %151 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %150, i32 0, i32 0
  store i32 132, i32* %151, align 4
  store i32 0, i32* %4, align 4
  br label %352

152:                                              ; preds = %45
  %153 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  br label %337

157:                                              ; preds = %152
  %158 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %159 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %182

162:                                              ; preds = %157
  %163 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %164 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @NECX_REPEAT_BITS, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %182

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @NEC_TRAILER_SPACE, align 4
  %172 = load i32, i32* @NEC_UNIT, align 4
  %173 = sdiv i32 %172, 2
  %174 = call i32 @geq_margin(i32 %170, i32 %171, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %168
  %177 = call i32 (i32, i8*, ...) @IR_dprintk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %178 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %179 = call i32 @rc_repeat(%struct.rc_dev* %178)
  %180 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %181 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %180, i32 0, i32 0
  store i32 130, i32* %181, align 4
  store i32 0, i32* %4, align 4
  br label %352

182:                                              ; preds = %168, %162, %157
  %183 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %184 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @NECX_REPEAT_BITS, align 4
  %187 = icmp sgt i32 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %182
  %189 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %190 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %189, i32 0, i32 2
  store i32 0, i32* %190, align 4
  br label %191

191:                                              ; preds = %188, %182
  br label %192

192:                                              ; preds = %191
  %193 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %194 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = shl i32 %195, 1
  store i32 %196, i32* %194, align 4
  %197 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @NEC_BIT_1_SPACE, align 4
  %200 = load i32, i32* @NEC_UNIT, align 4
  %201 = sdiv i32 %200, 2
  %202 = call i32 @eq_margin(i32 %198, i32 %199, i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %192
  %205 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %206 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, 1
  store i32 %208, i32* %206, align 4
  br label %219

209:                                              ; preds = %192
  %210 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @NEC_BIT_0_SPACE, align 4
  %213 = load i32, i32* @NEC_UNIT, align 4
  %214 = sdiv i32 %213, 2
  %215 = call i32 @eq_margin(i32 %211, i32 %212, i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %209
  br label %337

218:                                              ; preds = %209
  br label %219

219:                                              ; preds = %218, %204
  %220 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %221 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 4
  %224 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %225 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @NEC_NBITS, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %219
  %230 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %231 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %230, i32 0, i32 0
  store i32 129, i32* %231, align 4
  br label %235

232:                                              ; preds = %219
  %233 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %234 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %233, i32 0, i32 0
  store i32 133, i32* %234, align 4
  br label %235

235:                                              ; preds = %232, %229
  store i32 0, i32* %4, align 4
  br label %352

236:                                              ; preds = %45
  %237 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %241, label %240

240:                                              ; preds = %236
  br label %337

241:                                              ; preds = %236
  %242 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @NEC_TRAILER_PULSE, align 4
  %245 = load i32, i32* @NEC_UNIT, align 4
  %246 = sdiv i32 %245, 2
  %247 = call i32 @eq_margin(i32 %243, i32 %244, i32 %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %241
  br label %337

250:                                              ; preds = %241
  %251 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %252 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %251, i32 0, i32 0
  store i32 128, i32* %252, align 4
  store i32 0, i32* %4, align 4
  br label %352

253:                                              ; preds = %45
  %254 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %253
  br label %337

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @NEC_TRAILER_SPACE, align 4
  %262 = load i32, i32* @NEC_UNIT, align 4
  %263 = sdiv i32 %262, 2
  %264 = call i32 @geq_margin(i32 %260, i32 %261, i32 %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %258
  br label %337

267:                                              ; preds = %258
  %268 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %269 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = ashr i32 %270, 24
  %272 = and i32 %271, 255
  %273 = call i32 @bitrev8(i32 %272)
  store i32 %273, i32* %9, align 4
  %274 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %275 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = ashr i32 %276, 16
  %278 = and i32 %277, 255
  %279 = call i32 @bitrev8(i32 %278)
  store i32 %279, i32* %10, align 4
  %280 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %281 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = ashr i32 %282, 8
  %284 = and i32 %283, 255
  %285 = call i32 @bitrev8(i32 %284)
  store i32 %285, i32* %11, align 4
  %286 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %287 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = ashr i32 %288, 0
  %290 = and i32 %289, 255
  %291 = call i32 @bitrev8(i32 %290)
  store i32 %291, i32* %12, align 4
  %292 = load i32, i32* %11, align 4
  %293 = load i32, i32* %12, align 4
  %294 = xor i32 %292, %293
  %295 = icmp ne i32 %294, 255
  br i1 %295, label %296, label %301

296:                                              ; preds = %267
  %297 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %298 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = call i32 (i32, i8*, ...) @IR_dprintk(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %299)
  br label %337

301:                                              ; preds = %267
  %302 = load i32, i32* %9, align 4
  %303 = load i32, i32* %10, align 4
  %304 = xor i32 %302, %303
  %305 = icmp ne i32 %304, 255
  br i1 %305, label %306, label %316

306:                                              ; preds = %301
  %307 = load i32, i32* %9, align 4
  %308 = shl i32 %307, 16
  %309 = load i32, i32* %10, align 4
  %310 = shl i32 %309, 8
  %311 = or i32 %308, %310
  %312 = load i32, i32* %11, align 4
  %313 = or i32 %311, %312
  store i32 %313, i32* %8, align 4
  %314 = load i32, i32* %8, align 4
  %315 = call i32 (i32, i8*, ...) @IR_dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %314)
  br label %323

316:                                              ; preds = %301
  %317 = load i32, i32* %9, align 4
  %318 = shl i32 %317, 8
  %319 = load i32, i32* %11, align 4
  %320 = or i32 %318, %319
  store i32 %320, i32* %8, align 4
  %321 = load i32, i32* %8, align 4
  %322 = call i32 (i32, i8*, ...) @IR_dprintk(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %321)
  br label %323

323:                                              ; preds = %316, %306
  %324 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %325 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %323
  %329 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %330 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %329, i32 0, i32 2
  store i32 1, i32* %330, align 4
  br label %331

331:                                              ; preds = %328, %323
  %332 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %333 = load i32, i32* %8, align 4
  %334 = call i32 @rc_keydown(%struct.rc_dev* %332, i32 %333, i32 0)
  %335 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %336 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %335, i32 0, i32 0
  store i32 130, i32* %336, align 4
  store i32 0, i32* %4, align 4
  br label %352

337:                                              ; preds = %45, %296, %266, %257, %249, %240, %217, %156, %148, %139, %134, %99, %88, %63
  %338 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %339 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @TO_US(i32 %342)
  %344 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = call i32 @TO_STR(i32 %345)
  %347 = call i32 (i32, i8*, ...) @IR_dprintk(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %340, i32 %343, i32 %346)
  %348 = load %struct.nec_dec*, %struct.nec_dec** %7, align 8
  %349 = getelementptr inbounds %struct.nec_dec, %struct.nec_dec* %348, i32 0, i32 0
  store i32 130, i32* %349, align 4
  %350 = load i32, i32* @EINVAL, align 4
  %351 = sub nsw i32 0, %350
  store i32 %351, i32* %4, align 4
  br label %352

352:                                              ; preds = %337, %331, %250, %235, %176, %149, %132, %108, %90, %44, %28
  %353 = load i32, i32* %4, align 4
  ret i32 %353
}

declare dso_local i32 @is_timing_event(i64, i64) #1

declare dso_local i32 @IR_dprintk(i32, i8*, ...) #1

declare dso_local i32 @TO_US(i32) #1

declare dso_local i32 @TO_STR(i32) #1

declare dso_local i32 @eq_margin(i32, i32, i32) #1

declare dso_local i32 @rc_repeat(%struct.rc_dev*) #1

declare dso_local i32 @geq_margin(i32, i32, i32) #1

declare dso_local i32 @bitrev8(i32) #1

declare dso_local i32 @rc_keydown(%struct.rc_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
