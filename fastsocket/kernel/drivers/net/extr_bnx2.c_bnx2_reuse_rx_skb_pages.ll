; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_reuse_rx_skb_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_reuse_rx_skb_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32 }
%struct.bnx2_rx_ring_info = type { i64, i64, %struct.bnx2_rx_bd**, %struct.bnx2_sw_pg* }
%struct.bnx2_rx_bd = type { i32, i32 }
%struct.bnx2_sw_pg = type { %struct.page* }
%struct.page = type { i32 }
%struct.sk_buff = type { i32 }
%struct.skb_shared_info = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.page* }

@mapping = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*, %struct.bnx2_rx_ring_info*, %struct.sk_buff*, i32)* @bnx2_reuse_rx_skb_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_reuse_rx_skb_pages(%struct.bnx2* %0, %struct.bnx2_rx_ring_info* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2*, align 8
  %6 = alloca %struct.bnx2_rx_ring_info*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnx2_sw_pg*, align 8
  %10 = alloca %struct.bnx2_sw_pg*, align 8
  %11 = alloca %struct.bnx2_rx_bd*, align 8
  %12 = alloca %struct.bnx2_rx_bd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca %struct.skb_shared_info*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %5, align 8
  store %struct.bnx2_rx_ring_info* %1, %struct.bnx2_rx_ring_info** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %20 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %16, align 8
  %22 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %23 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %22, i32 0, i32 3
  %24 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %23, align 8
  %25 = load i64, i64* %16, align 8
  %26 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %24, i64 %25
  store %struct.bnx2_sw_pg* %26, %struct.bnx2_sw_pg** %9, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %29, label %58

29:                                               ; preds = %4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %30)
  store %struct.skb_shared_info* %31, %struct.skb_shared_info** %18, align 8
  %32 = load %struct.skb_shared_info*, %struct.skb_shared_info** %18, align 8
  %33 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.skb_shared_info*, %struct.skb_shared_info** %18, align 8
  %37 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load %struct.skb_shared_info*, %struct.skb_shared_info** %18, align 8
  %40 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.page*, %struct.page** %43, align 8
  store %struct.page* %44, %struct.page** %17, align 8
  %45 = load %struct.skb_shared_info*, %struct.skb_shared_info** %18, align 8
  %46 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load %struct.skb_shared_info*, %struct.skb_shared_info** %18, align 8
  %49 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store %struct.page* null, %struct.page** %52, align 8
  %53 = load %struct.page*, %struct.page** %17, align 8
  %54 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %9, align 8
  %55 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %54, i32 0, i32 0
  store %struct.page* %53, %struct.page** %55, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = call i32 @dev_kfree_skb(%struct.sk_buff* %56)
  br label %58

58:                                               ; preds = %29, %4
  %59 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %60 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %14, align 8
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %132, %58
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %135

66:                                               ; preds = %62
  %67 = load i64, i64* %14, align 8
  %68 = call i64 @BNX2_RX_PG_RING_IDX(i64 %67)
  store i64 %68, i64* %15, align 8
  %69 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %70 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %69, i32 0, i32 3
  %71 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %70, align 8
  %72 = load i64, i64* %15, align 8
  %73 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %71, i64 %72
  store %struct.bnx2_sw_pg* %73, %struct.bnx2_sw_pg** %10, align 8
  %74 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %75 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %74, i32 0, i32 3
  %76 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %75, align 8
  %77 = load i64, i64* %16, align 8
  %78 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %76, i64 %77
  store %struct.bnx2_sw_pg* %78, %struct.bnx2_sw_pg** %9, align 8
  %79 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %80 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %79, i32 0, i32 2
  %81 = load %struct.bnx2_rx_bd**, %struct.bnx2_rx_bd*** %80, align 8
  %82 = load i64, i64* %16, align 8
  %83 = call i64 @BNX2_RX_RING(i64 %82)
  %84 = getelementptr inbounds %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %81, i64 %83
  %85 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %84, align 8
  %86 = load i64, i64* %16, align 8
  %87 = call i64 @BNX2_RX_IDX(i64 %86)
  %88 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %85, i64 %87
  store %struct.bnx2_rx_bd* %88, %struct.bnx2_rx_bd** %11, align 8
  %89 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %90 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %89, i32 0, i32 2
  %91 = load %struct.bnx2_rx_bd**, %struct.bnx2_rx_bd*** %90, align 8
  %92 = load i64, i64* %15, align 8
  %93 = call i64 @BNX2_RX_RING(i64 %92)
  %94 = getelementptr inbounds %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %91, i64 %93
  %95 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %94, align 8
  %96 = load i64, i64* %15, align 8
  %97 = call i64 @BNX2_RX_IDX(i64 %96)
  %98 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %95, i64 %97
  store %struct.bnx2_rx_bd* %98, %struct.bnx2_rx_bd** %12, align 8
  %99 = load i64, i64* %15, align 8
  %100 = load i64, i64* %16, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %126

102:                                              ; preds = %66
  %103 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %9, align 8
  %104 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %103, i32 0, i32 0
  %105 = load %struct.page*, %struct.page** %104, align 8
  %106 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %10, align 8
  %107 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %106, i32 0, i32 0
  store %struct.page* %105, %struct.page** %107, align 8
  %108 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %9, align 8
  %109 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %108, i32 0, i32 0
  store %struct.page* null, %struct.page** %109, align 8
  %110 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %10, align 8
  %111 = load i32, i32* @mapping, align 4
  %112 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %9, align 8
  %113 = load i32, i32* @mapping, align 4
  %114 = call i32 @pci_unmap_addr(%struct.bnx2_sw_pg* %112, i32 %113)
  %115 = call i32 @pci_unmap_addr_set(%struct.bnx2_sw_pg* %110, i32 %111, i32 %114)
  %116 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %11, align 8
  %117 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %12, align 8
  %120 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %11, align 8
  %122 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %12, align 8
  %125 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %102, %66
  %127 = load i64, i64* %16, align 8
  %128 = call i64 @BNX2_NEXT_RX_BD(i64 %127)
  %129 = call i64 @BNX2_RX_PG_RING_IDX(i64 %128)
  store i64 %129, i64* %16, align 8
  %130 = load i64, i64* %14, align 8
  %131 = call i64 @BNX2_NEXT_RX_BD(i64 %130)
  store i64 %131, i64* %14, align 8
  br label %132

132:                                              ; preds = %126
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %13, align 4
  br label %62

135:                                              ; preds = %62
  %136 = load i64, i64* %14, align 8
  %137 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %138 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  %139 = load i64, i64* %16, align 8
  %140 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %141 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  ret void
}

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @BNX2_RX_PG_RING_IDX(i64) #1

declare dso_local i64 @BNX2_RX_RING(i64) #1

declare dso_local i64 @BNX2_RX_IDX(i64) #1

declare dso_local i32 @pci_unmap_addr_set(%struct.bnx2_sw_pg*, i32, i32) #1

declare dso_local i32 @pci_unmap_addr(%struct.bnx2_sw_pg*, i32) #1

declare dso_local i64 @BNX2_NEXT_RX_BD(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
