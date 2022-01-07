; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_free_rspq_fl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_free_rspq_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32** }
%struct.sge_rspq = type { i64, i32, i32, i64, i32*, i32*, i32, i32 }
%struct.sge_fl = type { i32, i32, i32*, i32*, i32, i32 }

@FW_IQ_TYPE_FL_INT_CAP = common dso_local global i32 0, align 4
@STAT_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_rspq*, %struct.sge_fl*)* @free_rspq_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_rspq_fl(%struct.adapter* %0, %struct.sge_rspq* %1, %struct.sge_fl* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.sge_rspq*, align 8
  %6 = alloca %struct.sge_fl*, align 8
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.sge_rspq* %1, %struct.sge_rspq** %5, align 8
  store %struct.sge_fl* %2, %struct.sge_fl** %6, align 8
  %8 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %9 = icmp ne %struct.sge_fl* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %12 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i32 [ %13, %10 ], [ 65535, %14 ]
  store i32 %16, i32* %7, align 4
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32**, i32*** %19, align 8
  %21 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %22 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.adapter*, %struct.adapter** %4, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %23, %27
  %29 = getelementptr inbounds i32*, i32** %20, i64 %28
  store i32* null, i32** %29, align 8
  %30 = load %struct.adapter*, %struct.adapter** %4, align 8
  %31 = load %struct.adapter*, %struct.adapter** %4, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.adapter*, %struct.adapter** %4, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FW_IQ_TYPE_FL_INT_CAP, align 4
  %38 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %39 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @t4_iq_free(%struct.adapter* %30, i32 %33, i32 %36, i32 0, i32 %37, i64 %40, i32 %41, i32 65535)
  %43 = load %struct.adapter*, %struct.adapter** %4, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %47 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  %50 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %51 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %55 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %58 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dma_free_coherent(i32 %45, i32 %53, i32* %56, i32 %59)
  %61 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %62 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %61, i32 0, i32 6
  %63 = call i32 @netif_napi_del(i32* %62)
  %64 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %65 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %64, i32 0, i32 5
  store i32* null, i32** %65, align 8
  %66 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %67 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %69 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %71 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %70, i32 0, i32 4
  store i32* null, i32** %71, align 8
  %72 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %73 = icmp ne %struct.sge_fl* %72, null
  br i1 %73, label %74, label %107

74:                                               ; preds = %15
  %75 = load %struct.adapter*, %struct.adapter** %4, align 8
  %76 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %77 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %78 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @free_rx_bufs(%struct.adapter* %75, %struct.sge_fl* %76, i32 %79)
  %81 = load %struct.adapter*, %struct.adapter** %4, align 8
  %82 = getelementptr inbounds %struct.adapter, %struct.adapter* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %85 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %86, 8
  %88 = load i32, i32* @STAT_LEN, align 4
  %89 = add nsw i32 %87, %88
  %90 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %91 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %94 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dma_free_coherent(i32 %83, i32 %89, i32* %92, i32 %95)
  %97 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %98 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @kfree(i32* %99)
  %101 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %102 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %101, i32 0, i32 3
  store i32* null, i32** %102, align 8
  %103 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %104 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  %105 = load %struct.sge_fl*, %struct.sge_fl** %6, align 8
  %106 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %105, i32 0, i32 2
  store i32* null, i32** %106, align 8
  br label %107

107:                                              ; preds = %74, %15
  ret void
}

declare dso_local i32 @t4_iq_free(%struct.adapter*, i32, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @free_rx_bufs(%struct.adapter*, %struct.sge_fl*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
