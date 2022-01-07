; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_forward.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.sk_buff = type { %struct.sk_buff*, %struct.net_device* }
%struct.macvlan_dev = type { i64 }
%struct.macvtap_queue = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@TAP_FEATURES = common dso_local global i64 0, align 8
@IFF_VNET_HDR = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLRDBAND = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*)* @macvtap_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvtap_forward(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.macvlan_dev*, align 8
  %7 = alloca %struct.macvtap_queue*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %11)
  store %struct.macvlan_dev* %12, %struct.macvlan_dev** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call %struct.macvtap_queue* @macvtap_get_queue(%struct.net_device* %13, %struct.sk_buff* %14)
  store %struct.macvtap_queue* %15, %struct.macvtap_queue** %7, align 8
  %16 = load i64, i64* @TAP_FEATURES, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.macvtap_queue*, %struct.macvtap_queue** %7, align 8
  %18 = icmp ne %struct.macvtap_queue* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %106

20:                                               ; preds = %2
  %21 = load %struct.macvtap_queue*, %struct.macvtap_queue** %7, align 8
  %22 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = call i64 @skb_queue_len(i32* %23)
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %106

30:                                               ; preds = %20
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  store %struct.net_device* %31, %struct.net_device** %33, align 8
  %34 = load %struct.macvtap_queue*, %struct.macvtap_queue** %7, align 8
  %35 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IFF_VNET_HDR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %42 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %40, %30
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i64 @netif_needs_gso(%struct.sk_buff* %47, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %87

51:                                               ; preds = %46
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call %struct.sk_buff* @__skb_gso_segment(%struct.sk_buff* %52, i64 %53, i32 0)
  store %struct.sk_buff* %54, %struct.sk_buff** %9, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %56 = call i64 @IS_ERR(%struct.sk_buff* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %106

59:                                               ; preds = %51
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load %struct.macvtap_queue*, %struct.macvtap_queue** %7, align 8
  %64 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = call i32 @skb_queue_tail(i32* %65, %struct.sk_buff* %66)
  br label %94

68:                                               ; preds = %59
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call i32 @kfree_skb(%struct.sk_buff* %69)
  br label %71

71:                                               ; preds = %74, %68
  %72 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %73 = icmp ne %struct.sk_buff* %72, null
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load %struct.sk_buff*, %struct.sk_buff** %76, align 8
  store %struct.sk_buff* %77, %struct.sk_buff** %10, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %79, align 8
  %80 = load %struct.macvtap_queue*, %struct.macvtap_queue** %7, align 8
  %81 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = call i32 @skb_queue_tail(i32* %82, %struct.sk_buff* %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %85, %struct.sk_buff** %9, align 8
  br label %71

86:                                               ; preds = %71
  br label %93

87:                                               ; preds = %46
  %88 = load %struct.macvtap_queue*, %struct.macvtap_queue** %7, align 8
  %89 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = call i32 @skb_queue_tail(i32* %90, %struct.sk_buff* %91)
  br label %93

93:                                               ; preds = %87, %86
  br label %94

94:                                               ; preds = %93, %62
  %95 = load %struct.macvtap_queue*, %struct.macvtap_queue** %7, align 8
  %96 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @POLLIN, align 4
  %100 = load i32, i32* @POLLRDNORM, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @POLLRDBAND, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @wake_up_interruptible_poll(i32 %98, i32 %103)
  %105 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %105, i32* %3, align 4
  br label %110

106:                                              ; preds = %58, %29, %19
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = call i32 @kfree_skb(%struct.sk_buff* %107)
  %109 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %106, %94
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.macvtap_queue* @macvtap_get_queue(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i64 @netif_needs_gso(%struct.sk_buff*, i64) #1

declare dso_local %struct.sk_buff* @__skb_gso_segment(%struct.sk_buff*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @wake_up_interruptible_poll(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
