; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec_mpc52xx.c_mpc52xx_fec_alloc_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec_mpc52xx.c_mpc52xx_fec_alloc_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bcom_task = type { i32 }
%struct.sk_buff = type { i32 }
%struct.bcom_fec_bd = type { i32, i32 }

@FEC_RX_BUFFER_SIZE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.bcom_task*)* @mpc52xx_fec_alloc_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_fec_alloc_rx_buffers(%struct.net_device* %0, %struct.bcom_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.bcom_task*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.bcom_fec_bd*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.bcom_task* %1, %struct.bcom_task** %5, align 8
  br label %8

8:                                                ; preds = %21, %2
  %9 = load %struct.bcom_task*, %struct.bcom_task** %5, align 8
  %10 = call i32 @bcom_queue_full(%struct.bcom_task* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %48

13:                                               ; preds = %8
  %14 = load i32, i32* @FEC_RX_BUFFER_SIZE, align 4
  %15 = call %struct.sk_buff* @dev_alloc_skb(i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = icmp eq %struct.sk_buff* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %49

21:                                               ; preds = %13
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @FEC_RX_BUFFER_SIZE, align 4
  %26 = call i32 @memset(i32 %24, i32 0, i32 %25)
  %27 = load %struct.bcom_task*, %struct.bcom_task** %5, align 8
  %28 = call i64 @bcom_prepare_next_buffer(%struct.bcom_task* %27)
  %29 = inttoptr i64 %28 to %struct.bcom_fec_bd*
  store %struct.bcom_fec_bd* %29, %struct.bcom_fec_bd** %7, align 8
  %30 = load i32, i32* @FEC_RX_BUFFER_SIZE, align 4
  %31 = load %struct.bcom_fec_bd*, %struct.bcom_fec_bd** %7, align 8
  %32 = getelementptr inbounds %struct.bcom_fec_bd, %struct.bcom_fec_bd* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FEC_RX_BUFFER_SIZE, align 4
  %41 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %42 = call i32 @dma_map_single(i32 %36, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.bcom_fec_bd*, %struct.bcom_fec_bd** %7, align 8
  %44 = getelementptr inbounds %struct.bcom_fec_bd, %struct.bcom_fec_bd* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.bcom_task*, %struct.bcom_task** %5, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call i32 @bcom_submit_next_buffer(%struct.bcom_task* %45, %struct.sk_buff* %46)
  br label %8

48:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %18
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @bcom_queue_full(%struct.bcom_task*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @bcom_prepare_next_buffer(%struct.bcom_task*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @bcom_submit_next_buffer(%struct.bcom_task*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
