; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)* }
%struct.comedi_device = type { i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"cannot run command without an irq\00", align 1
@EIO = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_5__* null, align 8
@AO_Configuration_Start = common dso_local global i32 0, align 4
@Joint_Reset_Register = common dso_local global i32 0, align 4
@AO_Disarm = common dso_local global i32 0, align 4
@AO_Command_1_Register = common dso_local global i32 0, align 4
@boardtype = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ni_reg_6xxx_mask = common dso_local global i32 0, align 4
@CLEAR_WG = common dso_local global i32 0, align 4
@AO_Misc_611x = common dso_local global i32 0, align 4
@AO_Waveform_Generation_611x = common dso_local global i32 0, align 4
@AO_Timed_611x = common dso_local global i32 0, align 4
@AO_Continuous = common dso_local global i32 0, align 4
@AO_Trigger_Once = common dso_local global i32 0, align 4
@AO_Mode_1_Register = common dso_local global i32 0, align 4
@AO_START1_Polarity = common dso_local global i32 0, align 4
@AO_START1_Edge = common dso_local global i32 0, align 4
@AO_START1_Sync = common dso_local global i32 0, align 4
@AO_Trigger_Select_Register = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@CR_EDGE = common dso_local global i32 0, align 4
@AO_Trigger_Length = common dso_local global i32 0, align 4
@AO_Mode_3_Register = common dso_local global i32 0, align 4
@AO_BC_Initial_Load_Source = common dso_local global i32 0, align 4
@AO_Mode_2_Register = common dso_local global i32 0, align 4
@AO_BC_Load_A_Register = common dso_local global i32 0, align 4
@AO_BC_Load = common dso_local global i32 0, align 4
@AO_UC_Initial_Load_Source = common dso_local global i32 0, align 4
@ni_reg_m_series_mask = common dso_local global i32 0, align 4
@AO_UC_Load_A_Register = common dso_local global i32 0, align 4
@AO_UC_Load = common dso_local global i32 0, align 4
@AO_UI_Source_Polarity = common dso_local global i32 0, align 4
@AO_UPDATE_Source_Polarity = common dso_local global i32 0, align 4
@AO_BC_Gate_Enable = common dso_local global i32 0, align 4
@TRIG_ROUND_NEAREST = common dso_local global i32 0, align 4
@AO_UI_Load_A_Register = common dso_local global i32 0, align 4
@AO_UI_Load = common dso_local global i32 0, align 4
@AO_Command_2_Register = common dso_local global i32 0, align 4
@AO_UI_Initial_Load_Source = common dso_local global i32 0, align 4
@AO_Multiple_Channels = common dso_local global i32 0, align 4
@AO_Update_Output_High_Z = common dso_local global i32 0, align 4
@AO_Output_Control_Register = common dso_local global i32 0, align 4
@AO_DAC0_Update_Mode = common dso_local global i32 0, align 4
@AO_DAC1_Update_Mode = common dso_local global i32 0, align 4
@AO_Stop_On_Overrun_Error = common dso_local global i32 0, align 4
@AO_FIFO_Mode_Mask = common dso_local global i32 0, align 4
@AO_FIFO_Mode_HF = common dso_local global i32 0, align 4
@AO_FIFO_Retransmit_Enable = common dso_local global i32 0, align 4
@AO_BC_Source_Select = common dso_local global i32 0, align 4
@AO_UPDATE_Pulse_Width = common dso_local global i32 0, align 4
@AO_TMRDACWR_Pulse_Width = common dso_local global i32 0, align 4
@AO_FIFO_Enable = common dso_local global i32 0, align 4
@AO_DMA_PIO_Control = common dso_local global i32 0, align 4
@AO_Personal_Register = common dso_local global i32 0, align 4
@AO_AOFREQ_Enable = common dso_local global i32 0, align 4
@AO_Start_Select_Register = common dso_local global i32 0, align 4
@AO_Configuration_End = common dso_local global i32 0, align 4
@AO_BC_TC_Interrupt_Ack = common dso_local global i32 0, align 4
@Interrupt_B_Ack_Register = common dso_local global i32 0, align 4
@Interrupt_B_Enable_Register = common dso_local global i32 0, align 4
@AO_BC_TC_Interrupt_Enable = common dso_local global i32 0, align 4
@ni_ao_inttrig = common dso_local global i32 0, align 4
@AO_FIFO_Mode_HF_to_F = common dso_local global i32 0, align 4
@AO_Number_Of_DAC_Packages = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_ao_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ao_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %13 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store %struct.comedi_cmd* %15, %struct.comedi_cmd** %6, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %22 = call i32 @comedi_error(%struct.comedi_device* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %669

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 5
  %28 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %27, align 8
  %29 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %30 = load i32, i32* @AO_Configuration_Start, align 4
  %31 = load i32, i32* @Joint_Reset_Register, align 4
  %32 = call i32 %28(%struct.comedi_device* %29, i32 %30, i32 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 5
  %35 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %34, align 8
  %36 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %37 = load i32, i32* @AO_Disarm, align 4
  %38 = load i32, i32* @AO_Command_1_Register, align 4
  %39 = call i32 %35(%struct.comedi_device* %36, i32 %37, i32 %38)
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boardtype, i32 0, i32 0), align 8
  %41 = load i32, i32* @ni_reg_6xxx_mask, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %77

44:                                               ; preds = %25
  %45 = load i32, i32* @CLEAR_WG, align 4
  %46 = load i32, i32* @AO_Misc_611x, align 4
  %47 = call i32 @ao_win_out(i32 %45, i32 %46)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %70, %44
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %51 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %48
  %55 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %56 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @CR_CHAN(i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = shl i32 1, %63
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @AO_Waveform_Generation_611x, align 4
  %69 = call i32 @ao_win_out(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %54
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %48

73:                                               ; preds = %48
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @AO_Timed_611x, align 4
  %76 = call i32 @ao_win_out(i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %25
  %78 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %79 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %84 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ni_ao_config_chanlist(%struct.comedi_device* %78, %struct.comedi_subdevice* %79, i32* %82, i32 %85, i32 1)
  %87 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %88 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 130
  br i1 %90, label %91, label %103

91:                                               ; preds = %77
  %92 = load i32, i32* @AO_Continuous, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load i32, i32* @AO_Trigger_Once, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %115

103:                                              ; preds = %77
  %104 = load i32, i32* @AO_Continuous, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load i32, i32* @AO_Trigger_Once, align 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %103, %91
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 5
  %118 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %117, align 8
  %119 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @AO_Mode_1_Register, align 4
  %124 = call i32 %118(%struct.comedi_device* %119, i32 %122, i32 %123)
  %125 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %126 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  switch i32 %127, label %197 [
    i32 131, label %128
    i32 129, label %128
    i32 132, label %153
  ]

128:                                              ; preds = %115, %115
  %129 = load i32, i32* @AO_START1_Polarity, align 4
  %130 = call i32 @AO_START1_Select(i32 -1)
  %131 = or i32 %129, %130
  %132 = xor i32 %131, -1
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load i32, i32* @AO_START1_Edge, align 4
  %138 = load i32, i32* @AO_START1_Sync, align 4
  %139 = or i32 %137, %138
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 5
  %146 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %145, align 8
  %147 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @AO_Trigger_Select_Register, align 4
  %152 = call i32 %146(%struct.comedi_device* %147, i32 %150, i32 %151)
  br label %199

153:                                              ; preds = %115
  %154 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %155 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @CR_CHAN(i32 %156)
  %158 = add nsw i32 %157, 1
  %159 = call i32 @AO_START1_Select(i32 %158)
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %163 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @CR_INVERT, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %153
  %169 = load i32, i32* @AO_START1_Polarity, align 4
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %168, %153
  %175 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %176 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @CR_EDGE, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %174
  %182 = load i32, i32* @AO_START1_Edge, align 4
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %181, %174
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 5
  %190 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %189, align 8
  %191 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @AO_Trigger_Select_Register, align 4
  %196 = call i32 %190(%struct.comedi_device* %191, i32 %194, i32 %195)
  br label %199

197:                                              ; preds = %115
  %198 = call i32 (...) @BUG()
  br label %199

199:                                              ; preds = %197, %187, %128
  %200 = load i32, i32* @AO_Trigger_Length, align 4
  %201 = xor i32 %200, -1
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = and i32 %204, %201
  store i32 %205, i32* %203, align 8
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 5
  %208 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %207, align 8
  %209 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @AO_Mode_3_Register, align 4
  %214 = call i32 %208(%struct.comedi_device* %209, i32 %212, i32 %213)
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 5
  %217 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %216, align 8
  %218 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @AO_Mode_1_Register, align 4
  %223 = call i32 %217(%struct.comedi_device* %218, i32 %221, i32 %222)
  %224 = load i32, i32* @AO_BC_Initial_Load_Source, align 4
  %225 = xor i32 %224, -1
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = and i32 %228, %225
  store i32 %229, i32* %227, align 4
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 5
  %232 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %231, align 8
  %233 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @AO_Mode_2_Register, align 4
  %238 = call i32 %232(%struct.comedi_device* %233, i32 %236, i32 %237)
  %239 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %240 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = icmp eq i32 %241, 130
  br i1 %242, label %243, label %250

243:                                              ; preds = %199
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 6
  %246 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %245, align 8
  %247 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %248 = load i32, i32* @AO_BC_Load_A_Register, align 4
  %249 = call i32 %246(%struct.comedi_device* %247, i32 16777215, i32 %248)
  br label %257

250:                                              ; preds = %199
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 6
  %253 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %252, align 8
  %254 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %255 = load i32, i32* @AO_BC_Load_A_Register, align 4
  %256 = call i32 %253(%struct.comedi_device* %254, i32 0, i32 %255)
  br label %257

257:                                              ; preds = %250, %243
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 5
  %260 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %259, align 8
  %261 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %262 = load i32, i32* @AO_BC_Load, align 4
  %263 = load i32, i32* @AO_Command_1_Register, align 4
  %264 = call i32 %260(%struct.comedi_device* %261, i32 %262, i32 %263)
  %265 = load i32, i32* @AO_UC_Initial_Load_Source, align 4
  %266 = xor i32 %265, -1
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = and i32 %269, %266
  store i32 %270, i32* %268, align 4
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 5
  %273 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %272, align 8
  %274 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @AO_Mode_2_Register, align 4
  %279 = call i32 %273(%struct.comedi_device* %274, i32 %277, i32 %278)
  %280 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %281 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  switch i32 %282, label %354 [
    i32 133, label %283
    i32 130, label %334
  ]

283:                                              ; preds = %257
  %284 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boardtype, i32 0, i32 0), align 8
  %285 = load i32, i32* @ni_reg_m_series_mask, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %306

288:                                              ; preds = %283
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 6
  %291 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %290, align 8
  %292 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %293 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %294 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %293, i32 0, i32 5
  %295 = load i32, i32* %294, align 4
  %296 = sub nsw i32 %295, 1
  %297 = load i32, i32* @AO_UC_Load_A_Register, align 4
  %298 = call i32 %291(%struct.comedi_device* %292, i32 %296, i32 %297)
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 5
  %301 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %300, align 8
  %302 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %303 = load i32, i32* @AO_UC_Load, align 4
  %304 = load i32, i32* @AO_Command_1_Register, align 4
  %305 = call i32 %301(%struct.comedi_device* %302, i32 %303, i32 %304)
  br label %333

306:                                              ; preds = %283
  %307 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 6
  %309 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %308, align 8
  %310 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %311 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %312 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %311, i32 0, i32 5
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @AO_UC_Load_A_Register, align 4
  %315 = call i32 %309(%struct.comedi_device* %310, i32 %313, i32 %314)
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 5
  %318 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %317, align 8
  %319 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %320 = load i32, i32* @AO_UC_Load, align 4
  %321 = load i32, i32* @AO_Command_1_Register, align 4
  %322 = call i32 %318(%struct.comedi_device* %319, i32 %320, i32 %321)
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 6
  %325 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %324, align 8
  %326 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %327 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %328 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %327, i32 0, i32 5
  %329 = load i32, i32* %328, align 4
  %330 = sub nsw i32 %329, 1
  %331 = load i32, i32* @AO_UC_Load_A_Register, align 4
  %332 = call i32 %325(%struct.comedi_device* %326, i32 %330, i32 %331)
  br label %333

333:                                              ; preds = %306, %288
  br label %377

334:                                              ; preds = %257
  %335 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 6
  %337 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %336, align 8
  %338 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %339 = load i32, i32* @AO_UC_Load_A_Register, align 4
  %340 = call i32 %337(%struct.comedi_device* %338, i32 16777215, i32 %339)
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 5
  %343 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %342, align 8
  %344 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %345 = load i32, i32* @AO_UC_Load, align 4
  %346 = load i32, i32* @AO_Command_1_Register, align 4
  %347 = call i32 %343(%struct.comedi_device* %344, i32 %345, i32 %346)
  %348 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 6
  %350 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %349, align 8
  %351 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %352 = load i32, i32* @AO_UC_Load_A_Register, align 4
  %353 = call i32 %350(%struct.comedi_device* %351, i32 16777215, i32 %352)
  br label %377

354:                                              ; preds = %257
  %355 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 6
  %357 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %356, align 8
  %358 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %359 = load i32, i32* @AO_UC_Load_A_Register, align 4
  %360 = call i32 %357(%struct.comedi_device* %358, i32 0, i32 %359)
  %361 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i32 0, i32 5
  %363 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %362, align 8
  %364 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %365 = load i32, i32* @AO_UC_Load, align 4
  %366 = load i32, i32* @AO_Command_1_Register, align 4
  %367 = call i32 %363(%struct.comedi_device* %364, i32 %365, i32 %366)
  %368 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i32 0, i32 6
  %370 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %369, align 8
  %371 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %372 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %373 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %372, i32 0, i32 5
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* @AO_UC_Load_A_Register, align 4
  %376 = call i32 %370(%struct.comedi_device* %371, i32 %374, i32 %375)
  br label %377

377:                                              ; preds = %354, %334, %333
  %378 = call i32 @AO_UI_Source_Select(i32 31)
  %379 = load i32, i32* @AO_UI_Source_Polarity, align 4
  %380 = or i32 %378, %379
  %381 = call i32 @AO_UPDATE_Source_Select(i32 31)
  %382 = or i32 %380, %381
  %383 = load i32, i32* @AO_UPDATE_Source_Polarity, align 4
  %384 = or i32 %382, %383
  %385 = xor i32 %384, -1
  %386 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %387 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = and i32 %388, %385
  store i32 %389, i32* %387, align 8
  %390 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %391 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %390, i32 0, i32 6
  %392 = load i32, i32* %391, align 8
  switch i32 %392, label %453 [
    i32 128, label %393
    i32 132, label %426
  ]

393:                                              ; preds = %377
  %394 = load i32, i32* @AO_BC_Gate_Enable, align 4
  %395 = xor i32 %394, -1
  %396 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %397 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %396, i32 0, i32 4
  %398 = load i32, i32* %397, align 8
  %399 = and i32 %398, %395
  store i32 %399, i32* %397, align 8
  %400 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %401 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %402 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %401, i32 0, i32 7
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* @TRIG_ROUND_NEAREST, align 4
  %405 = call i32 @ni_ns_to_timer(%struct.comedi_device* %400, i32 %403, i32 %404)
  store i32 %405, i32* %9, align 4
  %406 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %407 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %406, i32 0, i32 6
  %408 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %407, align 8
  %409 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %410 = load i32, i32* @AO_UI_Load_A_Register, align 4
  %411 = call i32 %408(%struct.comedi_device* %409, i32 1, i32 %410)
  %412 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %413 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %412, i32 0, i32 5
  %414 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %413, align 8
  %415 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %416 = load i32, i32* @AO_UI_Load, align 4
  %417 = load i32, i32* @AO_Command_1_Register, align 4
  %418 = call i32 %414(%struct.comedi_device* %415, i32 %416, i32 %417)
  %419 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %420 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %419, i32 0, i32 6
  %421 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %420, align 8
  %422 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %423 = load i32, i32* %9, align 4
  %424 = load i32, i32* @AO_UI_Load_A_Register, align 4
  %425 = call i32 %421(%struct.comedi_device* %422, i32 %423, i32 %424)
  br label %455

426:                                              ; preds = %377
  %427 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %428 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %427, i32 0, i32 7
  %429 = load i32, i32* %428, align 4
  %430 = call i32 @AO_UPDATE_Source_Select(i32 %429)
  %431 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %432 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = or i32 %433, %430
  store i32 %434, i32* %432, align 8
  %435 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %436 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %435, i32 0, i32 7
  %437 = load i32, i32* %436, align 4
  %438 = load i32, i32* @CR_INVERT, align 4
  %439 = and i32 %437, %438
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %447

441:                                              ; preds = %426
  %442 = load i32, i32* @AO_UPDATE_Source_Polarity, align 4
  %443 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %444 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = or i32 %445, %442
  store i32 %446, i32* %444, align 8
  br label %447

447:                                              ; preds = %441, %426
  %448 = load i32, i32* @AO_BC_Gate_Enable, align 4
  %449 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %450 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %449, i32 0, i32 4
  %451 = load i32, i32* %450, align 8
  %452 = or i32 %451, %448
  store i32 %452, i32* %450, align 8
  br label %455

453:                                              ; preds = %377
  %454 = call i32 (...) @BUG()
  br label %455

455:                                              ; preds = %453, %447, %393
  %456 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %457 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %456, i32 0, i32 5
  %458 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %457, align 8
  %459 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %460 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %461 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %460, i32 0, i32 4
  %462 = load i32, i32* %461, align 8
  %463 = load i32, i32* @AO_Command_2_Register, align 4
  %464 = call i32 %458(%struct.comedi_device* %459, i32 %462, i32 %463)
  %465 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %466 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %465, i32 0, i32 5
  %467 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %466, align 8
  %468 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %469 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %470 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 8
  %472 = load i32, i32* @AO_Mode_1_Register, align 4
  %473 = call i32 %467(%struct.comedi_device* %468, i32 %471, i32 %472)
  %474 = call i32 @AO_UI_Reload_Mode(i32 3)
  %475 = load i32, i32* @AO_UI_Initial_Load_Source, align 4
  %476 = or i32 %474, %475
  %477 = xor i32 %476, -1
  %478 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %479 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %478, i32 0, i32 3
  %480 = load i32, i32* %479, align 4
  %481 = and i32 %480, %477
  store i32 %481, i32* %479, align 4
  %482 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %483 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %482, i32 0, i32 5
  %484 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %483, align 8
  %485 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %486 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %487 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %486, i32 0, i32 3
  %488 = load i32, i32* %487, align 4
  %489 = load i32, i32* @AO_Mode_2_Register, align 4
  %490 = call i32 %484(%struct.comedi_device* %485, i32 %488, i32 %489)
  %491 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %492 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %491, i32 0, i32 8
  %493 = load i32, i32* %492, align 8
  %494 = icmp sgt i32 %493, 1
  br i1 %494, label %495, label %515

495:                                              ; preds = %455
  %496 = load i32, i32* @AO_Multiple_Channels, align 4
  %497 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %498 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  %500 = or i32 %499, %496
  store i32 %500, i32* %498, align 8
  %501 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %502 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %501, i32 0, i32 5
  %503 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %502, align 8
  %504 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %505 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %506 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %505, i32 0, i32 8
  %507 = load i32, i32* %506, align 8
  %508 = sub nsw i32 %507, 1
  %509 = call i32 @AO_Number_Of_Channels(i32 %508)
  %510 = load i32, i32* @AO_Update_Output_High_Z, align 4
  %511 = call i32 @AO_UPDATE_Output_Select(i32 %510)
  %512 = or i32 %509, %511
  %513 = load i32, i32* @AO_Output_Control_Register, align 4
  %514 = call i32 %503(%struct.comedi_device* %504, i32 %512, i32 %513)
  br label %552

515:                                              ; preds = %455
  %516 = load i32, i32* @AO_Multiple_Channels, align 4
  %517 = xor i32 %516, -1
  %518 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %519 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 8
  %521 = and i32 %520, %517
  store i32 %521, i32* %519, align 8
  %522 = load i32, i32* @AO_Update_Output_High_Z, align 4
  %523 = call i32 @AO_UPDATE_Output_Select(i32 %522)
  store i32 %523, i32* %11, align 4
  %524 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boardtype, i32 0, i32 0), align 8
  %525 = load i32, i32* @ni_reg_m_series_mask, align 4
  %526 = load i32, i32* @ni_reg_6xxx_mask, align 4
  %527 = or i32 %525, %526
  %528 = and i32 %524, %527
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %534

530:                                              ; preds = %515
  %531 = call i32 @AO_Number_Of_Channels(i32 0)
  %532 = load i32, i32* %11, align 4
  %533 = or i32 %532, %531
  store i32 %533, i32* %11, align 4
  br label %544

534:                                              ; preds = %515
  %535 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %536 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %535, i32 0, i32 1
  %537 = load i32*, i32** %536, align 8
  %538 = getelementptr inbounds i32, i32* %537, i64 0
  %539 = load i32, i32* %538, align 4
  %540 = call i32 @CR_CHAN(i32 %539)
  %541 = call i32 @AO_Number_Of_Channels(i32 %540)
  %542 = load i32, i32* %11, align 4
  %543 = or i32 %542, %541
  store i32 %543, i32* %11, align 4
  br label %544

544:                                              ; preds = %534, %530
  %545 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %546 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %545, i32 0, i32 5
  %547 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %546, align 8
  %548 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %549 = load i32, i32* %11, align 4
  %550 = load i32, i32* @AO_Output_Control_Register, align 4
  %551 = call i32 %547(%struct.comedi_device* %548, i32 %549, i32 %550)
  br label %552

552:                                              ; preds = %544, %495
  %553 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %554 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %553, i32 0, i32 5
  %555 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %554, align 8
  %556 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %557 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %558 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 8
  %560 = load i32, i32* @AO_Mode_1_Register, align 4
  %561 = call i32 %555(%struct.comedi_device* %556, i32 %559, i32 %560)
  %562 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %563 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %562, i32 0, i32 5
  %564 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %563, align 8
  %565 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %566 = load i32, i32* @AO_DAC0_Update_Mode, align 4
  %567 = load i32, i32* @AO_DAC1_Update_Mode, align 4
  %568 = or i32 %566, %567
  %569 = load i32, i32* @AO_Command_1_Register, align 4
  %570 = call i32 %564(%struct.comedi_device* %565, i32 %568, i32 %569)
  %571 = load i32, i32* @AO_Stop_On_Overrun_Error, align 4
  %572 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %573 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %572, i32 0, i32 2
  %574 = load i32, i32* %573, align 8
  %575 = or i32 %574, %571
  store i32 %575, i32* %573, align 8
  %576 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %577 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %576, i32 0, i32 5
  %578 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %577, align 8
  %579 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %580 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %581 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %580, i32 0, i32 2
  %582 = load i32, i32* %581, align 8
  %583 = load i32, i32* @AO_Mode_3_Register, align 4
  %584 = call i32 %578(%struct.comedi_device* %579, i32 %582, i32 %583)
  %585 = load i32, i32* @AO_FIFO_Mode_Mask, align 4
  %586 = xor i32 %585, -1
  %587 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %588 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %587, i32 0, i32 3
  %589 = load i32, i32* %588, align 4
  %590 = and i32 %589, %586
  store i32 %590, i32* %588, align 4
  %591 = load i32, i32* @AO_FIFO_Mode_HF, align 4
  %592 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %593 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %592, i32 0, i32 3
  %594 = load i32, i32* %593, align 4
  %595 = or i32 %594, %591
  store i32 %595, i32* %593, align 4
  %596 = load i32, i32* @AO_FIFO_Retransmit_Enable, align 4
  %597 = xor i32 %596, -1
  %598 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %599 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %598, i32 0, i32 3
  %600 = load i32, i32* %599, align 4
  %601 = and i32 %600, %597
  store i32 %601, i32* %599, align 4
  %602 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %603 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %602, i32 0, i32 5
  %604 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %603, align 8
  %605 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %606 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %607 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %606, i32 0, i32 3
  %608 = load i32, i32* %607, align 4
  %609 = load i32, i32* @AO_Mode_2_Register, align 4
  %610 = call i32 %604(%struct.comedi_device* %605, i32 %608, i32 %609)
  %611 = load i32, i32* @AO_BC_Source_Select, align 4
  %612 = load i32, i32* @AO_UPDATE_Pulse_Width, align 4
  %613 = or i32 %611, %612
  %614 = load i32, i32* @AO_TMRDACWR_Pulse_Width, align 4
  %615 = or i32 %613, %614
  store i32 %615, i32* %7, align 4
  %616 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boardtype, i32 0, i32 1), align 8
  %617 = icmp ne i64 %616, 0
  br i1 %617, label %618, label %622

618:                                              ; preds = %552
  %619 = load i32, i32* @AO_FIFO_Enable, align 4
  %620 = load i32, i32* %7, align 4
  %621 = or i32 %620, %619
  store i32 %621, i32* %7, align 4
  br label %626

622:                                              ; preds = %552
  %623 = load i32, i32* @AO_DMA_PIO_Control, align 4
  %624 = load i32, i32* %7, align 4
  %625 = or i32 %624, %623
  store i32 %625, i32* %7, align 4
  br label %626

626:                                              ; preds = %622, %618
  %627 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %628 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %627, i32 0, i32 5
  %629 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %628, align 8
  %630 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %631 = load i32, i32* %7, align 4
  %632 = load i32, i32* @AO_Personal_Register, align 4
  %633 = call i32 %629(%struct.comedi_device* %630, i32 %631, i32 %632)
  %634 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %635 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %634, i32 0, i32 5
  %636 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %635, align 8
  %637 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %638 = load i32, i32* @AO_AOFREQ_Enable, align 4
  %639 = load i32, i32* @AO_Start_Select_Register, align 4
  %640 = call i32 %636(%struct.comedi_device* %637, i32 %638, i32 %639)
  %641 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %642 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %641, i32 0, i32 5
  %643 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %642, align 8
  %644 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %645 = load i32, i32* @AO_Configuration_End, align 4
  %646 = load i32, i32* @Joint_Reset_Register, align 4
  %647 = call i32 %643(%struct.comedi_device* %644, i32 %645, i32 %646)
  %648 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %649 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %648, i32 0, i32 2
  %650 = load i32, i32* %649, align 8
  %651 = icmp eq i32 %650, 133
  br i1 %651, label %652, label %664

652:                                              ; preds = %626
  %653 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %654 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %653, i32 0, i32 5
  %655 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %654, align 8
  %656 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %657 = load i32, i32* @AO_BC_TC_Interrupt_Ack, align 4
  %658 = load i32, i32* @Interrupt_B_Ack_Register, align 4
  %659 = call i32 %655(%struct.comedi_device* %656, i32 %657, i32 %658)
  %660 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %661 = load i32, i32* @Interrupt_B_Enable_Register, align 4
  %662 = load i32, i32* @AO_BC_TC_Interrupt_Enable, align 4
  %663 = call i32 @ni_set_bits(%struct.comedi_device* %660, i32 %661, i32 %662, i32 1)
  br label %664

664:                                              ; preds = %652, %626
  %665 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %666 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %665, i32 0, i32 0
  %667 = load %struct.TYPE_4__*, %struct.TYPE_4__** %666, align 8
  %668 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %667, i32 0, i32 0
  store i32* @ni_ao_inttrig, i32** %668, align 8
  store i32 0, i32* %3, align 4
  br label %669

669:                                              ; preds = %664, %20
  %670 = load i32, i32* %3, align 4
  ret i32 %670
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @ao_win_out(i32, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @ni_ao_config_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32, i32) #1

declare dso_local i32 @AO_START1_Select(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @AO_UI_Source_Select(i32) #1

declare dso_local i32 @AO_UPDATE_Source_Select(i32) #1

declare dso_local i32 @ni_ns_to_timer(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @AO_UI_Reload_Mode(i32) #1

declare dso_local i32 @AO_Number_Of_Channels(i32) #1

declare dso_local i32 @AO_UPDATE_Output_Select(i32) #1

declare dso_local i32 @ni_set_bits(%struct.comedi_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
