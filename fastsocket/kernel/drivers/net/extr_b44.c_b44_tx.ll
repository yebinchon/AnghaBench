; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32, i32, %struct.TYPE_2__*, %struct.ring_info* }
%struct.TYPE_2__ = type { i32 }
%struct.ring_info = type { %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32 }

@B44_DMATX_STAT = common dso_local global i32 0, align 4
@DMATX_STAT_CDMASK = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@B44_TX_WAKEUP_THRESH = common dso_local global i64 0, align 8
@B44_GPTIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b44*)* @b44_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_tx(%struct.b44* %0) #0 {
  %2 = alloca %struct.b44*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ring_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.b44* %0, %struct.b44** %2, align 8
  %7 = load %struct.b44*, %struct.b44** %2, align 8
  %8 = load i32, i32* @B44_DMATX_STAT, align 4
  %9 = call i32 @br32(%struct.b44* %7, i32 %8)
  %10 = load i32, i32* @DMATX_STAT_CDMASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = udiv i64 %13, 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %3, align 4
  %16 = load %struct.b44*, %struct.b44** %2, align 8
  %17 = getelementptr inbounds %struct.b44, %struct.b44* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %54, %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %19
  %24 = load %struct.b44*, %struct.b44** %2, align 8
  %25 = getelementptr inbounds %struct.b44, %struct.b44* %24, i32 0, i32 3
  %26 = load %struct.ring_info*, %struct.ring_info** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %26, i64 %28
  store %struct.ring_info* %29, %struct.ring_info** %5, align 8
  %30 = load %struct.ring_info*, %struct.ring_info** %5, align 8
  %31 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %30, i32 0, i32 0
  %32 = load %struct.sk_buff*, %struct.sk_buff** %31, align 8
  store %struct.sk_buff* %32, %struct.sk_buff** %6, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = icmp eq %struct.sk_buff* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.b44*, %struct.b44** %2, align 8
  %38 = getelementptr inbounds %struct.b44, %struct.b44* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ring_info*, %struct.ring_info** %5, align 8
  %43 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DMA_TO_DEVICE, align 4
  %49 = call i32 @dma_unmap_single(i32 %41, i32 %44, i32 %47, i32 %48)
  %50 = load %struct.ring_info*, %struct.ring_info** %5, align 8
  %51 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %50, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %51, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %52)
  br label %54

54:                                               ; preds = %23
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @NEXT_TX(i32 %55)
  store i32 %56, i32* %4, align 4
  br label %19

57:                                               ; preds = %19
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.b44*, %struct.b44** %2, align 8
  %60 = getelementptr inbounds %struct.b44, %struct.b44* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.b44*, %struct.b44** %2, align 8
  %62 = getelementptr inbounds %struct.b44, %struct.b44* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @netif_queue_stopped(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %57
  %67 = load %struct.b44*, %struct.b44** %2, align 8
  %68 = call i64 @TX_BUFFS_AVAIL(%struct.b44* %67)
  %69 = load i64, i64* @B44_TX_WAKEUP_THRESH, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.b44*, %struct.b44** %2, align 8
  %73 = getelementptr inbounds %struct.b44, %struct.b44* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @netif_wake_queue(i32 %74)
  br label %76

76:                                               ; preds = %71, %66, %57
  %77 = load %struct.b44*, %struct.b44** %2, align 8
  %78 = load i32, i32* @B44_GPTIMER, align 4
  %79 = call i32 @bw32(%struct.b44* %77, i32 %78, i32 0)
  ret void
}

declare dso_local i32 @br32(%struct.b44*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @NEXT_TX(i32) #1

declare dso_local i64 @netif_queue_stopped(i32) #1

declare dso_local i64 @TX_BUFFS_AVAIL(%struct.b44*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @bw32(%struct.b44*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
