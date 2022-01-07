; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xilinx_emaclite.c_xemaclite_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xilinx_emaclite.c_xemaclite_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.net_local = type { i32, %struct.sk_buff* }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @xemaclite_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xemaclite_send(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_local*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call i64 @netdev_priv(%struct.net_device* %10)
  %12 = inttoptr i64 %11 to %struct.net_local*
  store %struct.net_local* %12, %struct.net_local** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %16, %struct.sk_buff** %7, align 8
  %17 = load %struct.net_local*, %struct.net_local** %6, align 8
  %18 = getelementptr inbounds %struct.net_local, %struct.net_local* %17, i32 0, i32 0
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.net_local*, %struct.net_local** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @xemaclite_send_data(%struct.net_local* %21, i32* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = call i32 @netif_stop_queue(%struct.net_device* %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = load %struct.net_local*, %struct.net_local** %6, align 8
  %34 = getelementptr inbounds %struct.net_local, %struct.net_local* %33, i32 0, i32 1
  store %struct.sk_buff* %32, %struct.sk_buff** %34, align 8
  %35 = load %struct.net_local*, %struct.net_local** %6, align 8
  %36 = getelementptr inbounds %struct.net_local, %struct.net_local* %35, i32 0, i32 0
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  store i32 0, i32* %3, align 4
  br label %55

39:                                               ; preds = %2
  %40 = load %struct.net_local*, %struct.net_local** %6, align 8
  %41 = getelementptr inbounds %struct.net_local, %struct.net_local* %40, i32 0, i32 0
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add i32 %48, %44
  store i32 %49, i32* %47, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = call i32 @dev_kfree_skb(%struct.sk_buff* %50)
  %52 = load i32, i32* @jiffies, align 4
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %39, %29
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @xemaclite_send_data(%struct.net_local*, i32*, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
