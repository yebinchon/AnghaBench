; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_main.c_stmmac_dma_operation_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_main.c_stmmac_dma_operation_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i8*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i64, i64)* }

@tc = common dso_local global i64 0, align 8
@NO_HW_CSUM = common dso_local global i8* null, align 8
@ETH_DATA_LEN = common dso_local global i64 0, align 8
@tx_coe = common dso_local global i8* null, align 8
@SF_DMA_MODE = common dso_local global i64 0, align 8
@HW_CSUM = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*)* @stmmac_dma_operation_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_dma_operation_mode(%struct.stmmac_priv* %0) #0 {
  %2 = alloca %struct.stmmac_priv*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %2, align 8
  %3 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %4 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %9 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32 (i32, i64, i64)*, i32 (i32, i64, i64)** %13, align 8
  %15 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %16 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i64, i64* @tc, align 8
  %21 = call i32 %14(i32 %19, i64 %20, i64 0)
  %22 = load i8*, i8** @NO_HW_CSUM, align 8
  %23 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %24 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  br label %76

25:                                               ; preds = %1
  %26 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %27 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ETH_DATA_LEN, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %25
  %34 = load i8*, i8** @tx_coe, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %38 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (i32, i64, i64)*, i32 (i32, i64, i64)** %42, align 8
  %44 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %45 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* @SF_DMA_MODE, align 8
  %50 = load i64, i64* @SF_DMA_MODE, align 8
  %51 = call i32 %43(i32 %48, i64 %49, i64 %50)
  %52 = load i64, i64* @SF_DMA_MODE, align 8
  store i64 %52, i64* @tc, align 8
  %53 = load i8*, i8** @HW_CSUM, align 8
  %54 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %55 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  br label %75

56:                                               ; preds = %33, %25
  %57 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %58 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %57, i32 0, i32 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32 (i32, i64, i64)*, i32 (i32, i64, i64)** %62, align 8
  %64 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %65 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* @tc, align 8
  %70 = load i64, i64* @SF_DMA_MODE, align 8
  %71 = call i32 %63(i32 %68, i64 %69, i64 %70)
  %72 = load i8*, i8** @NO_HW_CSUM, align 8
  %73 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %74 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %56, %36
  br label %76

76:                                               ; preds = %75, %7
  %77 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %78 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** @tx_coe, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
