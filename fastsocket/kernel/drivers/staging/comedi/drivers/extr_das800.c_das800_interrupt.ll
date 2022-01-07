; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das800.c_das800_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das800.c_das800_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.comedi_device = type { i32, i64, i64, i32, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32 }

@das800_interrupt.max_loops = internal constant i32 128, align 4
@DAS800_STATUS = common dso_local global i64 0, align 8
@IRQ = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@CONTROL1 = common dso_local global i32 0, align 4
@DAS800_GAIN = common dso_local global i64 0, align 8
@DAS800_STATUS2 = common dso_local global i64 0, align 8
@STATUS2_HCEN = common dso_local global i32 0, align 4
@DAS800_LSB = common dso_local global i64 0, align 8
@DAS800_MSB = common dso_local global i64 0, align 8
@thisboard = common dso_local global %struct.TYPE_3__* null, align 8
@FIFO_EMPTY = common dso_local global i16 0, align 2
@FIFO_OVF = common dso_local global i16 0, align 2
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@COMEDI_CB_BLOCK = common dso_local global i32 0, align 4
@CIO_FFOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"DAS800 FIFO overflow\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@CONTROL1_INTE = common dso_local global i32 0, align 4
@DAS800_CONTROL1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @das800_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das800_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct.comedi_device*, align 8
  %9 = alloca %struct.comedi_subdevice*, align 8
  %10 = alloca %struct.comedi_async*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i16 0, i16* %7, align 2
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.comedi_device*
  store %struct.comedi_device* %16, %struct.comedi_device** %8, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 4
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %18, align 8
  store %struct.comedi_subdevice* %19, %struct.comedi_subdevice** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DAS800_STATUS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @inb(i64 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @IRQ, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @IRQ_NONE, align 4
  store i32 %31, i32* %3, align 4
  br label %263

32:                                               ; preds = %2
  %33 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %38, i32* %3, align 4
  br label %263

39:                                               ; preds = %32
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %41 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %40, i32 0, i32 0
  %42 = load %struct.comedi_async*, %struct.comedi_async** %41, align 8
  store %struct.comedi_async* %42, %struct.comedi_async** %10, align 8
  %43 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 0
  %45 = load i64, i64* %12, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load i32, i32* @CONTROL1, align 4
  %48 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %49 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @DAS800_GAIN, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @outb(i32 %47, i64 %52)
  %54 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DAS800_STATUS2, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @inb(i64 %58)
  %60 = load i32, i32* @STATUS2_HCEN, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %39
  %65 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %66 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %65, i32 0, i32 0
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %69, i32* %3, align 4
  br label %263

70:                                               ; preds = %39
  store i16 0, i16* %6, align 2
  br label %71

71:                                               ; preds = %154, %70
  %72 = load i16, i16* %6, align 2
  %73 = sext i16 %72 to i32
  %74 = icmp slt i32 %73, 128
  br i1 %74, label %75, label %157

75:                                               ; preds = %71
  %76 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DAS800_LSB, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @inb(i64 %80)
  %82 = trunc i32 %81 to i16
  store i16 %82, i16* %7, align 2
  %83 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %84 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DAS800_MSB, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @inb(i64 %87)
  %89 = shl i32 %88, 8
  %90 = load i16, i16* %7, align 2
  %91 = sext i16 %90 to i32
  %92 = add nsw i32 %91, %89
  %93 = trunc i32 %92 to i16
  store i16 %93, i16* %7, align 2
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 12
  br i1 %97, label %98, label %113

98:                                               ; preds = %75
  %99 = load i16, i16* %7, align 2
  %100 = sext i16 %99 to i32
  %101 = load i16, i16* @FIFO_EMPTY, align 2
  %102 = sext i16 %101 to i32
  %103 = and i32 %100, %102
  store i32 %103, i32* %13, align 4
  %104 = load i16, i16* %7, align 2
  %105 = sext i16 %104 to i32
  %106 = load i16, i16* @FIFO_OVF, align 2
  %107 = sext i16 %106 to i32
  %108 = and i32 %105, %107
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %98
  br label %157

112:                                              ; preds = %98
  br label %114

113:                                              ; preds = %75
  store i32 0, i32* %13, align 4
  br label %114

114:                                              ; preds = %113, %112
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %157

118:                                              ; preds = %114
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 12
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load i16, i16* %7, align 2
  %125 = sext i16 %124 to i32
  %126 = ashr i32 %125, 4
  %127 = and i32 %126, 4095
  %128 = trunc i32 %127 to i16
  store i16 %128, i16* %7, align 2
  br label %129

129:                                              ; preds = %123, %118
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %153

139:                                              ; preds = %134, %129
  %140 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %141 = load i16, i16* %7, align 2
  %142 = call i32 @cfc_write_to_buffer(%struct.comedi_subdevice* %140, i16 signext %141)
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp sgt i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %139
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, -1
  store i64 %151, i64* %149, align 8
  br label %152

152:                                              ; preds = %147, %139
  br label %153

153:                                              ; preds = %152, %134
  br label %154

154:                                              ; preds = %153
  %155 = load i16, i16* %6, align 2
  %156 = add i16 %155, 1
  store i16 %156, i16* %6, align 2
  br label %71

157:                                              ; preds = %117, %111, %71
  %158 = load i32, i32* @COMEDI_CB_BLOCK, align 4
  %159 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %160 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 12
  br i1 %166, label %167, label %173

167:                                              ; preds = %157
  %168 = load i16, i16* %7, align 2
  %169 = sext i16 %168 to i32
  %170 = load i16, i16* @FIFO_OVF, align 2
  %171 = sext i16 %170 to i32
  %172 = and i32 %169, %171
  store i32 %172, i32* %14, align 4
  br label %182

173:                                              ; preds = %157
  %174 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %175 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @DAS800_GAIN, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @inb(i64 %178)
  %180 = load i32, i32* @CIO_FFOV, align 4
  %181 = and i32 %179, %180
  store i32 %181, i32* %14, align 4
  br label %182

182:                                              ; preds = %173, %167
  %183 = load i32, i32* %14, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %211

185:                                              ; preds = %182
  %186 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %187 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %186, i32 0, i32 0
  %188 = load i64, i64* %12, align 8
  %189 = call i32 @spin_unlock_irqrestore(i32* %187, i64 %188)
  %190 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %191 = call i32 @comedi_error(%struct.comedi_device* %190, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %192 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %193 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %194 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %195, 0
  %197 = call i32 @das800_cancel(%struct.comedi_device* %192, i64 %196)
  %198 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %199 = load i32, i32* @COMEDI_CB_EOA, align 4
  %200 = or i32 %198, %199
  %201 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %202 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 4
  %205 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %206 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %207 = call i32 @comedi_event(%struct.comedi_device* %205, %struct.comedi_subdevice* %206)
  %208 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %209 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %208, i32 0, i32 0
  store i32 0, i32* %209, align 4
  %210 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %210, i32* %3, align 4
  br label %263

211:                                              ; preds = %182
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp sgt i64 %214, 0
  br i1 %215, label %221, label %216

216:                                              ; preds = %211
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %244

221:                                              ; preds = %216, %211
  %222 = load i32, i32* @CONTROL1, align 4
  %223 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %224 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @DAS800_GAIN, align 8
  %227 = add nsw i64 %225, %226
  %228 = call i32 @outb(i32 %222, i64 %227)
  %229 = load i32, i32* @CONTROL1_INTE, align 4
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %229, %232
  %234 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %235 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @DAS800_CONTROL1, align 8
  %238 = add nsw i64 %236, %237
  %239 = call i32 @outb(i32 %233, i64 %238)
  %240 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %241 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %240, i32 0, i32 0
  %242 = load i64, i64* %12, align 8
  %243 = call i32 @spin_unlock_irqrestore(i32* %241, i64 %242)
  br label %256

244:                                              ; preds = %216
  %245 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %246 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %245, i32 0, i32 0
  %247 = load i64, i64* %12, align 8
  %248 = call i32 @spin_unlock_irqrestore(i32* %246, i64 %247)
  %249 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %250 = call i32 @disable_das800(%struct.comedi_device* %249)
  %251 = load i32, i32* @COMEDI_CB_EOA, align 4
  %252 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %253 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 4
  br label %256

256:                                              ; preds = %244, %221
  %257 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %258 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %259 = call i32 @comedi_event(%struct.comedi_device* %257, %struct.comedi_subdevice* %258)
  %260 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %261 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %260, i32 0, i32 0
  store i32 0, i32* %261, align 4
  %262 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %262, i32* %3, align 4
  br label %263

263:                                              ; preds = %256, %185, %64, %37, %30
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cfc_write_to_buffer(%struct.comedi_subdevice*, i16 signext) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @das800_cancel(%struct.comedi_device*, i64) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @disable_das800(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
