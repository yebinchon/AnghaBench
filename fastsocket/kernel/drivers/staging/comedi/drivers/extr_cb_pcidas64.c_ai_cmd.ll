; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i32, i32*, i32, i64, i32, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@CALIBRATION_REG = common dso_local global i64 0, align 8
@ADC_SW_GATE_BIT = common dso_local global i32 0, align 4
@ADC_DITHER_BIT = common dso_local global i32 0, align 4
@LAYOUT_4020 = common dso_local global i64 0, align 8
@ADC_MODE_MASK = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i64 0, align 8
@CHANNEL_MODE_4020_MASK = common dso_local global i32 0, align 4
@FOUR_CHANNEL_4020_BITS = common dso_local global i32 0, align 4
@TWO_CHANNEL_4020_BITS = common dso_local global i32 0, align 4
@ADC_LO_CHANNEL_4020_MASK = common dso_local global i32 0, align 4
@ADC_HI_CHANNEL_4020_MASK = common dso_local global i32 0, align 4
@ADC_CONTROL1_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"control1 bits 0x%x\0A\00", align 1
@ADC_BUFFER_CLEAR_REG = common dso_local global i64 0, align 8
@TRIG_WAKE_EOS = common dso_local global i32 0, align 4
@PLX_DESC_IN_PCI_BIT = common dso_local global i32 0, align 4
@PLX_INTR_TERM_COUNT = common dso_local global i32 0, align 4
@PLX_XFER_LOCAL_TO_PCI = common dso_local global i32 0, align 4
@EXT_START_TRIG_BNC_BIT = common dso_local global i32 0, align 4
@EXT_STOP_TRIG_BNC_BIT = common dso_local global i32 0, align 4
@DAQ_ATRIG_LOW_4020_REG = common dso_local global i64 0, align 8
@ADC_ENABLE_BIT = common dso_local global i32 0, align 4
@ADC_SOFT_GATE_BITS = common dso_local global i32 0, align 4
@ADC_GATE_LEVEL_BIT = common dso_local global i32 0, align 4
@ADC_DMA_DISABLE_BIT = common dso_local global i32 0, align 4
@ADC_START_TRIG_EXT_BITS = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@ADC_START_TRIG_FALLING_BIT = common dso_local global i32 0, align 4
@TRIG_NOW = common dso_local global i64 0, align 8
@ADC_START_TRIG_SOFT_BITS = common dso_local global i32 0, align 4
@ADC_SAMPLE_COUNTER_EN_BIT = common dso_local global i32 0, align 4
@ADC_CONTROL0_REG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"control0 bits 0x%x\0A\00", align 1
@ADC_START_REG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"soft trig\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_async*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %13 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 0
  %14 = load %struct.comedi_async*, %struct.comedi_async** %13, align 8
  store %struct.comedi_async* %14, %struct.comedi_async** %6, align 8
  %15 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %15, i32 0, i32 0
  store %struct.comedi_cmd* %16, %struct.comedi_cmd** %7, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %18 = call i32 @disable_ai_pacing(%struct.comedi_device* %17)
  %19 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %20 = call i32 @abort_dma(%struct.comedi_device* %19, i32 1)
  %21 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %23 = call i32 @setup_channel_queue(%struct.comedi_device* %21, %struct.comedi_cmd* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %3, align 4
  br label %397

28:                                               ; preds = %2
  %29 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %30 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CALIBRATION_REG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writew(i32 0, i64 %34)
  %36 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %38 = call i32 @set_ai_pacing(%struct.comedi_device* %36, %struct.comedi_cmd* %37)
  %39 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %41 = call i32 @setup_sample_counters(%struct.comedi_device* %39, %struct.comedi_cmd* %40)
  %42 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %44 = call i32 @enable_ai_interrupts(%struct.comedi_device* %42, %struct.comedi_cmd* %43)
  %45 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 0
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load i32, i32* @ADC_SW_GATE_BIT, align 4
  %50 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %51 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %49
  store i32 %54, i32* %52, align 8
  %55 = load i32, i32* @ADC_DITHER_BIT, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %58 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %57)
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %56
  store i32 %61, i32* %59, align 8
  %62 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %63 = call %struct.TYPE_7__* @board(%struct.comedi_device* %62)
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @LAYOUT_4020, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %28
  %69 = load i32, i32* @ADC_MODE_MASK, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %72 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %71)
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %70
  store i32 %75, i32* %73, align 8
  %76 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %77 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @TRIG_EXT, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %68
  %82 = call i32 @adc_mode_bits(i32 13)
  %83 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %84 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %83)
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %82
  store i32 %87, i32* %85, align 8
  br label %95

