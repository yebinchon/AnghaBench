; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_dma_map_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_dma_map_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ipoib_tx_buf = type { i32*, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.ipoib_tx_buf*)* @ipoib_dma_map_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_dma_map_tx(%struct.ib_device* %0, %struct.ipoib_tx_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ipoib_tx_buf*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.ipoib_tx_buf* %1, %struct.ipoib_tx_buf** %5, align 8
  %12 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %5, align 8
  %13 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %12, i32 0, i32 1
  %14 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %14, %struct.sk_buff** %6, align 8
  %15 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %5, align 8
  %16 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i64 @skb_headlen(%struct.sk_buff* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %2
  %22 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i64 @skb_headlen(%struct.sk_buff* %26)
  %28 = load i32, i32* @DMA_TO_DEVICE, align 4
  %29 = call i32 @ib_dma_map_single(%struct.ib_device* %22, i32 %25, i64 %27, i32 %28)
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ib_dma_mapping_error(%struct.ib_device* %32, i32 %35)
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %21
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %141

42:                                               ; preds = %21
  store i32 1, i32* %9, align 4
  br label %44

43:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %42
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %90, %44
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %93

52:                                               ; preds = %45
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  store %struct.TYPE_4__* %59, %struct.TYPE_4__** %10, align 8
  %60 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %62 = call i32 @skb_frag_page(%struct.TYPE_4__* %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @DMA_TO_DEVICE, align 4
  %70 = call i32 @ib_dma_map_page(%struct.ib_device* %60, i32 %62, i32 %65, i32 %68, i32 %69)
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  store i32 %70, i32* %76, align 4
  %77 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ib_dma_mapping_error(%struct.ib_device* %77, i32 %84)
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %52
  br label %94

89:                                               ; preds = %52
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %45

93:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %141

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %123, %94
  %96 = load i32, i32* %8, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %126

98:                                               ; preds = %95
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %99)
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %105
  store %struct.TYPE_4__* %106, %struct.TYPE_4__** %11, align 8
  %107 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = sub nsw i32 %109, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %108, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @DMA_TO_DEVICE, align 4
  %122 = call i32 @ib_dma_unmap_page(%struct.ib_device* %107, i32 %117, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %98
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %8, align 4
  br label %95

126:                                              ; preds = %95
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %131 = load i32*, i32** %7, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = call i64 @skb_headlen(%struct.sk_buff* %134)
  %136 = load i32, i32* @DMA_TO_DEVICE, align 4
  %137 = call i32 @ib_dma_unmap_single(%struct.ib_device* %130, i32 %133, i64 %135, i32 %136)
  br label %138

138:                                              ; preds = %129, %126
  %139 = load i32, i32* @EIO, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %138, %93, %39
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @ib_dma_map_single(%struct.ib_device*, i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ib_dma_mapping_error(%struct.ib_device*, i32) #1

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @ib_dma_map_page(%struct.ib_device*, i32, i32, i32, i32) #1

declare dso_local i32 @skb_frag_page(%struct.TYPE_4__*) #1

declare dso_local i32 @ib_dma_unmap_page(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @ib_dma_unmap_single(%struct.ib_device*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
