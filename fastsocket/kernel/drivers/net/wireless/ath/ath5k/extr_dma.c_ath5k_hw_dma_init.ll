; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_dma.c_ath5k_hw_dma_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_dma.c_ath5k_hw_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i32 }

@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_TXCFG = common dso_local global i32 0, align 4
@AR5K_TXCFG_SDMAMR = common dso_local global i32 0, align 4
@AR5K_DMASIZE_128B = common dso_local global i32 0, align 4
@AR5K_RXCFG = common dso_local global i32 0, align 4
@AR5K_RXCFG_SDMAMW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_hw_dma_init(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %3 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %4 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @AR5K_AR5210, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %10 = load i32, i32* @AR5K_TXCFG, align 4
  %11 = load i32, i32* @AR5K_TXCFG_SDMAMR, align 4
  %12 = load i32, i32* @AR5K_DMASIZE_128B, align 4
  %13 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %9, i32 %10, i32 %11, i32 %12)
  %14 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %15 = load i32, i32* @AR5K_RXCFG, align 4
  %16 = load i32, i32* @AR5K_RXCFG_SDMAMW, align 4
  %17 = load i32, i32* @AR5K_DMASIZE_128B, align 4
  %18 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %14, i32 %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %8, %1
  %20 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %21 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AR5K_AR5210, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %27 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %28 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ath5k_hw_set_imr(%struct.ath5k_hw* %26, i32 %29)
  br label %31

31:                                               ; preds = %25, %19
  ret void
}

declare dso_local i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw*, i32, i32, i32) #1

declare dso_local i32 @ath5k_hw_set_imr(%struct.ath5k_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
