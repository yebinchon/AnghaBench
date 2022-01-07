; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 (%struct.comedi_device*, i32, i32)*, i32, i32 (%struct.comedi_device*, i32, i32)* }
%struct.comedi_device = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"ni_ai_cmd\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot run command without an irq\00", align 1
@EIO = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_5__* null, align 8
@AI_Configuration_Start = common dso_local global i32 0, align 4
@Joint_Reset_Register = common dso_local global i32 0, align 4
@Analog_Trigger_Enable = common dso_local global i32 0, align 4
@Analog_Trigger_Etc_Register = common dso_local global i32 0, align 4
@AI_START1_Sync = common dso_local global i32 0, align 4
@AI_START1_Edge = common dso_local global i32 0, align 4
@AI_Trigger_Select_Register = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@AI_START1_Polarity = common dso_local global i32 0, align 4
@CR_EDGE = common dso_local global i32 0, align 4
@AI_Pre_Trigger = common dso_local global i32 0, align 4
@AI_SC_Initial_Load_Source = common dso_local global i32 0, align 4
@AI_SC_Reload_Mode = common dso_local global i32 0, align 4
@AI_Mode_2_Register = common dso_local global i32 0, align 4
@boardtype = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ni_reg_611x = common dso_local global i64 0, align 8
@ni_reg_6143 = common dso_local global i64 0, align 8
@AI_STOP_Polarity = common dso_local global i32 0, align 4
@AI_STOP_Sync = common dso_local global i32 0, align 4
@AI_START_STOP_Select_Register = common dso_local global i32 0, align 4
@num_adc_stages_611x = common dso_local global i32 0, align 4
@AI_SC_Load_A_Registers = common dso_local global i32 0, align 4
@AI_Start_Stop = common dso_local global i32 0, align 4
@AI_Mode_1_Reserved = common dso_local global i32 0, align 4
@AI_Trigger_Once = common dso_local global i32 0, align 4
@AI_Mode_1_Register = common dso_local global i32 0, align 4
@AI_SC_Load = common dso_local global i32 0, align 4
@AI_Command_1_Register = common dso_local global i32 0, align 4
@AI_End_On_End_Of_Scan = common dso_local global i32 0, align 4
@AI_STOP_Interrupt_Enable = common dso_local global i32 0, align 4
@AI_STOP_Edge = common dso_local global i32 0, align 4
@AI_Continuous = common dso_local global i32 0, align 4
@AI_START_Edge = common dso_local global i32 0, align 4
@AI_START_Sync = common dso_local global i32 0, align 4
@AI_SI_Initial_Load_Source = common dso_local global i32 0, align 4
@TRIG_ROUND_NEAREST = common dso_local global i32 0, align 4
@AI_SI_Load_A_Registers = common dso_local global i32 0, align 4
@AI_SI_Load = common dso_local global i32 0, align 4
@AI_START_Polarity = common dso_local global i32 0, align 4
@AI_SI2_Load_A_Register = common dso_local global i32 0, align 4
@AI_SI2_Load_B_Register = common dso_local global i32 0, align 4
@AI_SI2_Initial_Load_Source = common dso_local global i32 0, align 4
@AI_SI2_Reload_Mode = common dso_local global i32 0, align 4
@AI_SI2_Load = common dso_local global i32 0, align 4
@AI_CONVERT_Source_Polarity = common dso_local global i32 0, align 4
@AI_Start_Stop_Gate_Enable = common dso_local global i32 0, align 4
@AI_SC_Gate_Enable = common dso_local global i32 0, align 4
@AI_Error_Interrupt_Enable = common dso_local global i32 0, align 4
@AI_SC_TC_Interrupt_Enable = common dso_local global i32 0, align 4
@AI_FIFO_Interrupt_Enable = common dso_local global i32 0, align 4
@TRIG_WAKE_EOS = common dso_local global i32 0, align 4
@AI_FIFO_Mode_HF = common dso_local global i32 0, align 4
@AI_Mode_3_Register = common dso_local global i32 0, align 4
@AI_FIFO_Mode_NE = common dso_local global i32 0, align 4
@AI_Error_Interrupt_Ack = common dso_local global i32 0, align 4
@AI_STOP_Interrupt_Ack = common dso_local global i32 0, align 4
@AI_START_Interrupt_Ack = common dso_local global i32 0, align 4
@AI_START2_Interrupt_Ack = common dso_local global i32 0, align 4
@AI_START1_Interrupt_Ack = common dso_local global i32 0, align 4
@AI_SC_TC_Interrupt_Ack = common dso_local global i32 0, align 4
@AI_SC_TC_Error_Confirm = common dso_local global i32 0, align 4
@Interrupt_A_Ack_Register = common dso_local global i32 0, align 4
@Interrupt_A_Enable_Register = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Interrupt_A_Enable_Register = 0x%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"interrupting on nothing\0A\00", align 1
@AI_Configuration_End = common dso_local global i32 0, align 4
@AI_SI2_Arm = common dso_local global i32 0, align 4
@AI_SI_Arm = common dso_local global i32 0, align 4
@AI_DIV_Arm = common dso_local global i32 0, align 4
@AI_SC_Arm = common dso_local global i32 0, align 4
@AI_START1_Pulse = common dso_local global i32 0, align 4
@AI_Command_2_Register = common dso_local global i32 0, align 4
@ni_ai_inttrig = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"exit ni_ai_cmd\0A\00", align 1
@AI_FIFO_Mode_HF_to_E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store %struct.comedi_cmd* %18, %struct.comedi_cmd** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %19 = call i32 (i8*, ...) @MDPRINTK(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %26 = call i32 @comedi_error(%struct.comedi_device* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %667

29:                                               ; preds = %2
  %30 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %31 = call i32 @ni_clear_ai_fifo(%struct.comedi_device* %30)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %33 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %34 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ni_load_channelgain_list(%struct.comedi_device* %32, i32 %35, i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  %42 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %41, align 8
  %43 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %44 = load i32, i32* @AI_Configuration_Start, align 4
  %45 = load i32, i32* @Joint_Reset_Register, align 4
  %46 = call i32 %42(%struct.comedi_device* %43, i32 %44, i32 %45)
  %47 = load i32, i32* @Analog_Trigger_Enable, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 4
  %55 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %54, align 8
  %56 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @Analog_Trigger_Etc_Register, align 4
  %61 = call i32 %55(%struct.comedi_device* %56, i32 %59, i32 %60)
  %62 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %63 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %120 [
    i32 131, label %65
    i32 129, label %65
    i32 132, label %79
  ]

65:                                               ; preds = %29, %29
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 4
  %68 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %67, align 8
  %69 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %70 = call i32 @AI_START2_Select(i32 0)
  %71 = load i32, i32* @AI_START1_Sync, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @AI_START1_Edge, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @AI_START1_Select(i32 0)
  %76 = or i32 %74, %75
  %77 = load i32, i32* @AI_Trigger_Select_Register, align 4
  %78 = call i32 %68(%struct.comedi_device* %69, i32 %76, i32 %77)
  br label %120

79:                                               ; preds = %29
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @CR_CHAN(i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = call i32 @AI_START2_Select(i32 0)
  %85 = load i32, i32* @AI_START1_Sync, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 1
  %89 = call i32 @AI_START1_Select(i32 %88)
  %90 = or i32 %86, %89
  store i32 %90, i32* %14, align 4
  %91 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %92 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @CR_INVERT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %79
  %98 = load i32, i32* @AI_START1_Polarity, align 4
  %99 = load i32, i32* %14, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %97, %79
  %102 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %103 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @CR_EDGE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = load i32, i32* @AI_START1_Edge, align 4
  %110 = load i32, i32* %14, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %108, %101
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 4
  %115 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %114, align 8
  %116 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* @AI_Trigger_Select_Register, align 4
  %119 = call i32 %115(%struct.comedi_device* %116, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %29, %112, %65
  %121 = load i32, i32* @AI_Pre_Trigger, align 4
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %9, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* @AI_SC_Initial_Load_Source, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %9, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* @AI_SC_Reload_Mode, align 4
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %9, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %9, align 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 4
  %135 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %134, align 8
  %136 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @AI_Mode_2_Register, align 4
  %139 = call i32 %135(%struct.comedi_device* %136, i32 %137, i32 %138)
  %140 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %141 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %152, label %144

144:                                              ; preds = %120
  %145 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boardtype, i32 0, i32 0), align 8
  %146 = load i64, i64* @ni_reg_611x, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boardtype, i32 0, i32 0), align 8
  %150 = load i64, i64* @ni_reg_6143, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %148, %144, %120
  %153 = load i32, i32* @AI_STOP_Polarity, align 4
  %154 = load i32, i32* %10, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %10, align 4
  %156 = call i32 @AI_STOP_Select(i32 31)
  %157 = load i32, i32* %10, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* @AI_STOP_Sync, align 4
  %160 = load i32, i32* %10, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %10, align 4
  br label %166

162:                                              ; preds = %148
  %163 = call i32 @AI_STOP_Select(i32 19)
  %164 = load i32, i32* %10, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %10, align 4
  br label %166

166:                                              ; preds = %162, %152
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 4
  %169 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %168, align 8
  %170 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @AI_START_STOP_Select_Register, align 4
  %173 = call i32 %169(%struct.comedi_device* %170, i32 %171, i32 %172)
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  store i32 0, i32* %175, align 4
  %176 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %177 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  switch i32 %178, label %275 [
    i32 133, label %179
    i32 130, label %245
  ]

179:                                              ; preds = %166
  %180 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %181 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %180, i32 0, i32 9
  %182 = load i32, i32* %181, align 4
  %183 = sub nsw i32 %182, 1
  store i32 %183, i32* %11, align 4
  %184 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boardtype, i32 0, i32 0), align 8
  %185 = load i64, i64* @ni_reg_611x, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %179
  %188 = load i32, i32* @num_adc_stages_611x, align 4
  %189 = load i32, i32* %11, align 4
  %190 = add i32 %189, %188
  store i32 %190, i32* %11, align 4
  br label %191

191:                                              ; preds = %187, %179
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 6
  %194 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %193, align 8
  %195 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* @AI_SC_Load_A_Registers, align 4
  %198 = call i32 %194(%struct.comedi_device* %195, i32 %196, i32 %197)
  %199 = load i32, i32* @AI_Start_Stop, align 4
  %200 = load i32, i32* @AI_Mode_1_Reserved, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @AI_Trigger_Once, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* %8, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %8, align 4
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 4
  %208 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %207, align 8
  %209 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* @AI_Mode_1_Register, align 4
  %212 = call i32 %208(%struct.comedi_device* %209, i32 %210, i32 %211)
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 4
  %215 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %214, align 8
  %216 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %217 = load i32, i32* @AI_SC_Load, align 4
  %218 = load i32, i32* @AI_Command_1_Register, align 4
  %219 = call i32 %215(%struct.comedi_device* %216, i32 %217, i32 %218)
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 2
  store i32 0, i32* %221, align 8
  %222 = load i32, i32* %11, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %244

224:                                              ; preds = %191
  %225 = load i32, i32* @AI_End_On_End_Of_Scan, align 4
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 4
  %230 = load i32, i32* @AI_STOP_Interrupt_Enable, align 4
  %231 = load i32, i32* %12, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %12, align 4
  %233 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %234 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = icmp sgt i32 %235, 1
  br i1 %236, label %237, label %243

237:                                              ; preds = %224
  %238 = load i32, i32* @AI_STOP_Polarity, align 4
  %239 = load i32, i32* @AI_STOP_Edge, align 4
  %240 = or i32 %238, %239
  %241 = load i32, i32* %10, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %10, align 4
  br label %243

243:                                              ; preds = %237, %224
  br label %244

244:                                              ; preds = %243, %191
  br label %275

245:                                              ; preds = %166
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 6
  %248 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %247, align 8
  %249 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %250 = load i32, i32* @AI_SC_Load_A_Registers, align 4
  %251 = call i32 %248(%struct.comedi_device* %249, i32 0, i32 %250)
  %252 = load i32, i32* @AI_Start_Stop, align 4
  %253 = load i32, i32* @AI_Mode_1_Reserved, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* @AI_Continuous, align 4
  %256 = or i32 %254, %255
  %257 = load i32, i32* %8, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %8, align 4
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 4
  %261 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %260, align 8
  %262 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %263 = load i32, i32* %8, align 4
  %264 = load i32, i32* @AI_Mode_1_Register, align 4
  %265 = call i32 %261(%struct.comedi_device* %262, i32 %263, i32 %264)
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 4
  %268 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %267, align 8
  %269 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %270 = load i32, i32* @AI_SC_Load, align 4
  %271 = load i32, i32* @AI_Command_1_Register, align 4
  %272 = call i32 %268(%struct.comedi_device* %269, i32 %270, i32 %271)
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 2
  store i32 1, i32* %274, align 8
  br label %275

275:                                              ; preds = %166, %245, %244
  %276 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %277 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 4
  switch i32 %278, label %390 [
    i32 128, label %279
    i32 132, label %326
  ]

279:                                              ; preds = %275
  %280 = load i32, i32* @AI_START_Edge, align 4
  %281 = load i32, i32* @AI_START_Sync, align 4
  %282 = or i32 %280, %281
  %283 = load i32, i32* %10, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %10, align 4
  %285 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 4
  %287 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %286, align 8
  %288 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %289 = load i32, i32* %10, align 4
  %290 = load i32, i32* @AI_START_STOP_Select_Register, align 4
  %291 = call i32 %287(%struct.comedi_device* %288, i32 %289, i32 %290)
  %292 = call i32 @AI_SI_Reload_Mode(i32 0)
  %293 = load i32, i32* %9, align 4
  %294 = or i32 %293, %292
  store i32 %294, i32* %9, align 4
  %295 = load i32, i32* @AI_SI_Initial_Load_Source, align 4
  %296 = xor i32 %295, -1
  %297 = load i32, i32* %9, align 4
  %298 = and i32 %297, %296
  store i32 %298, i32* %9, align 4
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 4
  %301 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %300, align 8
  %302 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %303 = load i32, i32* %9, align 4
  %304 = load i32, i32* @AI_Mode_2_Register, align 4
  %305 = call i32 %301(%struct.comedi_device* %302, i32 %303, i32 %304)
  %306 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %307 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %308 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %307, i32 0, i32 5
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @TRIG_ROUND_NEAREST, align 4
  %311 = call i32 @ni_ns_to_timer(%struct.comedi_device* %306, i32 %309, i32 %310)
  store i32 %311, i32* %7, align 4
  %312 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 6
  %314 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %313, align 8
  %315 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %316 = load i32, i32* %7, align 4
  %317 = load i32, i32* @AI_SI_Load_A_Registers, align 4
  %318 = call i32 %314(%struct.comedi_device* %315, i32 %316, i32 %317)
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 4
  %321 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %320, align 8
  %322 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %323 = load i32, i32* @AI_SI_Load, align 4
  %324 = load i32, i32* @AI_Command_1_Register, align 4
  %325 = call i32 %321(%struct.comedi_device* %322, i32 %323, i32 %324)
  br label %390

326:                                              ; preds = %275
  %327 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %328 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %327, i32 0, i32 5
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @CR_EDGE, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %326
  %334 = load i32, i32* @AI_START_Edge, align 4
  %335 = load i32, i32* %10, align 4
  %336 = or i32 %335, %334
  store i32 %336, i32* %10, align 4
  br label %337

337:                                              ; preds = %333, %326
  %338 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %339 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %338, i32 0, i32 5
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @CR_INVERT, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %337
  %345 = load i32, i32* @AI_START_Polarity, align 4
  %346 = load i32, i32* %10, align 4
  %347 = or i32 %346, %345
  store i32 %347, i32* %10, align 4
  br label %348

348:                                              ; preds = %344, %337
  %349 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %350 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %353 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %352, i32 0, i32 6
  %354 = load i32, i32* %353, align 4
  %355 = icmp ne i32 %351, %354
  br i1 %355, label %370, label %356

356:                                              ; preds = %348
  %357 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %358 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %357, i32 0, i32 5
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* @CR_EDGE, align 4
  %361 = xor i32 %360, -1
  %362 = and i32 %359, %361
  %363 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %364 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %363, i32 0, i32 7
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* @CR_EDGE, align 4
  %367 = xor i32 %366, -1
  %368 = and i32 %365, %367
  %369 = icmp ne i32 %362, %368
  br i1 %369, label %370, label %374

370:                                              ; preds = %356, %348
  %371 = load i32, i32* @AI_START_Sync, align 4
  %372 = load i32, i32* %10, align 4
  %373 = or i32 %372, %371
  store i32 %373, i32* %10, align 4
  br label %374

374:                                              ; preds = %370, %356
  %375 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %376 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %375, i32 0, i32 5
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @CR_CHAN(i32 %377)
  %379 = add nsw i32 1, %378
  %380 = call i32 @AI_START_Select(i32 %379)
  %381 = load i32, i32* %10, align 4
  %382 = or i32 %381, %380
  store i32 %382, i32* %10, align 4
  %383 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %384 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %383, i32 0, i32 4
  %385 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %384, align 8
  %386 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %387 = load i32, i32* %10, align 4
  %388 = load i32, i32* @AI_START_STOP_Select_Register, align 4
  %389 = call i32 %385(%struct.comedi_device* %386, i32 %387, i32 %388)
  br label %390

390:                                              ; preds = %275, %374, %279
  %391 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %392 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %391, i32 0, i32 6
  %393 = load i32, i32* %392, align 4
  switch i32 %393, label %498 [
    i32 128, label %394
    i32 129, label %394
    i32 132, label %460
  ]

394:                                              ; preds = %390, %390
  %395 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %396 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %395, i32 0, i32 7
  %397 = load i32, i32* %396, align 4
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %404, label %399

399:                                              ; preds = %394
  %400 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %401 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %400, i32 0, i32 6
  %402 = load i32, i32* %401, align 4
  %403 = icmp eq i32 %402, 129
  br i1 %403, label %404, label %405

404:                                              ; preds = %399, %394
  store i32 1, i32* %7, align 4
  br label %412

405:                                              ; preds = %399
  %406 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %407 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %408 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %407, i32 0, i32 7
  %409 = load i32, i32* %408, align 4
  %410 = load i32, i32* @TRIG_ROUND_NEAREST, align 4
  %411 = call i32 @ni_ns_to_timer(%struct.comedi_device* %406, i32 %409, i32 %410)
  store i32 %411, i32* %7, align 4
  br label %412

412:                                              ; preds = %405, %404
  %413 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %414 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %413, i32 0, i32 4
  %415 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %414, align 8
  %416 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %417 = load i32, i32* @AI_SI2_Load_A_Register, align 4
  %418 = call i32 %415(%struct.comedi_device* %416, i32 1, i32 %417)
  %419 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %420 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %419, i32 0, i32 4
  %421 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %420, align 8
  %422 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %423 = load i32, i32* %7, align 4
  %424 = load i32, i32* @AI_SI2_Load_B_Register, align 4
  %425 = call i32 %421(%struct.comedi_device* %422, i32 %423, i32 %424)
  %426 = load i32, i32* @AI_SI2_Initial_Load_Source, align 4
  %427 = xor i32 %426, -1
  %428 = load i32, i32* %9, align 4
  %429 = and i32 %428, %427
  store i32 %429, i32* %9, align 4
  %430 = load i32, i32* @AI_SI2_Reload_Mode, align 4
  %431 = load i32, i32* %9, align 4
  %432 = or i32 %431, %430
  store i32 %432, i32* %9, align 4
  %433 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %434 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %433, i32 0, i32 4
  %435 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %434, align 8
  %436 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %437 = load i32, i32* %9, align 4
  %438 = load i32, i32* @AI_Mode_2_Register, align 4
  %439 = call i32 %435(%struct.comedi_device* %436, i32 %437, i32 %438)
  %440 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %441 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %440, i32 0, i32 4
  %442 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %441, align 8
  %443 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %444 = load i32, i32* @AI_SI2_Load, align 4
  %445 = load i32, i32* @AI_Command_1_Register, align 4
  %446 = call i32 %442(%struct.comedi_device* %443, i32 %444, i32 %445)
  %447 = load i32, i32* @AI_SI2_Reload_Mode, align 4
  %448 = load i32, i32* %9, align 4
  %449 = or i32 %448, %447
  store i32 %449, i32* %9, align 4
  %450 = load i32, i32* @AI_SI2_Initial_Load_Source, align 4
  %451 = load i32, i32* %9, align 4
  %452 = or i32 %451, %450
  store i32 %452, i32* %9, align 4
  %453 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %454 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %453, i32 0, i32 4
  %455 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %454, align 8
  %456 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %457 = load i32, i32* %9, align 4
  %458 = load i32, i32* @AI_Mode_2_Register, align 4
  %459 = call i32 %455(%struct.comedi_device* %456, i32 %457, i32 %458)
  br label %498

460:                                              ; preds = %390
  %461 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %462 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %461, i32 0, i32 7
  %463 = load i32, i32* %462, align 4
  %464 = add nsw i32 1, %463
  %465 = call i32 @AI_CONVERT_Source_Select(i32 %464)
  %466 = load i32, i32* %8, align 4
  %467 = or i32 %466, %465
  store i32 %467, i32* %8, align 4
  %468 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %469 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %468, i32 0, i32 7
  %470 = load i32, i32* %469, align 4
  %471 = load i32, i32* @CR_INVERT, align 4
  %472 = and i32 %470, %471
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %478

474:                                              ; preds = %460
  %475 = load i32, i32* @AI_CONVERT_Source_Polarity, align 4
  %476 = load i32, i32* %8, align 4
  %477 = or i32 %476, %475
  store i32 %477, i32* %8, align 4
  br label %478

478:                                              ; preds = %474, %460
  %479 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %480 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %479, i32 0, i32 4
  %481 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %480, align 8
  %482 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %483 = load i32, i32* %8, align 4
  %484 = load i32, i32* @AI_Mode_1_Register, align 4
  %485 = call i32 %481(%struct.comedi_device* %482, i32 %483, i32 %484)
  %486 = load i32, i32* @AI_Start_Stop_Gate_Enable, align 4
  %487 = load i32, i32* @AI_SC_Gate_Enable, align 4
  %488 = or i32 %486, %487
  %489 = load i32, i32* %9, align 4
  %490 = or i32 %489, %488
  store i32 %490, i32* %9, align 4
  %491 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %492 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %491, i32 0, i32 4
  %493 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %492, align 8
  %494 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %495 = load i32, i32* %9, align 4
  %496 = load i32, i32* @AI_Mode_2_Register, align 4
  %497 = call i32 %493(%struct.comedi_device* %494, i32 %495, i32 %496)
  br label %498

498:                                              ; preds = %390, %478, %412
  %499 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %500 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %499, i32 0, i32 0
  %501 = load i64, i64* %500, align 8
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %503, label %591

503:                                              ; preds = %498
  %504 = load i32, i32* @AI_Error_Interrupt_Enable, align 4
  %505 = load i32, i32* @AI_SC_TC_Interrupt_Enable, align 4
  %506 = or i32 %504, %505
  %507 = load i32, i32* %12, align 4
  %508 = or i32 %507, %506
  store i32 %508, i32* %12, align 4
  %509 = load i32, i32* @AI_FIFO_Interrupt_Enable, align 4
  %510 = load i32, i32* %12, align 4
  %511 = or i32 %510, %509
  store i32 %511, i32* %12, align 4
  %512 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %513 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %512, i32 0, i32 8
  %514 = load i32, i32* %513, align 4
  %515 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %516 = and i32 %514, %515
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %525, label %518

518:                                              ; preds = %503
  %519 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %520 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 4
  %522 = load i32, i32* @AI_End_On_End_Of_Scan, align 4
  %523 = and i32 %521, %522
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %528

525:                                              ; preds = %518, %503
  %526 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %527 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %526, i32 0, i32 3
  store i32 134, i32* %527, align 4
  br label %531

528:                                              ; preds = %518
  %529 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %530 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %529, i32 0, i32 3
  store i32 136, i32* %530, align 4
  br label %531

531:                                              ; preds = %528, %525
  %532 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %533 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %532, i32 0, i32 3
  %534 = load i32, i32* %533, align 4
  switch i32 %534, label %562 [
    i32 136, label %535
    i32 135, label %543
    i32 134, label %551
  ]

535:                                              ; preds = %531
  %536 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %537 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %536, i32 0, i32 4
  %538 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %537, align 8
  %539 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %540 = load i32, i32* @AI_FIFO_Mode_HF, align 4
  %541 = load i32, i32* @AI_Mode_3_Register, align 4
  %542 = call i32 %538(%struct.comedi_device* %539, i32 %540, i32 %541)
  br label %563

543:                                              ; preds = %531
  %544 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %545 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %544, i32 0, i32 4
  %546 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %545, align 8
  %547 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %548 = load i32, i32* @AI_FIFO_Mode_NE, align 4
  %549 = load i32, i32* @AI_Mode_3_Register, align 4
  %550 = call i32 %546(%struct.comedi_device* %547, i32 %548, i32 %549)
  br label %563

551:                                              ; preds = %531
  %552 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %553 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %552, i32 0, i32 4
  %554 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %553, align 8
  %555 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %556 = load i32, i32* @AI_FIFO_Mode_HF, align 4
  %557 = load i32, i32* @AI_Mode_3_Register, align 4
  %558 = call i32 %554(%struct.comedi_device* %555, i32 %556, i32 %557)
  %559 = load i32, i32* @AI_STOP_Interrupt_Enable, align 4
  %560 = load i32, i32* %12, align 4
  %561 = or i32 %560, %559
  store i32 %561, i32* %12, align 4
  br label %563

562:                                              ; preds = %531
  br label %563

563:                                              ; preds = %562, %551, %543, %535
  %564 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %565 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %564, i32 0, i32 4
  %566 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %565, align 8
  %567 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %568 = load i32, i32* @AI_Error_Interrupt_Ack, align 4
  %569 = load i32, i32* @AI_STOP_Interrupt_Ack, align 4
  %570 = or i32 %568, %569
  %571 = load i32, i32* @AI_START_Interrupt_Ack, align 4
  %572 = or i32 %570, %571
  %573 = load i32, i32* @AI_START2_Interrupt_Ack, align 4
  %574 = or i32 %572, %573
  %575 = load i32, i32* @AI_START1_Interrupt_Ack, align 4
  %576 = or i32 %574, %575
  %577 = load i32, i32* @AI_SC_TC_Interrupt_Ack, align 4
  %578 = or i32 %576, %577
  %579 = load i32, i32* @AI_SC_TC_Error_Confirm, align 4
  %580 = or i32 %578, %579
  %581 = load i32, i32* @Interrupt_A_Ack_Register, align 4
  %582 = call i32 %566(%struct.comedi_device* %567, i32 %580, i32 %581)
  %583 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %584 = load i32, i32* @Interrupt_A_Enable_Register, align 4
  %585 = load i32, i32* %12, align 4
  %586 = call i32 @ni_set_bits(%struct.comedi_device* %583, i32 %584, i32 %585, i32 1)
  %587 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %588 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %587, i32 0, i32 5
  %589 = load i32, i32* %588, align 8
  %590 = call i32 (i8*, ...) @MDPRINTK(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %589)
  br label %596

591:                                              ; preds = %498
  %592 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %593 = load i32, i32* @Interrupt_A_Enable_Register, align 4
  %594 = call i32 @ni_set_bits(%struct.comedi_device* %592, i32 %593, i32 -1, i32 0)
  %595 = call i32 (i8*, ...) @MDPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %596

596:                                              ; preds = %591, %563
  %597 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %598 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %597, i32 0, i32 4
  %599 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %598, align 8
  %600 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %601 = load i32, i32* @AI_Configuration_End, align 4
  %602 = load i32, i32* @Joint_Reset_Register, align 4
  %603 = call i32 %599(%struct.comedi_device* %600, i32 %601, i32 %602)
  %604 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %605 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %604, i32 0, i32 4
  %606 = load i32, i32* %605, align 4
  switch i32 %606, label %635 [
    i32 128, label %607
    i32 132, label %621
  ]

607:                                              ; preds = %596
  %608 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %609 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %608, i32 0, i32 4
  %610 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %609, align 8
  %611 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %612 = load i32, i32* @AI_SI2_Arm, align 4
  %613 = load i32, i32* @AI_SI_Arm, align 4
  %614 = or i32 %612, %613
  %615 = load i32, i32* @AI_DIV_Arm, align 4
  %616 = or i32 %614, %615
  %617 = load i32, i32* @AI_SC_Arm, align 4
  %618 = or i32 %616, %617
  %619 = load i32, i32* @AI_Command_1_Register, align 4
  %620 = call i32 %610(%struct.comedi_device* %611, i32 %618, i32 %619)
  br label %635

621:                                              ; preds = %596
  %622 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %623 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %622, i32 0, i32 4
  %624 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %623, align 8
  %625 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %626 = load i32, i32* @AI_SI2_Arm, align 4
  %627 = load i32, i32* @AI_SI_Arm, align 4
  %628 = or i32 %626, %627
  %629 = load i32, i32* @AI_DIV_Arm, align 4
  %630 = or i32 %628, %629
  %631 = load i32, i32* @AI_SC_Arm, align 4
  %632 = or i32 %630, %631
  %633 = load i32, i32* @AI_Command_1_Register, align 4
  %634 = call i32 %624(%struct.comedi_device* %625, i32 %632, i32 %633)
  br label %635

635:                                              ; preds = %596, %621, %607
  %636 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %637 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %636, i32 0, i32 1
  %638 = load i32, i32* %637, align 4
  switch i32 %638, label %665 [
    i32 129, label %639
    i32 132, label %655
    i32 131, label %660
  ]

639:                                              ; preds = %635
  %640 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %641 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %640, i32 0, i32 4
  %642 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %641, align 8
  %643 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %644 = load i32, i32* @AI_START1_Pulse, align 4
  %645 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %646 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %645, i32 0, i32 1
  %647 = load i32, i32* %646, align 4
  %648 = or i32 %644, %647
  %649 = load i32, i32* @AI_Command_2_Register, align 4
  %650 = call i32 %642(%struct.comedi_device* %643, i32 %648, i32 %649)
  %651 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %652 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %651, i32 0, i32 0
  %653 = load %struct.TYPE_4__*, %struct.TYPE_4__** %652, align 8
  %654 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %653, i32 0, i32 0
  store i32* null, i32** %654, align 8
  br label %665

655:                                              ; preds = %635
  %656 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %657 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %656, i32 0, i32 0
  %658 = load %struct.TYPE_4__*, %struct.TYPE_4__** %657, align 8
  %659 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %658, i32 0, i32 0
  store i32* null, i32** %659, align 8
  br label %665

660:                                              ; preds = %635
  %661 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %662 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %661, i32 0, i32 0
  %663 = load %struct.TYPE_4__*, %struct.TYPE_4__** %662, align 8
  %664 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %663, i32 0, i32 0
  store i32* @ni_ai_inttrig, i32** %664, align 8
  br label %665

665:                                              ; preds = %635, %660, %655, %639
  %666 = call i32 (i8*, ...) @MDPRINTK(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %667

667:                                              ; preds = %665, %24
  %668 = load i32, i32* %3, align 4
  ret i32 %668
}

declare dso_local i32 @MDPRINTK(i8*, ...) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @ni_clear_ai_fifo(%struct.comedi_device*) #1

declare dso_local i32 @ni_load_channelgain_list(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @AI_START2_Select(i32) #1

declare dso_local i32 @AI_START1_Select(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @AI_STOP_Select(i32) #1

declare dso_local i32 @AI_SI_Reload_Mode(i32) #1

declare dso_local i32 @ni_ns_to_timer(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @AI_START_Select(i32) #1

declare dso_local i32 @AI_CONVERT_Source_Select(i32) #1

declare dso_local i32 @ni_set_bits(%struct.comedi_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
