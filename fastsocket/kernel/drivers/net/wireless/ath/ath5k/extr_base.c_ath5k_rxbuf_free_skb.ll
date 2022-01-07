; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_rxbuf_free_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_rxbuf_free_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }
%struct.ath5k_buf = type { %struct.TYPE_2__*, i64, i32* }
%struct.TYPE_2__ = type { i64 }
%struct.ath_common = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_rxbuf_free_skb(%struct.ath5k_hw* %0, %struct.ath5k_buf* %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca %struct.ath5k_buf*, align 8
  %5 = alloca %struct.ath_common*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store %struct.ath5k_buf* %1, %struct.ath5k_buf** %4, align 8
  %6 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %7 = call %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw* %6)
  store %struct.ath_common* %7, %struct.ath_common** %5, align 8
  %8 = load %struct.ath5k_buf*, %struct.ath5k_buf** %4, align 8
  %9 = icmp ne %struct.ath5k_buf* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.ath5k_buf*, %struct.ath5k_buf** %4, align 8
  %14 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ath5k_buf*, %struct.ath5k_buf** %4, align 8
  %23 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %26 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %29 = call i32 @dma_unmap_single(i32 %21, i64 %24, i32 %27, i32 %28)
  %30 = load %struct.ath5k_buf*, %struct.ath5k_buf** %4, align 8
  %31 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @dev_kfree_skb_any(i32* %32)
  %34 = load %struct.ath5k_buf*, %struct.ath5k_buf** %4, align 8
  %35 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = load %struct.ath5k_buf*, %struct.ath5k_buf** %4, align 8
  %37 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.ath5k_buf*, %struct.ath5k_buf** %4, align 8
  %39 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
