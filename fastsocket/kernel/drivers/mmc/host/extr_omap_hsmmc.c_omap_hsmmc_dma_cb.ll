; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_dma_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_dma_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, i64, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@OMAP2_DMA_MISALIGNED_ERR_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"MISALIGNED_ADRS_ERR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @omap_hsmmc_dma_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_hsmmc_dma_cb(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.omap_hsmmc_host*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.omap_hsmmc_host*
  store %struct.omap_hsmmc_host* %9, %struct.omap_hsmmc_host** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @OMAP2_DMA_MISALIGNED_ERR_IRQ, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %7, align 8
  %16 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @mmc_dev(i32 %17)
  %19 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %14, %3
  %21 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %7, align 8
  %22 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %63

26:                                               ; preds = %20
  %27 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %7, align 8
  %28 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %7, align 8
  %32 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %7, align 8
  %35 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %26
  %39 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %7, align 8
  %40 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %7, align 8
  %41 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %40, i32 0, i32 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %7, align 8
  %44 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %43, i32 0, i32 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %7, align 8
  %49 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = call i32 @omap_hsmmc_config_dma_params(%struct.omap_hsmmc_host* %39, %struct.TYPE_2__* %42, i64 %51)
  br label %63

53:                                               ; preds = %26
  %54 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %7, align 8
  %55 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @omap_free_dma(i32 %56)
  %58 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %7, align 8
  %59 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %58, i32 0, i32 0
  store i32 -1, i32* %59, align 8
  %60 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %7, align 8
  %61 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %60, i32 0, i32 3
  %62 = call i32 @up(i32* %61)
  br label %63

63:                                               ; preds = %53, %38, %25
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @omap_hsmmc_config_dma_params(%struct.omap_hsmmc_host*, %struct.TYPE_2__*, i64) #1

declare dso_local i32 @omap_free_dma(i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
