; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci.c_sdhci_finish_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci.c_sdhci_finish_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32, i32, %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32, i32, i64, i64, i32, i32 }

@SDHCI_REQ_USE_DMA = common dso_local global i32 0, align 4
@SDHCI_USE_ADMA = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SDHCI_RESET_CMD = common dso_local global i32 0, align 4
@SDHCI_RESET_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @sdhci_finish_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_finish_data(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.mmc_data*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %4 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %5 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %4, i32 0, i32 3
  %6 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %7 = icmp ne %struct.mmc_data* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %12 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %11, i32 0, i32 3
  %13 = load %struct.mmc_data*, %struct.mmc_data** %12, align 8
  store %struct.mmc_data* %13, %struct.mmc_data** %3, align 8
  %14 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %15 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %14, i32 0, i32 3
  store %struct.mmc_data* null, %struct.mmc_data** %15, align 8
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %17 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SDHCI_REQ_USE_DMA, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %1
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %24 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SDHCI_USE_ADMA, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %31 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %32 = call i32 @sdhci_adma_table_post(%struct.sdhci_host* %30, %struct.mmc_data* %31)
  br label %57

33:                                               ; preds = %22
  %34 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %35 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @mmc_dev(i32 %36)
  %38 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %39 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %42 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %45 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MMC_DATA_READ, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %33
  %51 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %54

52:                                               ; preds = %33
  %53 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = call i32 @dma_unmap_sg(i32 %37, i32 %40, i32 %43, i32 %55)
  br label %57

57:                                               ; preds = %54, %29
  br label %58

58:                                               ; preds = %57, %1
  %59 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %60 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %65 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  br label %76

66:                                               ; preds = %58
  %67 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %68 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %71 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %75 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %66, %63
  %77 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %78 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %76
  %82 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %83 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %88 = load i32, i32* @SDHCI_RESET_CMD, align 4
  %89 = call i32 @sdhci_reset(%struct.sdhci_host* %87, i32 %88)
  %90 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %91 = load i32, i32* @SDHCI_RESET_DATA, align 4
  %92 = call i32 @sdhci_reset(%struct.sdhci_host* %90, i32 %91)
  br label %93

93:                                               ; preds = %86, %81
  %94 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %95 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %96 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @sdhci_send_command(%struct.sdhci_host* %94, i64 %97)
  br label %103

99:                                               ; preds = %76
  %100 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %101 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %100, i32 0, i32 1
  %102 = call i32 @tasklet_schedule(i32* %101)
  br label %103

103:                                              ; preds = %99, %93
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sdhci_adma_table_post(%struct.sdhci_host*, %struct.mmc_data*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @sdhci_reset(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_send_command(%struct.sdhci_host*, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
