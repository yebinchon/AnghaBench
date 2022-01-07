; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_dma_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_dma_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_host = type { i64, i64, i64, %struct.mmc_data*, i64, i32 }
%struct.mmc_data = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"DMA callback while DMA not enabled\0A\00", align 1
@OMAP1_DMA_TOUT_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"DMA timeout\0A\00", align 1
@OMAP_DMA_DROP_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"DMA sync error\0A\00", align 1
@OMAP_DMA_BLOCK_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @mmc_omap_dma_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_dma_cb(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mmc_omap_host*, align 8
  %8 = alloca %struct.mmc_data*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.mmc_omap_host*
  store %struct.mmc_omap_host* %10, %struct.mmc_omap_host** %7, align 8
  %11 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %7, align 8
  %12 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %11, i32 0, i32 3
  %13 = load %struct.mmc_data*, %struct.mmc_data** %12, align 8
  store %struct.mmc_data* %13, %struct.mmc_data** %8, align 8
  %14 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %7, align 8
  %15 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %7, align 8
  %23 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @mmc_dev(i32 %24)
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %92

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @OMAP1_DMA_TOUT_IRQ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %7, align 8
  %34 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @mmc_dev(i32 %35)
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %92

38:                                               ; preds = %27
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @OMAP_DMA_DROP_IRQ, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %7, align 8
  %45 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @mmc_dev(i32 %46)
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %92

49:                                               ; preds = %38
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @OMAP_DMA_BLOCK_IRQ, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %92

55:                                               ; preds = %49
  %56 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %7, align 8
  %57 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %60 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %58
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %7, align 8
  %66 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %7, align 8
  %70 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %7, align 8
  %73 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %55
  %77 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %7, align 8
  %78 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %7, align 8
  %79 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %78, i32 0, i32 3
  %80 = load %struct.mmc_data*, %struct.mmc_data** %79, align 8
  %81 = call i32 @mmc_omap_prepare_dma(%struct.mmc_omap_host* %77, %struct.mmc_data* %80)
  %82 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %7, align 8
  %83 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @omap_start_dma(i64 %84)
  br label %92

86:                                               ; preds = %55
  %87 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %7, align 8
  %88 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %7, align 8
  %89 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %88, i32 0, i32 3
  %90 = load %struct.mmc_data*, %struct.mmc_data** %89, align 8
  %91 = call i32 @mmc_omap_dma_done(%struct.mmc_omap_host* %87, %struct.mmc_data* %90)
  br label %92

92:                                               ; preds = %21, %32, %43, %54, %86, %76
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @mmc_omap_prepare_dma(%struct.mmc_omap_host*, %struct.mmc_data*) #1

declare dso_local i32 @omap_start_dma(i64) #1

declare dso_local i32 @mmc_omap_dma_done(%struct.mmc_omap_host*, %struct.mmc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
