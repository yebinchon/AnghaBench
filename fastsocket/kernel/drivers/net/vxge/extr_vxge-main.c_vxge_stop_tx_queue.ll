; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_stop_tx_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_stop_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxge_fifo = type { i64, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }

@TX_MULTIQ_STEERING = common dso_local global i64 0, align 8
@VPATH_QUEUE_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vxge_stop_tx_queue(%struct.vxge_fifo* %0) #0 {
  %2 = alloca %struct.vxge_fifo*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netdev_queue*, align 8
  store %struct.vxge_fifo* %0, %struct.vxge_fifo** %2, align 8
  %5 = load %struct.vxge_fifo*, %struct.vxge_fifo** %2, align 8
  %6 = getelementptr inbounds %struct.vxge_fifo, %struct.vxge_fifo* %5, i32 0, i32 3
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  store %struct.netdev_queue* null, %struct.netdev_queue** %4, align 8
  %8 = load %struct.vxge_fifo*, %struct.vxge_fifo** %2, align 8
  %9 = getelementptr inbounds %struct.vxge_fifo, %struct.vxge_fifo* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TX_MULTIQ_STEERING, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = load %struct.vxge_fifo*, %struct.vxge_fifo** %2, align 8
  %16 = getelementptr inbounds %struct.vxge_fifo, %struct.vxge_fifo* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %14, i32 %17)
  store %struct.netdev_queue* %18, %struct.netdev_queue** %4, align 8
  br label %25

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %20, i32 0)
  store %struct.netdev_queue* %21, %struct.netdev_queue** %4, align 8
  %22 = load i32, i32* @VPATH_QUEUE_STOP, align 4
  %23 = load %struct.vxge_fifo*, %struct.vxge_fifo** %2, align 8
  %24 = getelementptr inbounds %struct.vxge_fifo, %struct.vxge_fifo* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %19, %13
  %26 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %27 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %26)
  ret void
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @netif_tx_stop_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
