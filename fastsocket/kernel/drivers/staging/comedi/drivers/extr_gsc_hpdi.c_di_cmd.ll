; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_di_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_di_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64 }

@RX_FIFO_RESET_BIT = common dso_local global i32 0, align 4
@BOARD_CONTROL_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"hpdi: in di_cmd\0A\00", align 1
@PLX_DMA0_TRANSFER_SIZE_REG = common dso_local global i64 0, align 8
@PLX_DMA0_PCI_ADDRESS_REG = common dso_local global i64 0, align 8
@PLX_DMA0_LOCAL_ADDRESS_REG = common dso_local global i64 0, align 8
@PLX_DESC_IN_PCI_BIT = common dso_local global i32 0, align 4
@PLX_INTR_TERM_COUNT = common dso_local global i32 0, align 4
@PLX_XFER_LOCAL_TO_PCI = common dso_local global i32 0, align 4
@PLX_DMA0_DESCRIPTOR_REG = common dso_local global i64 0, align 8
@PLX_DMA_EN_BIT = common dso_local global i32 0, align 4
@PLX_DMA_START_BIT = common dso_local global i32 0, align 4
@PLX_CLEAR_DMA_INTR_BIT = common dso_local global i32 0, align 4
@PLX_DMA0_CS_REG = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@RX_UNDERRUN_BIT = common dso_local global i32 0, align 4
@RX_OVERRUN_BIT = common dso_local global i32 0, align 4
@BOARD_STATUS_REG = common dso_local global i64 0, align 8
@RX_FULL_INTR = common dso_local global i32 0, align 4
@INTERRUPT_CONTROL_REG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"hpdi: starting rx\0A\00", align 1
@RX_ENABLE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @di_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @di_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.comedi_async*, align 8
  %8 = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %10 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %9, i32 0, i32 0
  %11 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  store %struct.comedi_async* %11, %struct.comedi_async** %7, align 8
  %12 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %13 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %12, i32 0, i32 0
  store %struct.comedi_cmd* %13, %struct.comedi_cmd** %8, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %15 = load i32, i32* @RX_FIFO_RESET_BIT, align 4
  %16 = load i32, i32* @BOARD_CONTROL_REG, align 4
  %17 = call i32 @hpdi_writel(%struct.comedi_device* %14, i32 %15, i32 %16)
  %18 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %20 = call i32 @abort_dma(%struct.comedi_device* %19, i32 0)
  %21 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %22 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %25 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PLX_DMA0_TRANSFER_SIZE_REG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 0, i64 %29)
  %31 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %32 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PLX_DMA0_PCI_ADDRESS_REG, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 0, i64 %36)
  %38 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %39 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PLX_DMA0_LOCAL_ADDRESS_REG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 0, i64 %43)
  %45 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %46 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PLX_DESC_IN_PCI_BIT, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @PLX_INTR_TERM_COUNT, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @PLX_XFER_LOCAL_TO_PCI, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %57 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PLX_DMA0_DESCRIPTOR_REG, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %55, i64 %61)
  %63 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 0
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  %67 = load i32, i32* @PLX_DMA_EN_BIT, align 4
  %68 = load i32, i32* @PLX_DMA_START_BIT, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @PLX_CLEAR_DMA_INTR_BIT, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %73 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @PLX_DMA0_CS_REG, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writeb(i32 %71, i64 %77)
  %79 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %80 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %79, i32 0, i32 0
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %84 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @TRIG_COUNT, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %2
  %89 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %90 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %93 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %92)
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  br label %99

95:                                               ; preds = %2
  %96 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %97 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %96)
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %88
  %100 = load i32, i32* @RX_UNDERRUN_BIT, align 4
  %101 = load i32, i32* @RX_OVERRUN_BIT, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %104 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %103)
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @BOARD_STATUS_REG, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writel(i32 %102, i64 %108)
  %110 = load i32, i32* @RX_FULL_INTR, align 4
  %111 = call i32 @intr_bit(i32 %110)
  %112 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %113 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %112)
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @INTERRUPT_CONTROL_REG, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel(i32 %111, i64 %117)
  %119 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %120 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %121 = load i32, i32* @RX_ENABLE_BIT, align 4
  %122 = load i32, i32* @BOARD_CONTROL_REG, align 4
  %123 = call i32 @hpdi_writel(%struct.comedi_device* %120, i32 %121, i32 %122)
  ret i32 0
}

declare dso_local i32 @hpdi_writel(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @DEBUG_PRINT(i8*) #1

declare dso_local i32 @abort_dma(%struct.comedi_device*, i32) #1

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @intr_bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
