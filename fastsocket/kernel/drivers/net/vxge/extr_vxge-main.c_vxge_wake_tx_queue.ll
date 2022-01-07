; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_wake_tx_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_wake_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxge_fifo = type { i32, i64, i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.netdev_queue = type { i32 }

@TX_MULTIQ_STEERING = common dso_local global i64 0, align 8
@VPATH_QUEUE_STOP = common dso_local global i64 0, align 8
@VPATH_QUEUE_START = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vxge_wake_tx_queue(%struct.vxge_fifo* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.vxge_fifo*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netdev_queue*, align 8
  store %struct.vxge_fifo* %0, %struct.vxge_fifo** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.vxge_fifo*, %struct.vxge_fifo** %3, align 8
  %9 = getelementptr inbounds %struct.vxge_fifo, %struct.vxge_fifo* %8, i32 0, i32 3
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.vxge_fifo*, %struct.vxge_fifo** %3, align 8
  %12 = getelementptr inbounds %struct.vxge_fifo, %struct.vxge_fifo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  store %struct.netdev_queue* null, %struct.netdev_queue** %7, align 8
  %14 = load %struct.vxge_fifo*, %struct.vxge_fifo** %3, align 8
  %15 = getelementptr inbounds %struct.vxge_fifo, %struct.vxge_fifo* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TX_MULTIQ_STEERING, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %20, i32 %21)
  store %struct.netdev_queue* %22, %struct.netdev_queue** %7, align 8
  %23 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %24 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %28 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %27)
  br label %29

29:                                               ; preds = %26, %19
  br label %50

30:                                               ; preds = %2
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %31, i32 0)
  store %struct.netdev_queue* %32, %struct.netdev_queue** %7, align 8
  %33 = load %struct.vxge_fifo*, %struct.vxge_fifo** %3, align 8
  %34 = getelementptr inbounds %struct.vxge_fifo, %struct.vxge_fifo* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VPATH_QUEUE_STOP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %30
  %39 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %40 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i64, i64* @VPATH_QUEUE_START, align 8
  %44 = load %struct.vxge_fifo*, %struct.vxge_fifo** %3, align 8
  %45 = getelementptr inbounds %struct.vxge_fifo, %struct.vxge_fifo* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %47 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %46)
  br label %48

48:                                               ; preds = %42, %38
  br label %49

49:                                               ; preds = %48, %30
  br label %50

50:                                               ; preds = %49, %29
  ret void
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
