; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32*, i32 (%struct.comedi_device*, i32)*, i32 (%struct.comedi_device*, i32, i32)* }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@boardtype = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@ni_reg_611x = common dso_local global i32 0, align 4
@num_adc_stages_611x = common dso_local global i32 0, align 4
@AI_CONVERT_Pulse = common dso_local global i32 0, align 4
@AI_Command_1_Register = common dso_local global i32 0, align 4
@NI_TIMEOUT = common dso_local global i32 0, align 4
@XXX_Status = common dso_local global i32 0, align 4
@ADC_FIFO_Data_611x = common dso_local global i32 0, align 4
@AI_Status_1_Register = common dso_local global i32 0, align 4
@AI_FIFO_Empty_St = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"ni_mio_common: timeout in 611x ni_ai_insn_read\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@ni_reg_6143 = common dso_local global i32 0, align 4
@AIFIFO_Status_6143 = common dso_local global i32 0, align 4
@AIFIFO_Control_6143 = common dso_local global i32 0, align 4
@AIFIFO_Data_6143 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"ni_mio_common: timeout in 6143 ni_ai_insn_read\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"ni_mio_common: timeout in ni_ai_insn_read\0A\00", align 1
@ni_reg_m_series_mask = common dso_local global i32 0, align 4
@M_Offset_AI_FIFO_Data = common dso_local global i32 0, align 4
@ADC_FIFO_Data_Register = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 4
  %17 = shl i32 1, %16
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %12, align 4
  %19 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %21 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 1
  %22 = call i32 @ni_load_channelgain_list(%struct.comedi_device* %19, i32 1, i32* %21)
  %23 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %24 = call i32 @ni_clear_ai_fifo(%struct.comedi_device* %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 1), align 4
  %31 = load i32, i32* @ni_reg_611x, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %123

33:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %47, %33
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @num_adc_stages_611x, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %40, align 8
  %42 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %43 = load i32, i32* @AI_CONVERT_Pulse, align 4
  %44 = load i32, i32* @AI_Command_1_Register, align 4
  %45 = call i32 %41(%struct.comedi_device* %42, i32 %43, i32 %44)
  %46 = call i32 @udelay(i32 1)
  br label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %34

50:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %119, %50
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %54 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %122

57:                                               ; preds = %51
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %59, align 8
  %61 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %62 = load i32, i32* @AI_CONVERT_Pulse, align 4
  %63 = load i32, i32* @AI_Command_1_Register, align 4
  %64 = call i32 %60(%struct.comedi_device* %61, i32 %62, i32 %63)
  store i16 0, i16* %14, align 2
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %96, %57
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @NI_TIMEOUT, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %99

69:                                               ; preds = %65
  %70 = load i32, i32* @XXX_Status, align 4
  %71 = call i32 @ni_readb(i32 %70)
  %72 = and i32 %71, 128
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32, i32* @ADC_FIFO_Data_611x, align 4
  %76 = call i32 @ni_readl(i32 %75)
  %77 = lshr i32 %76, 16
  %78 = and i32 %77, 65535
  %79 = trunc i32 %78 to i16
  store i16 %79, i16* %14, align 2
  br label %99

80:                                               ; preds = %69
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32 (%struct.comedi_device*, i32)*, i32 (%struct.comedi_device*, i32)** %82, align 8
  %84 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %85 = load i32, i32* @AI_Status_1_Register, align 4
  %86 = call i32 %83(%struct.comedi_device* %84, i32 %85)
  %87 = load i32, i32* @AI_FIFO_Empty_St, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %80
  %91 = load i32, i32* @ADC_FIFO_Data_611x, align 4
  %92 = call i32 @ni_readl(i32 %91)
  %93 = and i32 %92, 65535
  %94 = trunc i32 %93 to i16
  store i16 %94, i16* %14, align 2
  br label %99

95:                                               ; preds = %80
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %65

99:                                               ; preds = %90, %74, %65
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @NI_TIMEOUT, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = call i32 @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* @ETIME, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %5, align 4
  br label %266

107:                                              ; preds = %99
  %108 = load i32, i32* %13, align 4
  %109 = load i16, i16* %14, align 2
  %110 = zext i16 %109 to i32
  %111 = add i32 %110, %108
  %112 = trunc i32 %111 to i16
  store i16 %112, i16* %14, align 2
  %113 = load i16, i16* %14, align 2
  %114 = zext i16 %113 to i32
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %114, i32* %118, align 4
  br label %119

119:                                              ; preds = %107
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %51

122:                                              ; preds = %51
  br label %262

123:                                              ; preds = %4
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 1), align 4
  %125 = load i32, i32* @ni_reg_6143, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %186

127:                                              ; preds = %123
  store i32 0, i32* %11, align 4
  br label %128

128:                                              ; preds = %182, %127
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %131 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %185

134:                                              ; preds = %128
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 2
  %137 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %136, align 8
  %138 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %139 = load i32, i32* @AI_CONVERT_Pulse, align 4
  %140 = load i32, i32* @AI_Command_1_Register, align 4
  %141 = call i32 %137(%struct.comedi_device* %138, i32 %139, i32 %140)
  store i64 0, i64* %15, align 8
  store i32 0, i32* %10, align 4
  br label %142

