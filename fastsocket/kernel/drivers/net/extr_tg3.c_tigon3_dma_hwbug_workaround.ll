; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tigon3_dma_hwbug_workaround.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tigon3_dma_hwbug_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3_napi = type { %struct.TYPE_2__*, %struct.tg3* }
%struct.TYPE_2__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i32, i64 }
%struct.tg3 = type { i32 }

@ASIC_REV_5701 = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@TXD_FLAG_END = common dso_local global i64 0, align 8
@mapping = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3_napi*, %struct.sk_buff**, i64*, i64*, i64, i64, i64)* @tigon3_dma_hwbug_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tigon3_dma_hwbug_workaround(%struct.tg3_napi* %0, %struct.sk_buff** %1, i64* %2, i64* %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.tg3_napi*, align 8
  %9 = alloca %struct.sk_buff**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.tg3*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.tg3_napi* %0, %struct.tg3_napi** %8, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %22 = load %struct.tg3_napi*, %struct.tg3_napi** %8, align 8
  %23 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %22, i32 0, i32 1
  %24 = load %struct.tg3*, %struct.tg3** %23, align 8
  store %struct.tg3* %24, %struct.tg3** %15, align 8
  %25 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  store %struct.sk_buff* %26, %struct.sk_buff** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %27 = load %struct.tg3*, %struct.tg3** %15, align 8
  %28 = call i64 @tg3_asic_rev(%struct.tg3* %27)
  %29 = load i64, i64* @ASIC_REV_5701, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %7
  %32 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %32, i32 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %16, align 8
  br label %52

35:                                               ; preds = %7
  %36 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = and i64 %38, 3
  %40 = sub i64 4, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %20, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %44 = call i64 @skb_headroom(%struct.sk_buff* %43)
  %45 = load i32, i32* %20, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %49 = call i32 @skb_tailroom(%struct.sk_buff* %48)
  %50 = load i32, i32* @GFP_ATOMIC, align 4
  %51 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %42, i64 %47, i32 %49, i32 %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %16, align 8
  br label %52

52:                                               ; preds = %35, %31
  %53 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %54 = icmp ne %struct.sk_buff* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store i32 -1, i32* %19, align 4
  br label %120

56:                                               ; preds = %52
  %57 = load %struct.tg3*, %struct.tg3** %15, align 8
  %58 = getelementptr inbounds %struct.tg3, %struct.tg3* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %67 = call i32 @pci_map_single(i32 %59, i64 %62, i32 %65, i32 %66)
  store i32 %67, i32* %18, align 4
  %68 = load %struct.tg3*, %struct.tg3** %15, align 8
  %69 = getelementptr inbounds %struct.tg3, %struct.tg3* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %18, align 4
  %72 = call i64 @pci_dma_mapping_error(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %56
  %75 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %76 = call i32 @dev_kfree_skb(%struct.sk_buff* %75)
  store i32 -1, i32* %19, align 4
  br label %119

77:                                               ; preds = %56
  %78 = load i64*, i64** %10, align 8
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %21, align 8
  %80 = load i64, i64* @TXD_FLAG_END, align 8
  %81 = load i64, i64* %12, align 8
  %82 = or i64 %81, %80
  store i64 %82, i64* %12, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %84 = load %struct.tg3_napi*, %struct.tg3_napi** %8, align 8
  %85 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i64*, i64** %10, align 8
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store %struct.sk_buff* %83, %struct.sk_buff** %90, align 8
  %91 = load %struct.tg3_napi*, %struct.tg3_napi** %8, align 8
  %92 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i64*, i64** %10, align 8
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = load i32, i32* @mapping, align 4
  %98 = load i32, i32* %18, align 4
  %99 = call i32 @dma_unmap_addr_set(%struct.TYPE_2__* %96, i32 %97, i32 %98)
  %100 = load %struct.tg3_napi*, %struct.tg3_napi** %8, align 8
  %101 = load i64*, i64** %10, align 8
  %102 = load i64*, i64** %11, align 8
  %103 = load i32, i32* %18, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* %13, align 8
  %109 = load i64, i64* %14, align 8
  %110 = call i64 @tg3_tx_frag_set(%struct.tg3_napi* %100, i64* %101, i64* %102, i32 %103, i32 %106, i64 %107, i64 %108, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %77
  %113 = load %struct.tg3_napi*, %struct.tg3_napi** %8, align 8
  %114 = load i64, i64* %21, align 8
  %115 = call i32 @tg3_tx_skb_unmap(%struct.tg3_napi* %113, i64 %114, i32 -1)
  %116 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %117 = call i32 @dev_kfree_skb(%struct.sk_buff* %116)
  store i32 -1, i32* %19, align 4
  br label %118

118:                                              ; preds = %112, %77
  br label %119

119:                                              ; preds = %118, %74
  br label %120

120:                                              ; preds = %119, %55
  %121 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %122 = call i32 @dev_kfree_skb(%struct.sk_buff* %121)
  %123 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %124 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  store %struct.sk_buff* %123, %struct.sk_buff** %124, align 8
  %125 = load i32, i32* %19, align 4
  ret i32 %125
}

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i64, i32, i32) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @pci_map_single(i32, i64, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i64 @tg3_tx_frag_set(%struct.tg3_napi*, i64*, i64*, i32, i32, i64, i64, i64) #1

declare dso_local i32 @tg3_tx_skb_unmap(%struct.tg3_napi*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
