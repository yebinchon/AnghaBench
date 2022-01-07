; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_refill_free_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_refill_free_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.freelQ = type { i64, i32, i32, i64, i64, i32, %struct.freelQ_e*, %struct.freelQ_ce* }
%struct.freelQ_e = type { i32, i32, i32, i64 }
%struct.freelQ_ce = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@dma_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge*, %struct.freelQ*)* @refill_free_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refill_free_list(%struct.sge* %0, %struct.freelQ* %1) #0 {
  %3 = alloca %struct.sge*, align 8
  %4 = alloca %struct.freelQ*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.freelQ_ce*, align 8
  %7 = alloca %struct.freelQ_e*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  store %struct.sge* %0, %struct.sge** %3, align 8
  store %struct.freelQ* %1, %struct.freelQ** %4, align 8
  %11 = load %struct.sge*, %struct.sge** %3, align 8
  %12 = getelementptr inbounds %struct.sge, %struct.sge* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %5, align 8
  %16 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %17 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %16, i32 0, i32 7
  %18 = load %struct.freelQ_ce*, %struct.freelQ_ce** %17, align 8
  %19 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %20 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.freelQ_ce, %struct.freelQ_ce* %18, i64 %21
  store %struct.freelQ_ce* %22, %struct.freelQ_ce** %6, align 8
  %23 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %24 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %23, i32 0, i32 6
  %25 = load %struct.freelQ_e*, %struct.freelQ_e** %24, align 8
  %26 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %27 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.freelQ_e, %struct.freelQ_e* %25, i64 %28
  store %struct.freelQ_e* %29, %struct.freelQ_e** %7, align 8
  %30 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %31 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %34 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = sub i32 %32, %35
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %132, %2
  %38 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %39 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %42 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %137

45:                                               ; preds = %37
  %46 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %47 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call %struct.sk_buff* @alloc_skb(i32 %48, i32 %49)
  store %struct.sk_buff* %50, %struct.sk_buff** %9, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %52 = icmp ne %struct.sk_buff* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  br label %137

54:                                               ; preds = %45
  %55 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %56 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %57 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @skb_reserve(%struct.sk_buff* %55, i32 %58)
  %60 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %66 = call i64 @pci_map_single(%struct.pci_dev* %60, i32 %63, i32 %64, i32 %65)
  store i64 %66, i64* %10, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %68 = load %struct.sge*, %struct.sge** %3, align 8
  %69 = getelementptr inbounds %struct.sge, %struct.sge* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @skb_reserve(%struct.sk_buff* %67, i32 %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %73 = load %struct.freelQ_ce*, %struct.freelQ_ce** %6, align 8
  %74 = getelementptr inbounds %struct.freelQ_ce, %struct.freelQ_ce* %73, i32 0, i32 0
  store %struct.sk_buff* %72, %struct.sk_buff** %74, align 8
  %75 = load %struct.freelQ_ce*, %struct.freelQ_ce** %6, align 8
  %76 = load i32, i32* @dma_addr, align 4
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @pci_unmap_addr_set(%struct.freelQ_ce* %75, i32 %76, i64 %77)
  %79 = load %struct.freelQ_ce*, %struct.freelQ_ce** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @pci_unmap_len_set(%struct.freelQ_ce* %79, i32 %80, i32 %81)
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.freelQ_e*, %struct.freelQ_e** %7, align 8
  %85 = getelementptr inbounds %struct.freelQ_e, %struct.freelQ_e* %84, i32 0, i32 3
  store i64 %83, i64* %85, align 8
  %86 = load i64, i64* %10, align 8
  %87 = trunc i64 %86 to i32
  %88 = ashr i32 %87, 32
  %89 = load %struct.freelQ_e*, %struct.freelQ_e** %7, align 8
  %90 = getelementptr inbounds %struct.freelQ_e, %struct.freelQ_e* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @V_CMD_LEN(i32 %91)
  %93 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %94 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @V_CMD_GEN1(i32 %95)
  %97 = or i32 %92, %96
  %98 = load %struct.freelQ_e*, %struct.freelQ_e** %7, align 8
  %99 = getelementptr inbounds %struct.freelQ_e, %struct.freelQ_e* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = call i32 (...) @wmb()
  %101 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %102 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @V_CMD_GEN2(i32 %103)
  %105 = load %struct.freelQ_e*, %struct.freelQ_e** %7, align 8
  %106 = getelementptr inbounds %struct.freelQ_e, %struct.freelQ_e* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.freelQ_e*, %struct.freelQ_e** %7, align 8
  %108 = getelementptr inbounds %struct.freelQ_e, %struct.freelQ_e* %107, i32 1
  store %struct.freelQ_e* %108, %struct.freelQ_e** %7, align 8
  %109 = load %struct.freelQ_ce*, %struct.freelQ_ce** %6, align 8
  %110 = getelementptr inbounds %struct.freelQ_ce, %struct.freelQ_ce* %109, i32 1
  store %struct.freelQ_ce* %110, %struct.freelQ_ce** %6, align 8
  %111 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %112 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %112, align 8
  %115 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %116 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %114, %117
  br i1 %118, label %119, label %132

119:                                              ; preds = %54
  %120 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %121 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %120, i32 0, i32 0
  store i64 0, i64* %121, align 8
  %122 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %123 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = xor i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %127 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %126, i32 0, i32 7
  %128 = load %struct.freelQ_ce*, %struct.freelQ_ce** %127, align 8
  store %struct.freelQ_ce* %128, %struct.freelQ_ce** %6, align 8
  %129 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %130 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %129, i32 0, i32 6
  %131 = load %struct.freelQ_e*, %struct.freelQ_e** %130, align 8
  store %struct.freelQ_e* %131, %struct.freelQ_e** %7, align 8
  br label %132

132:                                              ; preds = %119, %54
  %133 = load %struct.freelQ*, %struct.freelQ** %4, align 8
  %134 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %134, align 8
  br label %37

137:                                              ; preds = %53, %37
  ret void
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i64 @pci_map_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_addr_set(%struct.freelQ_ce*, i32, i64) #1

declare dso_local i32 @pci_unmap_len_set(%struct.freelQ_ce*, i32, i32) #1

declare dso_local i32 @V_CMD_LEN(i32) #1

declare dso_local i32 @V_CMD_GEN1(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @V_CMD_GEN2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
