; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_rinsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_rinsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i16, i64, i64 }
%struct.comedi_device = type { i64, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@AREF_DIFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"comedi%d: amplc_pci230: ai_rinsn: differential channel number out of range 0 to %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCI230_ADC_TRIG_Z2CT2 = common dso_local global i16 0, align 2
@PCI230_ADC_FIFO_EN = common dso_local global i16 0, align 2
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@PCI230_Z2_CT_BASE = common dso_local global i64 0, align 8
@I8254_MODE0 = common dso_local global i32 0, align 4
@pci230_ai_bipolar = common dso_local global i64* null, align 8
@PCI230_ADC_IM_DIF = common dso_local global i16 0, align 2
@PCI230_ADC_IM_SE = common dso_local global i16 0, align 2
@pci230_ai_gain = common dso_local global i32* null, align 8
@PCI230_ADC_IR_BIP = common dso_local global i16 0, align 2
@PCI230_ADC_IR_UNI = common dso_local global i16 0, align 2
@PCI230_ADCEN = common dso_local global i64 0, align 8
@PCI230_ADCG = common dso_local global i64 0, align 8
@PCI230_ADC_FIFO_RESET = common dso_local global i16 0, align 2
@PCI230_ADCCON = common dso_local global i64 0, align 8
@I8254_MODE1 = common dso_local global i32 0, align 4
@PCI230_ADC_FIFO_EMPTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pci230_ai_rinsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci230_ai_rinsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %20 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CR_CHAN(i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %24 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @CR_RANGE(i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %28 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @CR_AREF(i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @AREF_DIFF, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %4
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, 2
  %40 = icmp uge i32 %35, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %47, 2
  %49 = sub nsw i32 %48, 1
  %50 = call i32 @DPRINTK(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %241

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53, %4
  %55 = load i16, i16* @PCI230_ADC_TRIG_Z2CT2, align 2
  %56 = zext i16 %55 to i32
  %57 = load i16, i16* @PCI230_ADC_FIFO_EN, align 2
  %58 = zext i16 %57 to i32
  %59 = or i32 %56, %58
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %17, align 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PCI230_Z2_CT_BASE, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i32, i32* @I8254_MODE0, align 4
  %67 = call i32 @i8254_set_mode(i64 %65, i32 0, i32 2, i32 %66)
  %68 = load i64*, i64** @pci230_ai_bipolar, align 8
  %69 = load i32, i32* %13, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 4
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @AREF_DIFF, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %100

78:                                               ; preds = %54
  %79 = load i32, i32* %12, align 4
  %80 = mul i32 %79, 2
  store i32 %80, i32* %15, align 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i32, i32* %15, align 4
  %87 = shl i32 3, %86
  %88 = trunc i32 %87 to i16
  store i16 %88, i16* %18, align 2
  br label %93

89:                                               ; preds = %78
  %90 = load i32, i32* %15, align 4
  %91 = shl i32 1, %90
  %92 = trunc i32 %91 to i16
  store i16 %92, i16* %18, align 2
  br label %93

93:                                               ; preds = %89, %85
  %94 = load i16, i16* @PCI230_ADC_IM_DIF, align 2
  %95 = zext i16 %94 to i32
  %96 = load i16, i16* %17, align 2
  %97 = zext i16 %96 to i32
  %98 = or i32 %97, %95
  %99 = trunc i32 %98 to i16
  store i16 %99, i16* %17, align 2
  br label %112

100:                                              ; preds = %54
  %101 = load i32, i32* %12, align 4
  %102 = shl i32 1, %101
  %103 = trunc i32 %102 to i16
  store i16 %103, i16* %18, align 2
  %104 = load i32, i32* %12, align 4
  %105 = and i32 %104, -2
  store i32 %105, i32* %15, align 4
  %106 = load i16, i16* @PCI230_ADC_IM_SE, align 2
  %107 = zext i16 %106 to i32
  %108 = load i16, i16* %17, align 2
  %109 = zext i16 %108 to i32
  %110 = or i32 %109, %107
  %111 = trunc i32 %110 to i16
  store i16 %111, i16* %17, align 2
  br label %112

112:                                              ; preds = %100, %93
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %15, align 4
  %117 = shl i32 3, %116
  %118 = xor i32 %117, -1
  %119 = and i32 %115, %118
  %120 = load i32*, i32** @pci230_ai_gain, align 8
  %121 = load i32, i32* %13, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %15, align 4
  %126 = shl i32 %124, %125
  %127 = or i32 %119, %126
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %112
  %135 = load i16, i16* @PCI230_ADC_IR_BIP, align 2
  %136 = zext i16 %135 to i32
  %137 = load i16, i16* %17, align 2
  %138 = zext i16 %137 to i32
  %139 = or i32 %138, %136
  %140 = trunc i32 %139 to i16
  store i16 %140, i16* %17, align 2
  br label %148

141:                                              ; preds = %112
  %142 = load i16, i16* @PCI230_ADC_IR_UNI, align 2
  %143 = zext i16 %142 to i32
  %144 = load i16, i16* %17, align 2
  %145 = zext i16 %144 to i32
  %146 = or i32 %145, %143
  %147 = trunc i32 %146 to i16
  store i16 %147, i16* %17, align 2
  br label %148

148:                                              ; preds = %141, %134
  %149 = load i16, i16* %18, align 2
  %150 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %151 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @PCI230_ADCEN, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @outw(i16 zeroext %149, i64 %154)
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = trunc i32 %158 to i16
  %160 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %161 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @PCI230_ADCG, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i32 @outw(i16 zeroext %159, i64 %164)
  %166 = load i16, i16* %17, align 2
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 2
  store i16 %166, i16* %168, align 4
  %169 = load i16, i16* %17, align 2
  %170 = zext i16 %169 to i32
  %171 = load i16, i16* @PCI230_ADC_FIFO_RESET, align 2
  %172 = zext i16 %171 to i32
  %173 = or i32 %170, %172
  %174 = trunc i32 %173 to i16
  %175 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %176 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @PCI230_ADCCON, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @outw(i16 zeroext %174, i64 %179)
  store i32 0, i32* %10, align 4
  br label %181

181:                                              ; preds = %236, %148
  %182 = load i32, i32* %10, align 4
  %183 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %184 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = icmp ult i32 %182, %185
  br i1 %186, label %187, label %239

187:                                              ; preds = %181
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @PCI230_Z2_CT_BASE, align 8
  %192 = add nsw i64 %190, %191
  %193 = load i32, i32* @I8254_MODE0, align 4
  %194 = call i32 @i8254_set_mode(i64 %192, i32 0, i32 2, i32 %193)
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @PCI230_Z2_CT_BASE, align 8
  %199 = add nsw i64 %197, %198
  %200 = load i32, i32* @I8254_MODE1, align 4
  %201 = call i32 @i8254_set_mode(i64 %199, i32 0, i32 2, i32 %200)
  store i32 0, i32* %11, align 4
  br label %202

202:                                              ; preds = %219, %187
  %203 = load i32, i32* %11, align 4
  %204 = icmp ult i32 %203, 100
  br i1 %204, label %205, label %222

205:                                              ; preds = %202
  %206 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %207 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @PCI230_ADCCON, align 8
  %210 = add nsw i64 %208, %209
  %211 = call i32 @inw(i64 %210)
  store i32 %211, i32* %16, align 4
  %212 = load i32, i32* %16, align 4
  %213 = load i32, i32* @PCI230_ADC_FIFO_EMPTY, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %205
  br label %222

217:                                              ; preds = %205
  %218 = call i32 @udelay(i32 1)
  br label %219

219:                                              ; preds = %217
  %220 = load i32, i32* %11, align 4
  %221 = add i32 %220, 1
  store i32 %221, i32* %11, align 4
  br label %202

222:                                              ; preds = %216, %202
  %223 = load i32, i32* %11, align 4
  %224 = icmp eq i32 %223, 100
  br i1 %224, label %225, label %229

225:                                              ; preds = %222
  %226 = call i32 @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %227 = load i32, i32* @ETIMEDOUT, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %5, align 4
  br label %241

229:                                              ; preds = %222
  %230 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %231 = call i32 @pci230_ai_read(%struct.comedi_device* %230)
  %232 = load i32*, i32** %9, align 8
  %233 = load i32, i32* %10, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  store i32 %231, i32* %235, align 4
  br label %236

236:                                              ; preds = %229
  %237 = load i32, i32* %10, align 4
  %238 = add i32 %237, 1
  store i32 %238, i32* %10, align 4
  br label %181

239:                                              ; preds = %181
  %240 = load i32, i32* %10, align 4
  store i32 %240, i32* %5, align 4
  br label %241

241:                                              ; preds = %239, %225, %41
  %242 = load i32, i32* %5, align 4
  ret i32 %242
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @DPRINTK(i8*, i32, i32) #1

declare dso_local i32 @i8254_set_mode(i64, i32, i32, i32) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @pci230_ai_read(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
