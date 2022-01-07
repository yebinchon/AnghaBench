; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_prepare_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_prepare_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xmmc_host = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.mmc_data = type { i32, i32, i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@HOST_F_RECV = common dso_local global i32 0, align 4
@HOST_F_XMIT = common dso_local global i32 0, align 4
@HOST_F_STOP = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@HOST_F_DMA = common dso_local global i32 0, align 4
@SD_CONFIG_TH = common dso_local global i32 0, align 4
@SD_CONFIG_NE = common dso_local global i32 0, align 4
@DDMA_FLAGS_IE = common dso_local global i64 0, align 8
@DDMA_FLAGS_NOIE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au1xmmc_host*, %struct.mmc_data*)* @au1xmmc_prepare_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xmmc_prepare_data(%struct.au1xmmc_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.au1xmmc_host*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  store %struct.au1xmmc_host* %0, %struct.au1xmmc_host** %4, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %5, align 8
  %7 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %8 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %11 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %15 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MMC_DATA_READ, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @HOST_F_RECV, align 4
  %22 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %23 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %32

26:                                               ; preds = %2
  %27 = load i32, i32* @HOST_F_XMIT, align 4
  %28 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %29 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %26, %20
  %33 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %34 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %33, i32 0, i32 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32, i32* @HOST_F_STOP, align 4
  %41 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %42 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %39, %32
  %46 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %47 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %48 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %51 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @mmc_dev(i32 %52)
  %54 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %55 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %54, i32 0, i32 4
  %56 = load %struct.scatterlist*, %struct.scatterlist** %55, align 8
  %57 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %58 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %61 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dma_map_sg(i32 %53, %struct.scatterlist* %56, i32 %59, i32 %63)
  %65 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %66 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %69 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %45
  %74 = load i32, i32* @ETIMEDOUT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %136

76:                                               ; preds = %45
  %77 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %78 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %82 = call i32 @HOST_BLKSIZE(%struct.au1xmmc_host* %81)
  %83 = call i32 @au_writel(i32 %80, i32 %82)
  %84 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %85 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @HOST_F_DMA, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %76
  br label %117

91:                                               ; preds = %76
  %92 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %93 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  store i64 0, i64* %94, align 8
  %95 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %96 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %100 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %103 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @HOST_F_XMIT, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %91
  %109 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %110 = load i32, i32* @SD_CONFIG_TH, align 4
  %111 = call i32 @IRQ_ON(%struct.au1xmmc_host* %109, i32 %110)
  br label %116

112:                                              ; preds = %91
  %113 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %114 = load i32, i32* @SD_CONFIG_NE, align 4
  %115 = call i32 @IRQ_ON(%struct.au1xmmc_host* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %108
  br label %117

117:                                              ; preds = %116, %90
  store i32 0, i32* %3, align 4
  br label %136

118:                                              ; No predecessors!
  %119 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %120 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @mmc_dev(i32 %121)
  %123 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %124 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %123, i32 0, i32 4
  %125 = load %struct.scatterlist*, %struct.scatterlist** %124, align 8
  %126 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %127 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %4, align 8
  %130 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @dma_unmap_sg(i32 %122, %struct.scatterlist* %125, i32 %128, i32 %132)
  %134 = load i32, i32* @ETIMEDOUT, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %118, %117, %73
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @au_writel(i32, i32) #1

declare dso_local i32 @HOST_BLKSIZE(%struct.au1xmmc_host*) #1

declare dso_local i32 @IRQ_ON(%struct.au1xmmc_host*, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
