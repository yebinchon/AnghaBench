; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1564.c_i_APCI1564_ConfigTimerCounterWatchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1564.c_i_APCI1564_ConfigTimerCounterWatchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@current = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@ADDIDATA_WATCHDOG = common dso_local global i32 0, align 4
@APCI1564_DIGITAL_OP_WATCHDOG = common dso_local global i64 0, align 8
@APCI1564_TCW_PROG = common dso_local global i64 0, align 8
@APCI1564_TCW_RELOAD_VALUE = common dso_local global i64 0, align 8
@ADDIDATA_TIMER = common dso_local global i32 0, align 4
@APCI1564_TIMER = common dso_local global i64 0, align 8
@APCI1564_DIGITAL_IP = common dso_local global i64 0, align 8
@APCI1564_DIGITAL_IP_IRQ = common dso_local global i64 0, align 8
@APCI1564_DIGITAL_OP = common dso_local global i64 0, align 8
@APCI1564_DIGITAL_OP_IRQ = common dso_local global i64 0, align 8
@APCI1564_TCW_IRQ = common dso_local global i64 0, align 8
@APCI1564_COUNTER1 = common dso_local global i64 0, align 8
@APCI1564_COUNTER2 = common dso_local global i64 0, align 8
@APCI1564_COUNTER3 = common dso_local global i64 0, align 8
@APCI1564_COUNTER4 = common dso_local global i64 0, align 8
@APCI1564_TCW_TIMEBASE = common dso_local global i64 0, align 8
@ADDIDATA_COUNTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c" Invalid subdevice.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1564_ConfigTimerCounterWatchdog(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @current, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ADDIDATA_WATCHDOG, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %4
  %19 = load i32, i32* @ADDIDATA_WATCHDOG, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @APCI1564_DIGITAL_OP_WATCHDOG, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outl(i32 0, i64 %28)
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @APCI1564_DIGITAL_OP_WATCHDOG, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* @APCI1564_TCW_RELOAD_VALUE, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outl(i32 %32, i64 %39)
  br label %332

41:                                               ; preds = %4
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ADDIDATA_TIMER, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %196

