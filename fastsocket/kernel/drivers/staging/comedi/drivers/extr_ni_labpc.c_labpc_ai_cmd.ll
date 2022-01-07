; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_labpc_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_labpc_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 (i32, i64)*, i64, i32 }
%struct.TYPE_3__ = type { i64, i64, i32*, i64* }
%struct.comedi_device = type { i32, i64, i32 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i32, i32, i64, i64, i32, i32* }

@.str = private unnamed_addr constant [40 x i8] c"no irq assigned, cannot perform command\00", align 1
@SWTRIG_BIT = common dso_local global i32 0, align 4
@HWTRIG_BIT = common dso_local global i32 0, align 4
@PRETRIG_BIT = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@COMMAND2_REG = common dso_local global i64 0, align 8
@COMMAND3_REG = common dso_local global i64 0, align 8
@COUNTER_A_BASE_REG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"error loading counter a1\00", align 1
@INIT_A1_BITS = common dso_local global i32 0, align 4
@COUNTER_A_CONTROL_REG = common dso_local global i64 0, align 8
@TRIG_WAKE_EOS = common dso_local global i32 0, align 4
@TRIG_RT = common dso_local global i32 0, align 4
@thisboard = common dso_local global %struct.TYPE_3__* null, align 8
@isa_bustype = common dso_local global i64 0, align 8
@isa_dma_transfer = common dso_local global i32 0, align 4
@labpc_1200_layout = common dso_local global i64 0, align 8
@fifo_half_full_transfer = common dso_local global i32 0, align 4
@fifo_not_empty_transfer = common dso_local global i32 0, align 4
@AREF_GROUND = common dso_local global i32 0, align 4
@ADC_COMMON_BIT = common dso_local global i32 0, align 4
@ADC_UNIP_BIT = common dso_local global i32 0, align 4
@ADC_FHF_INTR_EN_BIT = common dso_local global i32 0, align 4
@A1_INTR_EN_BIT = common dso_local global i32 0, align 4
@MODE_MULT_CHAN_UP = common dso_local global i64 0, align 8
@ADC_SCAN_UP_BIT = common dso_local global i32 0, align 4
@COMMAND6_REG = common dso_local global i64 0, align 8
@MODE_SINGLE_CHAN = common dso_local global i64 0, align 8
@AREF_DIFF = common dso_local global i32 0, align 4
@COMMAND1_REG = common dso_local global i64 0, align 8
@MODE_MULT_CHAN_DOWN = common dso_local global i64 0, align 8
@ADC_SCAN_EN_BIT = common dso_local global i32 0, align 4
@EXT_CONVERT_DISABLE_BIT = common dso_local global i32 0, align 4
@INTERVAL_SCAN_EN_BIT = common dso_local global i32 0, align 4
@EXT_SCAN_EN_BIT = common dso_local global i32 0, align 4
@ADC_DIFF_BIT = common dso_local global i32 0, align 4
@COMMAND4_REG = common dso_local global i64 0, align 8
@INTERVAL_COUNT_REG = common dso_local global i64 0, align 8
@INTERVAL_LOAD_BITS = common dso_local global i32 0, align 4
@INTERVAL_LOAD_REG = common dso_local global i64 0, align 8
@TRIG_TIMER = common dso_local global i64 0, align 8
@COUNTER_B_BASE_REG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"error loading counter b0\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"error loading counter a0\00", align 1
@INIT_A0_BITS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"error loading counter b1\00", align 1
@sample_size = common dso_local global i32 0, align 4
@DMA_EN_BIT = common dso_local global i32 0, align 4
@DMATC_INTR_EN_BIT = common dso_local global i32 0, align 4
@ERR_INTR_EN_BIT = common dso_local global i32 0, align 4
@ADC_FNE_INTR_EN_BIT = common dso_local global i32 0, align 4
@CASCADE_BIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"bug with start_src\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"bug with stop_src\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @labpc_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @labpc_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.comedi_async*, align 8
  %12 = alloca %struct.comedi_cmd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 0
  %17 = load %struct.comedi_async*, %struct.comedi_async** %16, align 8
  store %struct.comedi_async* %17, %struct.comedi_async** %11, align 8
  %18 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  %19 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %18, i32 0, i32 0
  store %struct.comedi_cmd* %19, %struct.comedi_cmd** %12, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %26 = call i32 @comedi_error(%struct.comedi_device* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %747

27:                                               ; preds = %2
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 7
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @CR_RANGE(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 7
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CR_AREF(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %14, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load i32, i32* @SWTRIG_BIT, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* @HWTRIG_BIT, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = load i32, i32* @PRETRIG_BIT, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 11
  %58 = load i32 (i32, i64)*, i32 (i32, i64)** %57, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @COMMAND2_REG, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 %58(i32 %61, i64 %66)
  %68 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 0
  %70 = load i64, i64* %14, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 11
  %76 = load i32 (i32, i64)*, i32 (i32, i64)** %75, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %81 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @COMMAND3_REG, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 %76(i32 %79, i64 %84)
  %86 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %87 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 131
  br i1 %89, label %90, label %100

90:                                               ; preds = %27
  %91 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %92 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 %93, %96
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %90, %27
  %101 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %102 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 130
  br i1 %104, label %105, label %119

105:                                              ; preds = %100
  %106 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %107 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %108 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @COUNTER_A_BASE_REG, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @labpc_counter_load(%struct.comedi_device* %106, i64 %111, i32 1, i32 3, i32 0)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %105
  %116 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %117 = call i32 @comedi_error(%struct.comedi_device* %116, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %747

118:                                              ; preds = %105
  br label %130

119:                                              ; preds = %100
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 11
  %122 = load i32 (i32, i64)*, i32 (i32, i64)** %121, align 8
  %123 = load i32, i32* @INIT_A1_BITS, align 4
  %124 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %125 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @COUNTER_A_CONTROL_REG, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 %122(i32 %123, i64 %128)
  br label %130

130:                                              ; preds = %119, %118
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 12
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %130
  %136 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %137 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %140 = load i32, i32* @TRIG_RT, align 4
  %141 = or i32 %139, %140
  %142 = and i32 %138, %141
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %135
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @isa_bustype, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = load i32, i32* @isa_dma_transfer, align 4
  store i32 %151, i32* %13, align 4
  br label %180

152:                                              ; preds = %144, %135, %130
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @labpc_1200_layout, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %177

158:                                              ; preds = %152
  %159 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %160 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %163 = and i32 %161, %162
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %177

165:                                              ; preds = %158
  %166 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %167 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 131
  br i1 %169, label %175, label %170

170:                                              ; preds = %165
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = icmp sgt i32 %173, 256
  br i1 %174, label %175, label %177

175:                                              ; preds = %170, %165
  %176 = load i32, i32* @fifo_half_full_transfer, align 4
  store i32 %176, i32* %13, align 4
  br label %179

177:                                              ; preds = %170, %158, %152
  %178 = load i32, i32* @fifo_not_empty_transfer, align 4
  store i32 %178, i32* %13, align 4
  br label %179

179:                                              ; preds = %177, %175
  br label %180

180:                                              ; preds = %179, %150
  %181 = load i32, i32* %13, align 4
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 4
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @labpc_1200_layout, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %294

189:                                              ; preds = %180
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* @AREF_GROUND, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  %194 = load i32, i32* @ADC_COMMON_BIT, align 4
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 8
  br label %206

199:                                              ; preds = %189
  %200 = load i32, i32* @ADC_COMMON_BIT, align 4
  %201 = xor i32 %200, -1
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = and i32 %204, %201
  store i32 %205, i32* %203, align 8
  br label %206

206:                                              ; preds = %199, %193
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 3
  %209 = load i64*, i64** %208, align 8
  %210 = load i32, i32* %7, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %209, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %206
  %216 = load i32, i32* @ADC_UNIP_BIT, align 4
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 8
  br label %228

221:                                              ; preds = %206
  %222 = load i32, i32* @ADC_UNIP_BIT, align 4
  %223 = xor i32 %222, -1
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = and i32 %226, %223
  store i32 %227, i32* %225, align 8
  br label %228

228:                                              ; preds = %221, %215
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* @fifo_half_full_transfer, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %238

232:                                              ; preds = %228
  %233 = load i32, i32* @ADC_FHF_INTR_EN_BIT, align 4
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 8
  br label %245

238:                                              ; preds = %228
  %239 = load i32, i32* @ADC_FHF_INTR_EN_BIT, align 4
  %240 = xor i32 %239, -1
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = and i32 %243, %240
  store i32 %244, i32* %242, align 8
  br label %245

245:                                              ; preds = %238, %232
  %246 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %247 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp eq i32 %248, 130
  br i1 %249, label %250, label %256

250:                                              ; preds = %245
  %251 = load i32, i32* @A1_INTR_EN_BIT, align 4
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 8
  br label %263

256:                                              ; preds = %245
  %257 = load i32, i32* @A1_INTR_EN_BIT, align 4
  %258 = xor i32 %257, -1
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = and i32 %261, %258
  store i32 %262, i32* %260, align 8
  br label %263

263:                                              ; preds = %256, %250
  %264 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %265 = call i64 @labpc_ai_scan_mode(%struct.comedi_cmd* %264)
  %266 = load i64, i64* @MODE_MULT_CHAN_UP, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %274

268:                                              ; preds = %263
  %269 = load i32, i32* @ADC_SCAN_UP_BIT, align 4
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 8
  %273 = or i32 %272, %269
  store i32 %273, i32* %271, align 8
  br label %281

274:                                              ; preds = %263
  %275 = load i32, i32* @ADC_SCAN_UP_BIT, align 4
  %276 = xor i32 %275, -1
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = and i32 %279, %276
  store i32 %280, i32* %278, align 8
  br label %281

281:                                              ; preds = %274, %268
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 11
  %284 = load i32 (i32, i64)*, i32 (i32, i64)** %283, align 8
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %289 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @COMMAND6_REG, align 8
  %292 = add nsw i64 %290, %291
  %293 = call i32 %284(i32 %287, i64 %292)
  br label %294

294:                                              ; preds = %281, %180
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 5
  store i32 0, i32* %296, align 4
  %297 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %298 = call i64 @labpc_ai_scan_mode(%struct.comedi_cmd* %297)
  %299 = load i64, i64* @MODE_MULT_CHAN_UP, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %313

301:                                              ; preds = %294
  %302 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %303 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %302, i32 0, i32 7
  %304 = load i32*, i32** %303, align 8
  %305 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %306 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = sub nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %304, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @CR_CHAN(i32 %311)
  store i32 %312, i32* %6, align 4
  br label %320

313:                                              ; preds = %294
  %314 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %315 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %314, i32 0, i32 7
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 0
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @CR_CHAN(i32 %318)
  store i32 %319, i32* %6, align 4
  br label %320

320:                                              ; preds = %313, %301
  %321 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %322 = call i64 @labpc_ai_scan_mode(%struct.comedi_cmd* %321)
  %323 = load i64, i64* @MODE_SINGLE_CHAN, align 8
  %324 = icmp ne i64 %322, %323
  br i1 %324, label %325, label %332

325:                                              ; preds = %320
  %326 = load i32, i32* %8, align 4
  %327 = load i32, i32* @AREF_DIFF, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %332

329:                                              ; preds = %325
  %330 = load i32, i32* %6, align 4
  %331 = mul nsw i32 %330, 2
  store i32 %331, i32* %6, align 4
  br label %332

332:                                              ; preds = %329, %325, %320
  %333 = load i32, i32* %6, align 4
  %334 = call i32 @ADC_CHAN_BITS(i32 %333)
  %335 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 5
  %337 = load i32, i32* %336, align 4
  %338 = or i32 %337, %334
  store i32 %338, i32* %336, align 4
  %339 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 2
  %341 = load i32*, i32** %340, align 8
  %342 = load i32, i32* %7, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %341, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 5
  %348 = load i32, i32* %347, align 4
  %349 = or i32 %348, %345
  store i32 %349, i32* %347, align 4
  %350 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i32 0, i32 11
  %352 = load i32 (i32, i64)*, i32 (i32, i64)** %351, align 8
  %353 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 5
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %357 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @COMMAND1_REG, align 8
  %360 = add nsw i64 %358, %359
  %361 = call i32 %352(i32 %355, i64 %360)
  %362 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %363 = call i64 @labpc_ai_scan_mode(%struct.comedi_cmd* %362)
  %364 = load i64, i64* @MODE_MULT_CHAN_UP, align 8
  %365 = icmp eq i64 %363, %364
  br i1 %365, label %371, label %366

366:                                              ; preds = %332
  %367 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %368 = call i64 @labpc_ai_scan_mode(%struct.comedi_cmd* %367)
  %369 = load i64, i64* @MODE_MULT_CHAN_DOWN, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %390

371:                                              ; preds = %366, %332
  %372 = load i32, i32* @ADC_SCAN_EN_BIT, align 4
  %373 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i32 0, i32 5
  %375 = load i32, i32* %374, align 4
  %376 = or i32 %375, %372
  store i32 %376, i32* %374, align 4
  %377 = call i32 @udelay(i32 1)
  %378 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 11
  %380 = load i32 (i32, i64)*, i32 (i32, i64)** %379, align 8
  %381 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 5
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %385 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %384, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @COMMAND1_REG, align 8
  %388 = add nsw i64 %386, %387
  %389 = call i32 %380(i32 %383, i64 %388)
  br label %390

390:                                              ; preds = %371, %366
  %391 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 6
  store i32 0, i32* %392, align 8
  %393 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %394 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %393, i32 0, i32 4
  %395 = load i64, i64* %394, align 8
  %396 = icmp ne i64 %395, 130
  br i1 %396, label %397, label %403

397:                                              ; preds = %390
  %398 = load i32, i32* @EXT_CONVERT_DISABLE_BIT, align 4
  %399 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %400 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %399, i32 0, i32 6
  %401 = load i32, i32* %400, align 8
  %402 = or i32 %401, %398
  store i32 %402, i32* %400, align 8
  br label %403

403:                                              ; preds = %397, %390
  %404 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %405 = call i64 @labpc_use_continuous_mode(%struct.comedi_cmd* %404)
  %406 = icmp eq i64 %405, 0
  br i1 %406, label %407, label %424

407:                                              ; preds = %403
  %408 = load i32, i32* @INTERVAL_SCAN_EN_BIT, align 4
  %409 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i32 0, i32 6
  %411 = load i32, i32* %410, align 8
  %412 = or i32 %411, %408
  store i32 %412, i32* %410, align 8
  %413 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %414 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %413, i32 0, i32 5
  %415 = load i64, i64* %414, align 8
  %416 = icmp eq i64 %415, 130
  br i1 %416, label %417, label %423

417:                                              ; preds = %407
  %418 = load i32, i32* @EXT_SCAN_EN_BIT, align 4
  %419 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i32 0, i32 6
  %421 = load i32, i32* %420, align 8
  %422 = or i32 %421, %418
  store i32 %422, i32* %420, align 8
  br label %423

423:                                              ; preds = %417, %407
  br label %424

424:                                              ; preds = %423, %403
  %425 = load i32, i32* %8, align 4
  %426 = load i32, i32* @AREF_DIFF, align 4
  %427 = icmp eq i32 %425, %426
  br i1 %427, label %428, label %434

428:                                              ; preds = %424
  %429 = load i32, i32* @ADC_DIFF_BIT, align 4
  %430 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %431 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %430, i32 0, i32 6
  %432 = load i32, i32* %431, align 8
  %433 = or i32 %432, %429
  store i32 %433, i32* %431, align 8
  br label %434

434:                                              ; preds = %428, %424
  %435 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %436 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %435, i32 0, i32 11
  %437 = load i32 (i32, i64)*, i32 (i32, i64)** %436, align 8
  %438 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %439 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %438, i32 0, i32 6
  %440 = load i32, i32* %439, align 8
  %441 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %442 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %441, i32 0, i32 1
  %443 = load i64, i64* %442, align 8
  %444 = load i64, i64* @COMMAND4_REG, align 8
  %445 = add nsw i64 %443, %444
  %446 = call i32 %437(i32 %440, i64 %445)
  %447 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %448 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %447, i32 0, i32 11
  %449 = load i32 (i32, i64)*, i32 (i32, i64)** %448, align 8
  %450 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %451 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %450, i32 0, i32 2
  %452 = load i32, i32* %451, align 8
  %453 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %454 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %453, i32 0, i32 1
  %455 = load i64, i64* %454, align 8
  %456 = load i64, i64* @INTERVAL_COUNT_REG, align 8
  %457 = add nsw i64 %455, %456
  %458 = call i32 %449(i32 %452, i64 %457)
  %459 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %460 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %459, i32 0, i32 11
  %461 = load i32 (i32, i64)*, i32 (i32, i64)** %460, align 8
  %462 = load i32, i32* @INTERVAL_LOAD_BITS, align 4
  %463 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %464 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %463, i32 0, i32 1
  %465 = load i64, i64* %464, align 8
  %466 = load i64, i64* @INTERVAL_LOAD_REG, align 8
  %467 = add nsw i64 %465, %466
  %468 = call i32 %461(i32 %462, i64 %467)
  %469 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %470 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %469, i32 0, i32 4
  %471 = load i64, i64* %470, align 8
  %472 = load i64, i64* @TRIG_TIMER, align 8
  %473 = icmp eq i64 %471, %472
  br i1 %473, label %480, label %474

474:                                              ; preds = %434
  %475 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %476 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %475, i32 0, i32 5
  %477 = load i64, i64* %476, align 8
  %478 = load i64, i64* @TRIG_TIMER, align 8
  %479 = icmp eq i64 %477, %478
  br i1 %479, label %480, label %500

480:                                              ; preds = %474, %434
  %481 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %482 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %483 = call i32 @labpc_adc_timing(%struct.comedi_device* %481, %struct.comedi_cmd* %482)
  %484 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %485 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %486 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %485, i32 0, i32 1
  %487 = load i64, i64* %486, align 8
  %488 = load i64, i64* @COUNTER_B_BASE_REG, align 8
  %489 = add nsw i64 %487, %488
  %490 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %491 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %490, i32 0, i32 7
  %492 = load i32, i32* %491, align 4
  %493 = call i32 @labpc_counter_load(%struct.comedi_device* %484, i64 %489, i32 0, i32 %492, i32 3)
  store i32 %493, i32* %10, align 4
  %494 = load i32, i32* %10, align 4
  %495 = icmp slt i32 %494, 0
  br i1 %495, label %496, label %499

496:                                              ; preds = %480
  %497 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %498 = call i32 @comedi_error(%struct.comedi_device* %497, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %747

499:                                              ; preds = %480
  br label %500

500:                                              ; preds = %499, %474
  %501 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %502 = call i64 @labpc_ai_convert_period(%struct.comedi_cmd* %501)
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %504, label %521

504:                                              ; preds = %500
  %505 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %506 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %507 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %506, i32 0, i32 1
  %508 = load i64, i64* %507, align 8
  %509 = load i64, i64* @COUNTER_A_BASE_REG, align 8
  %510 = add nsw i64 %508, %509
  %511 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %512 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %511, i32 0, i32 8
  %513 = load i32, i32* %512, align 8
  %514 = call i32 @labpc_counter_load(%struct.comedi_device* %505, i64 %510, i32 0, i32 %513, i32 2)
  store i32 %514, i32* %10, align 4
  %515 = load i32, i32* %10, align 4
  %516 = icmp slt i32 %515, 0
  br i1 %516, label %517, label %520

517:                                              ; preds = %504
  %518 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %519 = call i32 @comedi_error(%struct.comedi_device* %518, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %747

520:                                              ; preds = %504
  br label %532

521:                                              ; preds = %500
  %522 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %523 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %522, i32 0, i32 11
  %524 = load i32 (i32, i64)*, i32 (i32, i64)** %523, align 8
  %525 = load i32, i32* @INIT_A0_BITS, align 4
  %526 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %527 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %526, i32 0, i32 1
  %528 = load i64, i64* %527, align 8
  %529 = load i64, i64* @COUNTER_A_CONTROL_REG, align 8
  %530 = add nsw i64 %528, %529
  %531 = call i32 %524(i32 %525, i64 %530)
  br label %532

532:                                              ; preds = %521, %520
  %533 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %534 = call i64 @labpc_ai_scan_period(%struct.comedi_cmd* %533)
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %536, label %553

536:                                              ; preds = %532
  %537 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %538 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %539 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %538, i32 0, i32 1
  %540 = load i64, i64* %539, align 8
  %541 = load i64, i64* @COUNTER_B_BASE_REG, align 8
  %542 = add nsw i64 %540, %541
  %543 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %544 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %543, i32 0, i32 9
  %545 = load i32, i32* %544, align 4
  %546 = call i32 @labpc_counter_load(%struct.comedi_device* %537, i64 %542, i32 1, i32 %545, i32 2)
  store i32 %546, i32* %10, align 4
  %547 = load i32, i32* %10, align 4
  %548 = icmp slt i32 %547, 0
  br i1 %548, label %549, label %552

549:                                              ; preds = %536
  %550 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %551 = call i32 @comedi_error(%struct.comedi_device* %550, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %747

552:                                              ; preds = %536
  br label %553

553:                                              ; preds = %552, %532
  %554 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %555 = call i32 @labpc_clear_adc_fifo(%struct.comedi_device* %554)
  %556 = load i32, i32* %13, align 4
  %557 = load i32, i32* @isa_dma_transfer, align 4
  %558 = icmp eq i32 %556, %557
  br i1 %558, label %559, label %624

559:                                              ; preds = %553
  %560 = call i64 (...) @claim_dma_lock()
  store i64 %560, i64* %9, align 8
  %561 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %562 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %561, i32 0, i32 12
  %563 = load i64, i64* %562, align 8
  %564 = call i32 @disable_dma(i64 %563)
  %565 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %566 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %565, i32 0, i32 12
  %567 = load i64, i64* %566, align 8
  %568 = call i32 @clear_dma_ff(i64 %567)
  %569 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %570 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %569, i32 0, i32 12
  %571 = load i64, i64* %570, align 8
  %572 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %573 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %572, i32 0, i32 13
  %574 = load i32, i32* %573, align 8
  %575 = call i32 @virt_to_bus(i32 %574)
  %576 = call i32 @set_dma_addr(i64 %571, i32 %575)
  %577 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %578 = call i32 @labpc_suggest_transfer_size(%struct.comedi_cmd* byval(%struct.comedi_cmd) align 8 %577)
  %579 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %580 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %579, i32 0, i32 10
  store i32 %578, i32* %580, align 8
  %581 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %582 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 8
  %584 = icmp eq i32 %583, 131
  br i1 %584, label %585, label %603

585:                                              ; preds = %559
  %586 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %587 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %586, i32 0, i32 2
  %588 = load i32, i32* %587, align 8
  %589 = load i32, i32* @sample_size, align 4
  %590 = mul nsw i32 %588, %589
  %591 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %592 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %591, i32 0, i32 10
  %593 = load i32, i32* %592, align 8
  %594 = icmp slt i32 %590, %593
  br i1 %594, label %595, label %603

595:                                              ; preds = %585
  %596 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %597 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %596, i32 0, i32 2
  %598 = load i32, i32* %597, align 8
  %599 = load i32, i32* @sample_size, align 4
  %600 = mul nsw i32 %598, %599
  %601 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %602 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %601, i32 0, i32 10
  store i32 %600, i32* %602, align 8
  br label %603

603:                                              ; preds = %595, %585, %559
  %604 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %605 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %604, i32 0, i32 12
  %606 = load i64, i64* %605, align 8
  %607 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %608 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %607, i32 0, i32 10
  %609 = load i32, i32* %608, align 8
  %610 = call i32 @set_dma_count(i64 %606, i32 %609)
  %611 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %612 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %611, i32 0, i32 12
  %613 = load i64, i64* %612, align 8
  %614 = call i32 @enable_dma(i64 %613)
  %615 = load i64, i64* %9, align 8
  %616 = call i32 @release_dma_lock(i64 %615)
  %617 = load i32, i32* @DMA_EN_BIT, align 4
  %618 = load i32, i32* @DMATC_INTR_EN_BIT, align 4
  %619 = or i32 %617, %618
  %620 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %621 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %620, i32 0, i32 1
  %622 = load i32, i32* %621, align 4
  %623 = or i32 %622, %619
  store i32 %623, i32* %621, align 4
  br label %634

624:                                              ; preds = %553
  %625 = load i32, i32* @DMA_EN_BIT, align 4
  %626 = xor i32 %625, -1
  %627 = load i32, i32* @DMATC_INTR_EN_BIT, align 4
  %628 = xor i32 %627, -1
  %629 = and i32 %626, %628
  %630 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %631 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %630, i32 0, i32 1
  %632 = load i32, i32* %631, align 4
  %633 = and i32 %632, %629
  store i32 %633, i32* %631, align 4
  br label %634

634:                                              ; preds = %624, %603
  %635 = load i32, i32* @ERR_INTR_EN_BIT, align 4
  %636 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %637 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %636, i32 0, i32 1
  %638 = load i32, i32* %637, align 4
  %639 = or i32 %638, %635
  store i32 %639, i32* %637, align 4
  %640 = load i32, i32* %13, align 4
  %641 = load i32, i32* @fifo_not_empty_transfer, align 4
  %642 = icmp eq i32 %640, %641
  br i1 %642, label %643, label %649

643:                                              ; preds = %634
  %644 = load i32, i32* @ADC_FNE_INTR_EN_BIT, align 4
  %645 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %646 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %645, i32 0, i32 1
  %647 = load i32, i32* %646, align 4
  %648 = or i32 %647, %644
  store i32 %648, i32* %646, align 4
  br label %656

649:                                              ; preds = %634
  %650 = load i32, i32* @ADC_FNE_INTR_EN_BIT, align 4
  %651 = xor i32 %650, -1
  %652 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %653 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %652, i32 0, i32 1
  %654 = load i32, i32* %653, align 4
  %655 = and i32 %654, %651
  store i32 %655, i32* %653, align 4
  br label %656

656:                                              ; preds = %649, %643
  %657 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %658 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %657, i32 0, i32 11
  %659 = load i32 (i32, i64)*, i32 (i32, i64)** %658, align 8
  %660 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %661 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %660, i32 0, i32 1
  %662 = load i32, i32* %661, align 4
  %663 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %664 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %663, i32 0, i32 1
  %665 = load i64, i64* %664, align 8
  %666 = load i64, i64* @COMMAND3_REG, align 8
  %667 = add nsw i64 %665, %666
  %668 = call i32 %659(i32 %662, i64 %667)
  %669 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %670 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %669, i32 0, i32 0
  %671 = load i64, i64* %14, align 8
  %672 = call i32 @spin_lock_irqsave(i32* %670, i64 %671)
  %673 = load i32, i32* @CASCADE_BIT, align 4
  %674 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %675 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %674, i32 0, i32 0
  %676 = load i32, i32* %675, align 8
  %677 = or i32 %676, %673
  store i32 %677, i32* %675, align 8
  %678 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %679 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %678, i32 0, i32 6
  %680 = load i32, i32* %679, align 8
  switch i32 %680, label %711 [
    i32 130, label %681
    i32 128, label %696
  ]

681:                                              ; preds = %656
  %682 = load i32, i32* @HWTRIG_BIT, align 4
  %683 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %684 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %683, i32 0, i32 0
  %685 = load i32, i32* %684, align 8
  %686 = or i32 %685, %682
  store i32 %686, i32* %684, align 8
  %687 = load i32, i32* @PRETRIG_BIT, align 4
  %688 = xor i32 %687, -1
  %689 = load i32, i32* @SWTRIG_BIT, align 4
  %690 = xor i32 %689, -1
  %691 = and i32 %688, %690
  %692 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %693 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %692, i32 0, i32 0
  %694 = load i32, i32* %693, align 8
  %695 = and i32 %694, %691
  store i32 %695, i32* %693, align 8
  br label %714

696:                                              ; preds = %656
  %697 = load i32, i32* @SWTRIG_BIT, align 4
  %698 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %699 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %698, i32 0, i32 0
  %700 = load i32, i32* %699, align 8
  %701 = or i32 %700, %697
  store i32 %701, i32* %699, align 8
  %702 = load i32, i32* @PRETRIG_BIT, align 4
  %703 = xor i32 %702, -1
  %704 = load i32, i32* @HWTRIG_BIT, align 4
  %705 = xor i32 %704, -1
  %706 = and i32 %703, %705
  %707 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %708 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %707, i32 0, i32 0
  %709 = load i32, i32* %708, align 8
  %710 = and i32 %709, %706
  store i32 %710, i32* %708, align 8
  br label %714

711:                                              ; preds = %656
  %712 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %713 = call i32 @comedi_error(%struct.comedi_device* %712, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %747

714:                                              ; preds = %696, %681
  %715 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %716 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %715, i32 0, i32 0
  %717 = load i32, i32* %716, align 8
  switch i32 %717, label %727 [
    i32 130, label %718
    i32 131, label %726
    i32 129, label %726
  ]

718:                                              ; preds = %714
  %719 = load i32, i32* @HWTRIG_BIT, align 4
  %720 = load i32, i32* @PRETRIG_BIT, align 4
  %721 = or i32 %719, %720
  %722 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %723 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %722, i32 0, i32 0
  %724 = load i32, i32* %723, align 8
  %725 = or i32 %724, %721
  store i32 %725, i32* %723, align 8
  br label %730

726:                                              ; preds = %714, %714
  br label %730

727:                                              ; preds = %714
  %728 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %729 = call i32 @comedi_error(%struct.comedi_device* %728, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %747

730:                                              ; preds = %726, %718
  %731 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %732 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %731, i32 0, i32 11
  %733 = load i32 (i32, i64)*, i32 (i32, i64)** %732, align 8
  %734 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %735 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %734, i32 0, i32 0
  %736 = load i32, i32* %735, align 8
  %737 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %738 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %737, i32 0, i32 1
  %739 = load i64, i64* %738, align 8
  %740 = load i64, i64* @COMMAND2_REG, align 8
  %741 = add nsw i64 %739, %740
  %742 = call i32 %733(i32 %736, i64 %741)
  %743 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %744 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %743, i32 0, i32 0
  %745 = load i64, i64* %14, align 8
  %746 = call i32 @spin_unlock_irqrestore(i32* %744, i64 %745)
  store i32 0, i32* %3, align 4
  br label %747

747:                                              ; preds = %730, %727, %711, %549, %517, %496, %115, %24
  %748 = load i32, i32* %3, align 4
  ret i32 %748
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @labpc_counter_load(%struct.comedi_device*, i64, i32, i32, i32) #1

declare dso_local i64 @labpc_ai_scan_mode(%struct.comedi_cmd*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @ADC_CHAN_BITS(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @labpc_use_continuous_mode(%struct.comedi_cmd*) #1

declare dso_local i32 @labpc_adc_timing(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i64 @labpc_ai_convert_period(%struct.comedi_cmd*) #1

declare dso_local i64 @labpc_ai_scan_period(%struct.comedi_cmd*) #1

declare dso_local i32 @labpc_clear_adc_fifo(%struct.comedi_device*) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i64) #1

declare dso_local i32 @clear_dma_ff(i64) #1

declare dso_local i32 @set_dma_addr(i64, i32) #1

declare dso_local i32 @virt_to_bus(i32) #1

declare dso_local i32 @labpc_suggest_transfer_size(%struct.comedi_cmd* byval(%struct.comedi_cmd) align 8) #1

declare dso_local i32 @set_dma_count(i64, i32) #1

declare dso_local i32 @enable_dma(i64) #1

declare dso_local i32 @release_dma_lock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
