; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_config_dma_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_config_dma_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_data = type { i32 }
%struct.scatterlist = type { i32 }

@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@OMAP_DMA_AMODE_CONSTANT = common dso_local global i32 0, align 4
@OMAP_HSMMC_DATA = common dso_local global i64 0, align 8
@OMAP_DMA_AMODE_POST_INC = common dso_local global i32 0, align 4
@OMAP_DMA_DATA_TYPE_S32 = common dso_local global i32 0, align 4
@OMAP_DMA_SYNC_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hsmmc_host*, %struct.mmc_data*, %struct.scatterlist*)* @omap_hsmmc_config_dma_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_hsmmc_config_dma_params(%struct.omap_hsmmc_host* %0, %struct.mmc_data* %1, %struct.scatterlist* %2) #0 {
  %4 = alloca %struct.omap_hsmmc_host*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %4, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %5, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %6, align 8
  %10 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %11 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %14 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MMC_DATA_WRITE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @OMAP_DMA_AMODE_CONSTANT, align 4
  %22 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %23 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @OMAP_HSMMC_DATA, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @omap_set_dma_dest_params(i32 %20, i32 0, i32 %21, i64 %26, i32 0, i32 0)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @OMAP_DMA_AMODE_POST_INC, align 4
  %30 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %31 = call i64 @sg_dma_address(%struct.scatterlist* %30)
  %32 = call i32 @omap_set_dma_src_params(i32 %28, i32 0, i32 %29, i64 %31, i32 0, i32 0)
  br label %47

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @OMAP_DMA_AMODE_CONSTANT, align 4
  %36 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %37 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @OMAP_HSMMC_DATA, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @omap_set_dma_src_params(i32 %34, i32 0, i32 %35, i64 %40, i32 0, i32 0)
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @OMAP_DMA_AMODE_POST_INC, align 4
  %44 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %45 = call i64 @sg_dma_address(%struct.scatterlist* %44)
  %46 = call i32 @omap_set_dma_dest_params(i32 %42, i32 0, i32 %43, i64 %45, i32 0, i32 0)
  br label %47

47:                                               ; preds = %33, %19
  %48 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %49 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %7, align 4
  %53 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %54 = call i32 @sg_dma_len(%struct.scatterlist* %53)
  %55 = load i32, i32* %7, align 4
  %56 = sdiv i32 %54, %55
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @OMAP_DMA_DATA_TYPE_S32, align 4
  %59 = load i32, i32* %7, align 4
  %60 = sdiv i32 %59, 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @OMAP_DMA_SYNC_FRAME, align 4
  %63 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %64 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %65 = call i32 @omap_hsmmc_get_dma_sync_dev(%struct.omap_hsmmc_host* %63, %struct.mmc_data* %64)
  %66 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %67 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MMC_DATA_WRITE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @omap_set_dma_transfer_params(i32 %57, i32 %58, i32 %60, i32 %61, i32 %62, i32 %65, i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @omap_start_dma(i32 %75)
  ret void
}

declare dso_local i32 @omap_set_dma_dest_params(i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @omap_set_dma_src_params(i32, i32, i32, i64, i32, i32) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @omap_set_dma_transfer_params(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @omap_hsmmc_get_dma_sync_dev(%struct.omap_hsmmc_host*, %struct.mmc_data*) #1

declare dso_local i32 @omap_start_dma(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
