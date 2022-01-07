; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_inttrig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_inttrig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (%struct.comedi_device*, i32)*, i32, i32, i32 (%struct.comedi_device*, i32, i32)* }
%struct.comedi_device = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@ni_ao_inttrig.timeout = internal constant i32 1000, align 4
@EINVAL = common dso_local global i32 0, align 4
@Interrupt_B_Enable_Register = common dso_local global i32 0, align 4
@AO_FIFO_Interrupt_Enable = common dso_local global i32 0, align 4
@AO_Error_Interrupt_Enable = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_5__* null, align 8
@AO_Not_An_UPDATE = common dso_local global i32 0, align 4
@AO_Mode_3_Register = common dso_local global i32 0, align 4
@Joint_Status_2_Register = common dso_local global i32 0, align 4
@AO_TMRDACWRs_In_Progress_St = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"timed out waiting for AO_TMRDACWRs_In_Progress_St to clear\00", align 1
@EIO = common dso_local global i32 0, align 4
@AO_Error_Interrupt_Ack = common dso_local global i32 0, align 4
@Interrupt_B_Ack_Register = common dso_local global i32 0, align 4
@AO_UI_Arm = common dso_local global i32 0, align 4
@AO_UC_Arm = common dso_local global i32 0, align 4
@AO_BC_Arm = common dso_local global i32 0, align 4
@AO_DAC1_Update_Mode = common dso_local global i32 0, align 4
@AO_DAC0_Update_Mode = common dso_local global i32 0, align 4
@AO_Command_1_Register = common dso_local global i32 0, align 4
@AO_START1_Pulse = common dso_local global i32 0, align 4
@AO_Command_2_Register = common dso_local global i32 0, align 4
@AO_FIFO_Offset_Load_611x = common dso_local global i32 0, align 4
@DAC_FIFO_Clear = common dso_local global i32 0, align 4
@boardtype = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ni_reg_6xxx_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @ni_ao_inttrig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ao_inttrig(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %129

16:                                               ; preds = %3
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %22 = load i32, i32* @Interrupt_B_Enable_Register, align 4
  %23 = load i32, i32* @AO_FIFO_Interrupt_Enable, align 4
  %24 = load i32, i32* @AO_Error_Interrupt_Enable, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @ni_set_bits(%struct.comedi_device* %21, i32 %22, i32 %25, i32 0)
  %27 = load i32, i32* @AO_Error_Interrupt_Enable, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %30 = call i32 @ni_ao_prep_fifo(%struct.comedi_device* %28, %struct.comedi_subdevice* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %16
  %34 = load i32, i32* @EPIPE, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %129

36:                                               ; preds = %16
  %37 = load i32, i32* @AO_FIFO_Interrupt_Enable, align 4
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  %42 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %41, align 8
  %43 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @AO_Not_An_UPDATE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @AO_Mode_3_Register, align 4
  %50 = call i32 %42(%struct.comedi_device* %43, i32 %48, i32 %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  %53 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %52, align 8
  %54 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @AO_Mode_3_Register, align 4
  %59 = call i32 %53(%struct.comedi_device* %54, i32 %57, i32 %58)
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %76, %36
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 1000
  br i1 %62, label %63, label %79

63:                                               ; preds = %60
  %64 = call i32 @udelay(i32 1)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32 (%struct.comedi_device*, i32)*, i32 (%struct.comedi_device*, i32)** %66, align 8
  %68 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %69 = load i32, i32* @Joint_Status_2_Register, align 4
  %70 = call i32 %67(%struct.comedi_device* %68, i32 %69)
  %71 = load i32, i32* @AO_TMRDACWRs_In_Progress_St, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %79

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %60

79:                                               ; preds = %74, %60
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, 1000
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %84 = call i32 @comedi_error(%struct.comedi_device* %83, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %129

87:                                               ; preds = %79
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 4
  %90 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %89, align 8
  %91 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %92 = load i32, i32* @AO_Error_Interrupt_Ack, align 4
  %93 = load i32, i32* @Interrupt_B_Ack_Register, align 4
  %94 = call i32 %90(%struct.comedi_device* %91, i32 %92, i32 %93)
  %95 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %96 = load i32, i32* @Interrupt_B_Enable_Register, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @ni_set_bits(%struct.comedi_device* %95, i32 %96, i32 %97, i32 1)
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 4
  %101 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %100, align 8
  %102 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @AO_UI_Arm, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @AO_UC_Arm, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @AO_BC_Arm, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @AO_DAC1_Update_Mode, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @AO_DAC0_Update_Mode, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @AO_Command_1_Register, align 4
  %117 = call i32 %101(%struct.comedi_device* %102, i32 %115, i32 %116)
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 4
  %120 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %119, align 8
  %121 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @AO_START1_Pulse, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @AO_Command_2_Register, align 4
  %128 = call i32 %120(%struct.comedi_device* %121, i32 %126, i32 %127)
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %87, %82, %33, %13
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @ni_set_bits(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @ni_ao_prep_fifo(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
