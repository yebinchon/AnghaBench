; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ifb.c_ifb_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ifb.c_ifb_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32 }
%struct.net_device = type { i64, i32, %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.ifb_private = type { i32, i32, i32 }

@AT_INGRESS = common dso_local global i32 0, align 4
@AT_EGRESS = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ifb_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifb_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifb_private*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.ifb_private* @netdev_priv(%struct.net_device* %9)
  store %struct.ifb_private* %10, %struct.ifb_private** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 2
  store %struct.net_device_stats* %12, %struct.net_device_stats** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @G_TC_FROM(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %18 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %25 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %23
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @AT_INGRESS, align 4
  %32 = load i32, i32* @AT_EGRESS, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %2
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %36, %2
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i32 @dev_kfree_skb(%struct.sk_buff* %42)
  %44 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %45 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %48, i32* %3, align 4
  br label %80

49:                                               ; preds = %36
  %50 = load %struct.ifb_private*, %struct.ifb_private** %6, align 8
  %51 = getelementptr inbounds %struct.ifb_private, %struct.ifb_private* %50, i32 0, i32 2
  %52 = call i64 @skb_queue_len(i32* %51)
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = call i32 @netif_stop_queue(%struct.net_device* %58)
  br label %60

60:                                               ; preds = %57, %49
  %61 = load i32, i32* @jiffies, align 4
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ifb_private*, %struct.ifb_private** %6, align 8
  %65 = getelementptr inbounds %struct.ifb_private, %struct.ifb_private* %64, i32 0, i32 2
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call i32 @skb_queue_tail(i32* %65, %struct.sk_buff* %66)
  %68 = load %struct.ifb_private*, %struct.ifb_private** %6, align 8
  %69 = getelementptr inbounds %struct.ifb_private, %struct.ifb_private* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %60
  %73 = load %struct.ifb_private*, %struct.ifb_private** %6, align 8
  %74 = getelementptr inbounds %struct.ifb_private, %struct.ifb_private* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  %75 = load %struct.ifb_private*, %struct.ifb_private** %6, align 8
  %76 = getelementptr inbounds %struct.ifb_private, %struct.ifb_private* %75, i32 0, i32 1
  %77 = call i32 @tasklet_schedule(i32* %76)
  br label %78

78:                                               ; preds = %72, %60
  %79 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %41
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.ifb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @G_TC_FROM(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
