; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ibm_newemac/extr_core.c_emac_alloc_rx_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ibm_newemac/extr_core.c_emac_alloc_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_instance = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__*, %struct.sk_buff**, i32 }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@EMAC_RX_SKB_HEADROOM = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@MAL_RX_CTRL_EMPTY = common dso_local global i32 0, align 4
@NUM_RX_BUFF = common dso_local global i32 0, align 4
@MAL_RX_CTRL_WRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_instance*, i32, i32)* @emac_alloc_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_alloc_rx_skb(%struct.emac_instance* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.emac_instance*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.emac_instance* %0, %struct.emac_instance** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.emac_instance*, %struct.emac_instance** %5, align 8
  %10 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.sk_buff* @alloc_skb(i32 %11, i32 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %82

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = load %struct.emac_instance*, %struct.emac_instance** %5, align 8
  %26 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %25, i32 0, i32 3
  %27 = load %struct.sk_buff**, %struct.sk_buff*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %27, i64 %29
  store %struct.sk_buff* %24, %struct.sk_buff** %30, align 8
  %31 = load %struct.emac_instance*, %struct.emac_instance** %5, align 8
  %32 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = load i64, i64* @EMAC_RX_SKB_HEADROOM, align 8
  %40 = add nsw i64 %39, 2
  %41 = call i32 @skb_reserve(%struct.sk_buff* %38, i64 %40)
  %42 = load %struct.emac_instance*, %struct.emac_instance** %5, align 8
  %43 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %48, 2
  %50 = load %struct.emac_instance*, %struct.emac_instance** %5, align 8
  %51 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %54 = call i64 @dma_map_single(i32* %45, i64 %49, i32 %52, i32 %53)
  %55 = add nsw i64 %54, 2
  %56 = load %struct.emac_instance*, %struct.emac_instance** %5, align 8
  %57 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i64 %55, i64* %62, align 8
  %63 = call i32 (...) @wmb()
  %64 = load i32, i32* @MAL_RX_CTRL_EMPTY, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @NUM_RX_BUFF, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %23
  %70 = load i32, i32* @MAL_RX_CTRL_WRAP, align 4
  br label %72

71:                                               ; preds = %23
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  %74 = or i32 %64, %73
  %75 = load %struct.emac_instance*, %struct.emac_instance** %5, align 8
  %76 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 %74, i32* %81, align 8
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %72, %20
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @dma_map_single(i32*, i64, i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
