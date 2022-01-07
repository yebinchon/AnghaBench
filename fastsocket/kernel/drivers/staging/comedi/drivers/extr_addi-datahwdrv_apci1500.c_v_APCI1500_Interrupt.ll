; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci1500.c_v_APCI1500_Interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci1500.c_v_APCI1500_Interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.comedi_device = type { i32 }

@i_InterruptMask = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI1500_RW_PORT_A_COMMAND_AND_STATUS = common dso_local global i32 0, align 4
@APCI1500_Z8536_CONTROL_REGISTER = common dso_local global i64 0, align 8
@i_Logic = common dso_local global i64 0, align 8
@APCI1500_OR_PRIORITY = common dso_local global i64 0, align 8
@APCI1500_RW_PORT_A_SPECIFICATION = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_A_INTERRUPT_CONTROL = common dso_local global i32 0, align 4
@i_InputChannel = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_B_COMMAND_AND_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"\0A\0A\0A\00", align 1
@APCI1500_Z8536_PORT_B = common dso_local global i64 0, align 8
@APCI1500_RW_CPT_TMR1_CMD_STATUS = common dso_local global i32 0, align 4
@APCI1500_RW_CPT_TMR2_CMD_STATUS = common dso_local global i32 0, align 4
@APCI1500_RW_CPT_TMR3_CMD_STATUS = common dso_local global i32 0, align 4
@i_CounterLogic = common dso_local global i64 0, align 8
@APCI1500_COUNTER = common dso_local global i64 0, align 8
@SIGIO = common dso_local global i32 0, align 4
@APCI1500_RW_MASTER_INTERRUPT_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"\0AInterrupt from unknown source\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @v_APCI1500_Interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v_APCI1500_Interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.comedi_device*
  store %struct.comedi_device* %9, %struct.comedi_device** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* @i_InterruptMask, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 56
  %14 = call i32 @inl(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 8388608
  %17 = icmp eq i32 %16, 8388608
  br i1 %17, label %18, label %300

18:                                               ; preds = %2
  %19 = load i32, i32* @APCI1500_RW_PORT_A_COMMAND_AND_STATUS, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @outb(i32 %19, i64 %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @inb(i64 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 96
  %34 = icmp eq i32 %33, 96
  br i1 %34, label %35, label %90

35:                                               ; preds = %18
  %36 = load i32, i32* @APCI1500_RW_PORT_A_COMMAND_AND_STATUS, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outb(i32 %36, i64 %41)
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 15
  %45 = or i32 %44, 32
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outb(i32 %46, i64 %51)
  %53 = load i32, i32* @i_InterruptMask, align 4
  %54 = or i32 %53, 1
  store i32 %54, i32* @i_InterruptMask, align 4
  %55 = load i64, i64* @i_Logic, align 8
  %56 = load i64, i64* @APCI1500_OR_PRIORITY, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %88

58:                                               ; preds = %35
  %59 = load i32, i32* @APCI1500_RW_PORT_A_SPECIFICATION, align 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @outb(i32 %59, i64 %64)
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @inb(i64 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @APCI1500_RW_PORT_A_INTERRUPT_CONTROL, align 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @outb(i32 %72, i64 %77)
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @inb(i64 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = ashr i32 %85, 1
  %87 = add nsw i32 1, %86
  store i32 %87, i32* @i_InputChannel, align 4
  br label %89

88:                                               ; preds = %35
  store i32 0, i32* @i_InputChannel, align 4
  br label %89

89:                                               ; preds = %88, %58
  br label %90

90:                                               ; preds = %89, %18
  %91 = load i32, i32* @APCI1500_RW_PORT_B_COMMAND_AND_STATUS, align 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @outb(i32 %91, i64 %96)
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @inb(i64 %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = and i32 %104, 96
  %106 = icmp eq i32 %105, 96
  br i1 %106, label %107, label %162

107:                                              ; preds = %90
  %108 = load i32, i32* @APCI1500_RW_PORT_B_COMMAND_AND_STATUS, align 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @outb(i32 %108, i64 %113)
  %115 = load i32, i32* %7, align 4
  %116 = and i32 %115, 15
  %117 = or i32 %116, 32
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @outb(i32 %118, i64 %123)
  %125 = call i32 @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = zext i32 %129 to i64
  %131 = load i64, i64* @APCI1500_Z8536_PORT_B, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @inb(i64 %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = and i32 %134, 192
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %107
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, 56
  %143 = call i32 @outl(i32 0, i64 %142)
  %144 = load i32, i32* %7, align 4
  %145 = and i32 %144, 128
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %138
  %148 = load i32, i32* @i_InterruptMask, align 4
  %149 = or i32 %148, 64
  store i32 %149, i32* @i_InterruptMask, align 4
  br label %150

150:                                              ; preds = %147, %138
  %151 = load i32, i32* %7, align 4
  %152 = and i32 %151, 64
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i32, i32* @i_InterruptMask, align 4
  %156 = or i32 %155, 128
  store i32 %156, i32* @i_InterruptMask, align 4
  br label %157

157:                                              ; preds = %154, %150
  br label %161

158:                                              ; preds = %107
  %159 = load i32, i32* @i_InterruptMask, align 4
  %160 = or i32 %159, 2
  store i32 %160, i32* @i_InterruptMask, align 4
  br label %161

161:                                              ; preds = %158, %157
  br label %162

162:                                              ; preds = %161, %90
  %163 = load i32, i32* @APCI1500_RW_CPT_TMR1_CMD_STATUS, align 4
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 @outb(i32 %163, i64 %168)
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @inb(i64 %174)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = and i32 %176, 96
  %178 = icmp eq i32 %177, 96
  br i1 %178, label %179, label %199

179:                                              ; preds = %162
  %180 = load i32, i32* @APCI1500_RW_CPT_TMR1_CMD_STATUS, align 4
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @outb(i32 %180, i64 %185)
  %187 = load i32, i32* %7, align 4
  %188 = and i32 %187, 15
  %189 = or i32 %188, 32
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %7, align 4
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %195 = add nsw i64 %193, %194
  %196 = call i32 @outb(i32 %190, i64 %195)
  %197 = load i32, i32* @i_InterruptMask, align 4
  %198 = or i32 %197, 4
  store i32 %198, i32* @i_InterruptMask, align 4
  br label %199

199:                                              ; preds = %179, %162
  %200 = load i32, i32* @APCI1500_RW_CPT_TMR2_CMD_STATUS, align 4
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %205 = add nsw i64 %203, %204
  %206 = call i32 @outb(i32 %200, i64 %205)
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %211 = add nsw i64 %209, %210
  %212 = call i32 @inb(i64 %211)
  store i32 %212, i32* %7, align 4
  %213 = load i32, i32* %7, align 4
  %214 = and i32 %213, 96
  %215 = icmp eq i32 %214, 96
  br i1 %215, label %216, label %236

216:                                              ; preds = %199
  %217 = load i32, i32* @APCI1500_RW_CPT_TMR2_CMD_STATUS, align 4
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %222 = add nsw i64 %220, %221
  %223 = call i32 @outb(i32 %217, i64 %222)
  %224 = load i32, i32* %7, align 4
  %225 = and i32 %224, 15
  %226 = or i32 %225, 32
  store i32 %226, i32* %7, align 4
  %227 = load i32, i32* %7, align 4
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %232 = add nsw i64 %230, %231
  %233 = call i32 @outb(i32 %227, i64 %232)
  %234 = load i32, i32* @i_InterruptMask, align 4
  %235 = or i32 %234, 8
  store i32 %235, i32* @i_InterruptMask, align 4
  br label %236

236:                                              ; preds = %216, %199
  %237 = load i32, i32* @APCI1500_RW_CPT_TMR3_CMD_STATUS, align 4
  %238 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %242 = add nsw i64 %240, %241
  %243 = call i32 @outb(i32 %237, i64 %242)
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %248 = add nsw i64 %246, %247
  %249 = call i32 @inb(i64 %248)
  store i32 %249, i32* %7, align 4
  %250 = load i32, i32* %7, align 4
  %251 = and i32 %250, 96
  %252 = icmp eq i32 %251, 96
  br i1 %252, label %253, label %281

253:                                              ; preds = %236
  %254 = load i32, i32* @APCI1500_RW_CPT_TMR3_CMD_STATUS, align 4
  %255 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %259 = add nsw i64 %257, %258
  %260 = call i32 @outb(i32 %254, i64 %259)
  %261 = load i32, i32* %7, align 4
  %262 = and i32 %261, 15
  %263 = or i32 %262, 32
  store i32 %263, i32* %7, align 4
  %264 = load i32, i32* %7, align 4
  %265 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %269 = add nsw i64 %267, %268
  %270 = call i32 @outb(i32 %264, i64 %269)
  %271 = load i64, i64* @i_CounterLogic, align 8
  %272 = load i64, i64* @APCI1500_COUNTER, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %277

274:                                              ; preds = %253
  %275 = load i32, i32* @i_InterruptMask, align 4
  %276 = or i32 %275, 16
  store i32 %276, i32* @i_InterruptMask, align 4
  br label %280

277:                                              ; preds = %253
  %278 = load i32, i32* @i_InterruptMask, align 4
  %279 = or i32 %278, 32
  store i32 %279, i32* @i_InterruptMask, align 4
  br label %280

280:                                              ; preds = %277, %274
  br label %281

281:                                              ; preds = %280, %236
  %282 = load i32, i32* @SIGIO, align 4
  %283 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @send_sig(i32 %282, i32 %285, i32 0)
  %287 = load i32, i32* @APCI1500_RW_MASTER_INTERRUPT_CONTROL, align 4
  %288 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %292 = add nsw i64 %290, %291
  %293 = call i32 @outb(i32 %287, i64 %292)
  %294 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %298 = add nsw i64 %296, %297
  %299 = call i32 @outb(i32 208, i64 %298)
  br label %302

300:                                              ; preds = %2
  %301 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %302

302:                                              ; preds = %300, %281
  ret void
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
