; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i16*, i32 }
%struct.comedi_device = type { i64, i64, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64 }

@a2150_interrupt.sample_size = internal constant i32 2, align 4
@.str = private unnamed_addr constant [20 x i8] c"premature interrupt\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@STATUS_REG = common dso_local global i64 0, align 8
@INTR_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"spurious interrupt\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@OVFL_BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"fifo overflow\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@DMA_TC_BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"caught non-dma interrupt?  Aborting.\00", align 1
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@TRIG_NONE = common dso_local global i64 0, align 8
@COMEDI_CB_BLOCK = common dso_local global i32 0, align 4
@DMA_TC_CLEAR_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @a2150_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2150_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.comedi_device*, align 8
  %10 = alloca %struct.comedi_subdevice*, align 8
  %11 = alloca %struct.comedi_async*, align 8
  %12 = alloca %struct.comedi_cmd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i16, align 2
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.comedi_device*
  store %struct.comedi_device* %19, %struct.comedi_device** %9, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 2
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %21, align 8
  store %struct.comedi_subdevice* %22, %struct.comedi_subdevice** %10, align 8
  %23 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %29 = call i32 @comedi_error(%struct.comedi_device* %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %30, i32* %3, align 4
  br label %249

31:                                               ; preds = %2
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %33 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %32, i32 0, i32 0
  %34 = load %struct.comedi_async*, %struct.comedi_async** %33, align 8
  store %struct.comedi_async* %34, %struct.comedi_async** %11, align 8
  %35 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  %36 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  %38 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %37, i32 0, i32 1
  store %struct.comedi_cmd* %38, %struct.comedi_cmd** %12, align 8
  %39 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @STATUS_REG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @inw(i64 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @INTR_BIT, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %31
  %50 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %51 = call i32 @comedi_error(%struct.comedi_device* %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @IRQ_NONE, align 4
  store i32 %52, i32* %3, align 4
  br label %249

53:                                               ; preds = %31
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @OVFL_BIT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %60 = call i32 @comedi_error(%struct.comedi_device* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %63 = call i32 @a2150_cancel(%struct.comedi_device* %61, %struct.comedi_subdevice* %62)
  %64 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %65 = load i32, i32* @COMEDI_CB_EOA, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  %68 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %58, %53
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @DMA_TC_BIT, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %71
  %77 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %78 = call i32 @comedi_error(%struct.comedi_device* %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %81 = call i32 @a2150_cancel(%struct.comedi_device* %79, %struct.comedi_subdevice* %80)
  %82 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %83 = load i32, i32* @COMEDI_CB_EOA, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  %86 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %90 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %91 = call i32 @comedi_event(%struct.comedi_device* %89, %struct.comedi_subdevice* %90)
  %92 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %92, i32* %3, align 4
  br label %249

93:                                               ; preds = %71
  %94 = call i64 (...) @claim_dma_lock()
  store i64 %94, i64* %8, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @disable_dma(i32 %97)
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @clear_dma_ff(i32 %101)
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sdiv i32 %105, 2
  store i32 %106, i32* %13, align 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @get_dma_residue(i32 %109)
  %111 = sdiv i32 %110, 2
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %15, align 4
  %114 = sub i32 %112, %113
  store i32 %114, i32* %14, align 4
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %93
  %121 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %122 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @TRIG_COUNT, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %14, align 4
  br label %130

130:                                              ; preds = %126, %120, %93
  store i32 0, i32* %16, align 4
  %131 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %132 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @TRIG_NONE, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sdiv i32 %139, 2
  store i32 %140, i32* %16, align 4
  br label %160

141:                                              ; preds = %130
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %13, align 4
  %146 = icmp ugt i32 %144, %145
  br i1 %146, label %147, label %159

147:                                              ; preds = %141
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %13, align 4
  %152 = sub i32 %150, %151
  store i32 %152, i32* %16, align 4
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %13, align 4
  %155 = icmp ugt i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %147
  %157 = load i32, i32* %13, align 4
  store i32 %157, i32* %16, align 4
  br label %158

158:                                              ; preds = %156, %147
  br label %159

159:                                              ; preds = %158, %141
  br label %160

160:                                              ; preds = %159, %136
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 0, i32* %16, align 4
  br label %164

164:                                              ; preds = %163, %160
  store i32 0, i32* %6, align 4
  br label %165

165:                                              ; preds = %206, %164
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* %14, align 4
  %168 = icmp ult i32 %166, %167
  br i1 %168, label %169, label %209

169:                                              ; preds = %165
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 2
  %172 = load i16*, i16** %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i16, i16* %172, i64 %174
  %176 = load i16, i16* %175, align 2
  store i16 %176, i16* %17, align 2
  %177 = load i16, i16* %17, align 2
  %178 = sext i16 %177 to i32
  %179 = xor i32 %178, 32768
  %180 = trunc i32 %179 to i16
  store i16 %180, i16* %17, align 2
  %181 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %182 = load i16, i16* %17, align 2
  %183 = call i32 @cfc_write_to_buffer(%struct.comedi_subdevice* %181, i16 signext %182)
  %184 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %185 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @TRIG_COUNT, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %205

189:                                              ; preds = %169
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = add i32 %192, -1
  store i32 %193, i32* %191, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %189
  %196 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %197 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %198 = call i32 @a2150_cancel(%struct.comedi_device* %196, %struct.comedi_subdevice* %197)
  %199 = load i32, i32* @COMEDI_CB_EOA, align 4
  %200 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  %201 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 8
  br label %209

204:                                              ; preds = %189
  br label %205

205:                                              ; preds = %204, %169
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %6, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %6, align 4
  br label %165

209:                                              ; preds = %195, %165
  %210 = load i32, i32* %16, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %231

212:                                              ; preds = %209
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 2
  %218 = load i16*, i16** %217, align 8
  %219 = call i32 @virt_to_bus(i16* %218)
  %220 = call i32 @set_dma_addr(i32 %215, i32 %219)
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %16, align 4
  %225 = mul i32 %224, 2
  %226 = call i32 @set_dma_count(i32 %223, i32 %225)
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @enable_dma(i32 %229)
  br label %231

231:                                              ; preds = %212, %209
  %232 = load i64, i64* %8, align 8
  %233 = call i32 @release_dma_lock(i64 %232)
  %234 = load i32, i32* @COMEDI_CB_BLOCK, align 4
  %235 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  %236 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 8
  %239 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %240 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %241 = call i32 @comedi_event(%struct.comedi_device* %239, %struct.comedi_subdevice* %240)
  %242 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %243 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @DMA_TC_CLEAR_REG, align 8
  %246 = add nsw i64 %244, %245
  %247 = call i32 @outw(i32 0, i64 %246)
  %248 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %248, i32* %3, align 4
  br label %249

249:                                              ; preds = %231, %76, %49, %27
  %250 = load i32, i32* %3, align 4
  ret i32 %250
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @a2150_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @get_dma_residue(i32) #1

declare dso_local i32 @cfc_write_to_buffer(%struct.comedi_subdevice*, i16 signext) #1

declare dso_local i32 @set_dma_addr(i32, i32) #1

declare dso_local i32 @virt_to_bus(i16*) #1

declare dso_local i32 @set_dma_count(i32, i32) #1

declare dso_local i32 @enable_dma(i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
