; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_tx_res_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_tx_res_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_res_info = type { %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.bna_mem_info }
%struct.TYPE_3__ = type { i32, i32 }
%struct.bna_mem_info = type { i32, i32, i8* }

@BNA_RES_T_MEM = common dso_local global i8* null, align 8
@BNA_TX_RES_MEM_T_TCB = common dso_local global i64 0, align 8
@BNA_MEM_T_KVA = common dso_local global i8* null, align 8
@BFI_TXQ_WI_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@BNA_TX_RES_MEM_T_QPT = common dso_local global i64 0, align 8
@BNA_MEM_T_DMA = common dso_local global i8* null, align 8
@BNA_TX_RES_MEM_T_SWQPT = common dso_local global i64 0, align 8
@BNA_TX_RES_MEM_T_PAGE = common dso_local global i64 0, align 8
@BNA_TX_RES_MEM_T_IBIDX = common dso_local global i64 0, align 8
@BFI_IBIDX_SIZE = common dso_local global i32 0, align 4
@BNA_RES_T_INTR = common dso_local global i8* null, align 8
@BNA_TX_RES_INTR_T_TXCMPL = common dso_local global i64 0, align 8
@BNA_INTR_T_MSIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_tx_res_req(i32 %0, i32 %1, %struct.bna_res_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bna_res_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bna_mem_info*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.bna_res_info* %2, %struct.bna_res_info** %6, align 8
  %10 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %11 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %12 = load i64, i64* @BNA_TX_RES_MEM_T_TCB, align 8
  %13 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %11, i64 %12
  %14 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %13, i32 0, i32 1
  store i8* %10, i8** %14, align 8
  %15 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %16 = load i64, i64* @BNA_TX_RES_MEM_T_TCB, align 8
  %17 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %15, i64 %16
  %18 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store %struct.bna_mem_info* %19, %struct.bna_mem_info** %9, align 8
  %20 = load i8*, i8** @BNA_MEM_T_KVA, align 8
  %21 = load %struct.bna_mem_info*, %struct.bna_mem_info** %9, align 8
  %22 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load %struct.bna_mem_info*, %struct.bna_mem_info** %9, align 8
  %24 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %23, i32 0, i32 0
  store i32 4, i32* %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.bna_mem_info*, %struct.bna_mem_info** %9, align 8
  %27 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @BFI_TXQ_WI_SIZE, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = call i32 @ALIGN(i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @PAGE_SHIFT, align 4
  %36 = ashr i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %38 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %39 = load i64, i64* @BNA_TX_RES_MEM_T_QPT, align 8
  %40 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %38, i64 %39
  %41 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %40, i32 0, i32 1
  store i8* %37, i8** %41, align 8
  %42 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %43 = load i64, i64* @BNA_TX_RES_MEM_T_QPT, align 8
  %44 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %42, i64 %43
  %45 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store %struct.bna_mem_info* %46, %struct.bna_mem_info** %9, align 8
  %47 = load i8*, i8** @BNA_MEM_T_DMA, align 8
  %48 = load %struct.bna_mem_info*, %struct.bna_mem_info** %9, align 8
  %49 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = load %struct.bna_mem_info*, %struct.bna_mem_info** %9, align 8
  %55 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.bna_mem_info*, %struct.bna_mem_info** %9, align 8
  %58 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %60 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %61 = load i64, i64* @BNA_TX_RES_MEM_T_SWQPT, align 8
  %62 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %60, i64 %61
  %63 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %62, i32 0, i32 1
  store i8* %59, i8** %63, align 8
  %64 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %65 = load i64, i64* @BNA_TX_RES_MEM_T_SWQPT, align 8
  %66 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %64, i64 %65
  %67 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store %struct.bna_mem_info* %68, %struct.bna_mem_info** %9, align 8
  %69 = load i8*, i8** @BNA_MEM_T_KVA, align 8
  %70 = load %struct.bna_mem_info*, %struct.bna_mem_info** %9, align 8
  %71 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 8
  %75 = trunc i64 %74 to i32
  %76 = load %struct.bna_mem_info*, %struct.bna_mem_info** %9, align 8
  %77 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.bna_mem_info*, %struct.bna_mem_info** %9, align 8
  %80 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %82 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %83 = load i64, i64* @BNA_TX_RES_MEM_T_PAGE, align 8
  %84 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %82, i64 %83
  %85 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %84, i32 0, i32 1
  store i8* %81, i8** %85, align 8
  %86 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %87 = load i64, i64* @BNA_TX_RES_MEM_T_PAGE, align 8
  %88 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %86, i64 %87
  %89 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store %struct.bna_mem_info* %90, %struct.bna_mem_info** %9, align 8
  %91 = load i8*, i8** @BNA_MEM_T_DMA, align 8
  %92 = load %struct.bna_mem_info*, %struct.bna_mem_info** %9, align 8
  %93 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* @PAGE_SIZE, align 4
  %95 = load i32, i32* %8, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load %struct.bna_mem_info*, %struct.bna_mem_info** %9, align 8
  %98 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.bna_mem_info*, %struct.bna_mem_info** %9, align 8
  %101 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %103 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %104 = load i64, i64* @BNA_TX_RES_MEM_T_IBIDX, align 8
  %105 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %103, i64 %104
  %106 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %105, i32 0, i32 1
  store i8* %102, i8** %106, align 8
  %107 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %108 = load i64, i64* @BNA_TX_RES_MEM_T_IBIDX, align 8
  %109 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %107, i64 %108
  %110 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store %struct.bna_mem_info* %111, %struct.bna_mem_info** %9, align 8
  %112 = load i8*, i8** @BNA_MEM_T_DMA, align 8
  %113 = load %struct.bna_mem_info*, %struct.bna_mem_info** %9, align 8
  %114 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %113, i32 0, i32 2
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* @BFI_IBIDX_SIZE, align 4
  %116 = load %struct.bna_mem_info*, %struct.bna_mem_info** %9, align 8
  %117 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* %4, align 4
  %119 = load %struct.bna_mem_info*, %struct.bna_mem_info** %9, align 8
  %120 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load i8*, i8** @BNA_RES_T_INTR, align 8
  %122 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %123 = load i64, i64* @BNA_TX_RES_INTR_T_TXCMPL, align 8
  %124 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %122, i64 %123
  %125 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %124, i32 0, i32 1
  store i8* %121, i8** %125, align 8
  %126 = load i32, i32* @BNA_INTR_T_MSIX, align 4
  %127 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %128 = load i64, i64* @BNA_TX_RES_INTR_T_TXCMPL, align 8
  %129 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %127, i64 %128
  %130 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  store i32 %126, i32* %132, align 4
  %133 = load i32, i32* %4, align 4
  %134 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %135 = load i64, i64* @BNA_TX_RES_INTR_T_TXCMPL, align 8
  %136 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %134, i64 %135
  %137 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  store i32 %133, i32* %139, align 8
  ret void
}

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
