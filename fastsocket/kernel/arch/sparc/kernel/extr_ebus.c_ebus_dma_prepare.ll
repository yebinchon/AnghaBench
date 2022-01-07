; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ebus.c_ebus_dma_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ebus.c_ebus_dma_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebus_dma_info = type { i32, i32, i64 }

@EBDMA_CSR_INT_EN = common dso_local global i32 0, align 4
@EBDMA_CSR_EN_CNT = common dso_local global i32 0, align 4
@EBDMA_CSR_BURST_SZ_16 = common dso_local global i32 0, align 4
@EBDMA_CSR_EN_NEXT = common dso_local global i32 0, align 4
@EBDMA_CSR_WRITE = common dso_local global i32 0, align 4
@EBUS_DMA_FLAG_TCI_DISABLE = common dso_local global i32 0, align 4
@EBDMA_CSR_TCI_DIS = common dso_local global i32 0, align 4
@EBDMA_CSR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ebus_dma_prepare(%struct.ebus_dma_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ebus_dma_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ebus_dma_info* %0, %struct.ebus_dma_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %3, align 8
  %8 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %3, align 8
  %12 = call i32 @__ebus_dma_reset(%struct.ebus_dma_info* %11, i32 0)
  %13 = load i32, i32* @EBDMA_CSR_INT_EN, align 4
  %14 = load i32, i32* @EBDMA_CSR_EN_CNT, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @EBDMA_CSR_BURST_SZ_16, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @EBDMA_CSR_EN_NEXT, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @EBDMA_CSR_WRITE, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %3, align 8
  %28 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @EBUS_DMA_FLAG_TCI_DISABLE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @EBDMA_CSR_TCI_DIS, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %26
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %3, align 8
  %40 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @EBDMA_CSR, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  %45 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %3, align 8
  %46 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %45, i32 0, i32 1
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__ebus_dma_reset(%struct.ebus_dma_info*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