88:                                               ; preds = %68
  %89 = call i32 @adc_mode_bits(i32 8)
  %90 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %91 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %90)
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %89
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %88, %81
  br label %172

96:                                               ; preds = %28
  %97 = load i32, i32* @CHANNEL_MODE_4020_MASK, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %100 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %99)
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %98
  store i32 %103, i32* %101, align 8
  %104 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %105 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 4
  br i1 %107, label %108, label %115

108:                                              ; preds = %96
  %109 = load i32, i32* @FOUR_CHANNEL_4020_BITS, align 4
  %110 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %111 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %110)
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %109
  store i32 %114, i32* %112, align 8
  br label %128

115:                                              ; preds = %96
  %116 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %117 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load i32, i32* @TWO_CHANNEL_4020_BITS, align 4
  %122 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %123 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %122)
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %121
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %120, %115
  br label %128

128:                                              ; preds = %127, %108
  %129 = load i32, i32* @ADC_LO_CHANNEL_4020_MASK, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %132 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %131)
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, %130
  store i32 %135, i32* %133, align 8
  %136 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %137 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @CR_CHAN(i32 %140)
  %142 = call i32 @adc_lo_chan_4020_bits(i64 %141)
  %143 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %144 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %143)
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %142
  store i32 %147, i32* %145, align 8
  %148 = load i32, i32* @ADC_HI_CHANNEL_4020_MASK, align 4
  %149 = xor i32 %148, -1
  %150 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %151 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %150)
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = and i32 %153, %149
  store i32 %154, i32* %152, align 8
  %155 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %156 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %159 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %157, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @CR_CHAN(i32 %164)
  %166 = call i32 @adc_hi_chan_4020_bits(i64 %165)
  %167 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %168 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %167)
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %166
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %128, %95
  %173 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %174 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %173)
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %178 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %177)
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @ADC_CONTROL1_REG, align 8
  %182 = add nsw i64 %180, %181
  %183 = call i32 @writew(i32 %176, i64 %182)
  %184 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %185 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %184)
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %187)
  %189 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %190 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %189, i32 0, i32 0
  %191 = load i64, i64* %10, align 8
  %192 = call i32 @spin_unlock_irqrestore(i32* %190, i64 %191)
  %193 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %194 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %193)
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @ADC_BUFFER_CLEAR_REG, align 8
  %198 = add nsw i64 %196, %197
  %199 = call i32 @writew(i32 0, i64 %198)
  %200 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %201 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %204 = and i32 %202, %203
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %213, label %206

206:                                              ; preds = %172
  %207 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %208 = call %struct.TYPE_7__* @board(%struct.comedi_device* %207)
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @LAYOUT_4020, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %256

213:                                              ; preds = %206, %172
  %214 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %215 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %214)
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 5
  store i64 0, i64* %216, align 8
  store i32 0, i32* %9, align 4
  br label %217

217:                                              ; preds = %238, %213
  %218 = load i32, i32* %9, align 4
  %219 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %220 = call %struct.TYPE_7__* @board(%struct.comedi_device* %219)
  %221 = call i32 @ai_dma_ring_count(%struct.TYPE_7__* %220)
  %222 = icmp ult i32 %218, %221
  br i1 %222, label %223, label %241

