; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_post_rx_frags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_post_rx_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_rx_obj = type { i32, %struct.be_rx_page_info*, %struct.be_queue_info, %struct.be_adapter* }
%struct.be_rx_page_info = type { i64, i32, %struct.page* }
%struct.page = type { i32 }
%struct.be_queue_info = type { i64, i32, i32 }
%struct.be_adapter = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.be_eth_rx_d = type { i8*, i8* }
%struct.TYPE_4__ = type { i32 }

@MAX_RX_POST = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@rx_frag_size = common dso_local global i64 0, align 8
@bus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_rx_obj*, i32)* @be_post_rx_frags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_post_rx_frags(%struct.be_rx_obj* %0, i32 %1) #0 {
  %3 = alloca %struct.be_rx_obj*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca %struct.be_rx_page_info*, align 8
  %7 = alloca %struct.be_rx_page_info*, align 8
  %8 = alloca %struct.be_queue_info*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.be_eth_rx_d*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.be_rx_obj* %0, %struct.be_rx_obj** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.be_rx_obj*, %struct.be_rx_obj** %3, align 8
  %16 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %15, i32 0, i32 3
  %17 = load %struct.be_adapter*, %struct.be_adapter** %16, align 8
  store %struct.be_adapter* %17, %struct.be_adapter** %5, align 8
  store %struct.be_rx_page_info* null, %struct.be_rx_page_info** %6, align 8
  store %struct.be_rx_page_info* null, %struct.be_rx_page_info** %7, align 8
  %18 = load %struct.be_rx_obj*, %struct.be_rx_obj** %3, align 8
  %19 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %18, i32 0, i32 2
  store %struct.be_queue_info* %19, %struct.be_queue_info** %8, align 8
  store %struct.page* null, %struct.page** %9, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %14, align 8
  %20 = load %struct.be_rx_obj*, %struct.be_rx_obj** %3, align 8
  %21 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %20, i32 0, i32 1
  %22 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %21, align 8
  %23 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %24 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %22, i64 %25
  store %struct.be_rx_page_info* %26, %struct.be_rx_page_info** %6, align 8
  store i64 0, i64* %13, align 8
  br label %27

27:                                               ; preds = %133, %2
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* @MAX_RX_POST, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %6, align 8
  %33 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %32, i32 0, i32 2
  %34 = load %struct.page*, %struct.page** %33, align 8
  %35 = icmp ne %struct.page* %34, null
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %31, %27
  %38 = phi i1 [ false, %27 ], [ %36, %31 ]
  br i1 %38, label %39, label %136

39:                                               ; preds = %37
  %40 = load %struct.page*, %struct.page** %9, align 8
  %41 = icmp ne %struct.page* %40, null
  br i1 %41, label %73, label %42