142:                                              ; preds = %158, %134
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* @NI_TIMEOUT, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %161

146:                                              ; preds = %142
  %147 = load i32, i32* @AIFIFO_Status_6143, align 4
  %148 = call i32 @ni_readl(i32 %147)
  %149 = and i32 %148, 1
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load i32, i32* @AIFIFO_Control_6143, align 4
  %153 = call i32 @ni_writel(i32 1, i32 %152)
  %154 = load i32, i32* @AIFIFO_Data_6143, align 4
  %155 = call i32 @ni_readl(i32 %154)
  %156 = zext i32 %155 to i64
  store i64 %156, i64* %15, align 8
  br label %161

157:                                              ; preds = %146
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %10, align 4
  br label %142

161:                                              ; preds = %151, %142
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @NI_TIMEOUT, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = call i32 @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %167 = load i32, i32* @ETIME, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %5, align 4
  br label %266

169:                                              ; preds = %161
  %170 = load i64, i64* %15, align 8
  %171 = lshr i64 %170, 16
  %172 = and i64 %171, 65535
  %173 = load i32, i32* %13, align 4
  %174 = zext i32 %173 to i64
  %175 = add i64 %172, %174
  %176 = and i64 %175, 65535
  %177 = trunc i64 %176 to i32
  %178 = load i32*, i32** %9, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32 %177, i32* %181, align 4
  br label %182

182:                                              ; preds = %169
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %11, align 4
  br label %128

185:                                              ; preds = %128
  br label %261

186:                                              ; preds = %123
  store i32 0, i32* %11, align 4
  br label %187

187:                                              ; preds = %257, %186
  %188 = load i32, i32* %11, align 4
  %189 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %190 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp slt i32 %188, %191
  br i1 %192, label %193, label %260

193:                                              ; preds = %187
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 2
  %196 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %195, align 8
  %197 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %198 = load i32, i32* @AI_CONVERT_Pulse, align 4
  %199 = load i32, i32* @AI_Command_1_Register, align 4
  %200 = call i32 %196(%struct.comedi_device* %197, i32 %198, i32 %199)
  store i32 0, i32* %10, align 4
  br label %201

201:                                              ; preds = %217, %193
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* @NI_TIMEOUT, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %220

205:                                              ; preds = %201
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 1
  %208 = load i32 (%struct.comedi_device*, i32)*, i32 (%struct.comedi_device*, i32)** %207, align 8
  %209 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %210 = load i32, i32* @AI_Status_1_Register, align 4
  %211 = call i32 %208(%struct.comedi_device* %209, i32 %210)
  %212 = load i32, i32* @AI_FIFO_Empty_St, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %205
  br label %220

216:                                              ; preds = %205
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %10, align 4
  br label %201

220:                                              ; preds = %215, %201
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* @NI_TIMEOUT, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %228

224:                                              ; preds = %220
  %225 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %226 = load i32, i32* @ETIME, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %5, align 4
  br label %266

228:                                              ; preds = %220
  %229 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 1), align 4
  %230 = load i32, i32* @ni_reg_m_series_mask, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %228
  %234 = load i32, i32* @M_Offset_AI_FIFO_Data, align 4
  %235 = call i32 @ni_readl(i32 %234)
  %236 = load i32, i32* %12, align 4
  %237 = and i32 %235, %236
  %238 = load i32*, i32** %9, align 8
  %239 = load i32, i32* %11, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  store i32 %237, i32* %241, align 4
  br label %256

242:                                              ; preds = %228
  %243 = load i32, i32* @ADC_FIFO_Data_Register, align 4
  %244 = call zeroext i16 @ni_readw(i32 %243)
  store i16 %244, i16* %14, align 2
  %245 = load i32, i32* %13, align 4
  %246 = load i16, i16* %14, align 2
  %247 = zext i16 %246 to i32
  %248 = add i32 %247, %245
  %249 = trunc i32 %248 to i16
  store i16 %249, i16* %14, align 2
  %250 = load i16, i16* %14, align 2
  %251 = zext i16 %250 to i32
  %252 = load i32*, i32** %9, align 8
  %253 = load i32, i32* %11, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  store i32 %251, i32* %255, align 4
  br label %256

256:                                              ; preds = %242, %233
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %11, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %11, align 4
  br label %187

260:                                              ; preds = %187
  br label %261

261:                                              ; preds = %260, %185
  br label %262

262:                                              ; preds = %261, %122
  %263 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %264 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  store i32 %265, i32* %5, align 4
  br label %266

266:                                              ; preds = %262, %224, %165, %103
  %267 = load i32, i32* %5, align 4
  ret i32 %267
}

declare dso_local i32 @ni_load_channelgain_list(%struct.comedi_device*, i32, i32*) #1

declare dso_local i32 @ni_clear_ai_fifo(%struct.comedi_device*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ni_readb(i32) #1

declare dso_local i32 @ni_readl(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @ni_writel(i32, i32) #1

declare dso_local zeroext i16 @ni_readw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
