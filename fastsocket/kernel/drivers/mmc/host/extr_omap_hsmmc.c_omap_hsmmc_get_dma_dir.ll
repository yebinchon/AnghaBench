; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_get_dma_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_get_dma_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32 }
%struct.mmc_data = type { i32 }

@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hsmmc_host*, %struct.mmc_data*)* @omap_hsmmc_get_dma_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_get_dma_dir(%struct.omap_hsmmc_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_hsmmc_host*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %4, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %5, align 8
  %6 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %7 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MMC_DATA_WRITE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %13, i32* %3, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
