; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@devpriv = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"rtd520: ERROR! No interrupt available!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@TRIG_WAKE_EOS = common dso_local global i32 0, align 4
@SEND_EOS = common dso_local global i32 0, align 4
@TRANS_TARGET_PERIOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"rtd520: scanLen=%d tranferCount=%d fifoLen=%d\0A  scanTime(ns)=%d flags=0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"rtd520: Warning! ignoring stop_src mode %d\0A\00", align 1
@TRIG_ROUND_NEAREST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"rtd520: Warning! ignoring scan_begin_src mode %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"rtd520: Warning! ignoring convert_src mode %d\0A\00", align 1
@IRQM_ADC_ABOUT_CNT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"rtd520: Transferring every %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"rtd520: Transferring every 1/2 FIFO\0A\00", align 1
@DMA0_ACTIVE = common dso_local global i32 0, align 4
@DMAS_ADFIFO_HALF_FULL = common dso_local global i32 0, align 4
@DMA_CHAIN_COUNT = common dso_local global i32 0, align 4
@DMA_MODE_BITS = common dso_local global i32 0, align 4
@ICS_DMA0_A = common dso_local global i32 0, align 4
@ICS_DMA0_E = common dso_local global i32 0, align 4
@PLX_CLEAR_DMA_INTR_BIT = common dso_local global i32 0, align 4
@PLX_DMA_EN_BIT = common dso_local global i32 0, align 4
@PLX_DMA_START_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @rtd_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtd_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %8 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %9 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.comedi_cmd* %11, %struct.comedi_cmd** %6, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = call i32 @RtdPacerStopSource(%struct.comedi_device* %12, i32 0)
  %14 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %15 = call i32 @RtdPacerStop(%struct.comedi_device* %14)
  %16 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %17 = call i32 @RtdAdcConversionSource(%struct.comedi_device* %16, i32 0)
  %18 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %19 = call i32 @RtdInterruptMask(%struct.comedi_device* %18, i32 0)
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = call i32 @RtdAdcClearFifo(%struct.comedi_device* %20)
  %22 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %23 = call i32 @RtdInterruptOverrunClear(%struct.comedi_device* %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 7
  store i64 0, i64* %25, align 8
  %26 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %2
  %31 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENXIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %309

34:                                               ; preds = %2
  %35 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %40 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rtd_load_channelgain_list(%struct.comedi_device* %35, i32 %38, i32 %41)
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %44 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %34
  %48 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %49 = call i32 @RtdPacerStartSource(%struct.comedi_device* %48, i32 0)
  %50 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %51 = call i32 @RtdBurstStartSource(%struct.comedi_device* %50, i32 1)
  %52 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %53 = call i32 @RtdAdcConversionSource(%struct.comedi_device* %52, i32 2)
  br label %59

54:                                               ; preds = %34
  %55 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %56 = call i32 @RtdPacerStartSource(%struct.comedi_device* %55, i32 0)
  %57 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %58 = call i32 @RtdAdcConversionSource(%struct.comedi_device* %57, i32 1)
  br label %59

59:                                               ; preds = %54, %47
  %60 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 2
  %65 = sub nsw i32 %64, 1
  %66 = call i32 @RtdAboutCounter(%struct.comedi_device* %60, i32 %65)
  %67 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %68 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 128, %69
  br i1 %70, label %71, label %184

71:                                               ; preds = %59
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %71
  %79 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %80 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @SEND_EOS, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %142

89:                                               ; preds = %71
  %90 = load i32, i32* @TRANS_TARGET_PERIOD, align 4
  %91 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %92 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %90, %93
  %95 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %96 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = sdiv i32 %94, %97
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %105 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %89
  %109 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %110 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  br label %136

114:                                              ; preds = %89
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %119 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %117, %120
  %122 = sub nsw i32 %121, 1
  %123 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %124 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sdiv i32 %122, %125
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %130 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = mul nsw i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %114, %108
  %137 = load i32, i32* @SEND_EOS, align 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %136, %78
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sdiv i32 %148, 2
  %150 = icmp sge i32 %145, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %142
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 2
  store i32 0, i32* %153, align 8
  %154 = load i32, i32* @SEND_EOS, align 4
  %155 = xor i32 %154, -1
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, %155
  store i32 %159, i32* %157, align 8
  br label %167

160:                                              ; preds = %142
  %161 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = sub nsw i32 %164, 1
  %166 = call i32 @RtdAboutCounter(%struct.comedi_device* %161, i32 %165)
  br label %167

167:                                              ; preds = %160, %151
  %168 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %169 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %178 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %170, i32 %173, i32 %176, i32 %179, i32 %182)
  br label %193

184:                                              ; preds = %59
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 2
  store i32 0, i32* %186, align 8
  %187 = load i32, i32* @SEND_EOS, align 4
  %188 = xor i32 %187, -1
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = and i32 %191, %188
  store i32 %192, i32* %190, align 8
  br label %193

193:                                              ; preds = %184, %167
  %194 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %195 = call i32 @RtdPacerClockSource(%struct.comedi_device* %194, i32 1)
  %196 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %197 = call i32 @RtdAboutStopEnable(%struct.comedi_device* %196, i32 1)
  %198 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %199 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 4
  switch i32 %200, label %233 [
    i32 131, label %201
    i32 129, label %230
  ]

