; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_map_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_map_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.skb_shared_info = type { i64, %struct.TYPE_2__* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.sk_buff*, i32*)* @map_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_skb(%struct.device* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca %struct.skb_shared_info*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i32 @skb_headlen(%struct.sk_buff* %15)
  %17 = load i32, i32* @DMA_TO_DEVICE, align 4
  %18 = call i32 @dma_map_single(%struct.device* %11, i32 %14, i32 %16, i32 %17)
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @dma_mapping_error(%struct.device* %20, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %96

26:                                               ; preds = %3
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %27)
  store %struct.skb_shared_info* %28, %struct.skb_shared_info** %10, align 8
  %29 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %30 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %33 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %34
  store %struct.TYPE_2__* %35, %struct.TYPE_2__** %9, align 8
  %36 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %37 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  store %struct.TYPE_2__* %38, %struct.TYPE_2__** %8, align 8
  br label %39

39:                                               ; preds = %65, %26
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %42 = icmp ult %struct.TYPE_2__* %40, %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %39
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DMA_TO_DEVICE, align 4
  %55 = call i32 @dma_map_page(%struct.device* %44, i32 %47, i32 %50, i32 %53, i32 %54)
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %7, align 8
  store i32 %55, i32* %57, align 4
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @dma_mapping_error(%struct.device* %58, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %43
  br label %69

64:                                               ; preds = %43
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 1
  store %struct.TYPE_2__* %67, %struct.TYPE_2__** %8, align 8
  br label %39

68:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %99

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %77, %69
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 -1
  store %struct.TYPE_2__* %72, %struct.TYPE_2__** %8, align 8
  %73 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %74 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = icmp ugt %struct.TYPE_2__* %71, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %70
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 -1
  store i32* %80, i32** %7, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @DMA_TO_DEVICE, align 4
  %86 = call i32 @dma_unmap_page(%struct.device* %78, i32 %81, i32 %84, i32 %85)
  br label %70

87:                                               ; preds = %70
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 -1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %93 = call i32 @skb_headlen(%struct.sk_buff* %92)
  %94 = load i32, i32* @DMA_TO_DEVICE, align 4
  %95 = call i32 @dma_unmap_single(%struct.device* %88, i32 %91, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %87, %25
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %96, %68
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_page(%struct.device*, i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