223:                                              ; preds = %217
  %224 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %225 = call i32 @dma_transfer_size(%struct.comedi_device* %224)
  %226 = sext i32 %225 to i64
  %227 = mul i64 %226, 4
  %228 = trunc i64 %227 to i32
  %229 = call i32 @cpu_to_le32(i32 %228)
  %230 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %231 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %230)
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 4
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %232, align 8
  %234 = load i32, i32* %9, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  store i32 %229, i32* %237, align 4
  br label %238

238:                                              ; preds = %223
  %239 = load i32, i32* %9, align 4
  %240 = add i32 %239, 1
  store i32 %240, i32* %9, align 4
  br label %217

241:                                              ; preds = %217
  %242 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %243 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %244 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %243)
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @PLX_DESC_IN_PCI_BIT, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* @PLX_INTR_TERM_COUNT, align 4
  %250 = or i32 %248, %249
  %251 = load i32, i32* @PLX_XFER_LOCAL_TO_PCI, align 4
  %252 = or i32 %250, %251
  %253 = call i32 @load_first_dma_descriptor(%struct.comedi_device* %242, i32 1, i32 %252)
  %254 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %255 = call i32 @dma_start_sync(%struct.comedi_device* %254, i32 1)
  br label %256

256:                                              ; preds = %241, %206
  %257 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %258 = call %struct.TYPE_7__* @board(%struct.comedi_device* %257)
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @LAYOUT_4020, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %304

263:                                              ; preds = %256
  store i32 0, i32* %8, align 4
  %264 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %265 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %264, i32 0, i32 4
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @TRIG_EXT, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %279

