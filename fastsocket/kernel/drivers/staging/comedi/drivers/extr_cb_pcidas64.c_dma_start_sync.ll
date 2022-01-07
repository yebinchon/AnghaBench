; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_dma_start_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_dma_start_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.TYPE_2__ = type { i64 }

@PLX_DMA_EN_BIT = common dso_local global i32 0, align 4
@PLX_DMA_START_BIT = common dso_local global i32 0, align 4
@PLX_CLEAR_DMA_INTR_BIT = common dso_local global i32 0, align 4
@PLX_DMA1_CS_REG = common dso_local global i64 0, align 8
@PLX_DMA0_CS_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32)* @dma_start_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_start_sync(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load i32, i32* @PLX_DMA_EN_BIT, align 4
  %14 = load i32, i32* @PLX_DMA_START_BIT, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @PLX_CLEAR_DMA_INTR_BIT, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %19 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PLX_DMA1_CS_REG, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writeb(i32 %17, i64 %23)
  br label %38

25:                                               ; preds = %2
  %26 = load i32, i32* @PLX_DMA_EN_BIT, align 4
  %27 = load i32, i32* @PLX_DMA_START_BIT, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PLX_CLEAR_DMA_INTR_BIT, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %32 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PLX_DMA0_CS_REG, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writeb(i32 %30, i64 %36)
  br label %38

38:                                               ; preds = %25, %12
  %39 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 0
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
