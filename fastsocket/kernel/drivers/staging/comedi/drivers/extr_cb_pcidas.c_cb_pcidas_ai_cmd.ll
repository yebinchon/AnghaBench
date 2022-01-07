; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i64, i32, i64, i32, i64, i32, i32, i32* }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@CALIBRATION_REG = common dso_local global i64 0, align 8
@TRIG_CONTSTAT = common dso_local global i64 0, align 8
@ADCFIFOCLR = common dso_local global i64 0, align 8
@IS_UNIPOLAR = common dso_local global i32 0, align 4
@UNIP = common dso_local global i32 0, align 4
@AREF_DIFF = common dso_local global i64 0, align 8
@SE = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i64 0, align 8
@PACER_EXT_RISE = common dso_local global i32 0, align 4
@PACER_INT = common dso_local global i32 0, align 4
@ADCMUX_CONT = common dso_local global i64 0, align 8
@TRIG_TIMER = common dso_local global i64 0, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@INTE = common dso_local global i32 0, align 4
@INT_MASK = common dso_local global i32 0, align 4
@TRIG_WAKE_EOS = common dso_local global i32 0, align 4
@TRIG_NOW = common dso_local global i64 0, align 8
@INT_EOS = common dso_local global i32 0, align 4
@INT_FNE = common dso_local global i32 0, align 4
@INT_FHF = common dso_local global i32 0, align 4
@EOAI = common dso_local global i32 0, align 4
@INT = common dso_local global i32 0, align 4
@LADFUL = common dso_local global i32 0, align 4
@INT_ADCFIFO = common dso_local global i64 0, align 8
@SW_TRIGGER = common dso_local global i32 0, align 4
@EXT_TRIGGER = common dso_local global i32 0, align 4
@TGEN = common dso_local global i32 0, align 4
@XTRCL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"bug!\00", align 1
@BURSTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @cb_pcidas_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidas_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_async*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 0
  %12 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  store %struct.comedi_async* %12, %struct.comedi_async** %6, align 8
  %13 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %13, i32 0, i32 0
  store %struct.comedi_cmd* %14, %struct.comedi_cmd** %7, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CALIBRATION_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @outw(i32 0, i64 %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TRIG_CONTSTAT, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outw(i32 0, i64 %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ADCFIFOCLR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outw(i32 0, i64 %31)
  %33 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %34 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %33, i32 0, i32 9
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @CR_CHAN(i32 %37)
  %39 = call i32 @BEGIN_SCAN(i32 %38)
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %41 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 9
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %44 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @CR_CHAN(i32 %49)
  %51 = call i32 @END_SCAN(i32 %50)
  %52 = or i32 %39, %51
  %53 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %54 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %53, i32 0, i32 9
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @CR_RANGE(i32 %57)
  %59 = call i32 @GAIN_BITS(i32 %58)
  %60 = or i32 %52, %59
  store i32 %60, i32* %8, align 4
  %61 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %62 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %61, i32 0, i32 9
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @CR_RANGE(i32 %65)
  %67 = load i32, i32* @IS_UNIPOLAR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %2
  %71 = load i32, i32* @UNIP, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %70, %2
  %75 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %76 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %75, i32 0, i32 9
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @CR_AREF(i32 %79)
  %81 = load i64, i64* @AREF_DIFF, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load i32, i32* @SE, align 4
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %83, %74
  %88 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %89 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @TRIG_EXT, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @TRIG_EXT, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93, %87
  %100 = load i32, i32* @PACER_EXT_RISE, align 4
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %8, align 4
  br label %107

103:                                              ; preds = %93
  %104 = load i32, i32* @PACER_INT, align 4
  %105 = load i32, i32* %8, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %103, %99
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @ADCMUX_CONT, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @outw(i32 %108, i64 %113)
  %115 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %116 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @TRIG_TIMER, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %107
  %121 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %122 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %123 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %122, i32 0, i32 8
  %124 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %125 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %128 = and i32 %126, %127
  %129 = call i32 @cb_pcidas_load_counters(%struct.comedi_device* %121, i32* %123, i32 %128)
  br label %147

130:                                              ; preds = %107
  %131 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %132 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @TRIG_TIMER, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %130
  %137 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %138 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %139 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %138, i32 0, i32 7
  %140 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %141 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %144 = and i32 %142, %143
  %145 = call i32 @cb_pcidas_load_counters(%struct.comedi_device* %137, i32* %139, i32 %144)
  br label %146

146:                                              ; preds = %136, %130
  br label %147

147:                                              ; preds = %146, %120
  %148 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %149 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @TRIG_COUNT, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %163

153:                                              ; preds = %147
  %154 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %155 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %158 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = mul nsw i32 %156, %159
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %153, %147
  %164 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %165 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %164, i32 0, i32 0
  %166 = load i64, i64* %9, align 8
  %167 = call i32 @spin_lock_irqsave(i32* %165, i64 %166)
  %168 = load i32, i32* @INTE, align 4
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 4
  %173 = load i32, i32* @INT_MASK, align 4
  %174 = xor i32 %173, -1
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, %174
  store i32 %178, i32* %176, align 4
  %179 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %180 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %209

185:                                              ; preds = %163
  %186 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %187 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @TRIG_NOW, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %202

191:                                              ; preds = %185
  %192 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %193 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp sgt i32 %194, 1
  br i1 %195, label %196, label %202

196:                                              ; preds = %191
  %197 = load i32, i32* @INT_EOS, align 4
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 4
  br label %208

202:                                              ; preds = %191, %185
  %203 = load i32, i32* @INT_FNE, align 4
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %202, %196
  br label %215

209:                                              ; preds = %163
  %210 = load i32, i32* @INT_FHF, align 4
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %209, %208
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @EOAI, align 4
  %220 = or i32 %218, %219
  %221 = load i32, i32* @INT, align 4
  %222 = or i32 %220, %221
  %223 = load i32, i32* @LADFUL, align 4
  %224 = or i32 %222, %223
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @INT_ADCFIFO, align 8
  %229 = add nsw i64 %227, %228
  %230 = call i32 @outw(i32 %224, i64 %229)
  %231 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %232 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %231, i32 0, i32 0
  %233 = load i64, i64* %9, align 8
  %234 = call i32 @spin_unlock_irqrestore(i32* %232, i64 %233)
  store i32 0, i32* %8, align 4
  %235 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %236 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %235, i32 0, i32 6
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @TRIG_NOW, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %244

240:                                              ; preds = %215
  %241 = load i32, i32* @SW_TRIGGER, align 4
  %242 = load i32, i32* %8, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %8, align 4
  br label %262

244:                                              ; preds = %215
  %245 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %246 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %245, i32 0, i32 6
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @TRIG_EXT, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %258

250:                                              ; preds = %244
  %251 = load i32, i32* @EXT_TRIGGER, align 4
  %252 = load i32, i32* @TGEN, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @XTRCL, align 4
  %255 = or i32 %253, %254
  %256 = load i32, i32* %8, align 4
  %257 = or i32 %256, %255
  store i32 %257, i32* %8, align 4
  br label %261

258:                                              ; preds = %244
  %259 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %260 = call i32 @comedi_error(%struct.comedi_device* %259, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %285

261:                                              ; preds = %250
  br label %262

262:                                              ; preds = %261, %240
  %263 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %264 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @TRIG_NOW, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %277

268:                                              ; preds = %262
  %269 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %270 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp sgt i32 %271, 1
  br i1 %272, label %273, label %277

273:                                              ; preds = %268
  %274 = load i32, i32* @BURSTE, align 4
  %275 = load i32, i32* %8, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %8, align 4
  br label %277

277:                                              ; preds = %273, %268, %262
  %278 = load i32, i32* %8, align 4
  %279 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @TRIG_CONTSTAT, align 8
  %283 = add nsw i64 %281, %282
  %284 = call i32 @outw(i32 %278, i64 %283)
  store i32 0, i32* %3, align 4
  br label %285

285:                                              ; preds = %277, %258
  %286 = load i32, i32* %3, align 4
  ret i32 %286
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @BEGIN_SCAN(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @END_SCAN(i32) #1

declare dso_local i32 @GAIN_BITS(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @cb_pcidas_load_counters(%struct.comedi_device*, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
