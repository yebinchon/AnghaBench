; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl818.c_interrupt_pcl818_ai_mode13_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl818.c_interrupt_pcl818_ai_mode13_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32, i16*, i64, i64, i64, i64, i64*, i32, i32* }
%struct.comedi_device = type { i64, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@DMA_MODE_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"comedi: A/D mode1/3 IRQ \0A\00", align 1
@PCL818_CLRINT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [74 x i8] c"comedi: A/D mode1/3 DMA - channel dropout %d(card)!=%d(chanlist) at %d !\0A\00", align 1
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @interrupt_pcl818_ai_mode13_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interrupt_pcl818_ai_mode13_dma(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i16*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.comedi_device*
  store %struct.comedi_device* %14, %struct.comedi_device** %6, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 1
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %16, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i64 0
  store %struct.comedi_subdevice* %18, %struct.comedi_subdevice** %7, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @disable_dma(i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 1, %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %38, label %33

33:                                               ; preds = %2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %96

38:                                               ; preds = %33, %2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DMA_MODE_READ, align 4
  %43 = call i32 @set_dma_mode(i32 %41, i32 %42)
  %44 = call i64 (...) @claim_dma_lock()
  store i64 %44, i64* %11, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 11
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @set_dma_addr(i32 %47, i32 %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %38
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %62, %38
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @set_dma_count(i32 %70, i32 %79)
  br label %89

81:                                               ; preds = %62
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 10
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @set_dma_count(i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %81, %67
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @release_dma_lock(i64 %90)
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 10
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @enable_dma(i32 %94)
  br label %96

96:                                               ; preds = %89, %33
  %97 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %103 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @PCL818_CLRINT, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @outb(i32 0, i64 %106)
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 9
  %110 = load i64*, i64** %109, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 1, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %110, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i16*
  store i16* %118, i16** %12, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = ashr i32 %123, 1
  store i32 %124, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %125

125:                                              ; preds = %243, %96
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %246

129:                                              ; preds = %125
  %130 = load i16*, i16** %12, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i16, i16* %130, i64 %132
  %134 = load i16, i16* %133, align 2
  %135 = sext i16 %134 to i32
  %136 = and i32 %135, 15
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 4
  %139 = load i16*, i16** %138, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds i16, i16* %139, i64 %142
  %144 = load i16, i16* %143, align 2
  %145 = sext i16 %144 to i32
  %146 = icmp ne i32 %136, %145
  br i1 %146, label %147, label %184

147:                                              ; preds = %129
  %148 = load i16*, i16** %12, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i16, i16* %148, i64 %150
  %152 = load i16, i16* %151, align 2
  %153 = sext i16 %152 to i32
  %154 = and i32 %153, 15
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 4
  %157 = load i16*, i16** %156, align 8
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds i16, i16* %157, i64 %160
  %162 = load i16, i16* %161, align 2
  %163 = sext i16 %162 to i32
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %154, i32 %163, i64 %166)
  %168 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %169 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %170 = call i32 @pcl818_ai_cancel(%struct.comedi_device* %168, %struct.comedi_subdevice* %169)
  %171 = load i32, i32* @COMEDI_CB_EOA, align 4
  %172 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %173 = or i32 %171, %172
  %174 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %175 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %174, i32 0, i32 0
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %173
  store i32 %179, i32* %177, align 4
  %180 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %181 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %182 = call i32 @comedi_event(%struct.comedi_device* %180, %struct.comedi_subdevice* %181)
  %183 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %183, i32* %3, align 4
  br label %255

184:                                              ; preds = %129
  %185 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %186 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %185, i32 0, i32 0
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = load i16*, i16** %12, align 8
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i16, i16* %188, i64 %191
  %193 = load i16, i16* %192, align 2
  %194 = sext i16 %193 to i32
  %195 = ashr i32 %194, 4
  %196 = trunc i32 %195 to i16
  %197 = call i32 @comedi_buf_put(%struct.TYPE_4__* %187, i16 signext %196)
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %199, align 8
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 5
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 6
  %207 = load i64, i64* %206, align 8
  %208 = icmp uge i64 %204, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %184
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 7
  %212 = load i64, i64* %211, align 8
  %213 = add nsw i64 %212, -1
  store i64 %213, i64* %211, align 8
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 5
  store i64 0, i64* %215, align 8
  br label %216

216:                                              ; preds = %209, %184
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 8
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %242, label %221

221:                                              ; preds = %216
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 7
  %224 = load i64, i64* %223, align 8
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %241

226:                                              ; preds = %221
  %227 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %228 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %229 = call i32 @pcl818_ai_cancel(%struct.comedi_device* %227, %struct.comedi_subdevice* %228)
  %230 = load i32, i32* @COMEDI_CB_EOA, align 4
  %231 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %232 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %231, i32 0, i32 0
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = or i32 %235, %230
  store i32 %236, i32* %234, align 4
  %237 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %238 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %239 = call i32 @comedi_event(%struct.comedi_device* %237, %struct.comedi_subdevice* %238)
  %240 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %240, i32* %3, align 4
  br label %255

241:                                              ; preds = %221
  br label %242

242:                                              ; preds = %241, %216
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %8, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %8, align 4
  br label %125

246:                                              ; preds = %125
  %247 = load i32, i32* %9, align 4
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %246
  %250 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %251 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %252 = call i32 @comedi_event(%struct.comedi_device* %250, %struct.comedi_subdevice* %251)
  br label %253

253:                                              ; preds = %249, %246
  %254 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %254, i32* %3, align 4
  br label %255

255:                                              ; preds = %253, %226, %147
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @set_dma_mode(i32, i32) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @set_dma_addr(i32, i32) #1

declare dso_local i32 @set_dma_count(i32, i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @enable_dma(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @pcl818_ai_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_buf_put(%struct.TYPE_4__*, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
