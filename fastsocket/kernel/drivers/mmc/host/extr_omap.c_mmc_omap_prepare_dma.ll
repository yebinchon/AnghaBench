; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_prepare_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_prepare_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_host = type { i32, i64, i64, i32 }
%struct.mmc_data = type { i32, i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@OMAP_MMC_REG_DATA = common dso_local global i64 0, align 8
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@OMAP_DMA_PORT_TIPB = common dso_local global i32 0, align 4
@OMAP_DMA_PORT_EMIFF = common dso_local global i32 0, align 4
@OMAP24XX_DMA_MMC1_RX = common dso_local global i32 0, align 4
@OMAP_DMA_AMODE_CONSTANT = common dso_local global i32 0, align 4
@OMAP_DMA_AMODE_POST_INC = common dso_local global i32 0, align 4
@OMAP_DMA_DATA_BURST_4 = common dso_local global i32 0, align 4
@OMAP24XX_DMA_MMC1_TX = common dso_local global i32 0, align 4
@BUF = common dso_local global i32 0, align 4
@OMAP_DMA_DATA_TYPE_S16 = common dso_local global i32 0, align 4
@OMAP_DMA_SYNC_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_omap_host*, %struct.mmc_data*)* @mmc_omap_prepare_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_prepare_dma(%struct.mmc_omap_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.mmc_omap_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mmc_omap_host* %0, %struct.mmc_omap_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %14 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %15 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %17, i32 0, i32 3
  %19 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %20 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %21 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %19, i64 %22
  store %struct.scatterlist* %23, %struct.scatterlist** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %24 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %25 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OMAP_MMC_REG_DATA, align 8
  %28 = add i64 %26, %27
  store i64 %28, i64* %6, align 8
  %29 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  %32 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %33 = call i32 @sg_dma_len(%struct.scatterlist* %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %35 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %46

38:                                               ; preds = %2
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %41 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %44, %38, %2
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %49 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = call i64 (...) @cpu_is_omap15xx()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = icmp sgt i32 %53, 32
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 32, i32* %8, align 4
  br label %61

56:                                               ; preds = %52, %46
  %57 = load i32, i32* %8, align 4
  %58 = icmp sgt i32 %57, 64
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 64, i32* %8, align 4
  br label %60

60:                                               ; preds = %59, %56
  br label %61

61:                                               ; preds = %60, %55
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = sdiv i32 %63, %62
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %8, align 4
  %66 = ashr i32 %65, 1
  store i32 %66, i32* %8, align 4
  %67 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %68 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @MMC_DATA_WRITE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %105, label %73

73:                                               ; preds = %61
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 %74, 1
  %76 = shl i32 %75, 8
  %77 = or i32 32783, %76
  store i32 %77, i32* %7, align 4
  %78 = call i64 (...) @cpu_class_is_omap1()
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* @OMAP_DMA_PORT_TIPB, align 4
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* @OMAP_DMA_PORT_EMIFF, align 4
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %80, %73
  %84 = call i64 (...) @cpu_is_omap24xx()
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* @OMAP24XX_DMA_MMC1_RX, align 4
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @OMAP_DMA_AMODE_CONSTANT, align 4
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @omap_set_dma_src_params(i32 %89, i32 %90, i32 %91, i64 %92, i32 0, i32 0)
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @OMAP_DMA_AMODE_POST_INC, align 4
  %97 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %98 = call i64 @sg_dma_address(%struct.scatterlist* %97)
  %99 = call i32 @omap_set_dma_dest_params(i32 %94, i32 %95, i32 %96, i64 %98, i32 0, i32 0)
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @omap_set_dma_dest_data_pack(i32 %100, i32 1)
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @OMAP_DMA_DATA_BURST_4, align 4
  %104 = call i32 @omap_set_dma_dest_burst_mode(i32 %102, i32 %103)
  br label %137

105:                                              ; preds = %61
  %106 = load i32, i32* %8, align 4
  %107 = sub nsw i32 %106, 1
  %108 = shl i32 %107, 0
  %109 = or i32 3968, %108
  store i32 %109, i32* %7, align 4
  %110 = call i64 (...) @cpu_class_is_omap1()
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load i32, i32* @OMAP_DMA_PORT_EMIFF, align 4
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* @OMAP_DMA_PORT_TIPB, align 4
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %112, %105
  %116 = call i64 (...) @cpu_is_omap24xx()
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i32, i32* @OMAP24XX_DMA_MMC1_TX, align 4
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %118, %115
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @OMAP_DMA_AMODE_CONSTANT, align 4
  %124 = load i64, i64* %6, align 8
  %125 = call i32 @omap_set_dma_dest_params(i32 %121, i32 %122, i32 %123, i64 %124, i32 0, i32 0)
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @OMAP_DMA_AMODE_POST_INC, align 4
  %129 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %130 = call i64 @sg_dma_address(%struct.scatterlist* %129)
  %131 = call i32 @omap_set_dma_src_params(i32 %126, i32 %127, i32 %128, i64 %130, i32 0, i32 0)
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @omap_set_dma_src_data_pack(i32 %132, i32 1)
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @OMAP_DMA_DATA_BURST_4, align 4
  %136 = call i32 @omap_set_dma_src_burst_mode(i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %120, %88
  %138 = load i32, i32* %9, align 4
  %139 = icmp sgt i32 %138, 65535
  %140 = zext i1 %139 to i32
  %141 = call i32 @BUG_ON(i32 %140)
  %142 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %143 = load i32, i32* @BUF, align 4
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %142, i32 %143, i32 %144)
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @OMAP_DMA_DATA_TYPE_S16, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @OMAP_DMA_SYNC_FRAME, align 4
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @omap_set_dma_transfer_params(i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 0)
  ret void
}

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i64 @cpu_is_omap15xx(...) #1

declare dso_local i64 @cpu_class_is_omap1(...) #1

declare dso_local i64 @cpu_is_omap24xx(...) #1

declare dso_local i32 @omap_set_dma_src_params(i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @omap_set_dma_dest_params(i32, i32, i32, i64, i32, i32) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @omap_set_dma_dest_data_pack(i32, i32) #1

declare dso_local i32 @omap_set_dma_dest_burst_mode(i32, i32) #1

declare dso_local i32 @omap_set_dma_src_data_pack(i32, i32) #1

declare dso_local i32 @omap_set_dma_src_burst_mode(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host*, i32, i32) #1

declare dso_local i32 @omap_set_dma_transfer_params(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
