; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_start_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_start_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, i64, i32, i32, i32 }
%struct.mmc_request = type { %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"MMC/SD\00", align 1
@omap_hsmmc_dma_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: omap_request_dma() failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hsmmc_host*, %struct.mmc_request*)* @omap_hsmmc_start_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_start_dma_transfer(%struct.omap_hsmmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_hsmmc_host*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mmc_data*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %12 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %13 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %12, i32 0, i32 0
  %14 = load %struct.mmc_data*, %struct.mmc_data** %13, align 8
  store %struct.mmc_data* %14, %struct.mmc_data** %10, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %40, %2
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  %18 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %15
  %22 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  %23 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %22, i32 0, i32 2
  %24 = load %struct.scatterlist*, %struct.scatterlist** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %24, i64 %26
  store %struct.scatterlist* %27, %struct.scatterlist** %11, align 8
  %28 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %29 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  %32 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = srem i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %21
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %134

39:                                               ; preds = %21
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %15

43:                                               ; preds = %15
  %44 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  %45 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = srem i32 %46, 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %134

52:                                               ; preds = %43
  %53 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %54 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %77

57:                                               ; preds = %52
  %58 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %59 = call i32 @set_current_state(i32 %58)
  %60 = call i32 @schedule_timeout(i32 100)
  %61 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %62 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %61, i32 0, i32 4
  %63 = call i64 @down_trylock(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %57
  %66 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %67 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @omap_free_dma(i32 %68)
  %70 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %71 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %70, i32 0, i32 0
  store i32 -1, i32* %71, align 8
  %72 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %73 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %72, i32 0, i32 4
  %74 = call i32 @up(i32* %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %134

76:                                               ; preds = %57
  br label %85

77:                                               ; preds = %52
  %78 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %79 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %78, i32 0, i32 4
  %80 = call i64 @down_trylock(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %134

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %76
  %86 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %87 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  %88 = call i32 @omap_hsmmc_get_dma_sync_dev(%struct.omap_hsmmc_host* %86, %struct.mmc_data* %87)
  %89 = load i32, i32* @omap_hsmmc_dma_cb, align 4
  %90 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %91 = call i32 @omap_request_dma(i32 %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %89, %struct.omap_hsmmc_host* %90, i32* %6)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %85
  %95 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %96 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @mmc_dev(i32 %97)
  %99 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %100 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @mmc_hostname(i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @dev_err(i32 %98, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %103)
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %3, align 4
  br label %134

106:                                              ; preds = %85
  %107 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %108 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @mmc_dev(i32 %109)
  %111 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  %112 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %111, i32 0, i32 2
  %113 = load %struct.scatterlist*, %struct.scatterlist** %112, align 8
  %114 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  %115 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %118 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  %119 = call i32 @omap_hsmmc_get_dma_dir(%struct.omap_hsmmc_host* %117, %struct.mmc_data* %118)
  %120 = call i32 @dma_map_sg(i32 %110, %struct.scatterlist* %113, i32 %116, i32 %119)
  %121 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %122 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %125 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %127 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  %128 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %129 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  %130 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  %131 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %130, i32 0, i32 2
  %132 = load %struct.scatterlist*, %struct.scatterlist** %131, align 8
  %133 = call i32 @omap_hsmmc_config_dma_params(%struct.omap_hsmmc_host* %128, %struct.mmc_data* %129, %struct.scatterlist* %132)
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %106, %94, %82, %65, %49, %36
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i64 @down_trylock(i32*) #1

declare dso_local i32 @omap_free_dma(i32) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @omap_request_dma(i32, i8*, i32, %struct.omap_hsmmc_host*, i32*) #1

declare dso_local i32 @omap_hsmmc_get_dma_sync_dev(%struct.omap_hsmmc_host*, %struct.mmc_data*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @omap_hsmmc_get_dma_dir(%struct.omap_hsmmc_host*, %struct.mmc_data*) #1

declare dso_local i32 @omap_hsmmc_config_dma_params(%struct.omap_hsmmc_host*, %struct.mmc_data*, %struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
