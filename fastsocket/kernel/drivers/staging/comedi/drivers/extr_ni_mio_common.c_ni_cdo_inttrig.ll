; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_cdo_inttrig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_cdo_inttrig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }

@M_Offset_CDIO_Status = common dso_local global i32 0, align 4
@CDO_FIFO_Full_Bit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"dma failed to fill cdo fifo!\00", align 1
@EIO = common dso_local global i32 0, align 4
@CDO_Arm_Bit = common dso_local global i32 0, align 4
@CDO_Error_Interrupt_Enable_Set_Bit = common dso_local global i32 0, align 4
@CDO_Empty_FIFO_Interrupt_Enable_Set_Bit = common dso_local global i32 0, align 4
@M_Offset_CDIO_Command = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @ni_cdo_inttrig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_cdo_inttrig(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
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
  store i32 0, i32* %8, align 4
  store i32 100, i32* %10, align 4
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @comedi_buf_read_alloc(%struct.TYPE_4__* %17, i32 %22)
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %36, %3
  %25 = load i32, i32* %9, align 4
  %26 = icmp ult i32 %25, 100
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load i32, i32* @M_Offset_CDIO_Status, align 4
  %29 = call i32 @ni_readl(i32 %28)
  %30 = load i32, i32* @CDO_FIFO_Full_Bit, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %39

34:                                               ; preds = %27
  %35 = call i32 @udelay(i32 10)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %9, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %24

39:                                               ; preds = %33, %24
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 100
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %44 = call i32 @comedi_error(%struct.comedi_device* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %47 = call i32 @ni_cdio_cancel(%struct.comedi_device* %45, %struct.comedi_subdevice* %46)
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %59

50:                                               ; preds = %39
  %51 = load i32, i32* @CDO_Arm_Bit, align 4
  %52 = load i32, i32* @CDO_Error_Interrupt_Enable_Set_Bit, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @CDO_Empty_FIFO_Interrupt_Enable_Set_Bit, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @M_Offset_CDIO_Command, align 4
  %57 = call i32 @ni_writel(i32 %55, i32 %56)
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %50, %42
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @comedi_buf_read_alloc(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ni_readl(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @ni_cdio_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @ni_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
