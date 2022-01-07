; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xilinx_emaclite.c_xemaclite_tx_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xilinx_emaclite.c_xemaclite_tx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.net_local = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @xemaclite_tx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xemaclite_tx_handler(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call i64 @netdev_priv(%struct.net_device* %4)
  %6 = inttoptr i64 %5 to %struct.net_local*
  store %struct.net_local* %6, %struct.net_local** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.net_local*, %struct.net_local** %3, align 8
  %13 = getelementptr inbounds %struct.net_local, %struct.net_local* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %57

16:                                               ; preds = %1
  %17 = load %struct.net_local*, %struct.net_local** %3, align 8
  %18 = load %struct.net_local*, %struct.net_local** %3, align 8
  %19 = getelementptr inbounds %struct.net_local, %struct.net_local* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = load %struct.net_local*, %struct.net_local** %3, align 8
  %25 = getelementptr inbounds %struct.net_local, %struct.net_local* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @xemaclite_send_data(%struct.net_local* %17, i32* %23, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %57

32:                                               ; preds = %16
  %33 = load %struct.net_local*, %struct.net_local** %3, align 8
  %34 = getelementptr inbounds %struct.net_local, %struct.net_local* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %37
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  %45 = load %struct.net_local*, %struct.net_local** %3, align 8
  %46 = getelementptr inbounds %struct.net_local, %struct.net_local* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i32 @dev_kfree_skb_irq(%struct.TYPE_4__* %47)
  %49 = load %struct.net_local*, %struct.net_local** %3, align 8
  %50 = getelementptr inbounds %struct.net_local, %struct.net_local* %49, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %50, align 8
  %51 = load i32, i32* @jiffies, align 4
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = call i32 @netif_wake_queue(%struct.net_device* %54)
  br label %56

56:                                               ; preds = %32
  br label %57

57:                                               ; preds = %31, %56, %1
  ret void
}

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @xemaclite_send_data(%struct.net_local*, i32*, i64) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.TYPE_4__*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
