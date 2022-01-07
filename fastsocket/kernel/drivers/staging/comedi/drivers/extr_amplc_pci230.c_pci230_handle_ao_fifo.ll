; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_handle_ao_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_handle_ao_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32* }

@PCI230_DACCON = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@PCI230P2_DAC_FIFO_UNDERRUN_LATCHED = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [17 x i8] c"AO FIFO underrun\00", align 1
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@PCI230P2_DAC_FIFO_HALF = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [19 x i8] c"AO buffer underrun\00", align 1
@PCI230P2_DAC_FIFO_FULL = common dso_local global i16 0, align 2
@PCI230P2_DAC_FIFOROOM_FULL = common dso_local global i32 0, align 4
@PCI230P2_DAC_FIFOROOM_HALFTOFULL = common dso_local global i32 0, align 4
@PCI230P2_DAC_FIFO_EMPTY = common dso_local global i16 0, align 2
@PCI230P2_DAC_FIFOROOM_EMPTY = common dso_local global i32 0, align 4
@PCI230P2_DAC_FIFOROOM_ONETOHALF = common dso_local global i32 0, align 4
@COMEDI_CB_EOS = common dso_local global i32 0, align 4
@COMEDI_CB_BLOCK = common dso_local global i32 0, align 4
@PCI230P2_DAC_INT_FIFO_MASK = common dso_local global i32 0, align 4
@PCI230P2_DAC_INT_FIFO_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci230_handle_ao_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci230_handle_ao_fifo(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.comedi_async*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 0
  %18 = load %struct.comedi_async*, %struct.comedi_async** %17, align 8
  store %struct.comedi_async* %18, %struct.comedi_async** %5, align 8
  %19 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %20 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %19, i32 0, i32 1
  store %struct.comedi_cmd* %20, %struct.comedi_cmd** %6, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PCI230_DACCON, align 8
  %25 = add nsw i64 %23, %24
  %26 = call zeroext i16 @inw(i64 %25)
  store i16 %26, i16* %9, align 2
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %28 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 2
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %34 = call i32 @comedi_buf_read_n_available(%struct.comedi_async* %33)
  %35 = load i32, i32* %12, align 4
  %36 = udiv i32 %34, %35
  store i32 %36, i32* %7, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %61, label %41

41:                                               ; preds = %2
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ugt i32 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %47, %41
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @COMEDI_CB_EOA, align 4
  %58 = load i32, i32* %13, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %56, %51
  br label %61

61:                                               ; preds = %60, %2
  %62 = load i32, i32* %13, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %98

64:                                               ; preds = %61
  %65 = load i16, i16* %9, align 2
  %66 = zext i16 %65 to i32
  %67 = load i16, i16* @PCI230P2_DAC_FIFO_UNDERRUN_LATCHED, align 2
  %68 = zext i16 %67 to i32
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %73 = call i32 @comedi_error(%struct.comedi_device* %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %75 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %13, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %71, %64
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = load i16, i16* %9, align 2
  %84 = zext i16 %83 to i32
  %85 = load i16, i16* @PCI230P2_DAC_FIFO_HALF, align 2
  %86 = zext i16 %85 to i32
  %87 = and i32 %84, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %82
  %90 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %91 = call i32 @comedi_error(%struct.comedi_device* %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %93 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %13, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %89, %82, %79
  br label %98

98:                                               ; preds = %97, %61
  %99 = load i32, i32* %13, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %239

101:                                              ; preds = %98
  %102 = load i16, i16* %9, align 2
  %103 = zext i16 %102 to i32
  %104 = load i16, i16* @PCI230P2_DAC_FIFO_FULL, align 2
  %105 = zext i16 %104 to i32
  %106 = and i32 %103, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* @PCI230P2_DAC_FIFOROOM_FULL, align 4
  store i32 %109, i32* %8, align 4
  br label %132

110:                                              ; preds = %101
  %111 = load i16, i16* %9, align 2
  %112 = zext i16 %111 to i32
  %113 = load i16, i16* @PCI230P2_DAC_FIFO_HALF, align 2
  %114 = zext i16 %113 to i32
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i32, i32* @PCI230P2_DAC_FIFOROOM_HALFTOFULL, align 4
  store i32 %118, i32* %8, align 4
  br label %131

119:                                              ; preds = %110
  %120 = load i16, i16* %9, align 2
  %121 = zext i16 %120 to i32
  %122 = load i16, i16* @PCI230P2_DAC_FIFO_EMPTY, align 2
  %123 = zext i16 %122 to i32
  %124 = and i32 %121, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i32, i32* @PCI230P2_DAC_FIFOROOM_EMPTY, align 4
  store i32 %127, i32* %8, align 4
  br label %130

128:                                              ; preds = %119
  %129 = load i32, i32* @PCI230P2_DAC_FIFOROOM_ONETOHALF, align 4
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %128, %126
  br label %131

131:                                              ; preds = %130, %117
  br label %132

132:                                              ; preds = %131, %108
  %133 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %134 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = udiv i32 %136, %135
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp ugt i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %132
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %141, %132
  store i32 0, i32* %11, align 4
  br label %144

144:                                              ; preds = %173, %143
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ult i32 %145, %146
  br i1 %147, label %148, label %176

148:                                              ; preds = %144
  store i32 0, i32* %10, align 4
  br label %149

149:                                              ; preds = %169, %148
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %152 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp ult i32 %150, %153
  br i1 %154, label %155, label %172

155:                                              ; preds = %149
  %156 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %157 = call i32 @comedi_buf_get(%struct.comedi_async* %156, i16* %15)
  %158 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %159 = load i16, i16* %15, align 2
  %160 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %161 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @CR_CHAN(i32 %166)
  %168 = call i32 @pci230_ao_write_fifo(%struct.comedi_device* %158, i16 signext %159, i32 %167)
  br label %169

169:                                              ; preds = %155
  %170 = load i32, i32* %10, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %10, align 4
  br label %149

172:                                              ; preds = %149
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %11, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %11, align 4
  br label %144

176:                                              ; preds = %144
  %177 = load i32, i32* @COMEDI_CB_EOS, align 4
  %178 = load i32, i32* @COMEDI_CB_BLOCK, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* %13, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %13, align 4
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %217, label %186

186:                                              ; preds = %176
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = sub i32 %190, %187
  store i32 %191, i32* %189, align 4
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %216

196:                                              ; preds = %186
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @PCI230P2_DAC_INT_FIFO_MASK, align 4
  %201 = xor i32 %200, -1
  %202 = and i32 %199, %201
  %203 = load i32, i32* @PCI230P2_DAC_INT_FIFO_EMPTY, align 4
  %204 = or i32 %202, %203
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %211 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @PCI230_DACCON, align 8
  %214 = add nsw i64 %212, %213
  %215 = call i32 @outw(i32 %209, i64 %214)
  br label %216

216:                                              ; preds = %196, %186
  br label %217

217:                                              ; preds = %216, %176
  %218 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %219 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @PCI230_DACCON, align 8
  %222 = add nsw i64 %220, %221
  %223 = call zeroext i16 @inw(i64 %222)
  store i16 %223, i16* %9, align 2
  %224 = load i16, i16* %9, align 2
  %225 = zext i16 %224 to i32
  %226 = load i16, i16* @PCI230P2_DAC_FIFO_UNDERRUN_LATCHED, align 2
  %227 = zext i16 %226 to i32
  %228 = and i32 %225, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %217
  %231 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %232 = call i32 @comedi_error(%struct.comedi_device* %231, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %233 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %234 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* %13, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %13, align 4
  br label %238

238:                                              ; preds = %230, %217
  br label %239

239:                                              ; preds = %238, %98
  %240 = load i32, i32* %13, align 4
  %241 = load i32, i32* @COMEDI_CB_EOA, align 4
  %242 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %243 = or i32 %241, %242
  %244 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %245 = or i32 %243, %244
  %246 = and i32 %240, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %239
  %249 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %250 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %251 = call i32 @pci230_ao_stop(%struct.comedi_device* %249, %struct.comedi_subdevice* %250)
  store i32 0, i32* %14, align 4
  br label %253

252:                                              ; preds = %239
  store i32 1, i32* %14, align 4
  br label %253

253:                                              ; preds = %252, %248
  %254 = load i32, i32* %13, align 4
  %255 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %256 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 8
  %259 = load i32, i32* %14, align 4
  ret i32 %259
}

declare dso_local zeroext i16 @inw(i64) #1

declare dso_local i32 @comedi_buf_read_n_available(%struct.comedi_async*) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @comedi_buf_get(%struct.comedi_async*, i16*) #1

declare dso_local i32 @pci230_ao_write_fifo(%struct.comedi_device*, i16 signext, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @pci230_ao_stop(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
