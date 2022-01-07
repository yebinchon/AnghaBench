; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i16, i64, i64, i64, i64 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64, i32, i64, i32, i32, i32, i32, i64, i32*, i64 }

@RES_Z2CT2 = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i64 0, align 8
@RES_Z2CT0 = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i64 0, align 8
@RES_Z2CT1 = common dso_local global i32 0, align 4
@OWNER_AICMD = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@PCI230_ADC_FIFO_EN = common dso_local global i16 0, align 2
@AREF_DIFF = common dso_local global i64 0, align 8
@PCI230_ADC_IM_DIF = common dso_local global i16 0, align 2
@PCI230_ADC_IM_SE = common dso_local global i16 0, align 2
@pci230_ai_bipolar = common dso_local global i64* null, align 8
@PCI230_ADC_IR_BIP = common dso_local global i16 0, align 2
@PCI230_ADC_IR_UNI = common dso_local global i16 0, align 2
@pci230_ai_gain = common dso_local global i32* null, align 8
@PCI230_ADCEN = common dso_local global i64 0, align 8
@PCI230_ADCG = common dso_local global i64 0, align 8
@PCI230_Z2_CT_BASE = common dso_local global i64 0, align 8
@I8254_MODE1 = common dso_local global i32 0, align 4
@PCI230_ADC_INT_FIFO_FULL = common dso_local global i16 0, align 2
@PCI230_ADC_TRIG_Z2CT2 = common dso_local global i16 0, align 2
@PCI230_ADC_FIFO_RESET = common dso_local global i16 0, align 2
@PCI230_ADCCON = common dso_local global i64 0, align 8
@GAT_GND = common dso_local global i32 0, align 4
@PCI230_ZGAT_SCE = common dso_local global i64 0, align 8
@I8254_MODE3 = common dso_local global i32 0, align 4
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@GAT_VCC = common dso_local global i32 0, align 4
@TRIG_ROUND_UP = common dso_local global i32 0, align 4
@TRIG_INT = common dso_local global i64 0, align 8
@pci230_ai_inttrig_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci230_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci230_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i8, align 1
  %14 = alloca %struct.comedi_async*, align 8
  %15 = alloca %struct.comedi_cmd*, align 8
  %16 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 0
  %19 = load %struct.comedi_async*, %struct.comedi_async** %18, align 8
  store %struct.comedi_async* %19, %struct.comedi_async** %14, align 8
  %20 = load %struct.comedi_async*, %struct.comedi_async** %14, align 8
  %21 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %20, i32 0, i32 1
  store %struct.comedi_cmd* %21, %struct.comedi_cmd** %15, align 8
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* @RES_Z2CT2, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* %10, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %10, align 4
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %15, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TRIG_FOLLOW, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %2
  %32 = load i32, i32* @RES_Z2CT0, align 4
  %33 = shl i32 1, %32
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %15, align 8
  %37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TRIG_TIMER, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load i32, i32* @RES_Z2CT1, align 4
  %43 = shl i32 1, %42
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %41, %31
  br label %47

