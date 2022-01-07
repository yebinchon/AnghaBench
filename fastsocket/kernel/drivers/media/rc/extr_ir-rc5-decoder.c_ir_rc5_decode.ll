; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ir-rc5-decoder.c_ir_rc5_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ir-rc5-decoder.c_ir_rc5_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.rc5_dec }
%struct.rc5_dec = type { i32, i32, i32, i32 }
%struct.ir_raw_event = type { i32, i32, i64 }

@RC_TYPE_RC5 = common dso_local global i32 0, align 4
@RC5_UNIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"RC5(x) decode started at state %i (%uus %s)\0A\00", align 1
@RC5X_NBITS = common dso_local global i8* null, align 8
@RC5_BIT_START = common dso_local global i32 0, align 4
@CHECK_RC5X_NBITS = common dso_local global i32 0, align 4
@RC5_BIT_END = common dso_local global i32 0, align 4
@RC5X_SPACE = common dso_local global i32 0, align 4
@RC5_NBITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"RC5X scancode 0x%06x (toggle: %u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"RC5 scancode 0x%04x (toggle: %u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"RC5(x) decode failed at state %i (%uus %s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i64, i64)* @ir_rc5_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_rc5_decode(%struct.rc_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ir_raw_event, align 8
  %6 = alloca %struct.rc_dev*, align 8
  %7 = alloca %struct.rc5_dec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = bitcast %struct.ir_raw_event* %5 to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  store i64 %1, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  store i64 %2, i64* %17, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %6, align 8
  %18 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %19 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store %struct.rc5_dec* %21, %struct.rc5_dec** %7, align 8
  %22 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %23 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RC_TYPE_RC5, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %298

31:                                               ; preds = %3
  %32 = bitcast %struct.ir_raw_event* %5 to { i64, i64 }*
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @is_timing_event(i64 %34, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %45 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %44, i32 0, i32 0
  store i32 128, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %39
  store i32 0, i32* %4, align 4
  br label %298

47:                                               ; preds = %31
  %48 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @RC5_UNIT, align 4
  %51 = load i32, i32* @RC5_UNIT, align 4
  %52 = sdiv i32 %51, 2
  %53 = call i64 @geq_margin(i32 %49, i32 %50, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  br label %283

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %183, %157, %85, %56
  %58 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %59 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @TO_US(i32 %62)
  %64 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @TO_STR(i32 %65)
  %67 = call i32 (i32, i8*, i32, i32, ...) @IR_dprintk(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %63, i32 %66)
  %68 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @RC5_UNIT, align 4
  %71 = load i32, i32* @RC5_UNIT, align 4
  %72 = sdiv i32 %71, 2
  %73 = call i64 @geq_margin(i32 %69, i32 %70, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %298

76:                                               ; preds = %57
  %77 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %78 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %282 [
    i32 128, label %80
    i32 131, label %96
    i32 132, label %125
    i32 130, label %160
    i32 129, label %186
  ]

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  br label %282

85:                                               ; preds = %80
  %86 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %87 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %86, i32 0, i32 0
  store i32 131, i32* %87, align 4
  %88 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %89 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  %90 = load i8*, i8** @RC5X_NBITS, align 8
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %93 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @RC5_BIT_START, align 4
  %95 = call i32 @decrease_duration(%struct.ir_raw_event* %5, i32 %94)
  br label %57

96:                                               ; preds = %76
  %97 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @RC5_BIT_START, align 4
  %100 = load i32, i32* @RC5_UNIT, align 4
  %101 = sdiv i32 %100, 2
  %102 = call i32 @eq_margin(i32 %98, i32 %99, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %96
  br label %282

105:                                              ; preds = %96
  %106 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %107 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %105
  %114 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %115 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %113, %105
  %119 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %120 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %124 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %123, i32 0, i32 0
  store i32 132, i32* %124, align 4
  store i32 0, i32* %4, align 4
  br label %298

125:                                              ; preds = %76
  %126 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %127 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = call i32 @is_transition(%struct.ir_raw_event* %5, i32* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %125
  br label %282

133:                                              ; preds = %125
  %134 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %135 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %138 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %136, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %133
  %142 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %143 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %142, i32 0, i32 0
  store i32 129, i32* %143, align 4
  br label %157

144:                                              ; preds = %133
  %145 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %146 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @CHECK_RC5X_NBITS, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %152 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %151, i32 0, i32 0
  store i32 130, i32* %152, align 4
  br label %156

153:                                              ; preds = %144
  %154 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %155 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %154, i32 0, i32 0
  store i32 131, i32* %155, align 4
  br label %156

156:                                              ; preds = %153, %150
  br label %157

157:                                              ; preds = %156, %141
  %158 = load i32, i32* @RC5_BIT_END, align 4
  %159 = call i32 @decrease_duration(%struct.ir_raw_event* %5, i32 %158)
  br label %57

160:                                              ; preds = %76
  %161 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %179, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @RC5X_SPACE, align 4
  %168 = load i32, i32* @RC5_UNIT, align 4
  %169 = sdiv i32 %168, 2
  %170 = call i64 @geq_margin(i32 %166, i32 %167, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %164
  %173 = load i8*, i8** @RC5X_NBITS, align 8
  %174 = ptrtoint i8* %173 to i32
  %175 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %176 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* @RC5X_SPACE, align 4
  %178 = call i32 @decrease_duration(%struct.ir_raw_event* %5, i32 %177)
  br label %183

179:                                              ; preds = %164, %160
  %180 = load i32, i32* @RC5_NBITS, align 4
  %181 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %182 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 4
  br label %183

183:                                              ; preds = %179, %172
  %184 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %185 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %184, i32 0, i32 0
  store i32 131, i32* %185, align 4
  br label %57

186:                                              ; preds = %76
  %187 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  br label %282

191:                                              ; preds = %186
  %192 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %193 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = inttoptr i64 %195 to i8*
  %197 = load i8*, i8** @RC5X_NBITS, align 8
  %198 = icmp eq i8* %196, %197
  br i1 %198, label %199, label %241

199:                                              ; preds = %191
  %200 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %201 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, 63
  %204 = ashr i32 %203, 0
  store i32 %204, i32* %10, align 4
  %205 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %206 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = and i32 %207, 4032
  %209 = ashr i32 %208, 6
  store i32 %209, i32* %11, align 4
  %210 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %211 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = and i32 %212, 126976
  %214 = ashr i32 %213, 12
  store i32 %214, i32* %12, align 4
  %215 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %216 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = and i32 %217, 131072
  %219 = icmp ne i32 %218, 0
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i32 1, i32 0
  store i32 %221, i32* %8, align 4
  %222 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %223 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = and i32 %224, 4096
  %226 = icmp ne i32 %225, 0
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i32 0, i32 64
  %229 = load i32, i32* %11, align 4
  %230 = add nsw i32 %229, %228
  store i32 %230, i32* %11, align 4
  %231 = load i32, i32* %12, align 4
  %232 = shl i32 %231, 16
  %233 = load i32, i32* %11, align 4
  %234 = shl i32 %233, 8
  %235 = or i32 %232, %234
  %236 = load i32, i32* %10, align 4
  %237 = or i32 %235, %236
  store i32 %237, i32* %9, align 4
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* %8, align 4
  %240 = call i32 (i32, i8*, i32, i32, ...) @IR_dprintk(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %238, i32 %239)
  br label %275

241:                                              ; preds = %191
  %242 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %243 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = and i32 %244, 63
  %246 = ashr i32 %245, 0
  store i32 %246, i32* %13, align 4
  %247 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %248 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %249, 1984
  %251 = ashr i32 %250, 6
  store i32 %251, i32* %14, align 4
  %252 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %253 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = and i32 %254, 2048
  %256 = icmp ne i32 %255, 0
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i32 1, i32 0
  store i32 %258, i32* %8, align 4
  %259 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %260 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = and i32 %261, 4096
  %263 = icmp ne i32 %262, 0
  %264 = zext i1 %263 to i64
  %265 = select i1 %263, i32 0, i32 64
  %266 = load i32, i32* %13, align 4
  %267 = add nsw i32 %266, %265
  store i32 %267, i32* %13, align 4
  %268 = load i32, i32* %14, align 4
  %269 = shl i32 %268, 8
  %270 = load i32, i32* %13, align 4
  %271 = or i32 %269, %270
  store i32 %271, i32* %9, align 4
  %272 = load i32, i32* %9, align 4
  %273 = load i32, i32* %8, align 4
  %274 = call i32 (i32, i8*, i32, i32, ...) @IR_dprintk(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %272, i32 %273)
  br label %275

275:                                              ; preds = %241, %199
  %276 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* %8, align 4
  %279 = call i32 @rc_keydown(%struct.rc_dev* %276, i32 %277, i32 %278)
  %280 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %281 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %280, i32 0, i32 0
  store i32 128, i32* %281, align 4
  store i32 0, i32* %4, align 4
  br label %298

282:                                              ; preds = %76, %190, %132, %104, %84
  br label %283

283:                                              ; preds = %282, %55
  %284 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %285 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @TO_US(i32 %288)
  %290 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @TO_STR(i32 %291)
  %293 = call i32 (i32, i8*, i32, i32, ...) @IR_dprintk(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %286, i32 %289, i32 %292)
  %294 = load %struct.rc5_dec*, %struct.rc5_dec** %7, align 8
  %295 = getelementptr inbounds %struct.rc5_dec, %struct.rc5_dec* %294, i32 0, i32 0
  store i32 128, i32* %295, align 4
  %296 = load i32, i32* @EINVAL, align 4
  %297 = sub nsw i32 0, %296
  store i32 %297, i32* %4, align 4
  br label %298

298:                                              ; preds = %283, %275, %118, %75, %46, %30
  %299 = load i32, i32* %4, align 4
  ret i32 %299
}

declare dso_local i32 @is_timing_event(i64, i64) #1

declare dso_local i64 @geq_margin(i32, i32, i32) #1

declare dso_local i32 @IR_dprintk(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @TO_US(i32) #1

declare dso_local i32 @TO_STR(i32) #1

declare dso_local i32 @decrease_duration(%struct.ir_raw_event*, i32) #1

declare dso_local i32 @eq_margin(i32, i32, i32) #1

declare dso_local i32 @is_transition(%struct.ir_raw_event*, i32*) #1

declare dso_local i32 @rc_keydown(%struct.rc_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
