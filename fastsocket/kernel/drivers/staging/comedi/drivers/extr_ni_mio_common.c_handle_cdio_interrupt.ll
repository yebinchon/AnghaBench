; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_handle_cdio_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_handle_cdio_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@NI_DIO_SUBDEV = common dso_local global i32 0, align 4
@boardtype = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@ni_reg_m_series_mask = common dso_local global i32 0, align 4
@M_Offset_CDIO_Status = common dso_local global i32 0, align 4
@CDO_Overrun_Bit = common dso_local global i32 0, align 4
@CDO_Underflow_Bit = common dso_local global i32 0, align 4
@CDO_Error_Interrupt_Confirm_Bit = common dso_local global i32 0, align 4
@M_Offset_CDIO_Command = common dso_local global i32 0, align 4
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@CDO_FIFO_Empty_Bit = common dso_local global i32 0, align 4
@CDO_Empty_FIFO_Interrupt_Enable_Clear_Bit = common dso_local global i32 0, align 4
@CHOR_CLRLC = common dso_local global i32 0, align 4
@CHSR_LINKC = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @handle_cdio_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_cdio_interrupt(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 0
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %8 = load i32, i32* @NI_DIO_SUBDEV, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i64 %9
  store %struct.comedi_subdevice* %10, %struct.comedi_subdevice** %4, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @boardtype, i32 0, i32 0), align 4
  %12 = load i32, i32* @ni_reg_m_series_mask, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %49

16:                                               ; preds = %1
  %17 = load i32, i32* @M_Offset_CDIO_Status, align 4
  %18 = call i32 @ni_readl(i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @CDO_Overrun_Bit, align 4
  %21 = load i32, i32* @CDO_Underflow_Bit, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %16
  %26 = load i32, i32* @CDO_Error_Interrupt_Confirm_Bit, align 4
  %27 = load i32, i32* @M_Offset_CDIO_Command, align 4
  %28 = call i32 @ni_writel(i32 %26, i32 %27)
  %29 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %31 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %29
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %25, %16
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @CDO_FIFO_Empty_Bit, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @CDO_Empty_FIFO_Interrupt_Enable_Clear_Bit, align 4
  %43 = load i32, i32* @M_Offset_CDIO_Command, align 4
  %44 = call i32 @ni_writel(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %36
  %46 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %48 = call i32 @ni_event(%struct.comedi_device* %46, %struct.comedi_subdevice* %47)
  br label %49

49:                                               ; preds = %45, %15
  ret void
}

declare dso_local i32 @ni_readl(i32) #1

declare dso_local i32 @ni_writel(i32, i32) #1

declare dso_local i32 @ni_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
