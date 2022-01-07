; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3120.c_v_APCI3120_InterruptDma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3120.c_v_APCI3120_InterruptDma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64, i64*, i32, i64, i64, i64, i64, i64, i8*, i32, i32* }
%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@AMCC_OP_REG_MWTC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Interrupted DMA transfer!\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Odd count of bytes in DMA ring!\00", align 1
@APCI3120_DISABLE = common dso_local global i8* null, align 8
@AGCSTS_TC_ENABLE = common dso_local global i32 0, align 4
@AGCSTS_RESET_A2P_FIFO = common dso_local global i32 0, align 4
@AMCC_OP_REG_AGCSTS = common dso_local global i64 0, align 8
@APCI3120_ADD_ON_AGCSTS_LOW = common dso_local global i32 0, align 4
@APCI3120_ENABLE_TRANSFER_ADD_ON_LOW = common dso_local global i32 0, align 4
@APCI3120_ADD_ON_AGCSTS_HIGH = common dso_local global i32 0, align 4
@APCI3120_ENABLE_TRANSFER_ADD_ON_HIGH = common dso_local global i32 0, align 4
@APCI3120_ADD_ON_MWAR_LOW = common dso_local global i32 0, align 4
@APCI3120_ADD_ON_MWAR_HIGH = common dso_local global i32 0, align 4
@APCI3120_ADD_ON_MWTC_LOW = common dso_local global i32 0, align 4
@APCI3120_ADD_ON_MWTC_HIGH = common dso_local global i32 0, align 4
@APCI3120_FIFO_ADVANCE_ON_BYTE_2 = common dso_local global i32 0, align 4
@APCI3120_ENABLE_WRITE_TC_INT = common dso_local global i32 0, align 4
@AMCC_OP_REG_INTCSR = common dso_local global i64 0, align 8
@TRIG_WAKE_EOS = common dso_local global i32 0, align 4
@COMEDI_CB_EOS = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@APCI3120_A2P_FIFO_MANAGEMENT = common dso_local global i32 0, align 4
@AMCC_OP_REG_MCSR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v_APCI3120_InterruptDma(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.comedi_device*
  store %struct.comedi_device* %14, %struct.comedi_device** %5, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %16, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i64 0
  store %struct.comedi_subdevice* %18, %struct.comedi_subdevice** %6, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AMCC_OP_REG_MWTC, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @inl(i64 %31)
  %33 = sub i32 %26, %32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ult i32 %34, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %2
  %45 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %46 = call i32 @comedi_error(%struct.comedi_device* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %2
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %53 = call i32 @comedi_error(%struct.comedi_device* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %56 = call i32 @i_APCI3120_StopCyclicAcquisition(%struct.comedi_device* %54, %struct.comedi_subdevice* %55)
  %57 = load i8*, i8** @APCI3120_DISABLE, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 9
  store i8* %57, i8** %59, align 8
  br label %426

60:                                               ; preds = %47
  %61 = load i32, i32* %8, align 4
  %62 = lshr i32 %61, 1
  store i32 %62, i32* %8, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %211

67:                                               ; preds = %60
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = sub i64 1, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* @AGCSTS_TC_ENABLE, align 4
  %74 = load i32, i32* @AGCSTS_RESET_A2P_FIFO, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 7
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @AMCC_OP_REG_AGCSTS, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @outl(i32 %76, i64 %81)
  %83 = load i32, i32* @APCI3120_ADD_ON_AGCSTS_LOW, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 0
  %88 = call i32 @outw(i32 %83, i64 %87)
  %89 = load i32, i32* @APCI3120_ENABLE_TRANSFER_ADD_ON_LOW, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 7
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 2
  %94 = call i32 @outw(i32 %89, i64 %93)
  %95 = load i32, i32* @APCI3120_ADD_ON_AGCSTS_HIGH, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 7
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 0
  %100 = call i32 @outw(i32 %95, i64 %99)
  %101 = load i32, i32* @APCI3120_ENABLE_TRANSFER_ADD_ON_HIGH, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 7
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 2
  %106 = call i32 @outw(i32 %101, i64 %105)
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %11, align 8
  %114 = load i64, i64* %11, align 8
  %115 = and i64 %114, 65535
  store i64 %115, i64* %9, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %11, align 8
  %123 = load i64, i64* %11, align 8
  %124 = udiv i64 %123, 65536
  store i64 %124, i64* %10, align 8
  %125 = load i32, i32* @APCI3120_ADD_ON_MWAR_LOW, align 4
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 7
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 0
  %130 = call i32 @outw(i32 %125, i64 %129)
  %131 = load i64, i64* %9, align 8
  %132 = trunc i64 %131 to i32
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 7
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 2
  %137 = call i32 @outw(i32 %132, i64 %136)
  %138 = load i32, i32* @APCI3120_ADD_ON_MWAR_HIGH, align 4
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 7
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, 0
  %143 = call i32 @outw(i32 %138, i64 %142)
  %144 = load i64, i64* %10, align 8
  %145 = trunc i64 %144 to i32
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 7
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, 2
  %150 = call i32 @outw(i32 %145, i64 %149)
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = zext i32 %157 to i64
  store i64 %158, i64* %11, align 8
  %159 = load i64, i64* %11, align 8
  %160 = and i64 %159, 65535
  store i64 %160, i64* %9, align 8
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %7, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = zext i32 %167 to i64
  store i64 %168, i64* %11, align 8
  %169 = load i64, i64* %11, align 8
  %170 = udiv i64 %169, 65536
  store i64 %170, i64* %10, align 8
  %171 = load i32, i32* @APCI3120_ADD_ON_MWTC_LOW, align 4
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 7
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %174, 0
  %176 = call i32 @outw(i32 %171, i64 %175)
  %177 = load i64, i64* %9, align 8
  %178 = trunc i64 %177 to i32
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 7
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, 2
  %183 = call i32 @outw(i32 %178, i64 %182)
  %184 = load i32, i32* @APCI3120_ADD_ON_MWTC_HIGH, align 4
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 7
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %187, 0
  %189 = call i32 @outw(i32 %184, i64 %188)
  %190 = load i64, i64* %10, align 8
  %191 = trunc i64 %190 to i32
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 7
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %194, 2
  %196 = call i32 @outw(i32 %191, i64 %195)
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 7
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %199, 4
  %201 = call i32 @outw(i32 3, i64 %200)
  %202 = load i32, i32* @APCI3120_FIFO_ADVANCE_ON_BYTE_2, align 4
  %203 = load i32, i32* @APCI3120_ENABLE_WRITE_TC_INT, align 4
  %204 = or i32 %202, %203
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 6
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %209 = add nsw i64 %207, %208
  %210 = call i32 @outl(i32 %204, i64 %209)
  br label %211

211:                                              ; preds = %67, %60
  %212 = load i32, i32* %8, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %245

214:                                              ; preds = %211
  %215 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %216 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 11
  %219 = load i32*, i32** %218, align 8
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %8, align 4
  %226 = call i32 @v_APCI3120_InterruptDmaMoveBlock16bit(%struct.comedi_device* %215, %struct.comedi_subdevice* %216, i32 %224, i32 %225)
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %244, label %233

233:                                              ; preds = %214
  %234 = load i32, i32* @COMEDI_CB_EOS, align 4
  %235 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %236 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %235, i32 0, i32 0
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %239, %234
  store i32 %240, i32* %238, align 4
  %241 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %242 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %243 = call i32 @comedi_event(%struct.comedi_device* %241, %struct.comedi_subdevice* %242)
  br label %244

244:                                              ; preds = %233, %214
  br label %245

245:                                              ; preds = %244, %211
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 10
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %276, label %250

250:                                              ; preds = %245
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 4
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 5
  %256 = load i64, i64* %255, align 8
  %257 = icmp sge i64 %253, %256
  br i1 %257, label %258, label %275

258:                                              ; preds = %250
  %259 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %260 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %261 = call i32 @i_APCI3120_StopCyclicAcquisition(%struct.comedi_device* %259, %struct.comedi_subdevice* %260)
  %262 = load i8*, i8** @APCI3120_DISABLE, align 8
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 9
  store i8* %262, i8** %264, align 8
  %265 = load i32, i32* @COMEDI_CB_EOA, align 4
  %266 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %267 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %266, i32 0, i32 0
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = or i32 %270, %265
  store i32 %271, i32* %269, align 4
  %272 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %273 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %274 = call i32 @comedi_event(%struct.comedi_device* %272, %struct.comedi_subdevice* %273)
  br label %426

275:                                              ; preds = %250
  br label %276

276:                                              ; preds = %275, %245
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 8
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %288

281:                                              ; preds = %276
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = sub i64 1, %284
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 1
  store i64 %285, i64* %287, align 8
  br label %426

288:                                              ; preds = %276
  %289 = load i32, i32* @AGCSTS_TC_ENABLE, align 4
  %290 = load i32, i32* @AGCSTS_RESET_A2P_FIFO, align 4
  %291 = or i32 %289, %290
  store i32 %291, i32* %12, align 4
  %292 = load i32, i32* %12, align 4
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 7
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @AMCC_OP_REG_AGCSTS, align 8
  %297 = add nsw i64 %295, %296
  %298 = call i32 @outl(i32 %292, i64 %297)
  %299 = load i32, i32* @APCI3120_ADD_ON_AGCSTS_LOW, align 4
  %300 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 7
  %302 = load i64, i64* %301, align 8
  %303 = add nsw i64 %302, 0
  %304 = call i32 @outw(i32 %299, i64 %303)
  %305 = load i32, i32* @APCI3120_ENABLE_TRANSFER_ADD_ON_LOW, align 4
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 7
  %308 = load i64, i64* %307, align 8
  %309 = add nsw i64 %308, 2
  %310 = call i32 @outw(i32 %305, i64 %309)
  %311 = load i32, i32* @APCI3120_ADD_ON_AGCSTS_HIGH, align 4
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 7
  %314 = load i64, i64* %313, align 8
  %315 = add nsw i64 %314, 0
  %316 = call i32 @outw(i32 %311, i64 %315)
  %317 = load i32, i32* @APCI3120_ENABLE_TRANSFER_ADD_ON_HIGH, align 4
  %318 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 7
  %320 = load i64, i64* %319, align 8
  %321 = add nsw i64 %320, 2
  %322 = call i32 @outw(i32 %317, i64 %321)
  %323 = load i32, i32* @APCI3120_A2P_FIFO_MANAGEMENT, align 4
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 6
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @AMCC_OP_REG_MCSR, align 8
  %328 = add nsw i64 %326, %327
  %329 = call i32 @outl(i32 %323, i64 %328)
  %330 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i32 0, i32 2
  %332 = load i64*, i64** %331, align 8
  %333 = getelementptr inbounds i64, i64* %332, i64 0
  %334 = load i64, i64* %333, align 8
  store i64 %334, i64* %11, align 8
  %335 = load i64, i64* %11, align 8
  %336 = and i64 %335, 65535
  store i64 %336, i64* %9, align 8
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 2
  %339 = load i64*, i64** %338, align 8
  %340 = getelementptr inbounds i64, i64* %339, i64 0
  %341 = load i64, i64* %340, align 8
  store i64 %341, i64* %11, align 8
  %342 = load i64, i64* %11, align 8
  %343 = udiv i64 %342, 65536
  store i64 %343, i64* %10, align 8
  %344 = load i32, i32* @APCI3120_ADD_ON_MWAR_LOW, align 4
  %345 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 7
  %347 = load i64, i64* %346, align 8
  %348 = add nsw i64 %347, 0
  %349 = call i32 @outw(i32 %344, i64 %348)
  %350 = load i64, i64* %9, align 8
  %351 = trunc i64 %350 to i32
  %352 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 7
  %354 = load i64, i64* %353, align 8
  %355 = add nsw i64 %354, 2
  %356 = call i32 @outw(i32 %351, i64 %355)
  %357 = load i32, i32* @APCI3120_ADD_ON_MWAR_HIGH, align 4
  %358 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %359 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %358, i32 0, i32 7
  %360 = load i64, i64* %359, align 8
  %361 = add nsw i64 %360, 0
  %362 = call i32 @outw(i32 %357, i64 %361)
  %363 = load i64, i64* %10, align 8
  %364 = trunc i64 %363 to i32
  %365 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 7
  %367 = load i64, i64* %366, align 8
  %368 = add nsw i64 %367, 2
  %369 = call i32 @outw(i32 %364, i64 %368)
  %370 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 0
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 0
  %374 = load i32, i32* %373, align 4
  %375 = zext i32 %374 to i64
  store i64 %375, i64* %11, align 8
  %376 = load i64, i64* %11, align 8
  %377 = and i64 %376, 65535
  store i64 %377, i64* %9, align 8
  %378 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 0
  %380 = load i32*, i32** %379, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 0
  %382 = load i32, i32* %381, align 4
  %383 = zext i32 %382 to i64
  store i64 %383, i64* %11, align 8
  %384 = load i64, i64* %11, align 8
  %385 = udiv i64 %384, 65536
  store i64 %385, i64* %10, align 8
  %386 = load i32, i32* @APCI3120_ADD_ON_MWTC_LOW, align 4
  %387 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %388 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %387, i32 0, i32 7
  %389 = load i64, i64* %388, align 8
  %390 = add nsw i64 %389, 0
  %391 = call i32 @outw(i32 %386, i64 %390)
  %392 = load i64, i64* %9, align 8
  %393 = trunc i64 %392 to i32
  %394 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 7
  %396 = load i64, i64* %395, align 8
  %397 = add nsw i64 %396, 2
  %398 = call i32 @outw(i32 %393, i64 %397)
  %399 = load i32, i32* @APCI3120_ADD_ON_MWTC_HIGH, align 4
  %400 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %401 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %400, i32 0, i32 7
  %402 = load i64, i64* %401, align 8
  %403 = add nsw i64 %402, 0
  %404 = call i32 @outw(i32 %399, i64 %403)
  %405 = load i64, i64* %10, align 8
  %406 = trunc i64 %405 to i32
  %407 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %408 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i32 0, i32 7
  %409 = load i64, i64* %408, align 8
  %410 = add nsw i64 %409, 2
  %411 = call i32 @outw(i32 %406, i64 %410)
  %412 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %412, i32 0, i32 7
  %414 = load i64, i64* %413, align 8
  %415 = add nsw i64 %414, 4
  %416 = call i32 @outw(i32 3, i64 %415)
  %417 = load i32, i32* @APCI3120_FIFO_ADVANCE_ON_BYTE_2, align 4
  %418 = load i32, i32* @APCI3120_ENABLE_WRITE_TC_INT, align 4
  %419 = or i32 %417, %418
  %420 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %421 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %420, i32 0, i32 6
  %422 = load i64, i64* %421, align 8
  %423 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %424 = add nsw i64 %422, %423
  %425 = call i32 @outl(i32 %419, i64 %424)
  br label %426

426:                                              ; preds = %51, %258, %288, %281
  ret void
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @i_APCI3120_StopCyclicAcquisition(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @v_APCI3120_InterruptDmaMoveBlock16bit(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
