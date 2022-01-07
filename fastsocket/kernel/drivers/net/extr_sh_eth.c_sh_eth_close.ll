; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%struct.sh_eth_private = type { i32, i32, i32, i32, i32, i64 }

@EESIPR = common dso_local global i64 0, align 8
@EDTRR = common dso_local global i64 0, align 8
@EDRRR = common dso_local global i64 0, align 8
@RX_RING_SIZE = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sh_eth_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_eth_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sh_eth_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %6)
  store %struct.sh_eth_private* %7, %struct.sh_eth_private** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netif_stop_queue(%struct.net_device* %11)
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @EESIPR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @ctrl_outl(i32 0, i64 %15)
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @EDTRR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @ctrl_outl(i32 0, i64 %19)
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @EDRRR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @ctrl_outl(i32 0, i64 %23)
  %25 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %26 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %1
  %30 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %31 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @phy_stop(i64 %32)
  %34 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %35 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @phy_disconnect(i64 %36)
  br label %38

38:                                               ; preds = %29, %1
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = call i32 @free_irq(i32 %41, %struct.net_device* %42)
  %44 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %45 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %44, i32 0, i32 4
  %46 = call i32 @del_timer_sync(i32* %45)
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = call i32 @sh_eth_ring_free(%struct.net_device* %47)
  %49 = load i32, i32* @RX_RING_SIZE, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 4, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %55 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %58 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dma_free_coherent(i32* null, i32 %53, i32 %56, i32 %59)
  %61 = load i32, i32* @TX_RING_SIZE, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 4, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %67 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %70 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dma_free_coherent(i32* null, i32 %65, i32 %68, i32 %71)
  ret i32 0
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @ctrl_outl(i32, i64) #1

declare dso_local i32 @phy_stop(i64) #1

declare dso_local i32 @phy_disconnect(i64) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @sh_eth_ring_free(%struct.net_device*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
