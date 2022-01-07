; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.virtnet_info = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Unexpected full queue\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.virtnet_info*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.virtnet_info* @netdev_priv(%struct.net_device* %8)
  store %struct.virtnet_info* %9, %struct.virtnet_info** %6, align 8
  br label %10

10:                                               ; preds = %36, %2
  %11 = load %struct.virtnet_info*, %struct.virtnet_info** %6, align 8
  %12 = call i64 @free_old_xmit_skbs(%struct.virtnet_info* %11)
  %13 = load %struct.virtnet_info*, %struct.virtnet_info** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @xmit_skb(%struct.virtnet_info* %13, %struct.sk_buff* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %10
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call i32 @netif_stop_queue(%struct.net_device* %22)
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = call i32 @dev_warn(i32* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.virtnet_info*, %struct.virtnet_info** %6, align 8
  %28 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @virtqueue_enable_cb(i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %21
  %37 = load %struct.virtnet_info*, %struct.virtnet_info** %6, align 8
  %38 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @virtqueue_disable_cb(i32 %39)
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = call i32 @netif_start_queue(%struct.net_device* %41)
  br label %10

43:                                               ; preds = %21
  %44 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %44, i32* %3, align 4
  br label %92

45:                                               ; preds = %10
  %46 = load %struct.virtnet_info*, %struct.virtnet_info** %6, align 8
  %47 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @virtqueue_kick(i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @skb_orphan(%struct.sk_buff* %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call i32 @nf_reset(%struct.sk_buff* %52)
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %56 = add nsw i32 2, %55
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %90

58:                                               ; preds = %45
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = call i32 @netif_stop_queue(%struct.net_device* %59)
  %61 = load %struct.virtnet_info*, %struct.virtnet_info** %6, align 8
  %62 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @virtqueue_enable_cb_delayed(i32 %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %58
  %71 = load %struct.virtnet_info*, %struct.virtnet_info** %6, align 8
  %72 = call i64 @free_old_xmit_skbs(%struct.virtnet_info* %71)
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %79 = add nsw i32 2, %78
  %80 = icmp sge i32 %77, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %70
  %82 = load %struct.net_device*, %struct.net_device** %5, align 8
  %83 = call i32 @netif_start_queue(%struct.net_device* %82)
  %84 = load %struct.virtnet_info*, %struct.virtnet_info** %6, align 8
  %85 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @virtqueue_disable_cb(i32 %86)
  br label %88

88:                                               ; preds = %81, %70
  br label %89

89:                                               ; preds = %88, %58
  br label %90

90:                                               ; preds = %89, %45
  %91 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %43
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.virtnet_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @free_old_xmit_skbs(%struct.virtnet_info*) #1

declare dso_local i32 @xmit_skb(%struct.virtnet_info*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @virtqueue_enable_cb(i32) #1

declare dso_local i32 @virtqueue_disable_cb(i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @virtqueue_kick(i32) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @nf_reset(%struct.sk_buff*) #1

declare dso_local i32 @virtqueue_enable_cb_delayed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
