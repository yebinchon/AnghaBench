; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_cdio_cancel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_cdio_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }

@CDO_Disarm_Bit = common dso_local global i32 0, align 4
@CDO_Error_Interrupt_Enable_Clear_Bit = common dso_local global i32 0, align 4
@CDO_Empty_FIFO_Interrupt_Enable_Clear_Bit = common dso_local global i32 0, align 4
@CDO_FIFO_Request_Interrupt_Enable_Clear_Bit = common dso_local global i32 0, align 4
@M_Offset_CDIO_Command = common dso_local global i32 0, align 4
@M_Offset_CDO_Mask_Enable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_cdio_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_cdio_cancel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %5 = load i32, i32* @CDO_Disarm_Bit, align 4
  %6 = load i32, i32* @CDO_Error_Interrupt_Enable_Clear_Bit, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @CDO_Empty_FIFO_Interrupt_Enable_Clear_Bit, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @CDO_FIFO_Request_Interrupt_Enable_Clear_Bit, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @M_Offset_CDIO_Command, align 4
  %13 = call i32 @ni_writel(i32 %11, i32 %12)
  %14 = load i32, i32* @M_Offset_CDO_Mask_Enable, align 4
  %15 = call i32 @ni_writel(i32 0, i32 %14)
  %16 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %17 = call i32 @ni_release_cdo_mite_channel(%struct.comedi_device* %16)
  ret i32 0
}

declare dso_local i32 @ni_writel(i32, i32) #1

declare dso_local i32 @ni_release_cdo_mite_channel(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
