; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.comedi_device*, i32, i32)* }
%struct.comedi_device = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.comedi_subdevice = type { i32 }

@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@AI_Configuration_Start = common dso_local global i32 0, align 4
@AI_Reset = common dso_local global i32 0, align 4
@Joint_Reset_Register = common dso_local global i32 0, align 4
@Interrupt_A_Enable_Register = common dso_local global i32 0, align 4
@AI_SC_TC_Interrupt_Enable = common dso_local global i32 0, align 4
@AI_START1_Interrupt_Enable = common dso_local global i32 0, align 4
@AI_START2_Interrupt_Enable = common dso_local global i32 0, align 4
@AI_START_Interrupt_Enable = common dso_local global i32 0, align 4
@AI_STOP_Interrupt_Enable = common dso_local global i32 0, align 4
@AI_Error_Interrupt_Enable = common dso_local global i32 0, align 4
@AI_FIFO_Interrupt_Enable = common dso_local global i32 0, align 4
@boardtype = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ni_reg_6143 = common dso_local global i64 0, align 8
@Misc_Command = common dso_local global i32 0, align 4
@AI_Disarm = common dso_local global i32 0, align 4
@AI_Command_1_Register = common dso_local global i32 0, align 4
@AI_Start_Stop = common dso_local global i32 0, align 4
@AI_Mode_1_Reserved = common dso_local global i32 0, align 4
@AI_Mode_1_Register = common dso_local global i32 0, align 4
@AI_Mode_2_Register = common dso_local global i32 0, align 4
@AI_Mode_3_Register = common dso_local global i32 0, align 4
@ni_reg_611x = common dso_local global i64 0, align 8
@AI_SHIFTIN_Pulse_Width = common dso_local global i32 0, align 4
@AI_SOC_Polarity = common dso_local global i32 0, align 4
@AI_LOCALMUX_CLK_Pulse_Width = common dso_local global i32 0, align 4
@AI_Personal_Register = common dso_local global i32 0, align 4
@AI_CONVERT_Output_Enable_High = common dso_local global i32 0, align 4
@AI_Output_Control_Register = common dso_local global i32 0, align 4
@AI_CONVERT_Output_Enable_Low = common dso_local global i32 0, align 4
@AI_CONVERT_Pulse_Width = common dso_local global i32 0, align 4
@ni_reg_622x = common dso_local global i64 0, align 8
@AI_SC_TC_Error_Confirm = common dso_local global i32 0, align 4
@AI_START_Interrupt_Ack = common dso_local global i32 0, align 4
@AI_START2_Interrupt_Ack = common dso_local global i32 0, align 4
@AI_START1_Interrupt_Ack = common dso_local global i32 0, align 4
@AI_SC_TC_Interrupt_Ack = common dso_local global i32 0, align 4
@AI_Error_Interrupt_Ack = common dso_local global i32 0, align 4
@AI_STOP_Interrupt_Ack = common dso_local global i32 0, align 4
@Interrupt_A_Ack_Register = common dso_local global i32 0, align 4
@AI_Configuration_End = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_ai_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ai_reset(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = call i32 @ni_release_ai_mite_channel(%struct.comedi_device* %6)
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %9, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = load i32, i32* @AI_Configuration_Start, align 4
  %13 = load i32, i32* @AI_Reset, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @Joint_Reset_Register, align 4
  %16 = call i32 %10(%struct.comedi_device* %11, i32 %14, i32 %15)
  %17 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %18 = load i32, i32* @Interrupt_A_Enable_Register, align 4
  %19 = load i32, i32* @AI_SC_TC_Interrupt_Enable, align 4
  %20 = load i32, i32* @AI_START1_Interrupt_Enable, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @AI_START2_Interrupt_Enable, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @AI_START_Interrupt_Enable, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @AI_STOP_Interrupt_Enable, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @AI_Error_Interrupt_Enable, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @AI_FIFO_Interrupt_Enable, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @ni_set_bits(%struct.comedi_device* %17, i32 %18, i32 %31, i32 0)
  %33 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %34 = call i32 @ni_clear_ai_fifo(%struct.comedi_device* %33)
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %36 = load i64, i64* @ni_reg_6143, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load i32, i32* @Misc_Command, align 4
  %40 = call i32 @ni_writeb(i32 0, i32 %39)
  br label %41

41:                                               ; preds = %38, %2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %43, align 8
  %45 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %46 = load i32, i32* @AI_Disarm, align 4
  %47 = load i32, i32* @AI_Command_1_Register, align 4
  %48 = call i32 %44(%struct.comedi_device* %45, i32 %46, i32 %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %50, align 8
  %52 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %53 = load i32, i32* @AI_Start_Stop, align 4
  %54 = load i32, i32* @AI_Mode_1_Reserved, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @AI_Mode_1_Register, align 4
  %57 = call i32 %51(%struct.comedi_device* %52, i32 %55, i32 %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %59, align 8
  %61 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %62 = load i32, i32* @AI_Mode_2_Register, align 4
  %63 = call i32 %60(%struct.comedi_device* %61, i32 0, i32 %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %65, align 8
  %67 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %68 = load i32, i32* @AI_Mode_3_Register, align 4
  %69 = call i32 %66(%struct.comedi_device* %67, i32 0, i32 %68)
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %71 = load i64, i64* @ni_reg_611x, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %101

73:                                               ; preds = %41
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %75, align 8
  %77 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %78 = load i32, i32* @AI_SHIFTIN_Pulse_Width, align 4
  %79 = load i32, i32* @AI_SOC_Polarity, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @AI_LOCALMUX_CLK_Pulse_Width, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @AI_Personal_Register, align 4
  %84 = call i32 %76(%struct.comedi_device* %77, i32 %82, i32 %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %86, align 8
  %88 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %89 = call i32 @AI_SCAN_IN_PROG_Output_Select(i32 3)
  %90 = call i32 @AI_EXTMUX_CLK_Output_Select(i32 0)
  %91 = or i32 %89, %90
  %92 = call i32 @AI_LOCALMUX_CLK_Output_Select(i32 2)
  %93 = or i32 %91, %92
  %94 = call i32 @AI_SC_TC_Output_Select(i32 3)
  %95 = or i32 %93, %94
  %96 = load i32, i32* @AI_CONVERT_Output_Enable_High, align 4
  %97 = call i32 @AI_CONVERT_Output_Select(i32 %96)
  %98 = or i32 %95, %97
  %99 = load i32, i32* @AI_Output_Control_Register, align 4
  %100 = call i32 %87(%struct.comedi_device* %88, i32 %98, i32 %99)
  br label %176

101:                                              ; preds = %41
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %103 = load i64, i64* @ni_reg_6143, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %133

105:                                              ; preds = %101
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %107, align 8
  %109 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %110 = load i32, i32* @AI_SHIFTIN_Pulse_Width, align 4
  %111 = load i32, i32* @AI_SOC_Polarity, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @AI_LOCALMUX_CLK_Pulse_Width, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @AI_Personal_Register, align 4
  %116 = call i32 %108(%struct.comedi_device* %109, i32 %114, i32 %115)
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %118, align 8
  %120 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %121 = call i32 @AI_SCAN_IN_PROG_Output_Select(i32 3)
  %122 = call i32 @AI_EXTMUX_CLK_Output_Select(i32 0)
  %123 = or i32 %121, %122
  %124 = call i32 @AI_LOCALMUX_CLK_Output_Select(i32 2)
  %125 = or i32 %123, %124
  %126 = call i32 @AI_SC_TC_Output_Select(i32 3)
  %127 = or i32 %125, %126
  %128 = load i32, i32* @AI_CONVERT_Output_Enable_Low, align 4
  %129 = call i32 @AI_CONVERT_Output_Select(i32 %128)
  %130 = or i32 %127, %129
  %131 = load i32, i32* @AI_Output_Control_Register, align 4
  %132 = call i32 %119(%struct.comedi_device* %120, i32 %130, i32 %131)
  br label %175

133:                                              ; preds = %101
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %135, align 8
  %137 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %138 = load i32, i32* @AI_SHIFTIN_Pulse_Width, align 4
  %139 = load i32, i32* @AI_SOC_Polarity, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @AI_CONVERT_Pulse_Width, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @AI_LOCALMUX_CLK_Pulse_Width, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @AI_Personal_Register, align 4
  %146 = call i32 %136(%struct.comedi_device* %137, i32 %144, i32 %145)
  %147 = call i32 @AI_SCAN_IN_PROG_Output_Select(i32 3)
  %148 = call i32 @AI_EXTMUX_CLK_Output_Select(i32 0)
  %149 = or i32 %147, %148
  %150 = call i32 @AI_LOCALMUX_CLK_Output_Select(i32 2)
  %151 = or i32 %149, %150
  %152 = call i32 @AI_SC_TC_Output_Select(i32 3)
  %153 = or i32 %151, %152
  store i32 %153, i32* %5, align 4
  %154 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %155 = load i64, i64* @ni_reg_622x, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %133
  %158 = load i32, i32* @AI_CONVERT_Output_Enable_High, align 4
  %159 = call i32 @AI_CONVERT_Output_Select(i32 %158)
  %160 = load i32, i32* %5, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %5, align 4
  br label %167

162:                                              ; preds = %133
  %163 = load i32, i32* @AI_CONVERT_Output_Enable_Low, align 4
  %164 = call i32 @AI_CONVERT_Output_Select(i32 %163)
  %165 = load i32, i32* %5, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %162, %157
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %169, align 8
  %171 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @AI_Output_Control_Register, align 4
  %174 = call i32 %170(%struct.comedi_device* %171, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %167, %105
  br label %176

176:                                              ; preds = %175, %73
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %178, align 8
  %180 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %181 = load i32, i32* @AI_SC_TC_Error_Confirm, align 4
  %182 = load i32, i32* @AI_START_Interrupt_Ack, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @AI_START2_Interrupt_Ack, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @AI_START1_Interrupt_Ack, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @AI_SC_TC_Interrupt_Ack, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @AI_Error_Interrupt_Ack, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @AI_STOP_Interrupt_Ack, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @Interrupt_A_Ack_Register, align 4
  %195 = call i32 %179(%struct.comedi_device* %180, i32 %193, i32 %194)
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %197, align 8
  %199 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %200 = load i32, i32* @AI_Configuration_End, align 4
  %201 = load i32, i32* @Joint_Reset_Register, align 4
  %202 = call i32 %198(%struct.comedi_device* %199, i32 %200, i32 %201)
  ret i32 0
}

declare dso_local i32 @ni_release_ai_mite_channel(%struct.comedi_device*) #1

declare dso_local i32 @ni_set_bits(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @ni_clear_ai_fifo(%struct.comedi_device*) #1

declare dso_local i32 @ni_writeb(i32, i32) #1

declare dso_local i32 @AI_SCAN_IN_PROG_Output_Select(i32) #1

declare dso_local i32 @AI_EXTMUX_CLK_Output_Select(i32) #1

declare dso_local i32 @AI_LOCALMUX_CLK_Output_Select(i32) #1

declare dso_local i32 @AI_SC_TC_Output_Select(i32) #1

declare dso_local i32 @AI_CONVERT_Output_Select(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
