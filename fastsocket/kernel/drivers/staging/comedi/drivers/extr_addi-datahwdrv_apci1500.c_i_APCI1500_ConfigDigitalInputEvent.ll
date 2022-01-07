; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci1500.c_i_APCI1500_ConfigDigitalInputEvent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci1500.c_i_APCI1500_ConfigDigitalInputEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@APCI1500_RW_MASTER_INTERRUPT_CONTROL = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI1500_Z8536_CONTROL_REGISTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"\0AThe specified port event  does not exist\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@APCI1500_AND = common dso_local global i32 0, align 4
@APCI1500_OR = common dso_local global i32 0, align 4
@APCI1500_OR_PRIORITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"\0AThe specified interrupt logic does not exist\0A\00", align 1
@i_Logic = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"\0AThe option indicated in the event mask does not exist\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"\0ATransition error on an OR PRIORITY logic\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"\0A Transition error on an AND logic\0A\00", align 1
@APCI1500_RW_MASTER_CONFIGURATION_CONTROL = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_A_PATTERN_POLARITY = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_A_PATTERN_MASK = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_A_PATTERN_TRANSITION = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_A_SPECIFICATION = common dso_local global i32 0, align 4
@i_Event1Status = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"\0AThe choice for interrupt logic does not exist\0A\00", align 1
@APCI1500_RW_PORT_B_SPECIFICATION = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_B_PATTERN_POLARITY = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_B_PATTERN_TRANSITION = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_B_PATTERN_MASK = common dso_local global i32 0, align 4
@i_Event2Status = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1500_ConfigDigitalInputEvent(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %19 = load i32, i32* @APCI1500_RW_MASTER_INTERRUPT_CONTROL, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @outb(i32 %19, i64 %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outb(i32 0, i64 %30)
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  store i32 8, i32* %13, align 4
  br label %48

37:                                               ; preds = %4
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 6, i32* %13, align 4
  br label %47

43:                                               ; preds = %37
  %44 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %480

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %36
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %64 [
    i32 0, label %52
    i32 1, label %56
    i32 2, label %60
  ]

52:                                               ; preds = %48
  %53 = load i32, i32* @APCI1500_AND, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %53, i32* %55, align 4
  br label %68

56:                                               ; preds = %48
  %57 = load i32, i32* @APCI1500_OR, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 %57, i32* %59, align 4
  br label %68

60:                                               ; preds = %48
  %61 = load i32, i32* @APCI1500_OR_PRIORITY, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %61, i32* %63, align 4
  br label %68

64:                                               ; preds = %48
  %65 = call i32 @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %480

68:                                               ; preds = %60, %56, %52
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* @i_Logic, align 4
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %14, align 4
  store i32 0, i32* %18, align 4
  br label %73

73:                                               ; preds = %149, %68
  %74 = load i32, i32* %14, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %154

76:                                               ; preds = %73
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %18, align 4
  %79 = add nsw i32 2, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  switch i32 %83, label %144 [
    i32 0, label %84
    i32 1, label %91
    i32 2, label %104
    i32 3, label %117
    i32 4, label %136
    i32 5, label %143
  ]

84:                                               ; preds = %76
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %14, align 4
  %88 = sub nsw i32 %86, %87
  %89 = shl i32 1, %88
  %90 = or i32 %85, %89
  store i32 %90, i32* %12, align 4
  br label %148

91:                                               ; preds = %76
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = sub nsw i32 %93, %94
  %96 = shl i32 1, %95
  %97 = or i32 %92, %96
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %14, align 4
  %101 = sub nsw i32 %99, %100
  %102 = shl i32 1, %101
  %103 = or i32 %98, %102
  store i32 %103, i32* %10, align 4
  br label %148

104:                                              ; preds = %76
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %14, align 4
  %108 = sub nsw i32 %106, %107
  %109 = shl i32 1, %108
  %110 = or i32 %105, %109
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %14, align 4
  %114 = sub nsw i32 %112, %113
  %115 = shl i32 1, %114
  %116 = or i32 %111, %115
  store i32 %116, i32* %11, align 4
  br label %148

117:                                              ; preds = %76
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %14, align 4
  %121 = sub nsw i32 %119, %120
  %122 = shl i32 1, %121
  %123 = or i32 %118, %122
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %14, align 4
  %127 = sub nsw i32 %125, %126
  %128 = shl i32 1, %127
  %129 = or i32 %124, %128
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %14, align 4
  %133 = sub nsw i32 %131, %132
  %134 = shl i32 1, %133
  %135 = or i32 %130, %134
  store i32 %135, i32* %11, align 4
  br label %148

136:                                              ; preds = %76
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %14, align 4
  %140 = sub nsw i32 %138, %139
  %141 = shl i32 1, %140
  %142 = or i32 %137, %141
  store i32 %142, i32* %11, align 4
  br label %148

143:                                              ; preds = %76
  br label %148

144:                                              ; preds = %76
  %145 = call i32 @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %5, align 4
  br label %480

148:                                              ; preds = %143, %136, %117, %104, %91, %84
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %18, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %18, align 4
  br label %73

154:                                              ; preds = %73
  %155 = load i32*, i32** %9, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %326

159:                                              ; preds = %154
  %160 = load i32*, i32** %9, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @APCI1500_AND, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %177, label %165

165:                                              ; preds = %159
  %166 = load i32*, i32** %9, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @APCI1500_OR, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %177, label %171

171:                                              ; preds = %165
  %172 = load i32*, i32** %9, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @APCI1500_OR_PRIORITY, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %321

177:                                              ; preds = %171, %165, %159
  %178 = load i32*, i32** %9, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @APCI1500_OR_PRIORITY, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %190

183:                                              ; preds = %177
  %184 = load i32, i32* %11, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %188 = load i32, i32* @EINVAL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %5, align 4
  br label %480

190:                                              ; preds = %183, %177
  %191 = load i32*, i32** %9, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @APCI1500_AND, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %218

196:                                              ; preds = %190
  store i32 0, i32* %14, align 4
  br label %197

197:                                              ; preds = %207, %196
  %198 = load i32, i32* %14, align 4
  %199 = icmp slt i32 %198, 8
  br i1 %199, label %200, label %210

200:                                              ; preds = %197
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* %14, align 4
  %204 = ashr i32 %202, %203
  %205 = and i32 %204, 1
  %206 = add nsw i32 %201, %205
  store i32 %206, i32* %16, align 4
  br label %207

207:                                              ; preds = %200
  %208 = load i32, i32* %14, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %14, align 4
  br label %197

210:                                              ; preds = %197
  %211 = load i32, i32* %16, align 4
  %212 = icmp sgt i32 %211, 1
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %215 = load i32, i32* @EINVAL, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %5, align 4
  br label %480

217:                                              ; preds = %210
  br label %218

218:                                              ; preds = %217, %190
  %219 = load i32, i32* @APCI1500_RW_MASTER_CONFIGURATION_CONTROL, align 4
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %224 = add nsw i64 %222, %223
  %225 = call i32 @outb(i32 %219, i64 %224)
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %230 = add nsw i64 %228, %229
  %231 = call i32 @outb(i32 240, i64 %230)
  %232 = load i32, i32* @APCI1500_RW_PORT_A_PATTERN_POLARITY, align 4
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %237 = add nsw i64 %235, %236
  %238 = call i32 @outb(i32 %232, i64 %237)
  %239 = load i32, i32* %10, align 4
  %240 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %244 = add nsw i64 %242, %243
  %245 = call i32 @outb(i32 %239, i64 %244)
  %246 = load i32, i32* @APCI1500_RW_PORT_A_PATTERN_MASK, align 4
  %247 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %251 = add nsw i64 %249, %250
  %252 = call i32 @outb(i32 %246, i64 %251)
  %253 = load i32, i32* %12, align 4
  %254 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %258 = add nsw i64 %256, %257
  %259 = call i32 @outb(i32 %253, i64 %258)
  %260 = load i32, i32* @APCI1500_RW_PORT_A_PATTERN_TRANSITION, align 4
  %261 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %265 = add nsw i64 %263, %264
  %266 = call i32 @outb(i32 %260, i64 %265)
  %267 = load i32, i32* %11, align 4
  %268 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %272 = add nsw i64 %270, %271
  %273 = call i32 @outb(i32 %267, i64 %272)
  %274 = load i32, i32* @APCI1500_RW_PORT_A_SPECIFICATION, align 4
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %279 = add nsw i64 %277, %278
  %280 = call i32 @outb(i32 %274, i64 %279)
  %281 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %285 = add nsw i64 %283, %284
  %286 = call i32 @inb(i64 %285)
  store i32 %286, i32* %17, align 4
  %287 = load i32, i32* @APCI1500_RW_PORT_A_SPECIFICATION, align 4
  %288 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %292 = add nsw i64 %290, %291
  %293 = call i32 @outb(i32 %287, i64 %292)
  %294 = load i32, i32* %17, align 4
  %295 = and i32 %294, 249
  %296 = load i32*, i32** %9, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 1
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %295, %298
  %300 = or i32 %299, 9
  store i32 %300, i32* %17, align 4
  %301 = load i32, i32* %17, align 4
  %302 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %306 = add nsw i64 %304, %305
  %307 = call i32 @outb(i32 %301, i64 %306)
  store i32 1, i32* @i_Event1Status, align 4
  %308 = load i32, i32* @APCI1500_RW_MASTER_CONFIGURATION_CONTROL, align 4
  %309 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %310 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %313 = add nsw i64 %311, %312
  %314 = call i32 @outb(i32 %308, i64 %313)
  %315 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %316 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %319 = add nsw i64 %317, %318
  %320 = call i32 @outb(i32 244, i64 %319)
  br label %325

321:                                              ; preds = %171
  %322 = call i32 @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %323 = load i32, i32* @EINVAL, align 4
  %324 = sub nsw i32 0, %323
  store i32 %324, i32* %5, align 4
  br label %480

325:                                              ; preds = %218
  br label %326

326:                                              ; preds = %325, %154
  %327 = load i32*, i32** %9, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 0
  %329 = load i32, i32* %328, align 4
  %330 = icmp eq i32 %329, 2
  br i1 %330, label %331, label %476

331:                                              ; preds = %326
  %332 = load i32*, i32** %9, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 1
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @APCI1500_OR, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %337, label %471

337:                                              ; preds = %331
  %338 = load i32, i32* @APCI1500_RW_MASTER_CONFIGURATION_CONTROL, align 4
  %339 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %340 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %343 = add nsw i64 %341, %342
  %344 = call i32 @outb(i32 %338, i64 %343)
  %345 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %349 = add nsw i64 %347, %348
  %350 = call i32 @outb(i32 116, i64 %349)
  %351 = load i32, i32* @APCI1500_RW_PORT_B_SPECIFICATION, align 4
  %352 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %353 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %356 = add nsw i64 %354, %355
  %357 = call i32 @outb(i32 %351, i64 %356)
  %358 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %359 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %362 = add nsw i64 %360, %361
  %363 = call i32 @inb(i64 %362)
  store i32 %363, i32* %17, align 4
  %364 = load i32, i32* @APCI1500_RW_PORT_B_SPECIFICATION, align 4
  %365 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %366 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %369 = add nsw i64 %367, %368
  %370 = call i32 @outb(i32 %364, i64 %369)
  %371 = load i32, i32* %17, align 4
  %372 = and i32 %371, 249
  store i32 %372, i32* %17, align 4
  %373 = load i32, i32* %17, align 4
  %374 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %375 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %378 = add nsw i64 %376, %377
  %379 = call i32 @outb(i32 %373, i64 %378)
  %380 = load i32, i32* %12, align 4
  %381 = or i32 %380, 192
  store i32 %381, i32* %12, align 4
  %382 = load i32, i32* %10, align 4
  %383 = or i32 %382, 192
  store i32 %383, i32* %10, align 4
  %384 = load i32, i32* %11, align 4
  %385 = or i32 %384, 192
  store i32 %385, i32* %11, align 4
  %386 = load i32, i32* @APCI1500_RW_PORT_B_PATTERN_POLARITY, align 4
  %387 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %388 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %391 = add nsw i64 %389, %390
  %392 = call i32 @outb(i32 %386, i64 %391)
  %393 = load i32, i32* %10, align 4
  %394 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %395 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %398 = add nsw i64 %396, %397
  %399 = call i32 @outb(i32 %393, i64 %398)
  %400 = load i32, i32* @APCI1500_RW_PORT_B_PATTERN_TRANSITION, align 4
  %401 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %402 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %401, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %405 = add nsw i64 %403, %404
  %406 = call i32 @outb(i32 %400, i64 %405)
  %407 = load i32, i32* %11, align 4
  %408 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %409 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %412 = add nsw i64 %410, %411
  %413 = call i32 @outb(i32 %407, i64 %412)
  %414 = load i32, i32* @APCI1500_RW_PORT_B_PATTERN_MASK, align 4
  %415 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %416 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %419 = add nsw i64 %417, %418
  %420 = call i32 @outb(i32 %414, i64 %419)
  %421 = load i32, i32* %12, align 4
  %422 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %423 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %426 = add nsw i64 %424, %425
  %427 = call i32 @outb(i32 %421, i64 %426)
  %428 = load i32, i32* @APCI1500_RW_PORT_B_SPECIFICATION, align 4
  %429 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %430 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %429, i32 0, i32 0
  %431 = load i64, i64* %430, align 8
  %432 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %433 = add nsw i64 %431, %432
  %434 = call i32 @outb(i32 %428, i64 %433)
  %435 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %436 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %435, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %439 = add nsw i64 %437, %438
  %440 = call i32 @inb(i64 %439)
  store i32 %440, i32* %17, align 4
  %441 = load i32, i32* @APCI1500_RW_PORT_B_SPECIFICATION, align 4
  %442 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %443 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %442, i32 0, i32 0
  %444 = load i64, i64* %443, align 8
  %445 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %446 = add nsw i64 %444, %445
  %447 = call i32 @outb(i32 %441, i64 %446)
  %448 = load i32, i32* %17, align 4
  %449 = and i32 %448, 249
  %450 = or i32 %449, 4
  store i32 %450, i32* %17, align 4
  %451 = load i32, i32* %17, align 4
  %452 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %453 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %452, i32 0, i32 0
  %454 = load i64, i64* %453, align 8
  %455 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %456 = add nsw i64 %454, %455
  %457 = call i32 @outb(i32 %451, i64 %456)
  store i32 1, i32* @i_Event2Status, align 4
  %458 = load i32, i32* @APCI1500_RW_MASTER_CONFIGURATION_CONTROL, align 4
  %459 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %460 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %463 = add nsw i64 %461, %462
  %464 = call i32 @outb(i32 %458, i64 %463)
  %465 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %466 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %465, i32 0, i32 0
  %467 = load i64, i64* %466, align 8
  %468 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %469 = add nsw i64 %467, %468
  %470 = call i32 @outb(i32 244, i64 %469)
  br label %475

471:                                              ; preds = %331
  %472 = call i32 @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %473 = load i32, i32* @EINVAL, align 4
  %474 = sub nsw i32 0, %473
  store i32 %474, i32* %5, align 4
  br label %480

475:                                              ; preds = %337
  br label %476

476:                                              ; preds = %475, %326
  %477 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %478 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 4
  store i32 %479, i32* %5, align 4
  br label %480

480:                                              ; preds = %476, %471, %321, %213, %186, %144, %64, %43
  %481 = load i32, i32* %5, align 4
  ret i32 %481
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
