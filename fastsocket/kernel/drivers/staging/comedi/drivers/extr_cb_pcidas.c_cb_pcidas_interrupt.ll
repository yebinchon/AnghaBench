; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64, i32, i64 }
%struct.comedi_device = type { i64, i32, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@thisboard = common dso_local global %struct.TYPE_5__* null, align 8
@cb_pcidas_interrupt.timeout = internal constant i32 10000, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_6__* null, align 8
@AMCC_OP_REG_INTCSR = common dso_local global i64 0, align 8
@INTCSR_INTR_ASSERTED = common dso_local global i32 0, align 4
@AMCC_OP_REG_IMB4 = common dso_local global i64 0, align 8
@INTCSR_INBOX_INTR_STATUS = common dso_local global i32 0, align 4
@INT_ADCFIFO = common dso_local global i64 0, align 8
@DAHFI = common dso_local global i32 0, align 4
@DAEMI = common dso_local global i32 0, align 4
@ADHFI = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@ADCDATA = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@INT = common dso_local global i32 0, align 4
@ADNEI = common dso_local global i32 0, align 4
@EOBI = common dso_local global i32 0, align 4
@ADNE = common dso_local global i32 0, align 4
@EOAI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"bug! encountered end of aquisition interrupt?\00", align 1
@LADFUL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"fifo overflow\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@AMCC_OP_REG_MBEF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cb_pcidas_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidas_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_async*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.comedi_device*
  store %struct.comedi_device* %16, %struct.comedi_device** %6, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 2
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %18, align 8
  store %struct.comedi_subdevice* %19, %struct.comedi_subdevice** %7, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @thisboard, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 2
  store i32 %23, i32* %11, align 4
  %24 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @IRQ_NONE, align 4
  store i32 %29, i32* %3, align 4
  br label %315

30:                                               ; preds = %2
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %32 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %31, i32 0, i32 0
  %33 = load %struct.comedi_async*, %struct.comedi_async** %32, align 8
  store %struct.comedi_async* %33, %struct.comedi_async** %8, align 8
  %34 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %35 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @inl(i64 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* @INTCSR_INTR_ASSERTED, align 4
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %30
  %47 = load i32, i32* @IRQ_NONE, align 4
  store i32 %47, i32* %3, align 4
  br label %315

48:                                               ; preds = %30
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AMCC_OP_REG_IMB4, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @inl_p(i64 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @INTCSR_INBOX_INTR_STATUS, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @outl(i32 %59, i64 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @INT_ADCFIFO, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @inw(i64 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @DAHFI, align 4
  %74 = load i32, i32* @DAEMI, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %48
  %79 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @handle_ao_interrupt(%struct.comedi_device* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %48
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @ADHFI, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %170

87:                                               ; preds = %82
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %12, align 4
  %89 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %90 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @TRIG_COUNT, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %87
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ugt i32 %96, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %101, %95, %87
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @ADCDATA, align 8
  %110 = add nsw i64 %108, %109
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @insw(i64 %110, i32 %113, i32 %114)
  %116 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = zext i32 %120 to i64
  %122 = mul i64 %121, 2
  %123 = trunc i64 %122 to i32
  %124 = call i32 @cfc_write_array_to_buffer(%struct.comedi_subdevice* %116, i32 %119, i32 %123)
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sub i32 %128, %125
  store i32 %129, i32* %127, align 4
  %130 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %131 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @TRIG_COUNT, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %150

136:                                              ; preds = %105
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %136
  %142 = load i32, i32* @COMEDI_CB_EOA, align 4
  %143 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %144 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  %147 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %148 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %149 = call i32 @cb_pcidas_cancel(%struct.comedi_device* %147, %struct.comedi_subdevice* %148)
  br label %150

150:                                              ; preds = %141, %136, %105
  %151 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %152 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %151, i32 0, i32 1
  %153 = load i64, i64* %14, align 8
  %154 = call i32 @spin_lock_irqsave(i32* %152, i64 %153)
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @INT, align 4
  %159 = or i32 %157, %158
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @INT_ADCFIFO, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i32 @outw(i32 %159, i64 %164)
  %166 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %167 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %166, i32 0, i32 1
  %168 = load i64, i64* %14, align 8
  %169 = call i32 @spin_unlock_irqrestore(i32* %167, i64 %168)
  br label %273

170:                                              ; preds = %82
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @ADNEI, align 4
  %173 = load i32, i32* @EOBI, align 4
  %174 = or i32 %172, %173
  %175 = and i32 %171, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %244

177:                                              ; preds = %170
  store i32 0, i32* %13, align 4
  br label %178

178:                                              ; preds = %221, %177
  %179 = load i32, i32* %13, align 4
  %180 = icmp ult i32 %179, 10000
  br i1 %180, label %181, label %224

181:                                              ; preds = %178
  %182 = load i32, i32* @ADNE, align 4
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @INT_ADCFIFO, align 8
  %187 = add nsw i64 %185, %186
  %188 = call i32 @inw(i64 %187)
  %189 = and i32 %182, %188
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %181
  br label %224

192:                                              ; preds = %181
  %193 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @inw(i64 %196)
  %198 = call i32 @cfc_write_to_buffer(%struct.comedi_subdevice* %193, i32 %197)
  %199 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %200 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @TRIG_COUNT, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %220

205:                                              ; preds = %192
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = add i32 %208, -1
  store i32 %209, i32* %207, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %205
  %212 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %213 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %214 = call i32 @cb_pcidas_cancel(%struct.comedi_device* %212, %struct.comedi_subdevice* %213)
  %215 = load i32, i32* @COMEDI_CB_EOA, align 4
  %216 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %217 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %224

220:                                              ; preds = %205, %192
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %13, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %13, align 4
  br label %178

224:                                              ; preds = %211, %191, %178
  %225 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %226 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %225, i32 0, i32 1
  %227 = load i64, i64* %14, align 8
  %228 = call i32 @spin_lock_irqsave(i32* %226, i64 %227)
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @INT, align 4
  %233 = or i32 %231, %232
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @INT_ADCFIFO, align 8
  %238 = add nsw i64 %236, %237
  %239 = call i32 @outw(i32 %233, i64 %238)
  %240 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %241 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %240, i32 0, i32 1
  %242 = load i64, i64* %14, align 8
  %243 = call i32 @spin_unlock_irqrestore(i32* %241, i64 %242)
  br label %272

244:                                              ; preds = %170
  %245 = load i32, i32* %9, align 4
  %246 = load i32, i32* @EOAI, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %271

249:                                              ; preds = %244
  %250 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %251 = call i32 @comedi_error(%struct.comedi_device* %250, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %252 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %253 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %252, i32 0, i32 1
  %254 = load i64, i64* %14, align 8
  %255 = call i32 @spin_lock_irqsave(i32* %253, i64 %254)
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @EOAI, align 4
  %260 = or i32 %258, %259
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 3
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @INT_ADCFIFO, align 8
  %265 = add nsw i64 %263, %264
  %266 = call i32 @outw(i32 %260, i64 %265)
  %267 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %268 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %267, i32 0, i32 1
  %269 = load i64, i64* %14, align 8
  %270 = call i32 @spin_unlock_irqrestore(i32* %268, i64 %269)
  br label %271

271:                                              ; preds = %249, %244
  br label %272

272:                                              ; preds = %271, %224
  br label %273

273:                                              ; preds = %272, %150
  %274 = load i32, i32* %9, align 4
  %275 = load i32, i32* @LADFUL, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %310

278:                                              ; preds = %273
  %279 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %280 = call i32 @comedi_error(%struct.comedi_device* %279, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %281 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %282 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %281, i32 0, i32 1
  %283 = load i64, i64* %14, align 8
  %284 = call i32 @spin_lock_irqsave(i32* %282, i64 %283)
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @LADFUL, align 4
  %289 = or i32 %287, %288
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 3
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @INT_ADCFIFO, align 8
  %294 = add nsw i64 %292, %293
  %295 = call i32 @outw(i32 %289, i64 %294)
  %296 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %297 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %296, i32 0, i32 1
  %298 = load i64, i64* %14, align 8
  %299 = call i32 @spin_unlock_irqrestore(i32* %297, i64 %298)
  %300 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %301 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %302 = call i32 @cb_pcidas_cancel(%struct.comedi_device* %300, %struct.comedi_subdevice* %301)
  %303 = load i32, i32* @COMEDI_CB_EOA, align 4
  %304 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %305 = or i32 %303, %304
  %306 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %307 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = or i32 %308, %305
  store i32 %309, i32* %307, align 8
  br label %310

310:                                              ; preds = %278, %273
  %311 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %312 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %313 = call i32 @comedi_event(%struct.comedi_device* %311, %struct.comedi_subdevice* %312)
  %314 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %314, i32* %3, align 4
  br label %315

315:                                              ; preds = %310, %46, %28
  %316 = load i32, i32* %3, align 4
  ret i32 %316
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @inl_p(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @handle_ao_interrupt(%struct.comedi_device*, i32) #1

declare dso_local i32 @insw(i64, i32, i32) #1

declare dso_local i32 @cfc_write_array_to_buffer(%struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @cb_pcidas_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cfc_write_to_buffer(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
