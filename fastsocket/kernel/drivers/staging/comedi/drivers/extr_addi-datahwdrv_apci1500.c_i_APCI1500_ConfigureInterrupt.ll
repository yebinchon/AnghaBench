; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci1500.c_i_APCI1500_ConfigureInterrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci1500.c_i_APCI1500_ConfigureInterrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@current = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [80 x i8] c"\0AThe parameter passed to driver is in error for enabling the voltage interrupt\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_B_SPECIFICATION = common dso_local global i32 0, align 4
@APCI1500_Z8536_CONTROL_REGISTER = common dso_local global i64 0, align 8
@APCI1500_OR = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_B_COMMAND_AND_STATUS = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_B_PATTERN_POLARITY = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_B_PATTERN_TRANSITION = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_B_PATTERN_MASK = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_A_COMMAND_AND_STATUS = common dso_local global i32 0, align 4
@APCI1500_RW_CPT_TMR1_CMD_STATUS = common dso_local global i32 0, align 4
@APCI1500_RW_CPT_TMR2_CMD_STATUS = common dso_local global i32 0, align 4
@APCI1500_RW_CPT_TMR3_CMD_STATUS = common dso_local global i32 0, align 4
@APCI1500_RW_MASTER_INTERRUPT_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1500_ConfigureInterrupt(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %13 = load i32, i32* @current, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 56
  %20 = call i32 @outl(i32 0, i64 %19)
  %21 = load i32*, i32** %9, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 192, i32* %12, align 4
  br label %37

26:                                               ; preds = %4
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %12, align 4
  br label %36

32:                                               ; preds = %26
  %33 = call i32 @printk(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %310

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i32, i32* @APCI1500_RW_PORT_B_SPECIFICATION, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outb(i32 %38, i64 %43)
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @inb(i64 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* @APCI1500_RW_PORT_B_SPECIFICATION, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outb(i32 %51, i64 %56)
  %58 = load i32, i32* %11, align 4
  %59 = and i32 %58, 249
  %60 = load i32, i32* @APCI1500_OR, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @outb(i32 %62, i64 %67)
  %69 = load i32, i32* @APCI1500_RW_PORT_B_COMMAND_AND_STATUS, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @outb(i32 %69, i64 %74)
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @outb(i32 192, i64 %80)
  %82 = load i32, i32* @APCI1500_RW_PORT_B_PATTERN_POLARITY, align 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @outb(i32 %82, i64 %87)
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @outb(i32 %89, i64 %94)
  %96 = load i32, i32* @APCI1500_RW_PORT_B_PATTERN_TRANSITION, align 4
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @outb(i32 %96, i64 %101)
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @outb(i32 %103, i64 %108)
  %110 = load i32, i32* @APCI1500_RW_PORT_B_PATTERN_MASK, align 4
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @outb(i32 %110, i64 %115)
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @outb(i32 %117, i64 %122)
  %124 = load i32, i32* @APCI1500_RW_PORT_A_COMMAND_AND_STATUS, align 4
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @outb(i32 %124, i64 %129)
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @inb(i64 %135)
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* @APCI1500_RW_PORT_A_COMMAND_AND_STATUS, align 4
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @outb(i32 %137, i64 %142)
  %144 = load i32, i32* %11, align 4
  %145 = and i32 %144, 15
  %146 = or i32 %145, 32
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %152 = add nsw i64 %150, %151
  %153 = call i32 @outb(i32 %147, i64 %152)
  %154 = load i32, i32* @APCI1500_RW_PORT_B_COMMAND_AND_STATUS, align 4
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %159 = add nsw i64 %157, %158
  %160 = call i32 @outb(i32 %154, i64 %159)
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @inb(i64 %165)
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* @APCI1500_RW_PORT_B_COMMAND_AND_STATUS, align 4
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @outb(i32 %167, i64 %172)
  %174 = load i32, i32* %11, align 4
  %175 = and i32 %174, 15
  %176 = or i32 %175, 32
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* %11, align 4
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %182 = add nsw i64 %180, %181
  %183 = call i32 @outb(i32 %177, i64 %182)
  %184 = load i32, i32* @APCI1500_RW_CPT_TMR1_CMD_STATUS, align 4
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %189 = add nsw i64 %187, %188
  %190 = call i32 @outb(i32 %184, i64 %189)
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %195 = add nsw i64 %193, %194
  %196 = call i32 @inb(i64 %195)
  store i32 %196, i32* %11, align 4
  %197 = load i32, i32* @APCI1500_RW_CPT_TMR1_CMD_STATUS, align 4
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %202 = add nsw i64 %200, %201
  %203 = call i32 @outb(i32 %197, i64 %202)
  %204 = load i32, i32* %11, align 4
  %205 = and i32 %204, 15
  %206 = or i32 %205, 32
  store i32 %206, i32* %11, align 4
  %207 = load i32, i32* %11, align 4
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %212 = add nsw i64 %210, %211
  %213 = call i32 @outb(i32 %207, i64 %212)
  %214 = load i32, i32* @APCI1500_RW_CPT_TMR2_CMD_STATUS, align 4
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %219 = add nsw i64 %217, %218
  %220 = call i32 @outb(i32 %214, i64 %219)
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @inb(i64 %225)
  store i32 %226, i32* %11, align 4
  %227 = load i32, i32* @APCI1500_RW_CPT_TMR2_CMD_STATUS, align 4
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %232 = add nsw i64 %230, %231
  %233 = call i32 @outb(i32 %227, i64 %232)
  %234 = load i32, i32* %11, align 4
  %235 = and i32 %234, 15
  %236 = or i32 %235, 32
  store i32 %236, i32* %11, align 4
  %237 = load i32, i32* %11, align 4
  %238 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %242 = add nsw i64 %240, %241
  %243 = call i32 @outb(i32 %237, i64 %242)
  %244 = load i32, i32* @APCI1500_RW_CPT_TMR3_CMD_STATUS, align 4
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %249 = add nsw i64 %247, %248
  %250 = call i32 @outb(i32 %244, i64 %249)
  %251 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %255 = add nsw i64 %253, %254
  %256 = call i32 @inb(i64 %255)
  store i32 %256, i32* %11, align 4
  %257 = load i32, i32* @APCI1500_RW_CPT_TMR3_CMD_STATUS, align 4
  %258 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %262 = add nsw i64 %260, %261
  %263 = call i32 @outb(i32 %257, i64 %262)
  %264 = load i32, i32* %11, align 4
  %265 = and i32 %264, 15
  %266 = or i32 %265, 32
  store i32 %266, i32* %11, align 4
  %267 = load i32, i32* %11, align 4
  %268 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %272 = add nsw i64 %270, %271
  %273 = call i32 @outb(i32 %267, i64 %272)
  %274 = load i32, i32* @APCI1500_RW_MASTER_INTERRUPT_CONTROL, align 4
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %279 = add nsw i64 %277, %278
  %280 = call i32 @outb(i32 %274, i64 %279)
  %281 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %285 = add nsw i64 %283, %284
  %286 = call i32 @outb(i32 208, i64 %285)
  %287 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = add nsw i64 %289, 56
  %291 = call i32 @outl(i32 12288, i64 %290)
  %292 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = add nsw i64 %294, 16
  %296 = call i32 @inl(i64 %295)
  store i32 %296, i32* %10, align 4
  %297 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = add nsw i64 %299, 56
  %301 = call i32 @inl(i64 %300)
  store i32 %301, i32* %10, align 4
  %302 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = add nsw i64 %304, 56
  %306 = call i32 @outl(i32 143360, i64 %305)
  %307 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %308 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  store i32 %309, i32* %5, align 4
  br label %310

310:                                              ; preds = %37, %32
  %311 = load i32, i32* %5, align 4
  ret i32 %311
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
