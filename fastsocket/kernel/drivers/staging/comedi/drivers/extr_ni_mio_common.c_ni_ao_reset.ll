; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 (%struct.comedi_device*, i32, i32)* }
%struct.comedi_device = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.comedi_subdevice = type { i32 }

@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@AO_Configuration_Start = common dso_local global i32 0, align 4
@Joint_Reset_Register = common dso_local global i32 0, align 4
@AO_Disarm = common dso_local global i32 0, align 4
@AO_Command_1_Register = common dso_local global i32 0, align 4
@Interrupt_B_Enable_Register = common dso_local global i32 0, align 4
@AO_BC_Source_Select = common dso_local global i32 0, align 4
@AO_Personal_Register = common dso_local global i32 0, align 4
@Interrupt_B_Ack_Register = common dso_local global i32 0, align 4
@AO_UPDATE_Pulse_Width = common dso_local global i32 0, align 4
@AO_TMRDACWR_Pulse_Width = common dso_local global i32 0, align 4
@AO_Output_Control_Register = common dso_local global i32 0, align 4
@AO_Start_Select_Register = common dso_local global i32 0, align 4
@AO_Command_2_Register = common dso_local global i32 0, align 4
@AO_Mode_1_Register = common dso_local global i32 0, align 4
@AO_Mode_2_Register = common dso_local global i32 0, align 4
@boardtype = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ni_reg_m_series_mask = common dso_local global i32 0, align 4
@AO_Last_Gate_Disable = common dso_local global i32 0, align 4
@AO_Mode_3_Register = common dso_local global i32 0, align 4
@AO_Trigger_Select_Register = common dso_local global i32 0, align 4
@ni_reg_6xxx_mask = common dso_local global i32 0, align 4
@AO_Immediate_671x = common dso_local global i32 0, align 4
@CLEAR_WG = common dso_local global i32 0, align 4
@AO_Misc_611x = common dso_local global i32 0, align 4
@AO_Configuration_End = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_ao_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ao_reset(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = call i32 @ni_release_ao_mite_channel(%struct.comedi_device* %7)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 6
  %11 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %10, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %13 = load i32, i32* @AO_Configuration_Start, align 4
  %14 = load i32, i32* @Joint_Reset_Register, align 4
  %15 = call i32 %11(%struct.comedi_device* %12, i32 %13, i32 %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 6
  %18 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %17, align 8
  %19 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %20 = load i32, i32* @AO_Disarm, align 4
  %21 = load i32, i32* @AO_Command_1_Register, align 4
  %22 = call i32 %18(%struct.comedi_device* %19, i32 %20, i32 %21)
  %23 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %24 = load i32, i32* @Interrupt_B_Enable_Register, align 4
  %25 = call i32 @ni_set_bits(%struct.comedi_device* %23, i32 %24, i32 -1, i32 0)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 6
  %28 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %27, align 8
  %29 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %30 = load i32, i32* @AO_BC_Source_Select, align 4
  %31 = load i32, i32* @AO_Personal_Register, align 4
  %32 = call i32 %28(%struct.comedi_device* %29, i32 %30, i32 %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 6
  %35 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %34, align 8
  %36 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %37 = load i32, i32* @Interrupt_B_Ack_Register, align 4
  %38 = call i32 %35(%struct.comedi_device* %36, i32 16280, i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 6
  %41 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %40, align 8
  %42 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %43 = load i32, i32* @AO_BC_Source_Select, align 4
  %44 = load i32, i32* @AO_UPDATE_Pulse_Width, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @AO_TMRDACWR_Pulse_Width, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @AO_Personal_Register, align 4
  %49 = call i32 %41(%struct.comedi_device* %42, i32 %47, i32 %48)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 6
  %52 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %51, align 8
  %53 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %54 = load i32, i32* @AO_Output_Control_Register, align 4
  %55 = call i32 %52(%struct.comedi_device* %53, i32 0, i32 %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 6
  %58 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %57, align 8
  %59 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %60 = load i32, i32* @AO_Start_Select_Register, align 4
  %61 = call i32 %58(%struct.comedi_device* %59, i32 0, i32 %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 6
  %66 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %65, align 8
  %67 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @AO_Command_1_Register, align 4
  %72 = call i32 %66(%struct.comedi_device* %67, i32 %70, i32 %71)
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 6
  %77 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %76, align 8
  %78 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @AO_Command_2_Register, align 4
  %83 = call i32 %77(%struct.comedi_device* %78, i32 %81, i32 %82)
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  store i32 0, i32* %85, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 6
  %88 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %87, align 8
  %89 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @AO_Mode_1_Register, align 4
  %94 = call i32 %88(%struct.comedi_device* %89, i32 %92, i32 %93)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  store i32 0, i32* %96, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 6
  %99 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %98, align 8
  %100 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @AO_Mode_2_Register, align 4
  %105 = call i32 %99(%struct.comedi_device* %100, i32 %103, i32 %104)
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 4
  %107 = load i32, i32* @ni_reg_m_series_mask, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %2
  %111 = load i32, i32* @AO_Last_Gate_Disable, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  br label %117

114:                                              ; preds = %2
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 4
  store i32 0, i32* %116, align 8
  br label %117

117:                                              ; preds = %114, %110
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 6
  %120 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %119, align 8
  %121 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @AO_Mode_3_Register, align 4
  %126 = call i32 %120(%struct.comedi_device* %121, i32 %124, i32 %125)
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 5
  store i32 0, i32* %128, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 6
  %131 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %130, align 8
  %132 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @AO_Trigger_Select_Register, align 4
  %137 = call i32 %131(%struct.comedi_device* %132, i32 %135, i32 %136)
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 4
  %139 = load i32, i32* @ni_reg_6xxx_mask, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %164

142:                                              ; preds = %117
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %143

143:                                              ; preds = %154, %142
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %146 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ult i32 %144, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %143
  %150 = load i32, i32* %6, align 4
  %151 = shl i32 1, %150
  %152 = load i32, i32* %5, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %149
  %155 = load i32, i32* %6, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %6, align 4
  br label %143

157:                                              ; preds = %143
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @AO_Immediate_671x, align 4
  %160 = call i32 @ao_win_out(i32 %158, i32 %159)
  %161 = load i32, i32* @CLEAR_WG, align 4
  %162 = load i32, i32* @AO_Misc_611x, align 4
  %163 = call i32 @ao_win_out(i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %157, %117
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 6
  %167 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %166, align 8
  %168 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %169 = load i32, i32* @AO_Configuration_End, align 4
  %170 = load i32, i32* @Joint_Reset_Register, align 4
  %171 = call i32 %167(%struct.comedi_device* %168, i32 %169, i32 %170)
  ret i32 0
}

declare dso_local i32 @ni_release_ao_mite_channel(%struct.comedi_device*) #1

declare dso_local i32 @ni_set_bits(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @ao_win_out(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
