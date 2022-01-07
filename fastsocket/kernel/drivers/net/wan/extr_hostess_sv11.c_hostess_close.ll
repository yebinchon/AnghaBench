; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_hostess_sv11.c_hostess_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_hostess_sv11.c_hostess_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.z8530_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@z8530_null_rx = common dso_local global i32 0, align 4
@dma = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hostess_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostess_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.z8530_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.z8530_dev* @dev_to_sv(%struct.net_device* %4)
  store %struct.z8530_dev* %5, %struct.z8530_dev** %3, align 8
  %6 = load i32, i32* @z8530_null_rx, align 4
  %7 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  %8 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %6, i32* %9, align 4
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @hdlc_close(%struct.net_device* %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @netif_stop_queue(%struct.net_device* %12)
  %14 = load i32, i32* @dma, align 4
  switch i32 %14, label %30 [
    i32 0, label %15
    i32 1, label %20
    i32 2, label %25
  ]

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  %18 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %17, i32 0, i32 0
  %19 = call i32 @z8530_sync_close(%struct.net_device* %16, %struct.TYPE_4__* %18)
  br label %30

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  %23 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %22, i32 0, i32 0
  %24 = call i32 @z8530_sync_dma_close(%struct.net_device* %21, %struct.TYPE_4__* %23)
  br label %30

25:                                               ; preds = %1
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  %28 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %27, i32 0, i32 0
  %29 = call i32 @z8530_sync_txdma_close(%struct.net_device* %26, %struct.TYPE_4__* %28)
  br label %30

30:                                               ; preds = %1, %25, %20, %15
  ret i32 0
}

declare dso_local %struct.z8530_dev* @dev_to_sv(%struct.net_device*) #1

declare dso_local i32 @hdlc_close(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @z8530_sync_close(%struct.net_device*, %struct.TYPE_4__*) #1

declare dso_local i32 @z8530_sync_dma_close(%struct.net_device*, %struct.TYPE_4__*) #1

declare dso_local i32 @z8530_sync_txdma_close(%struct.net_device*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
