; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.kaweth_device = type { i32, %struct.TYPE_2__, i32, i64, i32, %struct.sk_buff*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@kaweth_usb_transmit_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"kaweth failed tx_urb %d\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @kaweth_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kaweth_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.kaweth_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.kaweth_device* @netdev_priv(%struct.net_device* %10)
  store %struct.kaweth_device* %11, %struct.kaweth_device** %6, align 8
  %12 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %13 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_irq(i32* %13)
  %15 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %16 = call i32 @kaweth_async_set_rx_mode(%struct.kaweth_device* %15)
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call i32 @netif_stop_queue(%struct.net_device* %17)
  %19 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %20 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @IS_BLOCKED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %98

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i64 @skb_cloned(%struct.sk_buff* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @skb_headroom(%struct.sk_buff* %30)
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %55

33:                                               ; preds = %29, %25
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %34, i32 2, i32 0, i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %9, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %39, %struct.sk_buff** %4, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %54, label %42

42:                                               ; preds = %33
  %43 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %44 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = call i32 @netif_start_queue(%struct.net_device* %48)
  %50 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %51 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock_irq(i32* %51)
  %53 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %53, i32* %3, align 4
  br label %130

54:                                               ; preds = %33
  br label %55

55:                                               ; preds = %54, %29
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = call i64 @__skb_push(%struct.sk_buff* %56, i32 2)
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %7, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 2
  %63 = call i32 @cpu_to_le16(i32 %62)
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %67 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %66, i32 0, i32 5
  store %struct.sk_buff* %65, %struct.sk_buff** %67, align 8
  %68 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %69 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %72 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %75 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @usb_sndbulkpipe(i32 %76, i32 2)
  %78 = load i32*, i32** %7, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @kaweth_usb_transmit_complete, align 4
  %83 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %84 = call i32 @usb_fill_bulk_urb(i32 %70, i32 %73, i32 %77, i32* %78, i32 %81, i32 %82, %struct.kaweth_device* %83)
  %85 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %86 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  %87 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %88 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @GFP_ATOMIC, align 4
  %91 = call i32 @usb_submit_urb(i32 %89, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %55
  %94 = load %struct.net_device*, %struct.net_device** %5, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 1
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @dev_warn(i32* %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %93, %24
  %99 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %100 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.net_device*, %struct.net_device** %5, align 8
  %105 = call i32 @netif_start_queue(%struct.net_device* %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %106)
  br label %125

108:                                              ; preds = %55
  %109 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %110 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %118 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, %116
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* @jiffies, align 4
  %123 = load %struct.net_device*, %struct.net_device** %5, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %108, %98
  %126 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %127 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %126, i32 0, i32 0
  %128 = call i32 @spin_unlock_irq(i32* %127)
  %129 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %125, %42
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.kaweth_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @kaweth_async_set_rx_mode(%struct.kaweth_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i64 @IS_BLOCKED(i32) #1

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, i32, i32, i32*, i32, i32, %struct.kaweth_device*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
