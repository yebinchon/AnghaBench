; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_labpc_ai_rinsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_labpc_ai_rinsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 (i64)*, i32 (i32, i64)* }
%struct.TYPE_3__ = type { i32*, i64, i64* }
%struct.comedi_device = type { i64, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@SWTRIG_BIT = common dso_local global i32 0, align 4
@HWTRIG_BIT = common dso_local global i32 0, align 4
@PRETRIG_BIT = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@COMMAND2_REG = common dso_local global i64 0, align 8
@COMMAND3_REG = common dso_local global i64 0, align 8
@thisboard = common dso_local global %struct.TYPE_3__* null, align 8
@AREF_DIFF = common dso_local global i64 0, align 8
@COMMAND1_REG = common dso_local global i64 0, align 8
@labpc_1200_layout = common dso_local global i64 0, align 8
@AREF_GROUND = common dso_local global i64 0, align 8
@ADC_COMMON_BIT = common dso_local global i32 0, align 4
@ADC_UNIP_BIT = common dso_local global i32 0, align 4
@ADC_FHF_INTR_EN_BIT = common dso_local global i32 0, align 4
@A1_INTR_EN_BIT = common dso_local global i32 0, align 4
@COMMAND6_REG = common dso_local global i64 0, align 8
@EXT_CONVERT_DISABLE_BIT = common dso_local global i32 0, align 4
@ADC_DIFF_BIT = common dso_local global i32 0, align 4
@COMMAND4_REG = common dso_local global i64 0, align 8
@INIT_A0_BITS = common dso_local global i32 0, align 4
@COUNTER_A_CONTROL_REG = common dso_local global i64 0, align 8
@ADC_CONVERT_REG = common dso_local global i64 0, align 8
@STATUS1_REG = common dso_local global i64 0, align 8
@DATA_AVAIL_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@ETIME = common dso_local global i32 0, align 4
@ADC_FIFO_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @labpc_ai_rinsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @labpc_ai_rinsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %17 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 1000, i32* %16, align 4
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 1
  %20 = load i64, i64* %17, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load i32, i32* @SWTRIG_BIT, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* @HWTRIG_BIT, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load i32, i32* @PRETRIG_BIT, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 6
  %36 = load i32 (i32, i64)*, i32 (i32, i64)** %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @COMMAND2_REG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 %36(i32 %39, i64 %44)
  %46 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 1
  %48 = load i64, i64* %17, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 6
  %54 = load i32 (i32, i64)*, i32 (i32, i64)** %53, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %59 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @COMMAND3_REG, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 %54(i32 %57, i64 %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  store i32 0, i32* %65, align 8
  %66 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %67 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @CR_CHAN(i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %71 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @CR_RANGE(i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %86 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @CR_AREF(i32 %87)
  %89 = load i64, i64* @AREF_DIFF, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %4
  %92 = load i32, i32* %12, align 4
  %93 = mul nsw i32 %92, 2
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %91, %4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @ADC_CHAN_BITS(i32 %95)
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 6
  %103 = load i32 (i32, i64)*, i32 (i32, i64)** %102, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %108 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @COMMAND1_REG, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 %103(i32 %106, i64 %111)
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @labpc_1200_layout, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %185

118:                                              ; preds = %94
  %119 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %120 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @CR_AREF(i32 %121)
  %123 = load i64, i64* @AREF_GROUND, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %118
  %126 = load i32, i32* @ADC_COMMON_BIT, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %138

131:                                              ; preds = %118
  %132 = load i32, i32* @ADC_COMMON_BIT, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %131, %125
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %138
  %148 = load i32, i32* @ADC_UNIP_BIT, align 4
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  br label %160

153:                                              ; preds = %138
  %154 = load i32, i32* @ADC_UNIP_BIT, align 4
  %155 = xor i32 %154, -1
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, %155
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %153, %147
  %161 = load i32, i32* @ADC_FHF_INTR_EN_BIT, align 4
  %162 = xor i32 %161, -1
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = load i32, i32* @A1_INTR_EN_BIT, align 4
  %168 = xor i32 %167, -1
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, %168
  store i32 %172, i32* %170, align 4
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 6
  %175 = load i32 (i32, i64)*, i32 (i32, i64)** %174, align 8
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %180 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @COMMAND6_REG, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 %175(i32 %178, i64 %183)
  br label %185

185:                                              ; preds = %160, %94
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 4
  store i32 0, i32* %187, align 8
  %188 = load i32, i32* @EXT_CONVERT_DISABLE_BIT, align 4
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 8
  %193 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %194 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @CR_AREF(i32 %195)
  %197 = load i64, i64* @AREF_DIFF, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %185
  %200 = load i32, i32* @ADC_DIFF_BIT, align 4
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %199, %185
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 6
  %208 = load i32 (i32, i64)*, i32 (i32, i64)** %207, align 8
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %213 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @COMMAND4_REG, align 8
  %216 = add nsw i64 %214, %215
  %217 = call i32 %208(i32 %211, i64 %216)
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 6
  %220 = load i32 (i32, i64)*, i32 (i32, i64)** %219, align 8
  %221 = load i32, i32* @INIT_A0_BITS, align 4
  %222 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %223 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @COUNTER_A_CONTROL_REG, align 8
  %226 = add nsw i64 %224, %225
  %227 = call i32 %220(i32 %221, i64 %226)
  %228 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %229 = call i32 @labpc_clear_adc_fifo(%struct.comedi_device* %228)
  store i32 0, i32* %11, align 4
  br label %230

230:                                              ; preds = %305, %205
  %231 = load i32, i32* %11, align 4
  %232 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %233 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = icmp slt i32 %231, %234
  br i1 %235, label %236, label %308

236:                                              ; preds = %230
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 6
  %239 = load i32 (i32, i64)*, i32 (i32, i64)** %238, align 8
  %240 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %241 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @ADC_CONVERT_REG, align 8
  %244 = add nsw i64 %242, %243
  %245 = call i32 %239(i32 1, i64 %244)
  store i32 0, i32* %10, align 4
  br label %246

246:                                              ; preds = %266, %236
  %247 = load i32, i32* %10, align 4
  %248 = load i32, i32* %16, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %269

250:                                              ; preds = %246
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 5
  %253 = load i32 (i64)*, i32 (i64)** %252, align 8
  %254 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %255 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @STATUS1_REG, align 8
  %258 = add nsw i64 %256, %257
  %259 = call i32 %253(i64 %258)
  %260 = load i32, i32* @DATA_AVAIL_BIT, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %250
  br label %269

264:                                              ; preds = %250
  %265 = call i32 @udelay(i32 1)
  br label %266

266:                                              ; preds = %264
  %267 = load i32, i32* %10, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %10, align 4
  br label %246

269:                                              ; preds = %263, %246
  %270 = load i32, i32* %10, align 4
  %271 = load i32, i32* %16, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %273, label %278

273:                                              ; preds = %269
  %274 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %275 = call i32 @comedi_error(%struct.comedi_device* %274, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %276 = load i32, i32* @ETIME, align 4
  %277 = sub nsw i32 0, %276
  store i32 %277, i32* %5, align 4
  br label %310

278:                                              ; preds = %269
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 5
  %281 = load i32 (i64)*, i32 (i64)** %280, align 8
  %282 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %283 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @ADC_FIFO_REG, align 8
  %286 = add nsw i64 %284, %285
  %287 = call i32 %281(i64 %286)
  store i32 %287, i32* %14, align 4
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 5
  %290 = load i32 (i64)*, i32 (i64)** %289, align 8
  %291 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %292 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @ADC_FIFO_REG, align 8
  %295 = add nsw i64 %293, %294
  %296 = call i32 %290(i64 %295)
  store i32 %296, i32* %15, align 4
  %297 = load i32, i32* %15, align 4
  %298 = shl i32 %297, 8
  %299 = load i32, i32* %14, align 4
  %300 = or i32 %298, %299
  %301 = load i32*, i32** %9, align 8
  %302 = load i32, i32* %11, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  store i32 %300, i32* %304, align 4
  br label %305

305:                                              ; preds = %278
  %306 = load i32, i32* %11, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %11, align 4
  br label %230

308:                                              ; preds = %230
  %309 = load i32, i32* %11, align 4
  store i32 %309, i32* %5, align 4
  br label %310

310:                                              ; preds = %308, %273
  %311 = load i32, i32* %5, align 4
  ret i32 %311
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @ADC_CHAN_BITS(i32) #1

declare dso_local i32 @labpc_clear_adc_fifo(%struct.comedi_device*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
