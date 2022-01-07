; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxp_cqpt_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxp_cqpt_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxp = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i8*, i32, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8**, i8* }
%struct.bna_mem_descr = type { i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.bna_dma_addr = type { i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rxp*, i8*, i8*, %struct.bna_mem_descr*, %struct.bna_mem_descr*, %struct.bna_mem_descr*)* @bna_rxp_cqpt_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_rxp_cqpt_setup(%struct.bna_rxp* %0, i8* %1, i8* %2, %struct.bna_mem_descr* %3, %struct.bna_mem_descr* %4, %struct.bna_mem_descr* %5) #0 {
  %7 = alloca %struct.bna_rxp*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.bna_mem_descr*, align 8
  %11 = alloca %struct.bna_mem_descr*, align 8
  %12 = alloca %struct.bna_mem_descr*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.bna_dma_addr, align 4
  %16 = alloca i32, align 4
  store %struct.bna_rxp* %0, %struct.bna_rxp** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.bna_mem_descr* %3, %struct.bna_mem_descr** %10, align 8
  store %struct.bna_mem_descr* %4, %struct.bna_mem_descr** %11, align 8
  store %struct.bna_mem_descr* %5, %struct.bna_mem_descr** %12, align 8
  %17 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %10, align 8
  %18 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bna_rxp*, %struct.bna_rxp** %7, align 8
  %22 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32 %20, i32* %25, align 4
  %26 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %10, align 8
  %27 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.bna_rxp*, %struct.bna_rxp** %7, align 8
  %31 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 8
  %35 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %10, align 8
  %36 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.bna_rxp*, %struct.bna_rxp** %7, align 8
  %39 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i8* %37, i8** %41, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.bna_rxp*, %struct.bna_rxp** %7, align 8
  %45 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.bna_rxp*, %struct.bna_rxp** %7, align 8
  %50 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  store i8* %48, i8** %52, align 8
  %53 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %11, align 8
  %54 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = bitcast i8* %55 to i8**
  %57 = load %struct.bna_rxp*, %struct.bna_rxp** %7, align 8
  %58 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i8** %56, i8*** %61, align 8
  %62 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %12, align 8
  %63 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.bna_rxp*, %struct.bna_rxp** %7, align 8
  %66 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store i8* %64, i8** %69, align 8
  %70 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %12, align 8
  %71 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %13, align 8
  %73 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %12, align 8
  %74 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %73, i32 0, i32 1
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @BNA_GET_DMA_ADDR(%struct.TYPE_10__* %74, i32 %75)
  store i32 0, i32* %16, align 4
  br label %77

77:                                               ; preds = %130, %6
  %78 = load i32, i32* %16, align 4
  %79 = load %struct.bna_rxp*, %struct.bna_rxp** %7, align 8
  %80 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %78, %83
  br i1 %84, label %85, label %133

85:                                               ; preds = %77
  %86 = load i8*, i8** %13, align 8
  %87 = load %struct.bna_rxp*, %struct.bna_rxp** %7, align 8
  %88 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i8**, i8*** %91, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  store i8* %86, i8** %95, align 8
  %96 = load i64, i64* @PAGE_SIZE, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = getelementptr i8, i8* %97, i64 %96
  store i8* %98, i8** %13, align 8
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @BNA_SET_DMA_ADDR(i32 %99, %struct.bna_dma_addr* %15)
  %101 = getelementptr inbounds %struct.bna_dma_addr, %struct.bna_dma_addr* %15, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.bna_rxp*, %struct.bna_rxp** %7, align 8
  %104 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = bitcast i8* %107 to %struct.bna_dma_addr*
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.bna_dma_addr, %struct.bna_dma_addr* %108, i64 %110
  %112 = getelementptr inbounds %struct.bna_dma_addr, %struct.bna_dma_addr* %111, i32 0, i32 1
  store i32 %102, i32* %112, align 4
  %113 = getelementptr inbounds %struct.bna_dma_addr, %struct.bna_dma_addr* %15, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.bna_rxp*, %struct.bna_rxp** %7, align 8
  %116 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = bitcast i8* %119 to %struct.bna_dma_addr*
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.bna_dma_addr, %struct.bna_dma_addr* %120, i64 %122
  %124 = getelementptr inbounds %struct.bna_dma_addr, %struct.bna_dma_addr* %123, i32 0, i32 0
  store i32 %114, i32* %124, align 4
  %125 = load i64, i64* @PAGE_SIZE, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %127, %125
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %14, align 4
  br label %130

130:                                              ; preds = %85
  %131 = load i32, i32* %16, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %16, align 4
  br label %77

133:                                              ; preds = %77
  ret void
}

declare dso_local i32 @BNA_GET_DMA_ADDR(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @BNA_SET_DMA_ADDR(i32, %struct.bna_dma_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
