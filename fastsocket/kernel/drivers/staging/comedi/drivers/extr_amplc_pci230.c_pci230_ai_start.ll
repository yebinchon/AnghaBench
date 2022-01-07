; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8, i8, i16, i64, i32, i32, i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i32 }

@AI_CMD_STARTED = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@PCI230_INT_ADC = common dso_local global i8 0, align 1
@PCI230_INT_SCE = common dso_local global i64 0, align 8
@PCI230_ADC_TRIG_NONE = common dso_local global i16 0, align 2
@PCI230_ADC_TRIG_Z2CT2 = common dso_local global i16 0, align 2
@CR_EDGE = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@PCI230_ADC_TRIG_EXTP = common dso_local global i16 0, align 2
@PCI230_ADC_TRIG_EXTN = common dso_local global i16 0, align 2
@PCI230_ADC_TRIG_MASK = common dso_local global i16 0, align 2
@PCI230_ADCCON = common dso_local global i64 0, align 8
@pci230_ai_inttrig_convert = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@GAT_NOUTNM2 = common dso_local global i32 0, align 4
@GAT_VCC = common dso_local global i32 0, align 4
@PCI230_ZGAT_SCE = common dso_local global i64 0, align 8
@GAT_EXT = common dso_local global i32 0, align 4
@pci230_ai_inttrig_scan_begin = common dso_local global i32 0, align 4
@RES_Z2CT2 = common dso_local global i32 0, align 4
@OWNER_AICMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci230_ai_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci230_ai_start(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.comedi_async*, align 8
  %8 = alloca %struct.comedi_cmd*, align 8
  %9 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 0
  %12 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  store %struct.comedi_async* %12, %struct.comedi_async** %7, align 8
  %13 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %14 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %13, i32 0, i32 2
  store %struct.comedi_cmd* %14, %struct.comedi_cmd** %8, align 8
  %15 = load i32, i32* @AI_CMD_STARTED, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 7
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load i32, i32* @COMEDI_CB_EOA, align 4
  %30 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %31 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %36 = call i32 @pci230_ai_stop(%struct.comedi_device* %34, %struct.comedi_subdevice* %35)
  %37 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %39 = call i32 @comedi_event(%struct.comedi_device* %37, %struct.comedi_subdevice* %38)
  br label %233

40:                                               ; preds = %23, %2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 5
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load i8, i8* @PCI230_INT_ADC, align 1
  %46 = zext i8 %45 to i32
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i8, i8* %48, align 8
  %50 = zext i8 %49 to i32
  %51 = or i32 %50, %46
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %48, align 8
  %53 = load i8, i8* @PCI230_INT_ADC, align 1
  %54 = zext i8 %53 to i32
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %58, %54
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %56, align 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i8, i8* %62, align 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PCI230_INT_SCE, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @outb(i8 zeroext %63, i64 %68)
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 5
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %75 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  switch i32 %76, label %77 [
    i32 128, label %79
    i32 130, label %81
    i32 129, label %111
  ]

77:                                               ; preds = %40
  %78 = load i16, i16* @PCI230_ADC_TRIG_NONE, align 2
  store i16 %78, i16* %6, align 2
  br label %113

79:                                               ; preds = %40
  %80 = load i16, i16* @PCI230_ADC_TRIG_Z2CT2, align 2
  store i16 %80, i16* %6, align 2
  br label %113

81:                                               ; preds = %40
  %82 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %83 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CR_EDGE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %81
  %89 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %90 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @CR_INVERT, align 4
  %93 = and i32 %91, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i16, i16* @PCI230_ADC_TRIG_EXTP, align 2
  store i16 %96, i16* %6, align 2
  br label %99

97:                                               ; preds = %88
  %98 = load i16, i16* @PCI230_ADC_TRIG_EXTN, align 2
  store i16 %98, i16* %6, align 2
  br label %99

99:                                               ; preds = %97, %95
  br label %110

100:                                              ; preds = %81
  %101 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %102 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i16, i16* @PCI230_ADC_TRIG_EXTP, align 2
  store i16 %106, i16* %6, align 2
  br label %109

107:                                              ; preds = %100
  %108 = load i16, i16* @PCI230_ADC_TRIG_EXTN, align 2
  store i16 %108, i16* %6, align 2
  br label %109

109:                                              ; preds = %107, %105
  br label %110

110:                                              ; preds = %109, %99
  br label %113

111:                                              ; preds = %40
  %112 = load i16, i16* @PCI230_ADC_TRIG_Z2CT2, align 2
  store i16 %112, i16* %6, align 2
  br label %113

113:                                              ; preds = %111, %110, %79, %77
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load i16, i16* %115, align 2
  %117 = zext i16 %116 to i32
  %118 = load i16, i16* @PCI230_ADC_TRIG_MASK, align 2
  %119 = zext i16 %118 to i32
  %120 = xor i32 %119, -1
  %121 = and i32 %117, %120
  %122 = load i16, i16* %6, align 2
  %123 = zext i16 %122 to i32
  %124 = or i32 %121, %123
  %125 = trunc i32 %124 to i16
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 3
  store i16 %125, i16* %127, align 2
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 3
  %130 = load i16, i16* %129, align 2
  %131 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %132 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @PCI230_ADCCON, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @outw(i16 zeroext %130, i64 %135)
  %137 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %138 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 129
  br i1 %140, label %141, label %145

141:                                              ; preds = %113
  %142 = load i32, i32* @pci230_ai_inttrig_convert, align 4
  %143 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %144 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %141, %113
  %146 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %147 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %148 = call i32 @pci230_ai_update_fifo_trigger_level(%struct.comedi_device* %146, %struct.comedi_subdevice* %147)
  %149 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %150 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 128
  br i1 %152, label %153, label %221

153:                                              ; preds = %145
  %154 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %155 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @TRIG_FOLLOW, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %153
  %160 = load i32, i32* @GAT_NOUTNM2, align 4
  %161 = call zeroext i8 @GAT_CONFIG(i32 2, i32 %160)
  store i8 %161, i8* %9, align 1
  br label %165

162:                                              ; preds = %153
  %163 = load i32, i32* @GAT_VCC, align 4
  %164 = call zeroext i8 @GAT_CONFIG(i32 2, i32 %163)
  store i8 %164, i8* %9, align 1
  br label %165

165:                                              ; preds = %162, %159
  %166 = load i8, i8* %9, align 1
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @PCI230_ZGAT_SCE, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @outb(i8 zeroext %166, i64 %171)
  %173 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %174 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @TRIG_FOLLOW, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %220

178:                                              ; preds = %165
  %179 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %180 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  switch i32 %181, label %182 [
    i32 130, label %185
    i32 128, label %188
    i32 129, label %191
  ]

182:                                              ; preds = %178
  %183 = load i32, i32* @GAT_VCC, align 4
  %184 = call zeroext i8 @GAT_CONFIG(i32 0, i32 %183)
  store i8 %184, i8* %9, align 1
  br label %194

185:                                              ; preds = %178
  %186 = load i32, i32* @GAT_EXT, align 4
  %187 = call zeroext i8 @GAT_CONFIG(i32 0, i32 %186)
  store i8 %187, i8* %9, align 1
  br label %194

188:                                              ; preds = %178
  %189 = load i32, i32* @GAT_NOUTNM2, align 4
  %190 = call zeroext i8 @GAT_CONFIG(i32 0, i32 %189)
  store i8 %190, i8* %9, align 1
  br label %194

191:                                              ; preds = %178
  %192 = load i32, i32* @GAT_VCC, align 4
  %193 = call zeroext i8 @GAT_CONFIG(i32 0, i32 %192)
  store i8 %193, i8* %9, align 1
  br label %194

194:                                              ; preds = %191, %188, %185, %182
  %195 = load i8, i8* %9, align 1
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @PCI230_ZGAT_SCE, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @outb(i8 zeroext %195, i64 %200)
  %202 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %203 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  switch i32 %204, label %219 [
    i32 128, label %205
    i32 129, label %215
  ]

205:                                              ; preds = %194
  %206 = load i32, i32* @GAT_VCC, align 4
  %207 = call zeroext i8 @GAT_CONFIG(i32 1, i32 %206)
  store i8 %207, i8* %9, align 1
  %208 = load i8, i8* %9, align 1
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @PCI230_ZGAT_SCE, align 8
  %213 = add nsw i64 %211, %212
  %214 = call i32 @outb(i8 zeroext %208, i64 %213)
  br label %219

215:                                              ; preds = %194
  %216 = load i32, i32* @pci230_ai_inttrig_scan_begin, align 4
  %217 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %218 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 4
  br label %219

219:                                              ; preds = %194, %215, %205
  br label %220

220:                                              ; preds = %219, %165
  br label %232

221:                                              ; preds = %145
  %222 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %223 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 129
  br i1 %225, label %226, label %231

226:                                              ; preds = %221
  %227 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %228 = load i32, i32* @RES_Z2CT2, align 4
  %229 = load i32, i32* @OWNER_AICMD, align 4
  %230 = call i32 @put_one_resource(%struct.comedi_device* %227, i32 %228, i32 %229)
  br label %231

231:                                              ; preds = %226, %221
  br label %232

232:                                              ; preds = %231, %220
  br label %233

233:                                              ; preds = %232, %28
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @pci230_ai_stop(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local i32 @pci230_ai_update_fifo_trigger_level(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local zeroext i8 @GAT_CONFIG(i32, i32) #1

declare dso_local i32 @put_one_resource(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
