; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_complete_rx_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_complete_rx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, %struct.mlx4_en_frag_info*, i32 }
%struct.mlx4_en_frag_info = type { i32, i64, i32 }
%struct.mlx4_en_rx_desc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_en_rx_alloc = type { i32*, i32 }
%struct.sk_buff = type { i32 }
%struct.skb_frag_struct = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.skb_frag_struct* }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_alloc*, %struct.sk_buff*, i32)* @mlx4_en_complete_rx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_complete_rx_desc(%struct.mlx4_en_priv* %0, %struct.mlx4_en_rx_desc* %1, %struct.mlx4_en_rx_alloc* %2, %struct.sk_buff* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_en_priv*, align 8
  %8 = alloca %struct.mlx4_en_rx_desc*, align 8
  %9 = alloca %struct.mlx4_en_rx_alloc*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.skb_frag_struct*, align 8
  %13 = alloca %struct.mlx4_en_frag_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %7, align 8
  store %struct.mlx4_en_rx_desc* %1, %struct.mlx4_en_rx_desc** %8, align 8
  store %struct.mlx4_en_rx_alloc* %2, %struct.mlx4_en_rx_alloc** %9, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %17 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %18, align 8
  store %struct.skb_frag_struct* %19, %struct.skb_frag_struct** %12, align 8
  store i32 0, i32* %14, align 4
  br label %20

20:                                               ; preds = %111, %5
  %21 = load i32, i32* %14, align 4
  %22 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %23 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %114

26:                                               ; preds = %20
  %27 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %27, i32 0, i32 1
  %29 = load %struct.mlx4_en_frag_info*, %struct.mlx4_en_frag_info** %28, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mlx4_en_frag_info, %struct.mlx4_en_frag_info* %29, i64 %31
  store %struct.mlx4_en_frag_info* %32, %struct.mlx4_en_frag_info** %13, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.mlx4_en_frag_info*, %struct.mlx4_en_frag_info** %13, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_frag_info, %struct.mlx4_en_frag_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sle i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %114

39:                                               ; preds = %26
  %40 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %9, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %40, i64 %42
  %44 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  br label %137

48:                                               ; preds = %39
  %49 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %8, align 8
  %50 = getelementptr inbounds %struct.mlx4_en_rx_desc, %struct.mlx4_en_rx_desc* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @be64_to_cpu(i32 %56)
  store i32 %57, i32* %15, align 4
  %58 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %15, align 4
  %62 = load %struct.mlx4_en_frag_info*, %struct.mlx4_en_frag_info** %13, align 8
  %63 = getelementptr inbounds %struct.mlx4_en_frag_info, %struct.mlx4_en_frag_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %66 = call i32 @dma_sync_single_for_cpu(i32 %60, i32 %61, i32 %64, i32 %65)
  %67 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %67, i64 %69
  %71 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %9, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %71, i64 %73
  %75 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @__skb_frag_set_page(%struct.skb_frag_struct* %70, i32* %76)
  %78 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %78, i64 %80
  %82 = load %struct.mlx4_en_frag_info*, %struct.mlx4_en_frag_info** %13, align 8
  %83 = getelementptr inbounds %struct.mlx4_en_frag_info, %struct.mlx4_en_frag_info* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @skb_frag_size_set(%struct.skb_frag_struct* %81, i32 %84)
  %86 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %9, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %86, i64 %88
  %90 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %92, i64 %94
  %96 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %95, i32 0, i32 2
  store i32 %91, i32* %96, align 4
  %97 = load %struct.mlx4_en_frag_info*, %struct.mlx4_en_frag_info** %13, align 8
  %98 = getelementptr inbounds %struct.mlx4_en_frag_info, %struct.mlx4_en_frag_info* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %99
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 4
  %106 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %9, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %106, i64 %108
  %110 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %109, i32 0, i32 0
  store i32* null, i32** %110, align 8
  br label %111

111:                                              ; preds = %48
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %14, align 4
  br label %20

114:                                              ; preds = %38, %20
  %115 = load i32, i32* %14, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %135

117:                                              ; preds = %114
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %120 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %119, i32 0, i32 1
  %121 = load %struct.mlx4_en_frag_info*, %struct.mlx4_en_frag_info** %120, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.mlx4_en_frag_info, %struct.mlx4_en_frag_info* %121, i64 %124
  %126 = getelementptr inbounds %struct.mlx4_en_frag_info, %struct.mlx4_en_frag_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %118, %127
  %129 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %129, i64 %132
  %134 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %133, i32 0, i32 0
  store i32 %128, i32* %134, align 4
  br label %135

135:                                              ; preds = %117, %114
  %136 = load i32, i32* %14, align 4
  store i32 %136, i32* %6, align 4
  br label %152

137:                                              ; preds = %47
  br label %138

138:                                              ; preds = %141, %137
  %139 = load i32, i32* %14, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %138
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %14, align 4
  %144 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %12, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %144, i64 %146
  %148 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @put_page(i32 %149)
  br label %138

151:                                              ; preds = %138
  store i32 0, i32* %6, align 4
  br label %152

152:                                              ; preds = %151, %135
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @__skb_frag_set_page(%struct.skb_frag_struct*, i32*) #1

declare dso_local i32 @skb_frag_size_set(%struct.skb_frag_struct*, i32) #1

declare dso_local i32 @put_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
