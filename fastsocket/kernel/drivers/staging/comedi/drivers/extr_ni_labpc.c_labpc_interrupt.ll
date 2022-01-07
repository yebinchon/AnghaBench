; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_labpc_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_labpc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (i64)*, i32, i64, i64, i32 (i32, i64)* }
%struct.TYPE_3__ = type { i64 }
%struct.comedi_device = type { i64, i64, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"premature interrupt\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@STATUS1_REG = common dso_local global i64 0, align 8
@thisboard = common dso_local global %struct.TYPE_3__* null, align 8
@labpc_1200_layout = common dso_local global i64 0, align 8
@STATUS2_REG = common dso_local global i64 0, align 8
@DMATC_BIT = common dso_local global i32 0, align 4
@TIMER_BIT = common dso_local global i32 0, align 4
@OVERFLOW_BIT = common dso_local global i32 0, align 4
@OVERRUN_BIT = common dso_local global i32 0, align 4
@DATA_AVAIL_BIT = common dso_local global i32 0, align 4
@A1_TC_BIT = common dso_local global i32 0, align 4
@FNHF_BIT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@ADC_CLEAR_REG = common dso_local global i64 0, align 8
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"overrun\00", align 1
@isa_dma_transfer = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"handled timer interrupt?\00", align 1
@TIMER_CLEAR_REG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@TRIG_EXT = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @labpc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @labpc_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_async*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.comedi_device*
  store %struct.comedi_device* %11, %struct.comedi_device** %6, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 2
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %13, align 8
  store %struct.comedi_subdevice* %14, %struct.comedi_subdevice** %7, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %21 = call i32 @comedi_error(%struct.comedi_device* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %22, i32* %3, align 4
  br label %253

23:                                               ; preds = %2
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %25 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %24, i32 0, i32 0
  %26 = load %struct.comedi_async*, %struct.comedi_async** %25, align 8
  store %struct.comedi_async* %26, %struct.comedi_async** %8, align 8
  %27 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %28 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %27, i32 0, i32 1
  store %struct.comedi_cmd* %28, %struct.comedi_cmd** %9, align 8
  %29 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %30 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32 (i64)*, i32 (i64)** %32, align 8
  %34 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @STATUS1_REG, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 %33(i64 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @labpc_1200_layout, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %23
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32 (i64)*, i32 (i64)** %49, align 8
  %51 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @STATUS2_REG, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 %50(i64 %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %47, %23
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @DMATC_BIT, align 4
  %64 = load i32, i32* @TIMER_BIT, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @OVERFLOW_BIT, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @OVERRUN_BIT, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @DATA_AVAIL_BIT, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %62, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %59
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @A1_TC_BIT, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @FNHF_BIT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* @IRQ_NONE, align 4
  store i32 %89, i32* %3, align 4
  br label %253

90:                                               ; preds = %81, %74, %59
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @OVERRUN_BIT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %90
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 5
  %100 = load i32 (i32, i64)*, i32 (i32, i64)** %99, align 8
  %101 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %102 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @ADC_CLEAR_REG, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 %100(i32 1, i64 %105)
  %107 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %108 = load i32, i32* @COMEDI_CB_EOA, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %111 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %115 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %116 = call i32 @comedi_event(%struct.comedi_device* %114, %struct.comedi_subdevice* %115)
  %117 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %118 = call i32 @comedi_error(%struct.comedi_device* %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %119 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %119, i32* %3, align 4
  br label %253

120:                                              ; preds = %90
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @isa_dma_transfer, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %150

126:                                              ; preds = %120
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @DMATC_BIT, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %146, label %133

133:                                              ; preds = %126
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @labpc_1200_layout, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %149

139:                                              ; preds = %133
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @A1_TC_BIT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %139, %126
  %147 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %148 = call i32 @handle_isa_dma(%struct.comedi_device* %147)
  br label %149

149:                                              ; preds = %146, %139, %133
  br label %153

150:                                              ; preds = %120
  %151 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %152 = call i32 @labpc_drain_fifo(%struct.comedi_device* %151)
  br label %153

153:                                              ; preds = %150, %149
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @TIMER_BIT, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %153
  %161 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %162 = call i32 @comedi_error(%struct.comedi_device* %161, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 5
  %165 = load i32 (i32, i64)*, i32 (i32, i64)** %164, align 8
  %166 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %167 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @TIMER_CLEAR_REG, align 8
  %170 = add nsw i64 %168, %169
  %171 = call i32 %165(i32 1, i64 %170)
  br label %172

172:                                              ; preds = %160, %153
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @OVERFLOW_BIT, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %202

179:                                              ; preds = %172
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 5
  %182 = load i32 (i32, i64)*, i32 (i32, i64)** %181, align 8
  %183 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %184 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @ADC_CLEAR_REG, align 8
  %187 = add nsw i64 %185, %186
  %188 = call i32 %182(i32 1, i64 %187)
  %189 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %190 = load i32, i32* @COMEDI_CB_EOA, align 4
  %191 = or i32 %189, %190
  %192 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %193 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 8
  %196 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %197 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %198 = call i32 @comedi_event(%struct.comedi_device* %196, %struct.comedi_subdevice* %197)
  %199 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %200 = call i32 @comedi_error(%struct.comedi_device* %199, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %201 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %201, i32* %3, align 4
  br label %253

202:                                              ; preds = %172
  %203 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %204 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @TRIG_EXT, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %227

208:                                              ; preds = %202
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @A1_TC_BIT, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %208
  %216 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %217 = call i32 @labpc_drain_dregs(%struct.comedi_device* %216)
  %218 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %219 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %220 = call i32 @labpc_cancel(%struct.comedi_device* %218, %struct.comedi_subdevice* %219)
  %221 = load i32, i32* @COMEDI_CB_EOA, align 4
  %222 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %223 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 8
  br label %226

226:                                              ; preds = %215, %208
  br label %227

227:                                              ; preds = %226, %202
  %228 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %229 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @TRIG_COUNT, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %248

233:                                              ; preds = %227
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %247

238:                                              ; preds = %233
  %239 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %240 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %241 = call i32 @labpc_cancel(%struct.comedi_device* %239, %struct.comedi_subdevice* %240)
  %242 = load i32, i32* @COMEDI_CB_EOA, align 4
  %243 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %244 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 8
  br label %247

247:                                              ; preds = %238, %233
  br label %248

248:                                              ; preds = %247, %227
  %249 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %250 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %251 = call i32 @comedi_event(%struct.comedi_device* %249, %struct.comedi_subdevice* %250)
  %252 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %252, i32* %3, align 4
  br label %253

253:                                              ; preds = %248, %179, %97, %88, %19
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @handle_isa_dma(%struct.comedi_device*) #1

declare dso_local i32 @labpc_drain_fifo(%struct.comedi_device*) #1

declare dso_local i32 @labpc_drain_dregs(%struct.comedi_device*) #1

declare dso_local i32 @labpc_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