42:                                               ; preds = %39
  %43 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %44 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call %struct.page* @be_alloc_pages(i64 %45, i32 %46)
  store %struct.page* %47, %struct.page** %9, align 8
  %48 = load %struct.page*, %struct.page** %9, align 8
  %49 = icmp ne %struct.page* %48, null
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %42
  %55 = load %struct.be_rx_obj*, %struct.be_rx_obj** %3, align 8
  %56 = call %struct.TYPE_4__* @rx_stats(%struct.be_rx_obj* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %136

60:                                               ; preds = %42
  %61 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %62 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load %struct.page*, %struct.page** %9, align 8
  %66 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %67 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %70 = call i32 @dma_map_page(i32* %64, %struct.page* %65, i32 0, i64 %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %6, align 8
  %72 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  br label %81

73:                                               ; preds = %39
  %74 = load %struct.page*, %struct.page** %9, align 8
  %75 = call i32 @get_page(%struct.page* %74)
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* @rx_frag_size, align 8
  %78 = add nsw i64 %76, %77
  %79 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %6, align 8
  %80 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %73, %60
  %82 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %6, align 8
  %83 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %14, align 8
  %85 = load %struct.page*, %struct.page** %9, align 8
  %86 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %6, align 8
  %87 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %86, i32 0, i32 2
  store %struct.page* %85, %struct.page** %87, align 8
  %88 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %6, align 8
  %89 = load i32, i32* @bus, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @pci_unmap_addr_set(%struct.be_rx_page_info* %88, i32 %89, i32 %90)
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %6, align 8
  %95 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %12, align 4
  %99 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %100 = call %struct.be_eth_rx_d* @queue_head_node(%struct.be_queue_info* %99)
  store %struct.be_eth_rx_d* %100, %struct.be_eth_rx_d** %10, align 8
  %101 = load i32, i32* %12, align 4
  %102 = call i8* @cpu_to_le32(i32 %101)
  %103 = load %struct.be_eth_rx_d*, %struct.be_eth_rx_d** %10, align 8
  %104 = getelementptr inbounds %struct.be_eth_rx_d, %struct.be_eth_rx_d* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @upper_32_bits(i32 %105)
  %107 = call i8* @cpu_to_le32(i32 %106)
  %108 = load %struct.be_eth_rx_d*, %struct.be_eth_rx_d** %10, align 8
  %109 = getelementptr inbounds %struct.be_eth_rx_d, %struct.be_eth_rx_d* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  %110 = load i64, i64* %14, align 8
  %111 = load i64, i64* @rx_frag_size, align 8
  %112 = add nsw i64 %110, %111
  %113 = load i64, i64* @rx_frag_size, align 8
  %114 = add nsw i64 %112, %113
  %115 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %116 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %114, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %81
  store %struct.page* null, %struct.page** %9, align 8
  %120 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %6, align 8
  %121 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %120, i32 0, i32 1
  store i32 1, i32* %121, align 8
  br label %122

122:                                              ; preds = %119, %81
  %123 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %6, align 8
  store %struct.be_rx_page_info* %123, %struct.be_rx_page_info** %7, align 8
  %124 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %125 = call i32 @queue_head_inc(%struct.be_queue_info* %124)
  %126 = load %struct.be_rx_obj*, %struct.be_rx_obj** %3, align 8
  %127 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %126, i32 0, i32 1
  %128 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %127, align 8
  %129 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %130 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %128, i64 %131
  store %struct.be_rx_page_info* %132, %struct.be_rx_page_info** %6, align 8
  br label %133

133:                                              ; preds = %122
  %134 = load i64, i64* %13, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %13, align 8
  br label %27

136:                                              ; preds = %54, %37
  %137 = load %struct.page*, %struct.page** %9, align 8
  %138 = icmp ne %struct.page* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %7, align 8
  %141 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %140, i32 0, i32 1
  store i32 1, i32* %141, align 8
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i64, i64* %13, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %142
  %146 = load i64, i64* %13, align 8
  %147 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %148 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %147, i32 0, i32 1
  %149 = call i32 @atomic_add(i64 %146, i32* %148)
  %150 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %151 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %152 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i64, i64* %13, align 8
  %155 = call i32 @be_rxq_notify(%struct.be_adapter* %150, i32 %153, i64 %154)
  br label %165

156:                                              ; preds = %142
  %157 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %158 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %157, i32 0, i32 1
  %159 = call i64 @atomic_read(i32* %158)
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load %struct.be_rx_obj*, %struct.be_rx_obj** %3, align 8
  %163 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %162, i32 0, i32 0
  store i32 1, i32* %163, align 8
  br label %164

164:                                              ; preds = %161, %156
  br label %165

165:                                              ; preds = %164, %145
  ret void
}

declare dso_local %struct.page* @be_alloc_pages(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_4__* @rx_stats(%struct.be_rx_obj*) #1

declare dso_local i32 @dma_map_page(i32*, %struct.page*, i32, i64, i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @pci_unmap_addr_set(%struct.be_rx_page_info*, i32, i32) #1

declare dso_local %struct.be_eth_rx_d* @queue_head_node(%struct.be_queue_info*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @queue_head_inc(%struct.be_queue_info*) #1

declare dso_local i32 @atomic_add(i64, i32*) #1

declare dso_local i32 @be_rxq_notify(%struct.be_adapter*, i32, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
