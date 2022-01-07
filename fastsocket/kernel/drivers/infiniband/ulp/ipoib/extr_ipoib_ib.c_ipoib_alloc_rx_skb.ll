; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_alloc_rx_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_alloc_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.sk_buff*, i32* }
%struct.page = type { i32 }

@IPOIB_UD_HEAD_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*, i32)* @ipoib_alloc_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ipoib_alloc_rx_skb(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipoib_dev_priv*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.page*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.ipoib_dev_priv* %13, %struct.ipoib_dev_priv** %6, align 8
  %14 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %15 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @ipoib_ud_need_sg(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @IPOIB_UD_HEAD_SIZE, align 4
  store i32 %20, i32* %8, align 4
  store i32 128, i32* %9, align 4
  br label %26

21:                                               ; preds = %2
  %22 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %23 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @IPOIB_UD_BUF_SIZE(i32 %24)
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %21, %19
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %27, %28
  %30 = add nsw i32 %29, 4
  %31 = call %struct.sk_buff* @dev_alloc_skb(i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %7, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %131

39:                                               ; preds = %26
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = call i32 @skb_reserve(%struct.sk_buff* %40, i32 4)
  %42 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %43 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %10, align 8
  %50 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %51 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %58 = call i32 @ib_dma_map_single(i32 %52, i32 %55, i32 %56, i32 %57)
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %62 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ib_dma_mapping_error(i32 %63, i32 %66)
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %39
  br label %128

71:                                               ; preds = %39
  %72 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %73 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @ipoib_ud_need_sg(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %108

77:                                               ; preds = %71
  %78 = load i32, i32* @GFP_ATOMIC, align 4
  %79 = call %struct.page* @alloc_page(i32 %78)
  store %struct.page* %79, %struct.page** %11, align 8
  %80 = load %struct.page*, %struct.page** %11, align 8
  %81 = icmp ne %struct.page* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %118

83:                                               ; preds = %77
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = load %struct.page*, %struct.page** %11, align 8
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = call i32 @skb_fill_page_desc(%struct.sk_buff* %84, i32 0, %struct.page* %85, i32 0, i32 %86)
  %88 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %89 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.page*, %struct.page** %11, align 8
  %92 = load i32, i32* @PAGE_SIZE, align 4
  %93 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %94 = call i32 @ib_dma_map_page(i32 %90, %struct.page* %91, i32 0, i32 %92, i32 %93)
  %95 = load i32*, i32** %10, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %98 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ib_dma_mapping_error(i32 %99, i32 %102)
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %83
  br label %118

107:                                              ; preds = %83
  br label %108

108:                                              ; preds = %107, %71
  %109 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %110 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %111 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store %struct.sk_buff* %109, %struct.sk_buff** %116, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %117, %struct.sk_buff** %3, align 8
  br label %131

118:                                              ; preds = %106, %82
  %119 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %120 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %127 = call i32 @ib_dma_unmap_single(i32 %121, i32 %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %118, %70
  %129 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %130 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %129)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %131

131:                                              ; preds = %128, %108, %38
  %132 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %132
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ipoib_ud_need_sg(i32) #1

declare dso_local i32 @IPOIB_UD_BUF_SIZE(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @ib_dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @ib_dma_mapping_error(i32, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, %struct.page*, i32, i32) #1

declare dso_local i32 @ib_dma_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
