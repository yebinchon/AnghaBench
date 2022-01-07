; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_sealevel.c_sealevel_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_sealevel.c_sealevel_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.slvl_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@z8530_null_rx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sealevel_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sealevel_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.slvl_device*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.slvl_device* @dev_to_chan(%struct.net_device* %5)
  store %struct.slvl_device* %6, %struct.slvl_device** %3, align 8
  %7 = load %struct.slvl_device*, %struct.slvl_device** %3, align 8
  %8 = getelementptr inbounds %struct.slvl_device, %struct.slvl_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @z8530_null_rx, align 4
  %11 = load %struct.slvl_device*, %struct.slvl_device** %3, align 8
  %12 = getelementptr inbounds %struct.slvl_device, %struct.slvl_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %10, i32* %14, align 4
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @hdlc_close(%struct.net_device* %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @netif_stop_queue(%struct.net_device* %17)
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %32 [
    i32 0, label %20
    i32 1, label %26
  ]

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = load %struct.slvl_device*, %struct.slvl_device** %3, align 8
  %23 = getelementptr inbounds %struct.slvl_device, %struct.slvl_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = call i32 @z8530_sync_dma_close(%struct.net_device* %21, %struct.TYPE_3__* %24)
  br label %32

26:                                               ; preds = %1
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = load %struct.slvl_device*, %struct.slvl_device** %3, align 8
  %29 = getelementptr inbounds %struct.slvl_device, %struct.slvl_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = call i32 @z8530_sync_close(%struct.net_device* %27, %struct.TYPE_3__* %30)
  br label %32

32:                                               ; preds = %1, %26, %20
  ret i32 0
}

declare dso_local %struct.slvl_device* @dev_to_chan(%struct.net_device*) #1

declare dso_local i32 @hdlc_close(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @z8530_sync_dma_close(%struct.net_device*, %struct.TYPE_3__*) #1

declare dso_local i32 @z8530_sync_close(%struct.net_device*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
