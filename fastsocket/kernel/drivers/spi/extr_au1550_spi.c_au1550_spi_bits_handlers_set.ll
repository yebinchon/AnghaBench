; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_au1550_spi.c_au1550_spi_bits_handlers_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_au1550_spi.c_au1550_spi_bits_handlers_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1550_spi = type { i32*, i32*, i32*, i32*, i64 }

@au1550_spi_dma_txrxb = common dso_local global i32 0, align 4
@au1550_spi_dma_irq_callback = common dso_local global i32 0, align 4
@au1550_spi_rx_word_8 = common dso_local global i32 0, align 4
@au1550_spi_tx_word_8 = common dso_local global i32 0, align 4
@au1550_spi_pio_txrxb = common dso_local global i32 0, align 4
@au1550_spi_pio_irq_callback = common dso_local global i32 0, align 4
@au1550_spi_rx_word_16 = common dso_local global i32 0, align 4
@au1550_spi_tx_word_16 = common dso_local global i32 0, align 4
@au1550_spi_rx_word_32 = common dso_local global i32 0, align 4
@au1550_spi_tx_word_32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1550_spi*, i32)* @au1550_spi_bits_handlers_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1550_spi_bits_handlers_set(%struct.au1550_spi* %0, i32 %1) #0 {
  %3 = alloca %struct.au1550_spi*, align 8
  %4 = alloca i32, align 4
  store %struct.au1550_spi* %0, %struct.au1550_spi** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sle i32 %5, 8
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %9 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %14 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %13, i32 0, i32 1
  store i32* @au1550_spi_dma_txrxb, i32** %14, align 8
  %15 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %16 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %15, i32 0, i32 0
  store i32* @au1550_spi_dma_irq_callback, i32** %16, align 8
  br label %26

17:                                               ; preds = %7
  %18 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %19 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %18, i32 0, i32 3
  store i32* @au1550_spi_rx_word_8, i32** %19, align 8
  %20 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %21 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %20, i32 0, i32 2
  store i32* @au1550_spi_tx_word_8, i32** %21, align 8
  %22 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %23 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %22, i32 0, i32 1
  store i32* @au1550_spi_pio_txrxb, i32** %23, align 8
  %24 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %25 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %24, i32 0, i32 0
  store i32* @au1550_spi_pio_irq_callback, i32** %25, align 8
  br label %26

26:                                               ; preds = %17, %12
  br label %49

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp sle i32 %28, 16
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %32 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %31, i32 0, i32 3
  store i32* @au1550_spi_rx_word_16, i32** %32, align 8
  %33 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %34 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %33, i32 0, i32 2
  store i32* @au1550_spi_tx_word_16, i32** %34, align 8
  %35 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %36 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %35, i32 0, i32 1
  store i32* @au1550_spi_pio_txrxb, i32** %36, align 8
  %37 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %38 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %37, i32 0, i32 0
  store i32* @au1550_spi_pio_irq_callback, i32** %38, align 8
  br label %48

39:                                               ; preds = %27
  %40 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %41 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %40, i32 0, i32 3
  store i32* @au1550_spi_rx_word_32, i32** %41, align 8
  %42 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %43 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %42, i32 0, i32 2
  store i32* @au1550_spi_tx_word_32, i32** %43, align 8
  %44 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %45 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %44, i32 0, i32 1
  store i32* @au1550_spi_pio_txrxb, i32** %45, align 8
  %46 = load %struct.au1550_spi*, %struct.au1550_spi** %3, align 8
  %47 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %46, i32 0, i32 0
  store i32* @au1550_spi_pio_irq_callback, i32** %47, align 8
  br label %48

48:                                               ; preds = %39, %30
  br label %49

49:                                               ; preds = %48, %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
