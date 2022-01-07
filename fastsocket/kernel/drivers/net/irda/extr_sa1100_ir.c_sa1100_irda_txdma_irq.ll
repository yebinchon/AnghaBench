; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sa1100_ir.c_sa1100_irda_txdma_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sa1100_ir.c_sa1100_irda_txdma_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sa1100_irda = type { i32, i32, i64, %struct.sk_buff* }
%struct.sk_buff = type { i64 }

@Ser2HSSR0 = common dso_local global i32 0, align 4
@HSSR0_TUR = common dso_local global i32 0, align 4
@Ser2HSSR1 = common dso_local global i32 0, align 4
@HSSR1_TBY = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sa1100_irda_txdma_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1100_irda_txdma_irq(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sa1100_irda*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.net_device*
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.sa1100_irda* @netdev_priv(%struct.net_device* %8)
  store %struct.sa1100_irda* %9, %struct.sa1100_irda** %4, align 8
  %10 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %11 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %10, i32 0, i32 3
  %12 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %12, %struct.sk_buff** %5, align 8
  %13 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %14 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %13, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %14, align 8
  br label %15

15:                                               ; preds = %27, %1
  %16 = call i32 (...) @rmb()
  br label %17

17:                                               ; preds = %15
  %18 = load i32, i32* @Ser2HSSR0, align 4
  %19 = load i32, i32* @HSSR0_TUR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* @Ser2HSSR1, align 4
  %24 = load i32, i32* @HSSR1_TBY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ true, %17 ], [ %26, %22 ]
  br i1 %28, label %15, label %29

29:                                               ; preds = %27
  %30 = load i32, i32* @HSSR0_TUR, align 4
  store i32 %30, i32* @Ser2HSSR0, align 4
  %31 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %32 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %37 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %38 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @sa1100_irda_set_speed(%struct.sa1100_irda* %36, i64 %39)
  %41 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %42 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %35, %29
  %44 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %45 = call i32 @sa1100_irda_rx_dma_start(%struct.sa1100_irda* %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %48, label %77

48:                                               ; preds = %43
  %49 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %50 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %53 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @DMA_TO_DEVICE, align 4
  %59 = call i32 @dma_unmap_single(i32 %51, i32 %54, i64 %57, i32 %58)
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %67
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %70, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %75)
  br label %77

77:                                               ; preds = %48, %43
  %78 = load %struct.net_device*, %struct.net_device** %3, align 8
  %79 = call i32 @netif_wake_queue(%struct.net_device* %78)
  ret void
}

declare dso_local %struct.sa1100_irda* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @sa1100_irda_set_speed(%struct.sa1100_irda*, i64) #1

declare dso_local i32 @sa1100_irda_rx_dma_start(%struct.sa1100_irda*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
