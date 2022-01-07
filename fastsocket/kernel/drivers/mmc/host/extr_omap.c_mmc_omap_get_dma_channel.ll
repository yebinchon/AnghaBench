; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_get_dma_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_get_dma_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_host = type { i32, i32, i64, i32, i32 }
%struct.mmc_data = type { i32 }

@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@OMAP_DMA_MMC_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"MMC1 read\00", align 1
@OMAP_DMA_MMC2_RX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"MMC2 read\00", align 1
@OMAP_DMA_MMC_TX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"MMC1 write\00", align 1
@OMAP_DMA_MMC2_TX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"MMC2 write\00", align 1
@mmc_omap_dma_cb = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"omap_request_dma() failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_omap_host*, %struct.mmc_data*)* @mmc_omap_get_dma_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_omap_get_dma_channel(%struct.mmc_omap_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_omap_host*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mmc_omap_host* %0, %struct.mmc_omap_host** %4, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %5, align 8
  %11 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %12 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MMC_DATA_WRITE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %19, i32 0, i32 4
  %21 = call i32 @del_timer_sync(i32* %20)
  %22 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %2
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %86

33:                                               ; preds = %26
  %34 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %35 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @omap_free_dma(i32 %36)
  %38 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %39 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %38, i32 0, i32 0
  store i32 -1, i32* %39, align 8
  br label %40

40:                                               ; preds = %33, %2
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %45 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @OMAP_DMA_MMC_RX, align 4
  store i32 %49, i32* %7, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @OMAP_DMA_MMC2_RX, align 4
  store i32 %51, i32* %7, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %52

52:                                               ; preds = %50, %48
  br label %63

53:                                               ; preds = %40
  %54 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %55 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @OMAP_DMA_MMC_TX, align 4
  store i32 %59, i32* %7, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @OMAP_DMA_MMC2_TX, align 4
  store i32 %61, i32* %7, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %62

62:                                               ; preds = %60, %58
  br label %63

63:                                               ; preds = %62, %52
  %64 = load i32, i32* %7, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* @mmc_omap_dma_cb, align 4
  %67 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %68 = call i32 @omap_request_dma(i32 %64, i8* %65, i32 %66, %struct.mmc_omap_host* %67, i32* %8)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %73 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @mmc_dev(i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @dev_dbg(i32 %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %3, align 4
  br label %86

79:                                               ; preds = %63
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %82 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %85 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %79, %71, %32
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @omap_free_dma(i32) #1

declare dso_local i32 @omap_request_dma(i32, i8*, i32, %struct.mmc_omap_host*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
