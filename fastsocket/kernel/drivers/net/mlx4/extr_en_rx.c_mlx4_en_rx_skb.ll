; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_rx_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i64, i32, i32 }
%struct.mlx4_en_priv = type { i32, i32 }
%struct.mlx4_en_rx_desc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_en_rx_alloc = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@SMALL_PACKET_SIZE = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@RX_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed allocating skb\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@HEADER_COPY_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.mlx4_en_priv*, %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_alloc*, i32)* @mlx4_en_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @mlx4_en_rx_skb(%struct.mlx4_en_priv* %0, %struct.mlx4_en_rx_desc* %1, %struct.mlx4_en_rx_alloc* %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_rx_desc*, align 8
  %8 = alloca %struct.mlx4_en_rx_alloc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %6, align 8
  store %struct.mlx4_en_rx_desc* %1, %struct.mlx4_en_rx_desc** %7, align 8
  store %struct.mlx4_en_rx_alloc* %2, %struct.mlx4_en_rx_alloc** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @SMALL_PACKET_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* @NET_IP_ALIGN, align 8
  %17 = add nsw i64 %15, %16
  %18 = call %struct.sk_buff* @dev_alloc_skb(i64 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %10, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @RX_ERR, align 4
  %23 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %24 = call i32 @en_dbg(i32 %22, %struct.mlx4_en_priv* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %139

25:                                               ; preds = %4
  %26 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %32 = load i64, i64* @NET_IP_ALIGN, align 8
  %33 = call i32 @skb_reserve(%struct.sk_buff* %31, i64 %32)
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %8, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %37, i64 0
  %39 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @page_address(i32 %40)
  %42 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %8, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %42, i64 0
  %44 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr i8, i8* %41, i64 %46
  store i8* %47, i8** %11, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @SMALL_PACKET_SIZE, align 4
  %50 = icmp ule i32 %48, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %25
  %52 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %7, align 8
  %53 = getelementptr inbounds %struct.mlx4_en_rx_desc, %struct.mlx4_en_rx_desc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @be64_to_cpu(i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %60 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %65 = call i32 @dma_sync_single_for_cpu(i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %66, i8* %67, i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %137

75:                                               ; preds = %25
  %76 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %77 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %7, align 8
  %78 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %8, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @mlx4_en_complete_rx_desc(%struct.mlx4_en_priv* %76, %struct.mlx4_en_rx_desc* %77, %struct.mlx4_en_rx_alloc* %78, %struct.sk_buff* %79, i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %75
  %89 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %90 = call i32 @kfree_skb(%struct.sk_buff* %89)
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %139

91:                                               ; preds = %75
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %94 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %93)
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = load i64, i64* @HEADER_COPY_SIZE, align 8
  %101 = call i32 @memcpy(i32 %98, i8* %99, i64 %100)
  %102 = load i64, i64* @HEADER_COPY_SIZE, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = zext i32 %105 to i64
  %107 = add nsw i64 %106, %102
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 4
  %109 = load i64, i64* @HEADER_COPY_SIZE, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %111 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %110)
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %117, %109
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %115, align 4
  %120 = load i64, i64* @HEADER_COPY_SIZE, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %122 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %121)
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = sub nsw i64 %128, %120
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %126, align 4
  %131 = load i32, i32* %9, align 4
  %132 = zext i32 %131 to i64
  %133 = load i64, i64* @HEADER_COPY_SIZE, align 8
  %134 = sub nsw i64 %132, %133
  %135 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 2
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %91, %51
  %138 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %138, %struct.sk_buff** %5, align 8
  br label %139

139:                                              ; preds = %137, %88, %21
  %140 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %140
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i8* @page_address(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @mlx4_en_complete_rx_desc(%struct.mlx4_en_priv*, %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_alloc*, %struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
