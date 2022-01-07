; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1500.c_i_APCI1500_StartStopInputEvent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1500.c_i_APCI1500_StartStopInputEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@i_Event1Status = common dso_local global i32 0, align 4
@APCI1500_RW_MASTER_CONFIGURATION_CONTROL = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI1500_Z8536_CONTROL_REGISTER = common dso_local global i64 0, align 8
@APCI1500_RW_PORT_A_COMMAND_AND_STATUS = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_A_SPECIFICATION = common dso_local global i32 0, align 4
@APCI1500_RW_MASTER_INTERRUPT_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"\0AEvent 1 not initialised\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@i_Event2Status = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_B_COMMAND_AND_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"\0AEvent 2 not initialised\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\0AThe port parameter is in error\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"\0AThe option of START/STOP logic does not exist\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1500_StartStopInputEvent(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %13 = load i32*, i32** %9, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %299 [
    i32 129, label %16
    i32 128, label %177
  ]

16:                                               ; preds = %4
  %17 = load i32*, i32** %9, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %172

26:                                               ; preds = %21, %16
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %105

31:                                               ; preds = %26
  %32 = load i32, i32* @i_Event1Status, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %100

34:                                               ; preds = %31
  %35 = load i32, i32* @APCI1500_RW_MASTER_CONFIGURATION_CONTROL, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @outb(i32 %35, i64 %40)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @outb(i32 240, i64 %46)
  %48 = load i32, i32* @APCI1500_RW_PORT_A_COMMAND_AND_STATUS, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @outb(i32 %48, i64 %53)
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @outb(i32 192, i64 %59)
  %61 = load i32, i32* @APCI1500_RW_MASTER_CONFIGURATION_CONTROL, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @outb(i32 %61, i64 %66)
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @outb(i32 244, i64 %72)
  store i32 1, i32* %10, align 4
  %74 = load i32, i32* @APCI1500_RW_PORT_A_SPECIFICATION, align 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @outb(i32 %74, i64 %79)
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @inb(i64 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* @APCI1500_RW_MASTER_INTERRUPT_CONTROL, align 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @outb(i32 %87, i64 %92)
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @outb(i32 208, i64 %98)
  br label %104

100:                                              ; preds = %31
  %101 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %307

104:                                              ; preds = %34
  br label %105

105:                                              ; preds = %104, %26
  %106 = load i32*, i32** %9, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %110, label %171

110:                                              ; preds = %105
  %111 = load i32, i32* @i_Event2Status, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %166

113:                                              ; preds = %110
  %114 = load i32, i32* @APCI1500_RW_MASTER_CONFIGURATION_CONTROL, align 4
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @outb(i32 %114, i64 %119)
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @outb(i32 116, i64 %125)
  %127 = load i32, i32* @APCI1500_RW_PORT_B_COMMAND_AND_STATUS, align 4
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @outb(i32 %127, i64 %132)
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @outb(i32 192, i64 %138)
  %140 = load i32, i32* @APCI1500_RW_MASTER_CONFIGURATION_CONTROL, align 4
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @outb(i32 %140, i64 %145)
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @outb(i32 244, i64 %151)
  %153 = load i32, i32* @APCI1500_RW_MASTER_INTERRUPT_CONTROL, align 4
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @outb(i32 %153, i64 %158)
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i32 @outb(i32 208, i64 %164)
  store i32 1, i32* %11, align 4
  br label %170

166:                                              ; preds = %110
  %167 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %5, align 4
  br label %307

170:                                              ; preds = %113
  br label %171

171:                                              ; preds = %170, %105
  br label %176

172:                                              ; preds = %21
  %173 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %5, align 4
  br label %307

176:                                              ; preds = %171
  br label %303

177:                                              ; preds = %4
  %178 = load i32*, i32** %9, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %187, label %182

182:                                              ; preds = %177
  %183 = load i32*, i32** %9, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 2
  br i1 %186, label %187, label %294

187:                                              ; preds = %182, %177
  %188 = load i32*, i32** %9, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %192, label %240

192:                                              ; preds = %187
  %193 = load i32, i32* @i_Event1Status, align 4
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %235

195:                                              ; preds = %192
  %196 = load i32, i32* @APCI1500_RW_MASTER_CONFIGURATION_CONTROL, align 4
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 @outb(i32 %196, i64 %201)
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %207 = add nsw i64 %205, %206
  %208 = call i32 @outb(i32 240, i64 %207)
  %209 = load i32, i32* @APCI1500_RW_PORT_A_COMMAND_AND_STATUS, align 4
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %214 = add nsw i64 %212, %213
  %215 = call i32 @outb(i32 %209, i64 %214)
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %220 = add nsw i64 %218, %219
  %221 = call i32 @outb(i32 224, i64 %220)
  %222 = load i32, i32* @APCI1500_RW_MASTER_CONFIGURATION_CONTROL, align 4
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %227 = add nsw i64 %225, %226
  %228 = call i32 @outb(i32 %222, i64 %227)
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %233 = add nsw i64 %231, %232
  %234 = call i32 @outb(i32 244, i64 %233)
  store i32 0, i32* %10, align 4
  br label %239

235:                                              ; preds = %192
  %236 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %237 = load i32, i32* @EINVAL, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %5, align 4
  br label %307

239:                                              ; preds = %195
  br label %240

240:                                              ; preds = %239, %187
  %241 = load i32*, i32** %9, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 1
  %243 = load i32, i32* %242, align 4
  %244 = icmp eq i32 %243, 2
  br i1 %244, label %245, label %293

245:                                              ; preds = %240
  %246 = load i32, i32* @i_Event2Status, align 4
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %248, label %288

248:                                              ; preds = %245
  %249 = load i32, i32* @APCI1500_RW_MASTER_CONFIGURATION_CONTROL, align 4
  %250 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %254 = add nsw i64 %252, %253
  %255 = call i32 @outb(i32 %249, i64 %254)
  %256 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %260 = add nsw i64 %258, %259
  %261 = call i32 @outb(i32 116, i64 %260)
  %262 = load i32, i32* @APCI1500_RW_PORT_B_COMMAND_AND_STATUS, align 4
  %263 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %267 = add nsw i64 %265, %266
  %268 = call i32 @outb(i32 %262, i64 %267)
  %269 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %273 = add nsw i64 %271, %272
  %274 = call i32 @outb(i32 224, i64 %273)
  %275 = load i32, i32* @APCI1500_RW_MASTER_CONFIGURATION_CONTROL, align 4
  %276 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %280 = add nsw i64 %278, %279
  %281 = call i32 @outb(i32 %275, i64 %280)
  %282 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %286 = add nsw i64 %284, %285
  %287 = call i32 @outb(i32 244, i64 %286)
  store i32 0, i32* %11, align 4
  br label %292

288:                                              ; preds = %245
  %289 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %290 = load i32, i32* @EINVAL, align 4
  %291 = sub nsw i32 0, %290
  store i32 %291, i32* %5, align 4
  br label %307

292:                                              ; preds = %248
  br label %293

293:                                              ; preds = %292, %240
  br label %298

294:                                              ; preds = %182
  %295 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %296 = load i32, i32* @EINVAL, align 4
  %297 = sub nsw i32 0, %296
  store i32 %297, i32* %5, align 4
  br label %307

298:                                              ; preds = %293
  br label %303

299:                                              ; preds = %4
  %300 = call i32 @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %301 = load i32, i32* @EINVAL, align 4
  %302 = sub nsw i32 0, %301
  store i32 %302, i32* %5, align 4
  br label %307

303:                                              ; preds = %298, %176
  %304 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %305 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* %5, align 4
  br label %307

307:                                              ; preds = %303, %299, %294, %288, %235, %172, %166, %100
  %308 = load i32, i32* %5, align 4
  ret i32 %308
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
