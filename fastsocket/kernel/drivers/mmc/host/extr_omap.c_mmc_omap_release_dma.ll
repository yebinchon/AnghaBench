; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_release_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_release_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_host = type { i64, i32, i32, i32 }
%struct.mmc_data = type { i32, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_omap_host*, %struct.mmc_data*, i32)* @mmc_omap_release_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_release_dma(%struct.mmc_omap_host* %0, %struct.mmc_data* %1, i32 %2) #0 {
  %4 = alloca %struct.mmc_omap_host*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_omap_host* %0, %struct.mmc_omap_host** %4, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %9 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %15 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @omap_stop_dma(i64 %21)
  br label %23

23:                                               ; preds = %18, %3
  %24 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %25 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %24, i32 0, i32 3
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i64, i64* @HZ, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @mod_timer(i32* %25, i64 %28)
  %30 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %31 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MMC_DATA_WRITE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %37, i32* %7, align 4
  br label %40

38:                                               ; preds = %23
  %39 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %42 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mmc_dev(i32 %43)
  %45 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %46 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %49 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @dma_unmap_sg(i32 %44, i32 %47, i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @omap_stop_dma(i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
