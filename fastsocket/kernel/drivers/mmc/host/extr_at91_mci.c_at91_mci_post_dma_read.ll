; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_at91_mci.c_at91_mci_post_dma_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_at91_mci.c_at91_mci_post_dma_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91mci_host = type { i64, i64, %struct.mmc_command* }
%struct.mmc_command = type { %struct.mmc_data* }
%struct.mmc_data = type { i64, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"post dma read\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"no command\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"no data\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"finishing index %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Unmapping page %08X\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@KM_BIO_SRC_IRQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"buffer = %p, length = %d\0A\00", align 1
@AT91_MCI_IDR = common dso_local global i32 0, align 4
@AT91_MCI_ENDRX = common dso_local global i32 0, align 4
@AT91_MCI_IER = common dso_local global i32 0, align 4
@AT91_MCI_RXBUFF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"post dma read done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91mci_host*)* @at91_mci_post_dma_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_mci_post_dma_read(%struct.at91mci_host* %0) #0 {
  %2 = alloca %struct.at91mci_host*, align 8
  %3 = alloca %struct.mmc_command*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.at91mci_host* %0, %struct.at91mci_host** %2, align 8
  %8 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %10 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %9, i32 0, i32 2
  %11 = load %struct.mmc_command*, %struct.mmc_command** %10, align 8
  store %struct.mmc_command* %11, %struct.mmc_command** %3, align 8
  %12 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %13 = icmp ne %struct.mmc_command* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %133

16:                                               ; preds = %1
  %17 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %18 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %17, i32 0, i32 0
  %19 = load %struct.mmc_data*, %struct.mmc_data** %18, align 8
  store %struct.mmc_data* %19, %struct.mmc_data** %4, align 8
  %20 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %21 = icmp ne %struct.mmc_data* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %133

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %100, %24
  %26 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %27 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %30 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %111

33:                                               ; preds = %25
  %34 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %35 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %36)
  %38 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %39 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %38, i32 0, i32 2
  %40 = load %struct.scatterlist*, %struct.scatterlist** %39, align 8
  %41 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %42 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %40, i64 %43
  store %struct.scatterlist* %45, %struct.scatterlist** %5, align 8
  %46 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %47 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %51 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %54 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %57 = call i32 @dma_unmap_page(i32* null, i32 %52, i32 %55, i32 %56)
  %58 = call i64 (...) @cpu_is_at91rm9200()
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %100

60:                                               ; preds = %33
  %61 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %62 = call i32 @sg_page(%struct.scatterlist* %61)
  %63 = load i32, i32* @KM_BIO_SRC_IRQ, align 4
  %64 = call i32* @kmap_atomic(i32 %62, i32 %63)
  %65 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %66 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  store i32* %69, i32** %6, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %72 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32* %70, i32 %73)
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %93, %60
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %78 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sdiv i32 %79, 4
  %81 = icmp slt i32 %76, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %75
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @swab32(i32 %87)
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %88, i32* %92, align 4
  br label %93

93:                                               ; preds = %82
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %75

96:                                               ; preds = %75
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* @KM_BIO_SRC_IRQ, align 4
  %99 = call i32 @kunmap_atomic(i32* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %33
  %101 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %102 = call i32 @sg_page(%struct.scatterlist* %101)
  %103 = call i32 @flush_dcache_page(i32 %102)
  %104 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %105 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %108 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %25

111:                                              ; preds = %25
  %112 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %113 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %116 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp slt i64 %114, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %111
  %120 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %121 = call i32 @at91_mci_pre_dma_read(%struct.at91mci_host* %120)
  br label %131

122:                                              ; preds = %111
  %123 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %124 = load i32, i32* @AT91_MCI_IDR, align 4
  %125 = load i32, i32* @AT91_MCI_ENDRX, align 4
  %126 = call i32 @at91_mci_write(%struct.at91mci_host* %123, i32 %124, i32 %125)
  %127 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %128 = load i32, i32* @AT91_MCI_IER, align 4
  %129 = load i32, i32* @AT91_MCI_RXBUFF, align 4
  %130 = call i32 @at91_mci_write(%struct.at91mci_host* %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %122, %119
  %132 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %22, %14
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i64 @cpu_is_at91rm9200(...) #1

declare dso_local i32* @kmap_atomic(i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @kunmap_atomic(i32*, i32) #1

declare dso_local i32 @flush_dcache_page(i32) #1

declare dso_local i32 @at91_mci_pre_dma_read(%struct.at91mci_host*) #1

declare dso_local i32 @at91_mci_write(%struct.at91mci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
