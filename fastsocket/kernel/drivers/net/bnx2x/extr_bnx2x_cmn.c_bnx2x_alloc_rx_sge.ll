; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_alloc_rx_sge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_alloc_rx_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2x_fastpath = type { %struct.eth_rx_sge*, %struct.sw_rx_page* }
%struct.eth_rx_sge = type { i8*, i8* }
%struct.sw_rx_page = type { %struct.page* }
%struct.page = type { i32 }

@PAGES_PER_SGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Can't alloc sge\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SGE_PAGES = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Can't map sge\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_fastpath*, i64, i32)* @bnx2x_alloc_rx_sge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_alloc_rx_sge(%struct.bnx2x* %0, %struct.bnx2x_fastpath* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.bnx2x_fastpath*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.sw_rx_page*, align 8
  %12 = alloca %struct.eth_rx_sge*, align 8
  %13 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.bnx2x_fastpath* %1, %struct.bnx2x_fastpath** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @PAGES_PER_SGE_SHIFT, align 4
  %16 = call %struct.page* @alloc_pages(i32 %14, i32 %15)
  store %struct.page* %16, %struct.page** %10, align 8
  %17 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %7, align 8
  %18 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %17, i32 0, i32 1
  %19 = load %struct.sw_rx_page*, %struct.sw_rx_page** %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.sw_rx_page, %struct.sw_rx_page* %19, i64 %20
  store %struct.sw_rx_page* %21, %struct.sw_rx_page** %11, align 8
  %22 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %7, align 8
  %23 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %22, i32 0, i32 0
  %24 = load %struct.eth_rx_sge*, %struct.eth_rx_sge** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.eth_rx_sge, %struct.eth_rx_sge* %24, i64 %25
  store %struct.eth_rx_sge* %26, %struct.eth_rx_sge** %12, align 8
  %27 = load %struct.page*, %struct.page** %10, align 8
  %28 = icmp eq %struct.page* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %78

36:                                               ; preds = %4
  %37 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %38 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.page*, %struct.page** %10, align 8
  %42 = load i32, i32* @SGE_PAGES, align 4
  %43 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %44 = call i32 @dma_map_page(i32* %40, %struct.page* %41, i32 0, i32 %42, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %46 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @dma_mapping_error(i32* %48, i32 %49)
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %36
  %54 = load %struct.page*, %struct.page** %10, align 8
  %55 = load i32, i32* @PAGES_PER_SGE_SHIFT, align 4
  %56 = call i32 @__free_pages(%struct.page* %54, i32 %55)
  %57 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %78

60:                                               ; preds = %36
  %61 = load %struct.page*, %struct.page** %10, align 8
  %62 = load %struct.sw_rx_page*, %struct.sw_rx_page** %11, align 8
  %63 = getelementptr inbounds %struct.sw_rx_page, %struct.sw_rx_page* %62, i32 0, i32 0
  store %struct.page* %61, %struct.page** %63, align 8
  %64 = load %struct.sw_rx_page*, %struct.sw_rx_page** %11, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @dma_unmap_addr_set(%struct.sw_rx_page* %64, i32 %65, i32 %66)
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @U64_HI(i32 %68)
  %70 = call i8* @cpu_to_le32(i32 %69)
  %71 = load %struct.eth_rx_sge*, %struct.eth_rx_sge** %12, align 8
  %72 = getelementptr inbounds %struct.eth_rx_sge, %struct.eth_rx_sge* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @U64_LO(i32 %73)
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = load %struct.eth_rx_sge*, %struct.eth_rx_sge** %12, align 8
  %77 = getelementptr inbounds %struct.eth_rx_sge, %struct.eth_rx_sge* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %60, %53, %32
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @dma_map_page(i32*, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.sw_rx_page*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
