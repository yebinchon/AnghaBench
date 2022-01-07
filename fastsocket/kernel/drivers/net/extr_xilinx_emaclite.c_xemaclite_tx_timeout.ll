; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xilinx_emaclite.c_xemaclite_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xilinx_emaclite.c_xemaclite_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.net_local = type { i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Exceeded transmit timeout of %lu ms\0A\00", align 1
@TX_TIMEOUT = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @xemaclite_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xemaclite_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_local*, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i64 @netdev_priv(%struct.net_device* %5)
  %7 = inttoptr i64 %6 to %struct.net_local*
  store %struct.net_local* %7, %struct.net_local** %3, align 8
  %8 = load %struct.net_local*, %struct.net_local** %3, align 8
  %9 = getelementptr inbounds %struct.net_local, %struct.net_local* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* @TX_TIMEOUT, align 8
  %13 = mul i64 %12, 1000
  %14 = load i64, i64* @HZ, align 8
  %15 = udiv i64 %13, %14
  %16 = call i32 @dev_err(i32* %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.net_local*, %struct.net_local** %3, align 8
  %23 = getelementptr inbounds %struct.net_local, %struct.net_local* %22, i32 0, i32 0
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = call i32 @netif_stop_queue(%struct.net_device* %26)
  %28 = load %struct.net_local*, %struct.net_local** %3, align 8
  %29 = call i32 @xemaclite_disable_interrupts(%struct.net_local* %28)
  %30 = load %struct.net_local*, %struct.net_local** %3, align 8
  %31 = call i32 @xemaclite_enable_interrupts(%struct.net_local* %30)
  %32 = load %struct.net_local*, %struct.net_local** %3, align 8
  %33 = getelementptr inbounds %struct.net_local, %struct.net_local* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %1
  %37 = load %struct.net_local*, %struct.net_local** %3, align 8
  %38 = getelementptr inbounds %struct.net_local, %struct.net_local* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @dev_kfree_skb(i32* %39)
  %41 = load %struct.net_local*, %struct.net_local** %3, align 8
  %42 = getelementptr inbounds %struct.net_local, %struct.net_local* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %36, %1
  %49 = load i64, i64* @TX_TIMEOUT, align 8
  %50 = sub i64 4294967295, %49
  %51 = load i64, i64* @TX_TIMEOUT, align 8
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = call i32 @netif_wake_queue(%struct.net_device* %56)
  %58 = load %struct.net_local*, %struct.net_local** %3, align 8
  %59 = getelementptr inbounds %struct.net_local, %struct.net_local* %58, i32 0, i32 0
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  ret void
}

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @xemaclite_disable_interrupts(%struct.net_local*) #1

declare dso_local i32 @xemaclite_enable_interrupts(%struct.net_local*) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
