; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_make_tx_wrbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_make_tx_wrbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.be_queue_info = type { i32 }
%struct.sk_buff = type { i64, i64, i32 }
%struct.be_eth_wrb = type { i64 }
%struct.be_eth_hdr_wrb = type { i64 }
%struct.skb_frag_struct = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.skb_frag_struct* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, %struct.be_queue_info*, %struct.sk_buff*, i32, i32, i32)* @make_tx_wrbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_tx_wrbs(%struct.be_adapter* %0, %struct.be_queue_info* %1, %struct.sk_buff* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_adapter*, align 8
  %9 = alloca %struct.be_queue_info*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.device*, align 8
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca %struct.be_eth_wrb*, align 8
  %20 = alloca %struct.be_eth_hdr_wrb*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.skb_frag_struct*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %8, align 8
  store %struct.be_queue_info* %1, %struct.be_queue_info** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %25 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %26 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store %struct.device* %28, %struct.device** %17, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %29, %struct.sk_buff** %18, align 8
  store i32 0, i32* %21, align 4
  %30 = load %struct.be_queue_info*, %struct.be_queue_info** %9, align 8
  %31 = call %struct.be_eth_wrb* @queue_head_node(%struct.be_queue_info* %30)
  %32 = bitcast %struct.be_eth_wrb* %31 to %struct.be_eth_hdr_wrb*
  store %struct.be_eth_hdr_wrb* %32, %struct.be_eth_hdr_wrb** %20, align 8
  %33 = load %struct.be_queue_info*, %struct.be_queue_info** %9, align 8
  %34 = call i32 @queue_head_inc(%struct.be_queue_info* %33)
  %35 = load %struct.be_queue_info*, %struct.be_queue_info** %9, align 8
  %36 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %22, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %6
  %46 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %47 = call i32 @skb_headlen(%struct.sk_buff* %46)
  store i32 %47, i32* %23, align 4
  %48 = load %struct.device*, %struct.device** %17, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %23, align 4
  %53 = load i32, i32* @DMA_TO_DEVICE, align 4
  %54 = call i32 @dma_map_single(%struct.device* %48, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load %struct.device*, %struct.device** %17, align 8
  %56 = load i32, i32* %14, align 4
  %57 = call i64 @dma_mapping_error(%struct.device* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %145

60:                                               ; preds = %45
  store i32 1, i32* %21, align 4
  %61 = load %struct.be_queue_info*, %struct.be_queue_info** %9, align 8
  %62 = call %struct.be_eth_wrb* @queue_head_node(%struct.be_queue_info* %61)
  store %struct.be_eth_wrb* %62, %struct.be_eth_wrb** %19, align 8
  %63 = load %struct.be_eth_wrb*, %struct.be_eth_wrb** %19, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %23, align 4
  %66 = call i32 @wrb_fill(%struct.be_eth_wrb* %63, i32 %64, i32 %65)
  %67 = load %struct.be_eth_wrb*, %struct.be_eth_wrb** %19, align 8
  %68 = call i32 @be_dws_cpu_to_le(%struct.be_eth_wrb* %67, i32 8)
  %69 = load %struct.be_queue_info*, %struct.be_queue_info** %9, align 8
  %70 = call i32 @queue_head_inc(%struct.be_queue_info* %69)
  %71 = load i32, i32* %23, align 4
  %72 = load i32, i32* %16, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %16, align 4
  br label %74

74:                                               ; preds = %60, %6
  store i32 0, i32* %15, align 4
  br label %75

75:                                               ; preds = %117, %74
  %76 = load i32, i32* %15, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %78 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %77)
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %76, %80
  br i1 %81, label %82, label %120

82:                                               ; preds = %75
  %83 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %84 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %83)
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %85, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %86, i64 %88
  store %struct.skb_frag_struct* %89, %struct.skb_frag_struct** %24, align 8
  %90 = load %struct.device*, %struct.device** %17, align 8
  %91 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %24, align 8
  %92 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %24, align 8
  %93 = call i32 @skb_frag_size(%struct.skb_frag_struct* %92)
  %94 = load i32, i32* @DMA_TO_DEVICE, align 4
  %95 = call i32 @skb_frag_dma_map(%struct.device* %90, %struct.skb_frag_struct* %91, i32 0, i32 %93, i32 %94)
  store i32 %95, i32* %14, align 4
  %96 = load %struct.device*, %struct.device** %17, align 8
  %97 = load i32, i32* %14, align 4
  %98 = call i64 @dma_mapping_error(%struct.device* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %82
  br label %145

101:                                              ; preds = %82
  %102 = load %struct.be_queue_info*, %struct.be_queue_info** %9, align 8
  %103 = call %struct.be_eth_wrb* @queue_head_node(%struct.be_queue_info* %102)
  store %struct.be_eth_wrb* %103, %struct.be_eth_wrb** %19, align 8
  %104 = load %struct.be_eth_wrb*, %struct.be_eth_wrb** %19, align 8
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %24, align 8
  %107 = call i32 @skb_frag_size(%struct.skb_frag_struct* %106)
  %108 = call i32 @wrb_fill(%struct.be_eth_wrb* %104, i32 %105, i32 %107)
  %109 = load %struct.be_eth_wrb*, %struct.be_eth_wrb** %19, align 8
  %110 = call i32 @be_dws_cpu_to_le(%struct.be_eth_wrb* %109, i32 8)
  %111 = load %struct.be_queue_info*, %struct.be_queue_info** %9, align 8
  %112 = call i32 @queue_head_inc(%struct.be_queue_info* %111)
  %113 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %24, align 8
  %114 = call i32 @skb_frag_size(%struct.skb_frag_struct* %113)
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %16, align 4
  br label %117

117:                                              ; preds = %101
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %15, align 4
  br label %75

120:                                              ; preds = %75
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load %struct.be_queue_info*, %struct.be_queue_info** %9, align 8
  %125 = call %struct.be_eth_wrb* @queue_head_node(%struct.be_queue_info* %124)
  store %struct.be_eth_wrb* %125, %struct.be_eth_wrb** %19, align 8
  %126 = load %struct.be_eth_wrb*, %struct.be_eth_wrb** %19, align 8
  %127 = call i32 @wrb_fill(%struct.be_eth_wrb* %126, i32 0, i32 0)
  %128 = load %struct.be_eth_wrb*, %struct.be_eth_wrb** %19, align 8
  %129 = call i32 @be_dws_cpu_to_le(%struct.be_eth_wrb* %128, i32 8)
  %130 = load %struct.be_queue_info*, %struct.be_queue_info** %9, align 8
  %131 = call i32 @queue_head_inc(%struct.be_queue_info* %130)
  br label %132

132:                                              ; preds = %123, %120
  %133 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %134 = load %struct.be_eth_hdr_wrb*, %struct.be_eth_hdr_wrb** %20, align 8
  %135 = bitcast %struct.be_eth_hdr_wrb* %134 to %struct.be_eth_wrb*
  %136 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @wrb_fill_hdr(%struct.be_adapter* %133, %struct.be_eth_wrb* %135, %struct.sk_buff* %136, i32 %137, i32 %138, i32 %139)
  %141 = load %struct.be_eth_hdr_wrb*, %struct.be_eth_hdr_wrb** %20, align 8
  %142 = bitcast %struct.be_eth_hdr_wrb* %141 to %struct.be_eth_wrb*
  %143 = call i32 @be_dws_cpu_to_le(%struct.be_eth_wrb* %142, i32 8)
  %144 = load i32, i32* %16, align 4
  store i32 %144, i32* %7, align 4
  br label %169

145:                                              ; preds = %100, %59
  %146 = load i32, i32* %22, align 4
  %147 = load %struct.be_queue_info*, %struct.be_queue_info** %9, align 8
  %148 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %152, %145
  %150 = load i32, i32* %16, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %149
  %153 = load %struct.be_queue_info*, %struct.be_queue_info** %9, align 8
  %154 = call %struct.be_eth_wrb* @queue_head_node(%struct.be_queue_info* %153)
  store %struct.be_eth_wrb* %154, %struct.be_eth_wrb** %19, align 8
  %155 = load %struct.device*, %struct.device** %17, align 8
  %156 = load %struct.be_eth_wrb*, %struct.be_eth_wrb** %19, align 8
  %157 = load i32, i32* %21, align 4
  %158 = call i32 @unmap_tx_frag(%struct.device* %155, %struct.be_eth_wrb* %156, i32 %157)
  store i32 0, i32* %21, align 4
  %159 = load %struct.be_eth_wrb*, %struct.be_eth_wrb** %19, align 8
  %160 = getelementptr inbounds %struct.be_eth_wrb, %struct.be_eth_wrb* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* %16, align 4
  %163 = sext i32 %162 to i64
  %164 = sub nsw i64 %163, %161
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %16, align 4
  %166 = load %struct.be_queue_info*, %struct.be_queue_info** %9, align 8
  %167 = call i32 @queue_head_inc(%struct.be_queue_info* %166)
  br label %149

168:                                              ; preds = %149
  store i32 0, i32* %7, align 4
  br label %169

169:                                              ; preds = %168, %132
  %170 = load i32, i32* %7, align 4
  ret i32 %170
}

declare dso_local %struct.be_eth_wrb* @queue_head_node(%struct.be_queue_info*) #1

declare dso_local i32 @queue_head_inc(%struct.be_queue_info*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @wrb_fill(%struct.be_eth_wrb*, i32, i32) #1

declare dso_local i32 @be_dws_cpu_to_le(%struct.be_eth_wrb*, i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_dma_map(%struct.device*, %struct.skb_frag_struct*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(%struct.skb_frag_struct*) #1

declare dso_local i32 @wrb_fill_hdr(%struct.be_adapter*, %struct.be_eth_wrb*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @unmap_tx_frag(%struct.device*, %struct.be_eth_wrb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
