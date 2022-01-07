; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_3c589_cs.c_el3_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_3c589_cs.c_el3_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.el3_private = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"%s: el3_start_xmit(length = %ld) called, status %4.4x.\0A\00", align 1
@EL3_STATUS = common dso_local global i64 0, align 8
@TX_FIFO = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@TX_FREE = common dso_local global i64 0, align 8
@SetTxThreshold = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @el3_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @el3_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.el3_private*, align 8
  %7 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.el3_private* @netdev_priv(%struct.net_device* %11)
  store %struct.el3_private* %12, %struct.el3_private** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* @EL3_STATUS, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @inw(i64 %23)
  %25 = call i32 @DEBUG(i32 3, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %19, i32 %24)
  %26 = load %struct.el3_private*, %struct.el3_private** %6, align 8
  %27 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %26, i32 0, i32 0
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %32
  store i32 %37, i32* %35, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = load i64, i64* @TX_FIFO, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outw(i32 %40, i64 %44)
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = load i64, i64* @TX_FIFO, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @outw(i32 0, i64 %49)
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* @TX_FIFO, align 8
  %54 = add nsw i64 %52, %53
  %55 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 3
  %62 = ashr i32 %61, 2
  %63 = call i32 @outsl(i64 %54, i32 %57, i32 %62)
  %64 = load i32, i32* @jiffies, align 4
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = load i64, i64* @TX_FREE, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @inw(i64 %70)
  %72 = icmp sle i32 %71, 1536
  br i1 %72, label %73, label %83

73:                                               ; preds = %2
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = call i32 @netif_stop_queue(%struct.net_device* %74)
  %76 = load i32, i32* @SetTxThreshold, align 4
  %77 = add nsw i32 %76, 1536
  %78 = load i32, i32* %5, align 4
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* @EL3_CMD, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @outw(i32 %77, i64 %81)
  br label %83

83:                                               ; preds = %73, %2
  %84 = load %struct.net_device*, %struct.net_device** %4, align 8
  %85 = call i32 @pop_tx_status(%struct.net_device* %84)
  %86 = load %struct.el3_private*, %struct.el3_private** %6, align 8
  %87 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %86, i32 0, i32 0
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %91 = call i32 @dev_kfree_skb(%struct.sk_buff* %90)
  %92 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %92
}

declare dso_local %struct.el3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DEBUG(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @outsl(i64, i32, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @pop_tx_status(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
