; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc-phonet.c_usbpn_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc-phonet.c_usbpn_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32 }
%struct.net_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usbpn_dev = type { i64, i32, i32, i32 }
%struct.urb = type { i32 }

@ETH_P_PHONET = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@tx_complete = common dso_local global i32 0, align 4
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @usbpn_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbpn_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.usbpn_dev*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.usbpn_dev* @netdev_priv(%struct.net_device* %10)
  store %struct.usbpn_dev* %11, %struct.usbpn_dev** %6, align 8
  store %struct.urb* null, %struct.urb** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @ETH_P_PHONET, align 4
  %16 = call i64 @htons(i32 %15)
  %17 = icmp ne i64 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %78

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %20)
  store %struct.urb* %21, %struct.urb** %7, align 8
  %22 = load %struct.urb*, %struct.urb** %7, align 8
  %23 = icmp ne %struct.urb* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %78

25:                                               ; preds = %19
  %26 = load %struct.urb*, %struct.urb** %7, align 8
  %27 = load %struct.usbpn_dev*, %struct.usbpn_dev** %6, align 8
  %28 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.usbpn_dev*, %struct.usbpn_dev** %6, align 8
  %31 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @tx_complete, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call i32 @usb_fill_bulk_urb(%struct.urb* %26, i32 %29, i32 %32, i32 %35, i32 %38, i32 %39, %struct.sk_buff* %40)
  %42 = load i32, i32* @URB_ZERO_PACKET, align 4
  %43 = load %struct.urb*, %struct.urb** %7, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.urb*, %struct.urb** %7, align 8
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call i32 @usb_submit_urb(%struct.urb* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %25
  %51 = load %struct.urb*, %struct.urb** %7, align 8
  %52 = call i32 @usb_free_urb(%struct.urb* %51)
  br label %78

53:                                               ; preds = %25
  %54 = load %struct.usbpn_dev*, %struct.usbpn_dev** %6, align 8
  %55 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %54, i32 0, i32 1
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.usbpn_dev*, %struct.usbpn_dev** %6, align 8
  %59 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = load %struct.usbpn_dev*, %struct.usbpn_dev** %6, align 8
  %63 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sge i64 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %53
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = call i32 @netif_stop_queue(%struct.net_device* %70)
  br label %72

72:                                               ; preds = %69, %53
  %73 = load %struct.usbpn_dev*, %struct.usbpn_dev** %6, align 8
  %74 = getelementptr inbounds %struct.usbpn_dev, %struct.usbpn_dev* %73, i32 0, i32 1
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %77, i32* %3, align 4
  br label %87

78:                                               ; preds = %50, %24, %18
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = call i32 @dev_kfree_skb(%struct.sk_buff* %79)
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  %86 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %78, %72
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.usbpn_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
