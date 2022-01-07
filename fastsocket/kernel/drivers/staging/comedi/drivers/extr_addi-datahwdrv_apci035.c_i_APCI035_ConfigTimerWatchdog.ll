; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci035.c_i_APCI035_ConfigTimerWatchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci035.c_i_APCI035_ConfigTimerWatchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@i_Temp = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@i_WatchdogNbr = common dso_local global i32 0, align 4
@ADDIDATA_TIMER = common dso_local global i32 0, align 4
@ADDIDATA_WATCHDOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"\0A The parameter for Timer/watchdog selection is in error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ADDIDATA_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI035_ConfigTimerWatchdog(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* @i_Temp, align 8
  %13 = load i32, i32* @current, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* @i_WatchdogNbr, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 2, i32* %12, align 4
  br label %30

29:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %29, %28
  store i32 0, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @i_WatchdogNbr, align 4
  %36 = sub nsw i32 %35, 1
  %37 = mul nsw i32 %36, 32
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %34, %38
  %40 = add nsw i64 %39, 12
  %41 = call i32 @outl(i32 %31, i64 %40)
  store i32 0, i32* %11, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @i_WatchdogNbr, align 4
  %46 = sub nsw i32 %45, 1
  %47 = mul nsw i32 %46, 32
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %44, %48
  %50 = add nsw i64 %49, 12
  %51 = call i32 @inl(i64 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @i_WatchdogNbr, align 4
  %59 = sub nsw i32 %58, 1
  %60 = mul nsw i32 %59, 32
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %57, %61
  %63 = add nsw i64 %62, 4
  %64 = call i32 @outl(i32 %54, i64 %63)
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @i_WatchdogNbr, align 4
  %72 = sub nsw i32 %71, 1
  %73 = mul nsw i32 %72, 32
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %70, %74
  %76 = add nsw i64 %75, 8
  %77 = call i32 @outl(i32 %67, i64 %76)
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ADDIDATA_TIMER, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %30
  %84 = load i32, i32* %11, align 4
  %85 = zext i32 %84 to i64
  %86 = and i64 %85, 4294384098
  %87 = load i32, i32* %12, align 4
  %88 = shl i32 %87, 13
  %89 = zext i32 %88 to i64
  %90 = or i64 %86, %89
  %91 = or i64 %90, 16
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %11, align 4
  br label %109

93:                                               ; preds = %30
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @ADDIDATA_WATCHDOG, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load i32, i32* %11, align 4
  %101 = zext i32 %100 to i64
  %102 = and i64 %101, 4294449634
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %11, align 4
  br label %108

104:                                              ; preds = %93
  %105 = call i32 @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %336

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108, %83
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* @i_WatchdogNbr, align 4
  %115 = sub nsw i32 %114, 1
  %116 = mul nsw i32 %115, 32
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %113, %117
  %119 = add nsw i64 %118, 12
  %120 = call i32 @outl(i32 %110, i64 %119)
  store i32 0, i32* %11, align 4
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* @i_WatchdogNbr, align 4
  %125 = sub nsw i32 %124, 1
  %126 = mul nsw i32 %125, 32
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %123, %127
  %129 = add nsw i64 %128, 12
  %130 = call i32 @inl(i64 %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = zext i32 %131 to i64
  %133 = and i64 %132, 4294965407
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %11, align 4
  %135 = load i32*, i32** %9, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 4
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @ADDIDATA_ENABLE, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %109
  %141 = load i32, i32* %11, align 4
  %142 = load i32*, i32** %9, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 5
  %144 = load i32, i32* %143, align 4
  %145 = shl i32 %144, 5
  %146 = or i32 %141, %145
  store i32 %146, i32* %11, align 4
  br label %147

147:                                              ; preds = %140, %109
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* @i_WatchdogNbr, align 4
  %153 = sub nsw i32 %152, 1
  %154 = mul nsw i32 %153, 32
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %151, %155
  %157 = add nsw i64 %156, 12
  %158 = call i32 @outl(i32 %148, i64 %157)
  store i32 0, i32* %11, align 4
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* @i_WatchdogNbr, align 4
  %163 = sub nsw i32 %162, 1
  %164 = mul nsw i32 %163, 32
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %161, %165
  %167 = add nsw i64 %166, 12
  %168 = call i32 @inl(i64 %167)
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %11, align 4
  %170 = zext i32 %169 to i64
  %171 = and i64 %170, 4294965375
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %11, align 4
  %173 = load i32*, i32** %9, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 6
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @ADDIDATA_ENABLE, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %147
  %179 = load i32, i32* %11, align 4
  %180 = load i32*, i32** %9, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 7
  %182 = load i32, i32* %181, align 4
  %183 = shl i32 %182, 7
  %184 = or i32 %179, %183
  store i32 %184, i32* %11, align 4
  br label %185

185:                                              ; preds = %178, %147
  %186 = load i32, i32* %11, align 4
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* @i_WatchdogNbr, align 4
  %191 = sub nsw i32 %190, 1
  %192 = mul nsw i32 %191, 32
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %189, %193
  %195 = add nsw i64 %194, 12
  %196 = call i32 @outl(i32 %186, i64 %195)
  store i32 0, i32* %11, align 4
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i32, i32* @i_WatchdogNbr, align 4
  %201 = sub nsw i32 %200, 1
  %202 = mul nsw i32 %201, 32
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %199, %203
  %205 = add nsw i64 %204, 12
  %206 = call i32 @inl(i64 %205)
  store i32 %206, i32* %11, align 4
  %207 = load i32, i32* %11, align 4
  %208 = zext i32 %207 to i64
  %209 = and i64 %208, 4294965755
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %11, align 4
  %211 = load i32, i32* %11, align 4
  %212 = load i32*, i32** %9, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 8
  %214 = load i32, i32* %213, align 4
  %215 = shl i32 %214, 2
  %216 = or i32 %211, %215
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %11, align 4
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load i32, i32* @i_WatchdogNbr, align 4
  %222 = sub nsw i32 %221, 1
  %223 = mul nsw i32 %222, 32
  %224 = sext i32 %223 to i64
  %225 = add nsw i64 %220, %224
  %226 = add nsw i64 %225, 12
  %227 = call i32 @outl(i32 %217, i64 %226)
  %228 = load i32*, i32** %9, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 9
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @ADDIDATA_ENABLE, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %260

233:                                              ; preds = %185
  %234 = load i32*, i32** %9, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 11
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load i32, i32* @i_WatchdogNbr, align 4
  %241 = sub nsw i32 %240, 1
  %242 = mul nsw i32 %241, 32
  %243 = sext i32 %242 to i64
  %244 = add nsw i64 %239, %243
  %245 = add nsw i64 %244, 24
  %246 = call i32 @outl(i32 %236, i64 %245)
  %247 = load i32*, i32** %9, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 10
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load i32, i32* @i_WatchdogNbr, align 4
  %254 = sub nsw i32 %253, 1
  %255 = mul nsw i32 %254, 32
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %252, %256
  %258 = add nsw i64 %257, 28
  %259 = call i32 @outl(i32 %249, i64 %258)
  br label %260

260:                                              ; preds = %233, %185
  store i32 0, i32* %11, align 4
  %261 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = load i32, i32* @i_WatchdogNbr, align 4
  %265 = sub nsw i32 %264, 1
  %266 = mul nsw i32 %265, 32
  %267 = sext i32 %266 to i64
  %268 = add nsw i64 %263, %267
  %269 = add nsw i64 %268, 12
  %270 = call i32 @inl(i64 %269)
  store i32 %270, i32* %11, align 4
  %271 = load i32, i32* %11, align 4
  %272 = zext i32 %271 to i64
  %273 = and i64 %272, 4294965751
  %274 = trunc i64 %273 to i32
  store i32 %274, i32* %11, align 4
  %275 = load i32, i32* %11, align 4
  %276 = load i32*, i32** %9, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 12
  %278 = load i32, i32* %277, align 4
  %279 = shl i32 %278, 3
  %280 = or i32 %275, %279
  store i32 %280, i32* %11, align 4
  %281 = load i32, i32* %11, align 4
  %282 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = load i32, i32* @i_WatchdogNbr, align 4
  %286 = sub nsw i32 %285, 1
  %287 = mul nsw i32 %286, 32
  %288 = sext i32 %287 to i64
  %289 = add nsw i64 %284, %288
  %290 = add nsw i64 %289, 12
  %291 = call i32 @outl(i32 %281, i64 %290)
  store i32 0, i32* %11, align 4
  %292 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = load i32, i32* @i_WatchdogNbr, align 4
  %296 = sub nsw i32 %295, 1
  %297 = mul nsw i32 %296, 32
  %298 = sext i32 %297 to i64
  %299 = add nsw i64 %294, %298
  %300 = add nsw i64 %299, 12
  %301 = call i32 @inl(i64 %300)
  store i32 %301, i32* %11, align 4
  %302 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = load i32, i32* @i_WatchdogNbr, align 4
  %306 = sub nsw i32 %305, 1
  %307 = mul nsw i32 %306, 32
  %308 = sext i32 %307 to i64
  %309 = add nsw i64 %304, %308
  %310 = add nsw i64 %309, 16
  %311 = call i32 @inl(i64 %310)
  store i32 %311, i32* %10, align 4
  %312 = load i32, i32* %11, align 4
  %313 = zext i32 %312 to i64
  %314 = and i64 %313, 4294965757
  %315 = load i32*, i32** %9, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 13
  %317 = load i32, i32* %316, align 4
  %318 = shl i32 %317, 1
  %319 = zext i32 %318 to i64
  %320 = or i64 %314, %319
  %321 = trunc i64 %320 to i32
  store i32 %321, i32* %11, align 4
  %322 = load i32, i32* %11, align 4
  %323 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %324 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = load i32, i32* @i_WatchdogNbr, align 4
  %327 = sub nsw i32 %326, 1
  %328 = mul nsw i32 %327, 32
  %329 = sext i32 %328 to i64
  %330 = add nsw i64 %325, %329
  %331 = add nsw i64 %330, 12
  %332 = call i32 @outl(i32 %322, i64 %331)
  %333 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %334 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  store i32 %335, i32* %5, align 4
  br label %336

336:                                              ; preds = %260, %104
  %337 = load i32, i32* %5, align 4
  ret i32 %337
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