201:                                              ; preds = %193
  %202 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %203 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %206 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = mul nsw i32 %204, %207
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 4
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = icmp sgt i32 %213, 0
  br i1 %214, label %215, label %229

215:                                              ; preds = %201
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = icmp sgt i32 %218, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %215
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 8
  br label %229

229:                                              ; preds = %223, %215, %201
  br label %238

230:                                              ; preds = %193
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 3
  store i32 -1, i32* %232, align 4
  br label %238

233:                                              ; preds = %193
  %234 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %235 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 4
  %237 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %236)
  br label %238

238:                                              ; preds = %233, %230, %229
  %239 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %240 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  switch i32 %241, label %253 [
    i32 128, label %242
    i32 130, label %250
  ]

242:                                              ; preds = %238
  %243 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %244 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %243, i32 0, i32 3
  %245 = load i32, i32* @TRIG_ROUND_NEAREST, align 4
  %246 = call i32 @rtd_ns_to_timer(i32* %244, i32 %245)
  store i32 %246, i32* %7, align 4
  %247 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %248 = load i32, i32* %7, align 4
  %249 = call i32 @RtdPacerCounter(%struct.comedi_device* %247, i32 %248)
  br label %258

250:                                              ; preds = %238
  %251 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %252 = call i32 @RtdPacerStartSource(%struct.comedi_device* %251, i32 1)
  br label %258

253:                                              ; preds = %238
  %254 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %255 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %256)
  br label %258

258:                                              ; preds = %253, %250, %242
  %259 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %260 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 4
  switch i32 %261, label %279 [
    i32 128, label %262
    i32 130, label %276
  ]

262:                                              ; preds = %258
  %263 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %264 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = icmp sgt i32 %265, 1
  br i1 %266, label %267, label %275

267:                                              ; preds = %262
  %268 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %269 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %268, i32 0, i32 7
  %270 = load i32, i32* @TRIG_ROUND_NEAREST, align 4
  %271 = call i32 @rtd_ns_to_timer(i32* %269, i32 %270)
  store i32 %271, i32* %7, align 4
  %272 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %273 = load i32, i32* %7, align 4
  %274 = call i32 @RtdBurstCounter(%struct.comedi_device* %272, i32 %273)
  br label %275

275:                                              ; preds = %267, %262
  br label %284

276:                                              ; preds = %258
  %277 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %278 = call i32 @RtdBurstStartSource(%struct.comedi_device* %277, i32 2)
  br label %284

279:                                              ; preds = %258
  %280 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %281 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 4
  %283 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %282)
  br label %284

284:                                              ; preds = %279, %276, %275
  %285 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %286 = call i32 @RtdInterruptClearMask(%struct.comedi_device* %285, i32 -1)
  %287 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %288 = call i32 @RtdInterruptClear(%struct.comedi_device* %287)
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %293, label %301

293:                                              ; preds = %284
  %294 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %295 = load i32, i32* @IRQM_ADC_ABOUT_CNT, align 4
  %296 = call i32 @RtdInterruptMask(%struct.comedi_device* %294, i32 %295)
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %299)
  br label %306

301:                                              ; preds = %284
  %302 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %303 = load i32, i32* @IRQM_ADC_ABOUT_CNT, align 4
  %304 = call i32 @RtdInterruptMask(%struct.comedi_device* %302, i32 %303)
  %305 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %306

306:                                              ; preds = %301, %293
  %307 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %308 = call i32 @RtdPacerStart(%struct.comedi_device* %307)
  store i32 0, i32* %3, align 4
  br label %309

309:                                              ; preds = %306, %30
  %310 = load i32, i32* %3, align 4
  ret i32 %310
}

declare dso_local i32 @RtdPacerStopSource(%struct.comedi_device*, i32) #1

declare dso_local i32 @RtdPacerStop(%struct.comedi_device*) #1

declare dso_local i32 @RtdAdcConversionSource(%struct.comedi_device*, i32) #1

declare dso_local i32 @RtdInterruptMask(%struct.comedi_device*, i32) #1

declare dso_local i32 @RtdAdcClearFifo(%struct.comedi_device*) #1

declare dso_local i32 @RtdInterruptOverrunClear(%struct.comedi_device*) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @rtd_load_channelgain_list(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @RtdPacerStartSource(%struct.comedi_device*, i32) #1

declare dso_local i32 @RtdBurstStartSource(%struct.comedi_device*, i32) #1

declare dso_local i32 @RtdAboutCounter(%struct.comedi_device*, i32) #1

declare dso_local i32 @RtdPacerClockSource(%struct.comedi_device*, i32) #1

declare dso_local i32 @RtdAboutStopEnable(%struct.comedi_device*, i32) #1

declare dso_local i32 @rtd_ns_to_timer(i32*, i32) #1

declare dso_local i32 @RtdPacerCounter(%struct.comedi_device*, i32) #1

declare dso_local i32 @RtdBurstCounter(%struct.comedi_device*, i32) #1

declare dso_local i32 @RtdInterruptClearMask(%struct.comedi_device*, i32) #1

declare dso_local i32 @RtdInterruptClear(%struct.comedi_device*) #1

declare dso_local i32 @RtdPacerStart(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