47:                                               ; preds = %41
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @APCI1564_TIMER, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @inl(i64 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = and i64 %57, 4294965758
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @APCI1564_TIMER, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @outl(i32 %60, i64 %67)
  %69 = load i32, i32* @ADDIDATA_TIMER, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %141

76:                                               ; preds = %47
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @APCI1564_TIMER, align 8
  %81 = add nsw i64 %79, %80
  %82 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @outl(i32 2, i64 %83)
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @APCI1564_DIGITAL_IP, align 8
  %89 = add nsw i64 %87, %88
  %90 = load i64, i64* @APCI1564_DIGITAL_IP_IRQ, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @outl(i32 0, i64 %91)
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @APCI1564_DIGITAL_OP, align 8
  %97 = add nsw i64 %95, %96
  %98 = load i64, i64* @APCI1564_DIGITAL_OP_IRQ, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @outl(i32 0, i64 %99)
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @APCI1564_DIGITAL_OP_WATCHDOG, align 8
  %105 = add nsw i64 %103, %104
  %106 = load i64, i64* @APCI1564_TCW_IRQ, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @outl(i32 0, i64 %107)
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @APCI1564_COUNTER1, align 8
  %113 = add nsw i64 %111, %112
  %114 = load i64, i64* @APCI1564_TCW_IRQ, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @outl(i32 0, i64 %115)
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @APCI1564_COUNTER2, align 8
  %121 = add nsw i64 %119, %120
  %122 = load i64, i64* @APCI1564_TCW_IRQ, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @outl(i32 0, i64 %123)
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @APCI1564_COUNTER3, align 8
  %129 = add nsw i64 %127, %128
  %130 = load i64, i64* @APCI1564_TCW_IRQ, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @outl(i32 0, i64 %131)
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @APCI1564_COUNTER4, align 8
  %137 = add nsw i64 %135, %136
  %138 = load i64, i64* @APCI1564_TCW_IRQ, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @outl(i32 0, i64 %139)
  br label %150

141:                                              ; preds = %47
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @APCI1564_TIMER, align 8
  %146 = add nsw i64 %144, %145
  %147 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @outl(i32 0, i64 %148)
  br label %150

150:                                              ; preds = %141, %76
  %151 = load i32*, i32** %8, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @APCI1564_TIMER, align 8
  %158 = add nsw i64 %156, %157
  %159 = load i64, i64* @APCI1564_TCW_TIMEBASE, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @outl(i32 %153, i64 %160)
  %162 = load i32*, i32** %8, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @APCI1564_TIMER, align 8
  %169 = add nsw i64 %167, %168
  %170 = load i64, i64* @APCI1564_TCW_RELOAD_VALUE, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @outl(i32 %164, i64 %171)
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @APCI1564_TIMER, align 8
  %177 = add nsw i64 %175, %176
  %178 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @inl(i64 %179)
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* %9, align 4
  %182 = zext i32 %181 to i64
  %183 = and i64 %182, 4294384098
  %184 = or i64 %183, 16384
  %185 = or i64 %184, 16
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %9, align 4
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @APCI1564_TIMER, align 8
  %192 = add nsw i64 %190, %191
  %193 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @outl(i32 %187, i64 %194)
  br label %331

196:                                              ; preds = %41
  %197 = load i32*, i32** %8, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @ADDIDATA_COUNTER, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %328

202:                                              ; preds = %196
  %203 = load i32, i32* @ADDIDATA_COUNTER, align 4
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load i32*, i32** %8, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 5
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 4
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = load i32*, i32** %8, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 5
  %216 = load i32, i32* %215, align 4
  %217 = sub i32 %216, 1
  %218 = mul i32 %217, 32
  %219 = zext i32 %218 to i64
  %220 = add nsw i64 %213, %219
  %221 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %222 = add nsw i64 %220, %221
  %223 = call i32 @inl(i64 %222)
  store i32 %223, i32* %9, align 4
  %224 = load i32, i32* %9, align 4
  %225 = zext i32 %224 to i64
  %226 = and i64 %225, 4294965758
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %9, align 4
  %228 = load i32, i32* %9, align 4
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = load i32*, i32** %8, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 5
  %234 = load i32, i32* %233, align 4
  %235 = sub i32 %234, 1
  %236 = mul i32 %235, 32
  %237 = zext i32 %236 to i64
  %238 = add nsw i64 %231, %237
  %239 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %240 = add nsw i64 %238, %239
  %241 = call i32 @outl(i32 %228, i64 %240)
  %242 = load i32*, i32** %8, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 3
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = load i32*, i32** %8, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 5
  %250 = load i32, i32* %249, align 4
  %251 = sub i32 %250, 1
  %252 = mul i32 %251, 32
  %253 = zext i32 %252 to i64
  %254 = add nsw i64 %247, %253
  %255 = load i64, i64* @APCI1564_TCW_RELOAD_VALUE, align 8
  %256 = add nsw i64 %254, %255
  %257 = call i32 @outl(i32 %244, i64 %256)
  %258 = load i32, i32* %9, align 4
  %259 = zext i32 %258 to i64
  %260 = and i64 %259, 4294711778
  %261 = or i64 %260, 524288
  %262 = load i32*, i32** %8, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 4
  %264 = load i32, i32* %263, align 4
  %265 = shl i32 %264, 16
  %266 = zext i32 %265 to i64
  %267 = or i64 %261, %266
  %268 = trunc i64 %267 to i32
  store i32 %268, i32* %9, align 4
  %269 = load i32, i32* %9, align 4
  %270 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = load i32*, i32** %8, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 5
  %275 = load i32, i32* %274, align 4
  %276 = sub i32 %275, 1
  %277 = mul i32 %276, 32
  %278 = zext i32 %277 to i64
  %279 = add nsw i64 %272, %278
  %280 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %281 = add nsw i64 %279, %280
  %282 = call i32 @outl(i32 %269, i64 %281)
  %283 = load i32, i32* %9, align 4
  %284 = and i32 %283, -1539
  %285 = load i32*, i32** %8, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 1
  %287 = load i32, i32* %286, align 4
  %288 = shl i32 %287, 1
  %289 = or i32 %284, %288
  store i32 %289, i32* %9, align 4
  %290 = load i32, i32* %9, align 4
  %291 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = load i32*, i32** %8, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 5
  %296 = load i32, i32* %295, align 4
  %297 = sub i32 %296, 1
  %298 = mul i32 %297, 32
  %299 = zext i32 %298 to i64
  %300 = add nsw i64 %293, %299
  %301 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %302 = add nsw i64 %300, %301
  %303 = call i32 @outl(i32 %290, i64 %302)
  %304 = load i32, i32* %9, align 4
  %305 = zext i32 %304 to i64
  %306 = and i64 %305, 4294703615
  %307 = load i32*, i32** %8, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 6
  %309 = load i32, i32* %308, align 4
  %310 = shl i32 %309, 18
  %311 = zext i32 %310 to i64
  %312 = or i64 %306, %311
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* %9, align 4
  %314 = load i32, i32* %9, align 4
  %315 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %316 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %315, i32 0, i32 2
  %317 = load i64, i64* %316, align 8
  %318 = load i32*, i32** %8, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 5
  %320 = load i32, i32* %319, align 4
  %321 = sub i32 %320, 1
  %322 = mul i32 %321, 32
  %323 = zext i32 %322 to i64
  %324 = add nsw i64 %317, %323
  %325 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %326 = add nsw i64 %324, %325
  %327 = call i32 @outl(i32 %314, i64 %326)
  br label %330

328:                                              ; preds = %196
  %329 = call i32 @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %330

330:                                              ; preds = %328, %202
  br label %331

331:                                              ; preds = %330, %150
  br label %332

332:                                              ; preds = %331, %18
  %333 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %334 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  ret i32 %335
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
