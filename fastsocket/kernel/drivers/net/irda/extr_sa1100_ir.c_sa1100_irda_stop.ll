; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sa1100_ir.c_sa1100_irda_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sa1100_ir.c_sa1100_irda_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sa1100_irda = type { i32, i32, i64, i32*, i32*, i32, i32 }

@HPSIR_MAX_RXLEN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sa1100_irda_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_irda_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sa1100_irda*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.sa1100_irda* @netdev_priv(%struct.net_device* %4)
  store %struct.sa1100_irda* %5, %struct.sa1100_irda** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @disable_irq(i32 %8)
  %10 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %11 = call i32 @sa1100_irda_shutdown(%struct.sa1100_irda* %10)
  %12 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %13 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %18 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %21 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @HPSIR_MAX_RXLEN, align 4
  %24 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %25 = call i32 @dma_unmap_single(i32 %19, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %27 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @dev_kfree_skb(i32* %28)
  %30 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %31 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %30, i32 0, i32 4
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %16, %1
  %33 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %34 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %39 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @irlap_close(i32* %40)
  %42 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %43 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %42, i32 0, i32 3
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %37, %32
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = call i32 @netif_stop_queue(%struct.net_device* %45)
  %47 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %48 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %50 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @sa1100_free_dma(i32 %51)
  %53 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %54 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @sa1100_free_dma(i32 %55)
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = call i32 @free_irq(i32 %59, %struct.net_device* %60)
  %62 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %63 = call i32 @sa1100_set_power(%struct.sa1100_irda* %62, i32 0)
  ret i32 0
}

declare dso_local %struct.sa1100_irda* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @sa1100_irda_shutdown(%struct.sa1100_irda*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @irlap_close(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @sa1100_free_dma(i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @sa1100_set_power(%struct.sa1100_irda*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
