; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ir-rc6-decoder.c_ir_rc6_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ir-rc6-decoder.c_ir_rc6_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.rc6_dec }
%struct.rc6_dec = type { i32, i32, i32, i32, i32, i32 }
%struct.ir_raw_event = type { i32, i32, i64 }

@RC_TYPE_RC6 = common dso_local global i32 0, align 4
@RC6_UNIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"RC6 decode started at state %i (%uus %s)\0A\00", align 1
@RC6_PREFIX_PULSE = common dso_local global i32 0, align 4
@RC6_PREFIX_SPACE = common dso_local global i32 0, align 4
@RC6_BIT_START = common dso_local global i32 0, align 4
@RC6_HEADER_NBITS = common dso_local global i32 0, align 4
@RC6_BIT_END = common dso_local global i32 0, align 4
@RC6_TOGGLE_START = common dso_local global i32 0, align 4
@RC6_TOGGLE_END = common dso_local global i32 0, align 4
@RC6_STARTBIT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"RC6 invalid start bit\0A\00", align 1
@RC6_0_NBITS = common dso_local global i32 0, align 4
@RC6_6A_LARGE_NBITS = common dso_local global i32 0, align 4
@RC6_6A_SMALL_NBITS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"RC6 unknown mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"RC6(0) scancode 0x%04x (toggle: %u)\0A\00", align 1
@RC6_6A_MCE_TOGGLE_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"RC6(6A) scancode 0x%08x (toggle: %u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"RC6 decode failed at state %i (%uus %s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i64, i64)* @ir_rc6_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_rc6_decode(%struct.rc_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ir_raw_event, align 8
  %6 = alloca %struct.rc_dev*, align 8
  %7 = alloca %struct.rc6_dec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast %struct.ir_raw_event* %5 to { i64, i64 }*
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %1, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %2, i64* %12, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %6, align 8
  %13 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %14 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store %struct.rc6_dec* %16, %struct.rc6_dec** %7, align 8
  %17 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %18 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RC_TYPE_RC6, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %376

26:                                               ; preds = %3
  %27 = bitcast %struct.ir_raw_event* %5 to { i64, i64 }*
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %27, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @is_timing_event(i64 %29, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %40 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %39, i32 0, i32 0
  store i32 131, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %34
  store i32 0, i32* %4, align 4
  br label %376

42:                                               ; preds = %26
  %43 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RC6_UNIT, align 4
  %46 = load i32, i32* @RC6_UNIT, align 4
  %47 = sdiv i32 %46, 2
  %48 = call i64 @geq_margin(i32 %44, i32 %45, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  br label %361

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %299, %247, %159, %51
  %53 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %54 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @TO_US(i32 %57)
  %59 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @TO_STR(i32 %60)
  %62 = call i32 (i32, i8*, ...) @IR_dprintk(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58, i32 %61)
  %63 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @RC6_UNIT, align 4
  %66 = load i32, i32* @RC6_UNIT, align 4
  %67 = sdiv i32 %66, 2
  %68 = call i64 @geq_margin(i32 %64, i32 %65, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %376

71:                                               ; preds = %52
  %72 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %73 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %360 [
    i32 131, label %75
    i32 130, label %93
    i32 132, label %110
    i32 133, label %139
    i32 128, label %162
    i32 129, label %178
    i32 135, label %248
    i32 136, label %277
    i32 134, label %302
  ]

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  br label %360

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @RC6_PREFIX_PULSE, align 4
  %84 = load i32, i32* @RC6_UNIT, align 4
  %85 = call i32 @eq_margin(i32 %82, i32 %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  br label %360

88:                                               ; preds = %80
  %89 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %90 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %89, i32 0, i32 0
  store i32 130, i32* %90, align 4
  %91 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %92 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %91, i32 0, i32 5
  store i32 0, i32* %92, align 4
  store i32 0, i32* %4, align 4
  br label %376

93:                                               ; preds = %71
  %94 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %360

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @RC6_PREFIX_SPACE, align 4
  %102 = load i32, i32* @RC6_UNIT, align 4
  %103 = sdiv i32 %102, 2
  %104 = call i32 @eq_margin(i32 %100, i32 %101, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %98
  br label %360

107:                                              ; preds = %98
  %108 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %109 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %108, i32 0, i32 0
  store i32 132, i32* %109, align 4
  store i32 0, i32* %4, align 4
  br label %376

110:                                              ; preds = %71
  %111 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @RC6_BIT_START, align 4
  %114 = load i32, i32* @RC6_UNIT, align 4
  %115 = sdiv i32 %114, 2
  %116 = call i32 @eq_margin(i32 %112, i32 %113, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %110
  br label %360

119:                                              ; preds = %110
  %120 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %121 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 1
  store i32 %123, i32* %121, align 4
  %124 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %119
  %128 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %129 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %127, %119
  %133 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %134 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  %137 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %138 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %137, i32 0, i32 0
  store i32 133, i32* %138, align 4
  store i32 0, i32* %4, align 4
  br label %376

139:                                              ; preds = %71
  %140 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %141 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = call i32 @is_transition(%struct.ir_raw_event* %5, i32* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %139
  br label %360

147:                                              ; preds = %139
  %148 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %149 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @RC6_HEADER_NBITS, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %155 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %154, i32 0, i32 0
  store i32 128, i32* %155, align 4
  br label %159

156:                                              ; preds = %147
  %157 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %158 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %157, i32 0, i32 0
  store i32 132, i32* %158, align 4
  br label %159

159:                                              ; preds = %156, %153
  %160 = load i32, i32* @RC6_BIT_END, align 4
  %161 = call i32 @decrease_duration(%struct.ir_raw_event* %5, i32 %160)
  br label %52

162:                                              ; preds = %71
  %163 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @RC6_TOGGLE_START, align 4
  %166 = load i32, i32* @RC6_UNIT, align 4
  %167 = sdiv i32 %166, 2
  %168 = call i32 @eq_margin(i32 %164, i32 %165, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %162
  br label %360

171:                                              ; preds = %162
  %172 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %175 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 4
  %176 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %177 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %176, i32 0, i32 0
  store i32 129, i32* %177, align 4
  store i32 0, i32* %4, align 4
  br label %376

178:                                              ; preds = %71
  %179 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %180 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %179, i32 0, i32 0
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 1
  %183 = call i32 @is_transition(%struct.ir_raw_event* %5, i32* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %178
  %186 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @RC6_TOGGLE_END, align 4
  %189 = load i32, i32* @RC6_UNIT, align 4
  %190 = sdiv i32 %189, 2
  %191 = call i64 @geq_margin(i32 %187, i32 %188, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %185, %178
  br label %360

194:                                              ; preds = %185
  %195 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %196 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @RC6_STARTBIT_MASK, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %203, label %201

201:                                              ; preds = %194
  %202 = call i32 (i32, i8*, ...) @IR_dprintk(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %360

203:                                              ; preds = %194
  %204 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %205 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %204, i32 0, i32 0
  store i32 135, i32* %205, align 4
  %206 = load i32, i32* @RC6_TOGGLE_END, align 4
  %207 = call i32 @decrease_duration(%struct.ir_raw_event* %5, i32 %206)
  %208 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %209 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %208, i32 0, i32 5
  store i32 0, i32* %209, align 4
  %210 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %211 = call i32 @rc6_mode(%struct.rc6_dec* %210)
  switch i32 %211, label %245 [
    i32 138, label %212
    i32 137, label %216
  ]

212:                                              ; preds = %203
  %213 = load i32, i32* @RC6_0_NBITS, align 4
  %214 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %215 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %214, i32 0, i32 4
  store i32 %213, i32* %215, align 4
  br label %247

216:                                              ; preds = %203
  %217 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %228, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @RC6_UNIT, align 4
  %224 = load i32, i32* @RC6_UNIT, align 4
  %225 = sdiv i32 %224, 2
  %226 = call i64 @geq_margin(i32 %222, i32 %223, i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %220, %216
  %229 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @RC6_UNIT, align 4
  %232 = load i32, i32* @RC6_UNIT, align 4
  %233 = sdiv i32 %232, 2
  %234 = call i64 @geq_margin(i32 %230, i32 %231, i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %228, %220
  %237 = load i32, i32* @RC6_6A_LARGE_NBITS, align 4
  %238 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %239 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %238, i32 0, i32 4
  store i32 %237, i32* %239, align 4
  br label %244

240:                                              ; preds = %228
  %241 = load i32, i32* @RC6_6A_SMALL_NBITS, align 4
  %242 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %243 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %242, i32 0, i32 4
  store i32 %241, i32* %243, align 4
  br label %244

244:                                              ; preds = %240, %236
  br label %247

245:                                              ; preds = %203
  %246 = call i32 (i32, i8*, ...) @IR_dprintk(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %361

247:                                              ; preds = %244, %212
  br label %52

248:                                              ; preds = %71
  %249 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @RC6_BIT_START, align 4
  %252 = load i32, i32* @RC6_UNIT, align 4
  %253 = sdiv i32 %252, 2
  %254 = call i32 @eq_margin(i32 %250, i32 %251, i32 %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %257, label %256

256:                                              ; preds = %248
  br label %360

257:                                              ; preds = %248
  %258 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %259 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = shl i32 %260, 1
  store i32 %261, i32* %259, align 4
  %262 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %257
  %266 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %267 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = or i32 %268, 1
  store i32 %269, i32* %267, align 4
  br label %270

270:                                              ; preds = %265, %257
  %271 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %272 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %272, align 4
  %275 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %276 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %275, i32 0, i32 0
  store i32 136, i32* %276, align 4
  store i32 0, i32* %4, align 4
  br label %376

277:                                              ; preds = %71
  %278 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %279 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %278, i32 0, i32 0
  %280 = load %struct.TYPE_2__*, %struct.TYPE_2__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 1
  %282 = call i32 @is_transition(%struct.ir_raw_event* %5, i32* %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %277
  br label %360

285:                                              ; preds = %277
  %286 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %287 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %290 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 4
  %292 = icmp eq i32 %288, %291
  br i1 %292, label %293, label %296

293:                                              ; preds = %285
  %294 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %295 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %294, i32 0, i32 0
  store i32 134, i32* %295, align 4
  br label %299

296:                                              ; preds = %285
  %297 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %298 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %297, i32 0, i32 0
  store i32 135, i32* %298, align 4
  br label %299

299:                                              ; preds = %296, %293
  %300 = load i32, i32* @RC6_BIT_END, align 4
  %301 = call i32 @decrease_duration(%struct.ir_raw_event* %5, i32 %300)
  br label %52

302:                                              ; preds = %71
  %303 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %302
  br label %360

307:                                              ; preds = %302
  %308 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %309 = call i32 @rc6_mode(%struct.rc6_dec* %308)
  switch i32 %309, label %351 [
    i32 138, label %310
    i32 137, label %321
  ]

310:                                              ; preds = %307
  %311 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %312 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = and i32 %313, 65535
  store i32 %314, i32* %8, align 4
  %315 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %316 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  store i32 %317, i32* %9, align 4
  %318 = load i32, i32* %8, align 4
  %319 = load i32, i32* %9, align 4
  %320 = call i32 (i32, i8*, ...) @IR_dprintk(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %318, i32 %319)
  br label %353

321:                                              ; preds = %307
  %322 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %323 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %322, i32 0, i32 4
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @RC6_6A_LARGE_NBITS, align 4
  %326 = icmp eq i32 %324, %325
  br i1 %326, label %327, label %342

327:                                              ; preds = %321
  %328 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %329 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @RC6_6A_MCE_TOGGLE_MASK, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  %334 = zext i1 %333 to i64
  %335 = select i1 %333, i32 1, i32 0
  store i32 %335, i32* %9, align 4
  %336 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %337 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @RC6_6A_MCE_TOGGLE_MASK, align 4
  %340 = xor i32 %339, -1
  %341 = and i32 %338, %340
  store i32 %341, i32* %8, align 4
  br label %347

342:                                              ; preds = %321
  store i32 0, i32* %9, align 4
  %343 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %344 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %343, i32 0, i32 3
  %345 = load i32, i32* %344, align 4
  %346 = and i32 %345, 16777215
  store i32 %346, i32* %8, align 4
  br label %347

347:                                              ; preds = %342, %327
  %348 = load i32, i32* %8, align 4
  %349 = load i32, i32* %9, align 4
  %350 = call i32 (i32, i8*, ...) @IR_dprintk(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %348, i32 %349)
  br label %353

351:                                              ; preds = %307
  %352 = call i32 (i32, i8*, ...) @IR_dprintk(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %361

353:                                              ; preds = %347, %310
  %354 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %355 = load i32, i32* %8, align 4
  %356 = load i32, i32* %9, align 4
  %357 = call i32 @rc_keydown(%struct.rc_dev* %354, i32 %355, i32 %356)
  %358 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %359 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %358, i32 0, i32 0
  store i32 131, i32* %359, align 4
  store i32 0, i32* %4, align 4
  br label %376

360:                                              ; preds = %71, %306, %284, %256, %201, %193, %170, %146, %118, %106, %97, %87, %79
  br label %361

361:                                              ; preds = %360, %351, %245, %50
  %362 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %363 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @TO_US(i32 %366)
  %368 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = call i32 @TO_STR(i32 %369)
  %371 = call i32 (i32, i8*, ...) @IR_dprintk(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %364, i32 %367, i32 %370)
  %372 = load %struct.rc6_dec*, %struct.rc6_dec** %7, align 8
  %373 = getelementptr inbounds %struct.rc6_dec, %struct.rc6_dec* %372, i32 0, i32 0
  store i32 131, i32* %373, align 4
  %374 = load i32, i32* @EINVAL, align 4
  %375 = sub nsw i32 0, %374
  store i32 %375, i32* %4, align 4
  br label %376

376:                                              ; preds = %361, %353, %270, %171, %132, %107, %88, %70, %41, %25
  %377 = load i32, i32* %4, align 4
  ret i32 %377
}

declare dso_local i32 @is_timing_event(i64, i64) #1

declare dso_local i64 @geq_margin(i32, i32, i32) #1

declare dso_local i32 @IR_dprintk(i32, i8*, ...) #1

declare dso_local i32 @TO_US(i32) #1

declare dso_local i32 @TO_STR(i32) #1

declare dso_local i32 @eq_margin(i32, i32, i32) #1

declare dso_local i32 @is_transition(%struct.ir_raw_event*, i32*) #1

declare dso_local i32 @decrease_duration(%struct.ir_raw_event*, i32) #1

declare dso_local i32 @rc6_mode(%struct.rc6_dec*) #1

declare dso_local i32 @rc_keydown(%struct.rc_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
