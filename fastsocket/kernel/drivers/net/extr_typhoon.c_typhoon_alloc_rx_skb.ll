; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_typhoon.c_typhoon_alloc_rx_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_typhoon.c_typhoon_alloc_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typhoon = type { i32, i32, %struct.basic_ring, %struct.rxbuff_ent*, %struct.typhoon_indexes* }
%struct.basic_ring = type { i32, i64 }
%struct.rxbuff_ent = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32 }
%struct.typhoon_indexes = type { i8*, i32 }
%struct.rx_free = type { i64, i8* }

@RXFREE_ENTRIES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typhoon*, i64)* @typhoon_alloc_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typhoon_alloc_rx_skb(%struct.typhoon* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.typhoon*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.typhoon_indexes*, align 8
  %7 = alloca %struct.rxbuff_ent*, align 8
  %8 = alloca %struct.basic_ring*, align 8
  %9 = alloca %struct.rx_free*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.typhoon* %0, %struct.typhoon** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %13 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %12, i32 0, i32 4
  %14 = load %struct.typhoon_indexes*, %struct.typhoon_indexes** %13, align 8
  store %struct.typhoon_indexes* %14, %struct.typhoon_indexes** %6, align 8
  %15 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %16 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %15, i32 0, i32 3
  %17 = load %struct.rxbuff_ent*, %struct.rxbuff_ent** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.rxbuff_ent, %struct.rxbuff_ent* %17, i64 %18
  store %struct.rxbuff_ent* %19, %struct.rxbuff_ent** %7, align 8
  %20 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %21 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %20, i32 0, i32 2
  store %struct.basic_ring* %21, %struct.basic_ring** %8, align 8
  %22 = load %struct.rxbuff_ent*, %struct.rxbuff_ent** %7, align 8
  %23 = getelementptr inbounds %struct.rxbuff_ent, %struct.rxbuff_ent* %22, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %23, align 8
  %24 = load %struct.basic_ring*, %struct.basic_ring** %8, align 8
  %25 = getelementptr inbounds %struct.basic_ring, %struct.basic_ring* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 16
  %29 = load i32, i32* @RXFREE_ENTRIES, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 16
  %32 = urem i64 %28, %31
  %33 = load %struct.typhoon_indexes*, %struct.typhoon_indexes** %6, align 8
  %34 = getelementptr inbounds %struct.typhoon_indexes, %struct.typhoon_indexes* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @le32_to_cpu(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = icmp eq i64 %32, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %97

42:                                               ; preds = %2
  %43 = load i32, i32* @PKT_BUF_SZ, align 4
  %44 = call %struct.sk_buff* @dev_alloc_skb(i32 %43)
  store %struct.sk_buff* %44, %struct.sk_buff** %10, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %46 = icmp ne %struct.sk_buff* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %97

50:                                               ; preds = %42
  %51 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %52 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %57 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PKT_BUF_SZ, align 4
  %63 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %64 = call i32 @pci_map_single(i32 %58, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load %struct.basic_ring*, %struct.basic_ring** %8, align 8
  %66 = getelementptr inbounds %struct.basic_ring, %struct.basic_ring* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.basic_ring*, %struct.basic_ring** %8, align 8
  %69 = getelementptr inbounds %struct.basic_ring, %struct.basic_ring* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %67, %71
  %73 = inttoptr i64 %72 to %struct.rx_free*
  store %struct.rx_free* %73, %struct.rx_free** %9, align 8
  %74 = load %struct.basic_ring*, %struct.basic_ring** %8, align 8
  %75 = getelementptr inbounds %struct.basic_ring, %struct.basic_ring* %74, i32 0, i32 0
  %76 = call i32 @typhoon_inc_rxfree_index(i32* %75, i32 1)
  %77 = load i64, i64* %5, align 8
  %78 = load %struct.rx_free*, %struct.rx_free** %9, align 8
  %79 = getelementptr inbounds %struct.rx_free, %struct.rx_free* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.rx_free*, %struct.rx_free** %9, align 8
  %83 = getelementptr inbounds %struct.rx_free, %struct.rx_free* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %85 = load %struct.rxbuff_ent*, %struct.rxbuff_ent** %7, align 8
  %86 = getelementptr inbounds %struct.rxbuff_ent, %struct.rxbuff_ent* %85, i32 0, i32 1
  store %struct.sk_buff* %84, %struct.sk_buff** %86, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.rxbuff_ent*, %struct.rxbuff_ent** %7, align 8
  %89 = getelementptr inbounds %struct.rxbuff_ent, %struct.rxbuff_ent* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = call i32 (...) @wmb()
  %91 = load %struct.basic_ring*, %struct.basic_ring** %8, align 8
  %92 = getelementptr inbounds %struct.basic_ring, %struct.basic_ring* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i8* @cpu_to_le32(i32 %93)
  %95 = load %struct.typhoon_indexes*, %struct.typhoon_indexes** %6, align 8
  %96 = getelementptr inbounds %struct.typhoon_indexes, %struct.typhoon_indexes* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %50, %47, %39
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @typhoon_inc_rxfree_index(i32*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
