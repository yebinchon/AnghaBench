; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_pcidio.c_nidio_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_pcidio.c_nidio_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.mite_struct*, i32, %struct.TYPE_4__* }
%struct.mite_struct = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.comedi_device = type { i64, i32, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32 }

@devpriv = common dso_local global %struct.TYPE_5__* null, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@Interrupt_And_Window_Status = common dso_local global i64 0, align 8
@Group_1_Flags = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"ni_pcidio_interrupt: status=0x%02x,flags=0x%02x\0A\00", align 1
@CHSR_INT = common dso_local global i32 0, align 4
@CHSR_LINKC = common dso_local global i32 0, align 4
@CHOR_CLRLC = common dso_local global i32 0, align 4
@CHSR_DONE = common dso_local global i32 0, align 4
@CHSR_DRDY = common dso_local global i32 0, align 4
@CHSR_DRQ1 = common dso_local global i32 0, align 4
@CHSR_MRDY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"unknown mite interrupt, disabling IRQ\0A\00", align 1
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@DataLeft = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"too much work in interrupt\0A\00", align 1
@Master_DMA_And_Interrupt_Control = common dso_local global i64 0, align 8
@IntEn = common dso_local global i32 0, align 4
@TransferReady = common dso_local global i32 0, align 4
@Group_1_FIFO = common dso_local global i64 0, align 8
@COMEDI_CB_BLOCK = common dso_local global i32 0, align 4
@CountExpired = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"CountExpired\0A\00", align 1
@ClearExpired = common dso_local global i32 0, align 4
@Group_1_Second_Clear = common dso_local global i64 0, align 8
@OpMode = common dso_local global i64 0, align 8
@Waited = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"Waited\0A\00", align 1
@ClearWaited = common dso_local global i32 0, align 4
@Group_1_First_Clear = common dso_local global i64 0, align 8
@PrimaryTC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"PrimaryTC\0A\00", align 1
@ClearPrimaryTC = common dso_local global i32 0, align 4
@SecondaryTC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"SecondaryTC\0A\00", align 1
@ClearSecondaryTC = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@tag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nidio_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nidio_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_async*, align 8
  %9 = alloca %struct.mite_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.comedi_device*
  store %struct.comedi_device* %19, %struct.comedi_device** %6, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 2
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %21, align 8
  store %struct.comedi_subdevice* %22, %struct.comedi_subdevice** %7, align 8
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %24 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %23, i32 0, i32 0
  %25 = load %struct.comedi_async*, %struct.comedi_async** %24, align 8
  store %struct.comedi_async* %25, %struct.comedi_async** %8, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.mite_struct*, %struct.mite_struct** %27, align 8
  store %struct.mite_struct* %28, %struct.mite_struct** %9, align 8
  store i64 0, i64* %10, align 8
  store i16 0, i16* %11, align 2
  store i16 0, i16* %12, align 2
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %29 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @IRQ_NONE, align 4
  store i32 %34, i32* %3, align 4
  br label %342

