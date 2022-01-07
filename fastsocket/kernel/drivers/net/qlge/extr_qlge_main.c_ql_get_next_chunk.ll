; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_get_next_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_get_next_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, i32 }
%struct.rx_ring = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32*, i32, i32 }
%struct.bq_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }

@__GFP_COLD = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"page allocation failed.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"PCI mapping failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, %struct.rx_ring*, %struct.bq_desc*)* @ql_get_next_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_get_next_chunk(%struct.ql_adapter* %0, %struct.rx_ring* %1, %struct.bq_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ql_adapter*, align 8
  %6 = alloca %struct.rx_ring*, align 8
  %7 = alloca %struct.bq_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %5, align 8
  store %struct.rx_ring* %1, %struct.rx_ring** %6, align 8
  store %struct.bq_desc* %2, %struct.bq_desc** %7, align 8
  %9 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %10 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %96, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @__GFP_COLD, align 4
  %16 = load i32, i32* @__GFP_COMP, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @alloc_pages(i32 %19, i32 %22)
  %24 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %25 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i32* %23, i32** %26, align 8
  %27 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %28 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %14
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %38 = load i32, i32* @drv, align 4
  %39 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %40 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @netif_err(%struct.ql_adapter* %37, i32 %38, i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %148

45:                                               ; preds = %14
  %46 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %47 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %50 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %53 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %57 = call i64 @ql_lbq_block_size(%struct.ql_adapter* %56)
  %58 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %59 = call i32 @pci_map_page(i32 %51, i32* %55, i32 0, i64 %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %61 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i64 @pci_dma_mapping_error(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %45
  %67 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %68 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %72 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @__free_pages(i32* %70, i32 %73)
  %75 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %76 = load i32, i32* @drv, align 4
  %77 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %78 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @netif_err(%struct.ql_adapter* %75, i32 %76, i32 %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %148

83:                                               ; preds = %45
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %86 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 4
  store i32 %84, i32* %87, align 4
  %88 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %89 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @page_address(i32* %91)
  %93 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %94 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  store i32 %92, i32* %95, align 8
  br label %96

96:                                               ; preds = %83, %3
  %97 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %98 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %101 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %100, i32 0, i32 1
  %102 = bitcast %struct.TYPE_3__* %99 to i8*
  %103 = bitcast %struct.TYPE_3__* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 32, i1 false)
  %104 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %105 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %108 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, %106
  store i64 %111, i64* %109, align 8
  %112 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %113 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %117 = call i64 @ql_lbq_block_size(%struct.ql_adapter* %116)
  %118 = icmp eq i64 %115, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %96
  %120 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %121 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  store i32* null, i32** %122, align 8
  %123 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %124 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  store i32 1, i32* %126, align 8
  br label %147

127:                                              ; preds = %96
  %128 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %129 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %132 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %130
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %133, align 8
  %138 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %139 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @get_page(i32* %141)
  %143 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %144 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  store i32 0, i32* %146, align 8
  br label %147

147:                                              ; preds = %127, %119
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %147, %66, %36
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32* @alloc_pages(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @pci_map_page(i32, i32*, i32, i64, i32) #1

declare dso_local i64 @ql_lbq_block_size(%struct.ql_adapter*) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @__free_pages(i32*, i32) #1

declare dso_local i32 @page_address(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
