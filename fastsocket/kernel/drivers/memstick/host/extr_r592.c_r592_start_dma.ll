; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_r592_start_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_r592_start_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r592_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@R592_REG_MSC = common dso_local global i32 0, align 4
@DMA_IRQ_ACK_MASK = common dso_local global i32 0, align 4
@DMA_IRQ_EN_MASK = common dso_local global i32 0, align 4
@R592_FIFO_DMA = common dso_local global i32 0, align 4
@R592_FIFO_DMA_SETTINGS = common dso_local global i32 0, align 4
@R592_FIFO_DMA_SETTINGS_EN = common dso_local global i32 0, align 4
@R592_FIFO_DMA_SETTINGS_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r592_device*, i32)* @r592_start_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r592_start_dma(%struct.r592_device* %0, i32 %1) #0 {
  %3 = alloca %struct.r592_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.r592_device* %0, %struct.r592_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %8 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %12 = load i32, i32* @R592_REG_MSC, align 4
  %13 = load i32, i32* @DMA_IRQ_ACK_MASK, align 4
  %14 = call i32 @r592_clear_reg_mask(%struct.r592_device* %11, i32 %12, i32 %13)
  %15 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %16 = load i32, i32* @R592_REG_MSC, align 4
  %17 = load i32, i32* @DMA_IRQ_EN_MASK, align 4
  %18 = call i32 @r592_set_reg_mask(%struct.r592_device* %15, i32 %16, i32 %17)
  %19 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %20 = load i32, i32* @R592_FIFO_DMA, align 4
  %21 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %22 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @sg_dma_address(i32* %24)
  %26 = call i32 @r592_write_reg(%struct.r592_device* %19, i32 %20, i32 %25)
  %27 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %28 = load i32, i32* @R592_FIFO_DMA_SETTINGS, align 4
  %29 = call i32 @r592_read_reg(%struct.r592_device* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @R592_FIFO_DMA_SETTINGS_EN, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @R592_FIFO_DMA_SETTINGS_DIR, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %44

39:                                               ; preds = %2
  %40 = load i32, i32* @R592_FIFO_DMA_SETTINGS_DIR, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %46 = load i32, i32* @R592_FIFO_DMA_SETTINGS, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @r592_write_reg(%struct.r592_device* %45, i32 %46, i32 %47)
  %49 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %50 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %49, i32 0, i32 0
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @r592_clear_reg_mask(%struct.r592_device*, i32, i32) #1

declare dso_local i32 @r592_set_reg_mask(%struct.r592_device*, i32, i32) #1

declare dso_local i32 @r592_write_reg(%struct.r592_device*, i32, i32) #1

declare dso_local i32 @sg_dma_address(i32*) #1

declare dso_local i32 @r592_read_reg(%struct.r592_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