47:                                               ; preds = %46, %2
  %48 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @OWNER_AICMD, align 4
  %51 = call i32 @get_resources(%struct.comedi_device* %48, i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %370

56:                                               ; preds = %47
  %57 = load %struct.comedi_cmd*, %struct.comedi_cmd** %15, align 8
  %58 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TRIG_COUNT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load %struct.comedi_cmd*, %struct.comedi_cmd** %15, align 8
  %64 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %63, i32 0, i32 10
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 7
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  br label %75

70:                                               ; preds = %56
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 7
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  br label %75

75:                                               ; preds = %70, %62
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 6
  store i64 0, i64* %77, align 8
  %78 = load i16, i16* @PCI230_ADC_FIFO_EN, align 2
  store i16 %78, i16* %11, align 2
  store i16 0, i16* %12, align 2
  %79 = load %struct.comedi_cmd*, %struct.comedi_cmd** %15, align 8
  %80 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %79, i32 0, i32 9
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @CR_AREF(i32 %83)
  %85 = load i64, i64* @AREF_DIFF, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %75
  store i32 1, i32* %9, align 4
  %88 = load i16, i16* @PCI230_ADC_IM_DIF, align 2
  %89 = zext i16 %88 to i32
  %90 = load i16, i16* %11, align 2
  %91 = zext i16 %90 to i32
  %92 = or i32 %91, %89
  %93 = trunc i32 %92 to i16
  store i16 %93, i16* %11, align 2
  br label %101

94:                                               ; preds = %75
  store i32 0, i32* %9, align 4
  %95 = load i16, i16* @PCI230_ADC_IM_SE, align 2
  %96 = zext i16 %95 to i32
  %97 = load i16, i16* %11, align 2
  %98 = zext i16 %97 to i32
  %99 = or i32 %98, %96
  %100 = trunc i32 %99 to i16
  store i16 %100, i16* %11, align 2
  br label %101

101:                                              ; preds = %94, %87
  %102 = load %struct.comedi_cmd*, %struct.comedi_cmd** %15, align 8
  %103 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %102, i32 0, i32 9
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @CR_RANGE(i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i64*, i64** @pci230_ai_bipolar, align 8
  %109 = load i32, i32* %8, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 5
  store i64 %112, i64* %114, align 8
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %101
  %120 = load i16, i16* @PCI230_ADC_IR_BIP, align 2
  %121 = zext i16 %120 to i32
  %122 = load i16, i16* %11, align 2
  %123 = zext i16 %122 to i32
  %124 = or i32 %123, %121
  %125 = trunc i32 %124 to i16
  store i16 %125, i16* %11, align 2
  br label %133

126:                                              ; preds = %101
  %127 = load i16, i16* @PCI230_ADC_IR_UNI, align 2
  %128 = zext i16 %127 to i32
  %129 = load i16, i16* %11, align 2
  %130 = zext i16 %129 to i32
  %131 = or i32 %130, %128
  %132 = trunc i32 %131 to i16
  store i16 %132, i16* %11, align 2
  br label %133

133:                                              ; preds = %126, %119
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %208, %133
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.comedi_cmd*, %struct.comedi_cmd** %15, align 8
  %137 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp ult i32 %135, %138
  br i1 %139, label %140, label %211

140:                                              ; preds = %134
  %141 = load %struct.comedi_cmd*, %struct.comedi_cmd** %15, align 8
  %142 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %141, i32 0, i32 9
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @CR_CHAN(i32 %147)
  store i32 %148, i32* %7, align 4
  %149 = load %struct.comedi_cmd*, %struct.comedi_cmd** %15, align 8
  %150 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %149, i32 0, i32 9
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @CR_RANGE(i32 %155)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %181

159:                                              ; preds = %140
  %160 = load i32, i32* %7, align 4
  %161 = mul i32 2, %160
  store i32 %161, i32* %16, align 4
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %159
  %167 = load i32, i32* %16, align 4
  %168 = shl i32 3, %167
  %169 = load i16, i16* %12, align 2
  %170 = zext i16 %169 to i32
  %171 = or i32 %170, %168
  %172 = trunc i32 %171 to i16
  store i16 %172, i16* %12, align 2
  br label %180

173:                                              ; preds = %159
  %174 = load i32, i32* %16, align 4
  %175 = shl i32 1, %174
  %176 = load i16, i16* %12, align 2
  %177 = zext i16 %176 to i32
  %178 = or i32 %177, %175
  %179 = trunc i32 %178 to i16
  store i16 %179, i16* %12, align 2
  br label %180

180:                                              ; preds = %173, %166
  br label %190

181:                                              ; preds = %140
  %182 = load i32, i32* %7, align 4
  %183 = and i32 %182, -2
  store i32 %183, i32* %16, align 4
  %184 = load i32, i32* %7, align 4
  %185 = shl i32 1, %184
  %186 = load i16, i16* %12, align 2
  %187 = zext i16 %186 to i32
  %188 = or i32 %187, %185
  %189 = trunc i32 %188 to i16
  store i16 %189, i16* %12, align 2
  br label %190

190:                                              ; preds = %181, %180
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %16, align 4
  %195 = shl i32 3, %194
  %196 = xor i32 %195, -1
  %197 = and i32 %193, %196
  %198 = load i32*, i32** @pci230_ai_gain, align 8
  %199 = load i32, i32* %8, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %16, align 4
  %204 = shl i32 %202, %203
  %205 = or i32 %197, %204
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 8
  br label %208

208:                                              ; preds = %190
  %209 = load i32, i32* %6, align 4
  %210 = add i32 %209, 1
  store i32 %210, i32* %6, align 4
  br label %134

211:                                              ; preds = %134
  %212 = load i16, i16* %12, align 2
  %213 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %214 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @PCI230_ADCEN, align 8
  %217 = add nsw i64 %215, %216
  %218 = call i32 @outw(i16 zeroext %212, i64 %217)
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = trunc i32 %221 to i16
  %223 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %224 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @PCI230_ADCG, align 8
  %227 = add nsw i64 %225, %226
  %228 = call i32 @outw(i16 zeroext %222, i64 %227)
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 4
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @PCI230_Z2_CT_BASE, align 8
  %233 = add nsw i64 %231, %232
  %234 = load i32, i32* @I8254_MODE1, align 4
  %235 = call i32 @i8254_set_mode(i64 %233, i32 0, i32 2, i32 %234)
  %236 = load i16, i16* @PCI230_ADC_INT_FIFO_FULL, align 2
  %237 = zext i16 %236 to i32
  %238 = load i16, i16* @PCI230_ADC_TRIG_Z2CT2, align 2
  %239 = zext i16 %238 to i32
  %240 = or i32 %237, %239
  %241 = load i16, i16* %11, align 2
  %242 = zext i16 %241 to i32
  %243 = or i32 %242, %240
  %244 = trunc i32 %243 to i16
  store i16 %244, i16* %11, align 2
  %245 = load i16, i16* %11, align 2
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 3
  store i16 %245, i16* %247, align 4
  %248 = load i16, i16* %11, align 2
  %249 = zext i16 %248 to i32
  %250 = load i16, i16* @PCI230_ADC_FIFO_RESET, align 2
  %251 = zext i16 %250 to i32
  %252 = or i32 %249, %251
  %253 = trunc i32 %252 to i16
  %254 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %255 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @PCI230_ADCCON, align 8
  %258 = add nsw i64 %256, %257
  %259 = call i32 @outw(i16 zeroext %253, i64 %258)
  %260 = call i32 @udelay(i32 25)
  %261 = load i16, i16* %11, align 2
  %262 = zext i16 %261 to i32
  %263 = load i16, i16* @PCI230_ADC_FIFO_RESET, align 2
  %264 = zext i16 %263 to i32
  %265 = or i32 %262, %264
  %266 = trunc i32 %265 to i16
  %267 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %268 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @PCI230_ADCCON, align 8
  %271 = add nsw i64 %269, %270
  %272 = call i32 @outw(i16 zeroext %266, i64 %271)
  %273 = load %struct.comedi_cmd*, %struct.comedi_cmd** %15, align 8
  %274 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %273, i32 0, i32 3
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @TRIG_TIMER, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %353

278:                                              ; preds = %211
  %279 = load i32, i32* @GAT_GND, align 4
  %280 = call zeroext i8 @GAT_CONFIG(i32 2, i32 %279)
  store i8 %280, i8* %13, align 1
  %281 = load i8, i8* %13, align 1
  %282 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 4
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @PCI230_ZGAT_SCE, align 8
  %286 = add nsw i64 %284, %285
  %287 = call i32 @outb(i8 zeroext %281, i64 %286)
  %288 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %289 = load i32, i32* @I8254_MODE3, align 4
  %290 = load %struct.comedi_cmd*, %struct.comedi_cmd** %15, align 8
  %291 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.comedi_cmd*, %struct.comedi_cmd** %15, align 8
  %294 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %293, i32 0, i32 5
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %297 = and i32 %295, %296
  %298 = call i32 @pci230_ct_setup_ns_mode(%struct.comedi_device* %288, i32 2, i32 %289, i32 %292, i32 %297)
  %299 = load %struct.comedi_cmd*, %struct.comedi_cmd** %15, align 8
  %300 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @TRIG_FOLLOW, align 8
  %303 = icmp ne i64 %301, %302
  br i1 %303, label %304, label %352

304:                                              ; preds = %278
  %305 = load i32, i32* @GAT_VCC, align 4
  %306 = call zeroext i8 @GAT_CONFIG(i32 0, i32 %305)
  store i8 %306, i8* %13, align 1
  %307 = load i8, i8* %13, align 1
  %308 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 4
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @PCI230_ZGAT_SCE, align 8
  %312 = add nsw i64 %310, %311
  %313 = call i32 @outb(i8 zeroext %307, i64 %312)
  %314 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %315 = load i32, i32* @I8254_MODE1, align 4
  %316 = load %struct.comedi_cmd*, %struct.comedi_cmd** %15, align 8
  %317 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.comedi_cmd*, %struct.comedi_cmd** %15, align 8
  %320 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %319, i32 0, i32 6
  %321 = load i32, i32* %320, align 8
  %322 = mul nsw i32 %318, %321
  %323 = load i32, i32* @TRIG_ROUND_UP, align 4
  %324 = call i32 @pci230_ct_setup_ns_mode(%struct.comedi_device* %314, i32 0, i32 %315, i32 %322, i32 %323)
  %325 = load %struct.comedi_cmd*, %struct.comedi_cmd** %15, align 8
  %326 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @TRIG_TIMER, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %351

330:                                              ; preds = %304
  %331 = load i32, i32* @GAT_GND, align 4
  %332 = call zeroext i8 @GAT_CONFIG(i32 1, i32 %331)
  store i8 %332, i8* %13, align 1
  %333 = load i8, i8* %13, align 1
  %334 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %335 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i32 0, i32 4
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @PCI230_ZGAT_SCE, align 8
  %338 = add nsw i64 %336, %337
  %339 = call i32 @outb(i8 zeroext %333, i64 %338)
  %340 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %341 = load i32, i32* @I8254_MODE3, align 4
  %342 = load %struct.comedi_cmd*, %struct.comedi_cmd** %15, align 8
  %343 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %342, i32 0, i32 7
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.comedi_cmd*, %struct.comedi_cmd** %15, align 8
  %346 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %345, i32 0, i32 5
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %349 = and i32 %347, %348
  %350 = call i32 @pci230_ct_setup_ns_mode(%struct.comedi_device* %340, i32 1, i32 %341, i32 %344, i32 %349)
  br label %351

351:                                              ; preds = %330, %304
  br label %352

352:                                              ; preds = %351, %278
  br label %353

353:                                              ; preds = %352, %211
  %354 = load %struct.comedi_cmd*, %struct.comedi_cmd** %15, align 8
  %355 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %354, i32 0, i32 8
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @TRIG_INT, align 8
  %358 = icmp eq i64 %356, %357
  br i1 %358, label %359, label %365

359:                                              ; preds = %353
  %360 = load i32, i32* @pci230_ai_inttrig_start, align 4
  %361 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %362 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %361, i32 0, i32 0
  %363 = load %struct.comedi_async*, %struct.comedi_async** %362, align 8
  %364 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %363, i32 0, i32 0
  store i32 %360, i32* %364, align 8
  br label %369

365:                                              ; preds = %353
  %366 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %367 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %368 = call i32 @pci230_ai_start(%struct.comedi_device* %366, %struct.comedi_subdevice* %367)
  br label %369

369:                                              ; preds = %365, %359
  store i32 0, i32* %3, align 4
  br label %370

370:                                              ; preds = %369, %53
  %371 = load i32, i32* %3, align 4
  ret i32 %371
}

declare dso_local i32 @get_resources(%struct.comedi_device*, i32, i32) #1

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local i32 @i8254_set_mode(i64, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local zeroext i8 @GAT_CONFIG(i32, i32) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @pci230_ct_setup_ns_mode(%struct.comedi_device*, i32, i32, i32, i32) #1

declare dso_local i32 @pci230_ai_start(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