35:                                               ; preds = %2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.mite_struct*, %struct.mite_struct** %37, align 8
  %39 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @Interrupt_And_Window_Status, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readb(i64 %42)
  store i32 %43, i32* %14, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.mite_struct*, %struct.mite_struct** %45, align 8
  %47 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @Group_1_Flags, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readb(i64 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @ni_pcidio_print_flags(i32 %55)
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @ni_pcidio_print_status(i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %17, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = icmp ne %struct.TYPE_4__* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %35
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = call i32 @mite_get_status(%struct.TYPE_4__* %70)
  store i32 %71, i32* %16, align 4
  br label %72

72:                                               ; preds = %67, %35
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* @CHSR_INT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %132

77:                                               ; preds = %72
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* @CHSR_LINKC, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %77
  %83 = load i32, i32* @CHOR_CLRLC, align 4
  %84 = load %struct.mite_struct*, %struct.mite_struct** %9, align 8
  %85 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @MITE_CHOR(i32 %91)
  %93 = add nsw i64 %86, %92
  %94 = call i32 @writel(i32 %83, i64 %93)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %99 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %98, i32 0, i32 0
  %100 = load %struct.comedi_async*, %struct.comedi_async** %99, align 8
  %101 = call i32 @mite_sync_input_dma(%struct.TYPE_4__* %97, %struct.comedi_async* %100)
  br label %102

102:                                              ; preds = %82, %77
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* @CHSR_INT, align 4
  %105 = load i32, i32* @CHSR_LINKC, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @CHSR_DONE, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @CHSR_DRDY, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @CHSR_DRQ1, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @CHSR_MRDY, align 4
  %114 = or i32 %112, %113
  %115 = xor i32 %114, -1
  %116 = and i32 %103, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %102
  %119 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i32, i32* @COMEDI_CB_EOA, align 4
  %121 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %124 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %128 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @disable_irq(i32 %129)
  br label %131

131:                                              ; preds = %118, %102
  br label %132

132:                                              ; preds = %131, %72
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i64, i64* %17, align 8
  %136 = call i32 @spin_unlock_irqrestore(i32* %134, i64 %135)
  br label %137

137:                                              ; preds = %319, %132
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* @DataLeft, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %336

142:                                              ; preds = %137
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %15, align 4
  %146 = icmp sgt i32 %145, 20
  br i1 %146, label %147, label %157

147:                                              ; preds = %142
  %148 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load %struct.mite_struct*, %struct.mite_struct** %150, align 8
  %152 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @Master_DMA_And_Interrupt_Control, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @writeb(i32 0, i64 %155)
  br label %336

157:                                              ; preds = %142
  %158 = load i32, i32* @IntEn, align 4
  %159 = load i32, i32* %13, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* @TransferReady, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %222

165:                                              ; preds = %157
  br label %166

166:                                              ; preds = %186, %165
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* @TransferReady, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %216

171:                                              ; preds = %166
  %172 = load i32, i32* %15, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %15, align 4
  %174 = load i32, i32* %15, align 4
  %175 = icmp sgt i32 %174, 100
  br i1 %175, label %176, label %186

176:                                              ; preds = %171
  %177 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load %struct.mite_struct*, %struct.mite_struct** %179, align 8
  %181 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @Master_DMA_And_Interrupt_Control, align 8
  %184 = add nsw i64 %182, %183
  %185 = call i32 @writeb(i32 0, i64 %184)
  br label %337

186:                                              ; preds = %171
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = load %struct.mite_struct*, %struct.mite_struct** %188, align 8
  %190 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @Group_1_FIFO, align 8
  %193 = add nsw i64 %191, %192
  %194 = call i64 @readl(i64 %193)
  store i64 %194, i64* %10, align 8
  %195 = load i64, i64* %10, align 8
  %196 = and i64 %195, 65535
  %197 = trunc i64 %196 to i16
  store i16 %197, i16* %11, align 2
  %198 = load i64, i64* %10, align 8
  %199 = and i64 %198, 4294901760
  %200 = ashr i64 %199, 16
  %201 = trunc i64 %200 to i16
  store i16 %201, i16* %12, align 2
  %202 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %203 = load i16, i16* %11, align 2
  %204 = call i32 @comedi_buf_put(%struct.comedi_async* %202, i16 signext %203)
  %205 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %206 = load i16, i16* %12, align 2
  %207 = call i32 @comedi_buf_put(%struct.comedi_async* %205, i16 signext %206)
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load %struct.mite_struct*, %struct.mite_struct** %209, align 8
  %211 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @Group_1_Flags, align 8
  %214 = add nsw i64 %212, %213
  %215 = call i32 @readb(i64 %214)
  store i32 %215, i32* %13, align 4
  br label %166

216:                                              ; preds = %166
  %217 = load i32, i32* @COMEDI_CB_BLOCK, align 4
  %218 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %219 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %220, %217
  store i32 %221, i32* %219, align 4
  br label %222

222:                                              ; preds = %216, %157
  %223 = load i32, i32* %13, align 4
  %224 = load i32, i32* @CountExpired, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %251

227:                                              ; preds = %222
  %228 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %229 = load i32, i32* @ClearExpired, align 4
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 0
  %232 = load %struct.mite_struct*, %struct.mite_struct** %231, align 8
  %233 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @Group_1_Second_Clear, align 8
  %236 = add nsw i64 %234, %235
  %237 = call i32 @writeb(i32 %229, i64 %236)
  %238 = load i32, i32* @COMEDI_CB_EOA, align 4
  %239 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %240 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %241, %238
  store i32 %242, i32* %240, align 4
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 0
  %245 = load %struct.mite_struct*, %struct.mite_struct** %244, align 8
  %246 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @OpMode, align 8
  %249 = add nsw i64 %247, %248
  %250 = call i32 @writeb(i32 0, i64 %249)
  br label %336

251:                                              ; preds = %222
  %252 = load i32, i32* %13, align 4
  %253 = load i32, i32* @Waited, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %274

256:                                              ; preds = %251
  %257 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %258 = load i32, i32* @ClearWaited, align 4
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 0
  %261 = load %struct.mite_struct*, %struct.mite_struct** %260, align 8
  %262 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @Group_1_First_Clear, align 8
  %265 = add nsw i64 %263, %264
  %266 = call i32 @writeb(i32 %258, i64 %265)
  %267 = load i32, i32* @COMEDI_CB_EOA, align 4
  %268 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %269 = or i32 %267, %268
  %270 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %271 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = or i32 %272, %269
  store i32 %273, i32* %271, align 4
  br label %336

274:                                              ; preds = %251
  %275 = load i32, i32* %13, align 4
  %276 = load i32, i32* @PrimaryTC, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %295

279:                                              ; preds = %274
  %280 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %281 = load i32, i32* @ClearPrimaryTC, align 4
  %282 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 0
  %284 = load %struct.mite_struct*, %struct.mite_struct** %283, align 8
  %285 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @Group_1_First_Clear, align 8
  %288 = add nsw i64 %286, %287
  %289 = call i32 @writeb(i32 %281, i64 %288)
  %290 = load i32, i32* @COMEDI_CB_EOA, align 4
  %291 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %292 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 4
  br label %317

295:                                              ; preds = %274
  %296 = load i32, i32* %13, align 4
  %297 = load i32, i32* @SecondaryTC, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %316

300:                                              ; preds = %295
  %301 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %302 = load i32, i32* @ClearSecondaryTC, align 4
  %303 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 0
  %305 = load %struct.mite_struct*, %struct.mite_struct** %304, align 8
  %306 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @Group_1_First_Clear, align 8
  %309 = add nsw i64 %307, %308
  %310 = call i32 @writeb(i32 %302, i64 %309)
  %311 = load i32, i32* @COMEDI_CB_EOA, align 4
  %312 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %313 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = or i32 %314, %311
  store i32 %315, i32* %313, align 4
  br label %316

316:                                              ; preds = %300, %295
  br label %317

317:                                              ; preds = %316, %279
  br label %318

318:                                              ; preds = %317
  br label %319

319:                                              ; preds = %318
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 0
  %322 = load %struct.mite_struct*, %struct.mite_struct** %321, align 8
  %323 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @Group_1_Flags, align 8
  %326 = add nsw i64 %324, %325
  %327 = call i32 @readb(i64 %326)
  store i32 %327, i32* %13, align 4
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 0
  %330 = load %struct.mite_struct*, %struct.mite_struct** %329, align 8
  %331 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @Interrupt_And_Window_Status, align 8
  %334 = add nsw i64 %332, %333
  %335 = call i32 @readb(i64 %334)
  store i32 %335, i32* %14, align 4
  br label %137

336:                                              ; preds = %256, %227, %147, %137
  br label %337

337:                                              ; preds = %336, %176
  %338 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %339 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %340 = call i32 @ni_pcidio_event(%struct.comedi_device* %338, %struct.comedi_subdevice* %339)
  %341 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %341, i32* %3, align 4
  br label %342

342:                                              ; preds = %337, %33
  %343 = load i32, i32* %3, align 4
  ret i32 %343
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @ni_pcidio_print_flags(i32) #1

declare dso_local i32 @ni_pcidio_print_status(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mite_get_status(%struct.TYPE_4__*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @MITE_CHOR(i32) #1

declare dso_local i32 @mite_sync_input_dma(%struct.TYPE_4__*, %struct.comedi_async*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @comedi_buf_put(%struct.comedi_async*, i16 signext) #1

declare dso_local i32 @ni_pcidio_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
