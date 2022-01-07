; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_au1000_eth.c_update_tx_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_au1000_eth.c_update_tx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.au1000_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TX_FRAME_ABORTED = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@TX_JAB_TIMEOUT = common dso_local global i32 0, align 4
@TX_UNDERRUN = common dso_local global i32 0, align 4
@TX_NO_CARRIER = common dso_local global i32 0, align 4
@TX_LOSS_CARRIER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @update_tx_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_tx_stats(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.au1000_private*, align 8
  %6 = alloca %struct.net_device_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.au1000_private* @netdev_priv(%struct.net_device* %7)
  store %struct.au1000_private* %8, %struct.au1000_private** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  store %struct.net_device_stats* %10, %struct.net_device_stats** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @TX_FRAME_ABORTED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %67

15:                                               ; preds = %2
  %16 = load %struct.au1000_private*, %struct.au1000_private** %5, align 8
  %17 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load i64, i64* @DUPLEX_FULL, align 8
  %22 = load %struct.au1000_private*, %struct.au1000_private** %5, align 8
  %23 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %21, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %20, %15
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @TX_JAB_TIMEOUT, align 4
  %31 = load i32, i32* @TX_UNDERRUN, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %37 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %41 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %35, %28
  br label %66

45:                                               ; preds = %20
  %46 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %47 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %51 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @TX_NO_CARRIER, align 4
  %56 = load i32, i32* @TX_LOSS_CARRIER, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %45
  %61 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %62 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %45
  br label %66

66:                                               ; preds = %65, %44
  br label %67

67:                                               ; preds = %66, %2
  ret void
}

declare dso_local %struct.au1000_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
