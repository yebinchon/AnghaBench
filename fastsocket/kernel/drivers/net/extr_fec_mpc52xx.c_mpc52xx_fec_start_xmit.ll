; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec_mpc52xx.c_mpc52xx_fec_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec_mpc52xx.c_mpc52xx_fec_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mpc52xx_fec_priv = type { i32, i32 }
%struct.bcom_fec_bd = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"transmit queue overrun\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@BCOM_FEC_TX_BD_TFD = common dso_local global i32 0, align 4
@BCOM_FEC_TX_BD_TC = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @mpc52xx_fec_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_fec_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mpc52xx_fec_priv*, align 8
  %7 = alloca %struct.bcom_fec_bd*, align 8
  %8 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.mpc52xx_fec_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.mpc52xx_fec_priv* %10, %struct.mpc52xx_fec_priv** %6, align 8
  %11 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %6, align 8
  %12 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @bcom_queue_full(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = call i64 (...) @net_ratelimit()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = call i32 @dev_err(%struct.TYPE_2__* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %24, i32* %3, align 4
  br label %80

25:                                               ; preds = %2
  %26 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %6, align 8
  %27 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load i32, i32* @jiffies, align 4
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %6, align 8
  %34 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @bcom_prepare_next_buffer(i32 %35)
  %37 = inttoptr i64 %36 to %struct.bcom_fec_bd*
  store %struct.bcom_fec_bd* %37, %struct.bcom_fec_bd** %7, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @BCOM_FEC_TX_BD_TFD, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @BCOM_FEC_TX_BD_TC, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.bcom_fec_bd*, %struct.bcom_fec_bd** %7, align 8
  %46 = getelementptr inbounds %struct.bcom_fec_bd, %struct.bcom_fec_bd* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DMA_TO_DEVICE, align 4
  %58 = call i32 @dma_map_single(i32 %50, i32 %53, i32 %56, i32 %57)
  %59 = load %struct.bcom_fec_bd*, %struct.bcom_fec_bd** %7, align 8
  %60 = getelementptr inbounds %struct.bcom_fec_bd, %struct.bcom_fec_bd* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %6, align 8
  %62 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = call i32 @bcom_submit_next_buffer(i32 %63, %struct.sk_buff* %64)
  %66 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %6, align 8
  %67 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @bcom_queue_full(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %25
  %72 = load %struct.net_device*, %struct.net_device** %5, align 8
  %73 = call i32 @netif_stop_queue(%struct.net_device* %72)
  br label %74

74:                                               ; preds = %71, %25
  %75 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %6, align 8
  %76 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %75, i32 0, i32 0
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %74, %23
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.mpc52xx_fec_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @bcom_queue_full(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @bcom_prepare_next_buffer(i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @bcom_submit_next_buffer(i32, %struct.sk_buff*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
