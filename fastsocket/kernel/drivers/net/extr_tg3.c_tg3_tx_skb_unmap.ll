; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_tx_skb_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_tx_skb_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3_napi = type { %struct.tg3_tx_ring_info*, %struct.TYPE_3__* }
%struct.tg3_tx_ring_info = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

@mapping = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3_napi*, i64, i32)* @tg3_tx_skb_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_tx_skb_unmap(%struct.tg3_napi* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.tg3_napi*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tg3_tx_ring_info*, align 8
  %10 = alloca i32*, align 8
  store %struct.tg3_napi* %0, %struct.tg3_napi** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %12 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %11, i32 0, i32 0
  %13 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %13, i64 %14
  store %struct.tg3_tx_ring_info* %15, %struct.tg3_tx_ring_info** %9, align 8
  %16 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %9, align 8
  %17 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %16, i32 0, i32 1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %18, %struct.sk_buff** %8, align 8
  %19 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %9, align 8
  %20 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %19, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %20, align 8
  %21 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %22 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %9, align 8
  %27 = load i32, i32* @mapping, align 4
  %28 = call i32 @dma_unmap_addr(%struct.tg3_tx_ring_info* %26, i32 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = call i32 @skb_headlen(%struct.sk_buff* %29)
  %31 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %32 = call i32 @pci_unmap_single(i32 %25, i32 %28, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %38, %3
  %34 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %9, align 8
  %35 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %9, align 8
  %40 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @NEXT_TX(i64 %41)
  store i64 %42, i64* %5, align 8
  %43 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %44 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %43, i32 0, i32 0
  %45 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %45, i64 %46
  store %struct.tg3_tx_ring_info* %47, %struct.tg3_tx_ring_info** %9, align 8
  br label %33

48:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %96, %48
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %99

53:                                               ; preds = %49
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %54)
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32* %60, i32** %10, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i64 @NEXT_TX(i64 %61)
  store i64 %62, i64* %5, align 8
  %63 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %64 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %63, i32 0, i32 0
  %65 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %65, i64 %66
  store %struct.tg3_tx_ring_info* %67, %struct.tg3_tx_ring_info** %9, align 8
  %68 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %69 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %9, align 8
  %74 = load i32, i32* @mapping, align 4
  %75 = call i32 @dma_unmap_addr(%struct.tg3_tx_ring_info* %73, i32 %74)
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @skb_frag_size(i32* %76)
  %78 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %79 = call i32 @pci_unmap_page(i32 %72, i32 %75, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %85, %53
  %81 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %9, align 8
  %82 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %9, align 8
  %87 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load i64, i64* %5, align 8
  %89 = call i64 @NEXT_TX(i64 %88)
  store i64 %89, i64* %5, align 8
  %90 = load %struct.tg3_napi*, %struct.tg3_napi** %4, align 8
  %91 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %90, i32 0, i32 0
  %92 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %91, align 8
  %93 = load i64, i64* %5, align 8
  %94 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %92, i64 %93
  store %struct.tg3_tx_ring_info* %94, %struct.tg3_tx_ring_info** %9, align 8
  br label %80

95:                                               ; preds = %80
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %49

99:                                               ; preds = %49
  ret void
}

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.tg3_tx_ring_info*, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @NEXT_TX(i64) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