269:                                              ; preds = %263
  %270 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %271 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 8
  %273 = call i64 @CR_CHAN(i32 %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %269
  %276 = load i32, i32* @EXT_START_TRIG_BNC_BIT, align 4
  %277 = load i32, i32* %8, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %8, align 4
  br label %279

279:                                              ; preds = %275, %269, %263
  %280 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %281 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %280, i32 0, i32 6
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @TRIG_EXT, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %285, label %295

285:                                              ; preds = %279
  %286 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %287 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %286, i32 0, i32 7
  %288 = load i32, i32* %287, align 8
  %289 = call i64 @CR_CHAN(i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %285
  %292 = load i32, i32* @EXT_STOP_TRIG_BNC_BIT, align 4
  %293 = load i32, i32* %8, align 4
  %294 = or i32 %293, %292
  store i32 %294, i32* %8, align 4
  br label %295

295:                                              ; preds = %291, %285, %279
  %296 = load i32, i32* %8, align 4
  %297 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %298 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %297)
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 3
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @DAQ_ATRIG_LOW_4020_REG, align 8
  %302 = add nsw i64 %300, %301
  %303 = call i32 @writew(i32 %296, i64 %302)
  br label %304

304:                                              ; preds = %295, %256
  %305 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %306 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %305, i32 0, i32 0
  %307 = load i64, i64* %10, align 8
  %308 = call i32 @spin_lock_irqsave(i32* %306, i64 %307)
  %309 = load i32, i32* @ADC_ENABLE_BIT, align 4
  %310 = load i32, i32* @ADC_SOFT_GATE_BITS, align 4
  %311 = or i32 %309, %310
  %312 = load i32, i32* @ADC_GATE_LEVEL_BIT, align 4
  %313 = or i32 %311, %312
  store i32 %313, i32* %8, align 4
  %314 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %315 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %304
  %321 = load i32, i32* @ADC_DMA_DISABLE_BIT, align 4
  %322 = load i32, i32* %8, align 4
  %323 = or i32 %322, %321
  store i32 %323, i32* %8, align 4
  br label %324

324:                                              ; preds = %320, %304
  %325 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %326 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %325, i32 0, i32 4
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @TRIG_EXT, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %345

330:                                              ; preds = %324
  %331 = load i32, i32* @ADC_START_TRIG_EXT_BITS, align 4
  %332 = load i32, i32* %8, align 4
  %333 = or i32 %332, %331
  store i32 %333, i32* %8, align 4
  %334 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %335 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %334, i32 0, i32 5
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @CR_INVERT, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %344

340:                                              ; preds = %330
  %341 = load i32, i32* @ADC_START_TRIG_FALLING_BIT, align 4
  %342 = load i32, i32* %8, align 4
  %343 = or i32 %342, %341
  store i32 %343, i32* %8, align 4
  br label %344

344:                                              ; preds = %340, %330
  br label %356

345:                                              ; preds = %324
  %346 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %347 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %346, i32 0, i32 4
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @TRIG_NOW, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %355

351:                                              ; preds = %345
  %352 = load i32, i32* @ADC_START_TRIG_SOFT_BITS, align 4
  %353 = load i32, i32* %8, align 4
  %354 = or i32 %353, %352
  store i32 %354, i32* %8, align 4
  br label %355

355:                                              ; preds = %351, %345
  br label %356

356:                                              ; preds = %355, %344
  %357 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %358 = call i64 @use_hw_sample_counter(%struct.comedi_cmd* %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %364

360:                                              ; preds = %356
  %361 = load i32, i32* @ADC_SAMPLE_COUNTER_EN_BIT, align 4
  %362 = load i32, i32* %8, align 4
  %363 = or i32 %362, %361
  store i32 %363, i32* %8, align 4
  br label %364

364:                                              ; preds = %360, %356
  %365 = load i32, i32* %8, align 4
  %366 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %367 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %366)
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 3
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* @ADC_CONTROL0_REG, align 8
  %371 = add nsw i64 %369, %370
  %372 = call i32 @writew(i32 %365, i64 %371)
  %373 = load i32, i32* %8, align 4
  %374 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %373)
  %375 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %376 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %375)
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 2
  store i32 1, i32* %377, align 8
  %378 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %379 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %378, i32 0, i32 0
  %380 = load i64, i64* %10, align 8
  %381 = call i32 @spin_unlock_irqrestore(i32* %379, i64 %380)
  %382 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %383 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %382, i32 0, i32 4
  %384 = load i64, i64* %383, align 8
  %385 = load i64, i64* @TRIG_NOW, align 8
  %386 = icmp eq i64 %384, %385
  br i1 %386, label %387, label %396

387:                                              ; preds = %364
  %388 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %389 = call %struct.TYPE_6__* @priv(%struct.comedi_device* %388)
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 3
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* @ADC_START_REG, align 8
  %393 = add nsw i64 %391, %392
  %394 = call i32 @writew(i32 0, i64 %393)
  %395 = call i32 (i8*, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %396

396:                                              ; preds = %387, %364
  store i32 0, i32* %3, align 4
  br label %397

397:                                              ; preds = %396, %26
  %398 = load i32, i32* %3, align 4
  ret i32 %398
}

declare dso_local i32 @disable_ai_pacing(%struct.comedi_device*) #1

declare dso_local i32 @abort_dma(%struct.comedi_device*, i32) #1

declare dso_local i32 @setup_channel_queue(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local %struct.TYPE_6__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @set_ai_pacing(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @setup_sample_counters(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @enable_ai_interrupts(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.TYPE_7__* @board(%struct.comedi_device*) #1

declare dso_local i32 @adc_mode_bits(i32) #1

declare dso_local i32 @adc_lo_chan_4020_bits(i64) #1

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i32 @adc_hi_chan_4020_bits(i64) #1

declare dso_local i32 @DEBUG_PRINT(i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ai_dma_ring_count(%struct.TYPE_7__*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dma_transfer_size(%struct.comedi_device*) #1

declare dso_local i32 @load_first_dma_descriptor(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @dma_start_sync(%struct.comedi_device*, i32) #1

declare dso_local i64 @use_hw_sample_counter(%struct.comedi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
