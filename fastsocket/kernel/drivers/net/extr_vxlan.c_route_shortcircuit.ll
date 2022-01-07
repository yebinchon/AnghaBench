; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_route_shortcircuit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_route_shortcircuit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.vxlan_dev = type { i32 }
%struct.neighbour = type { i32 }
%struct.iphdr = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@arp_tbl = common dso_local global i32 0, align 4
@VXLAN_F_L3MISS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*)* @route_shortcircuit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @route_shortcircuit(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.vxlan_dev*, align 8
  %7 = alloca %struct.neighbour*, align 8
  %8 = alloca %struct.iphdr*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %10)
  store %struct.vxlan_dev* %11, %struct.vxlan_dev** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @is_multicast_ether_addr(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %97

19:                                               ; preds = %2
  store %struct.neighbour* null, %struct.neighbour** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntohs(i32 %23)
  switch i32 %24, label %37 [
    i32 128, label %25
  ]

25:                                               ; preds = %19
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i32 @pskb_may_pull(%struct.sk_buff* %26, i32 4)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %97

30:                                               ; preds = %25
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %31)
  store %struct.iphdr* %32, %struct.iphdr** %8, align 8
  %33 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %34 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %33, i32 0, i32 0
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = call %struct.neighbour* @neigh_lookup(i32* @arp_tbl, i32* %34, %struct.net_device* %35)
  store %struct.neighbour* %36, %struct.neighbour** %7, align 8
  br label %38

37:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %97

38:                                               ; preds = %30
  %39 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %40 = icmp ne %struct.neighbour* %39, null
  br i1 %40, label %41, label %82

41:                                               ; preds = %38
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %47 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @compare_ether_addr(i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %41
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memcpy(i32 %58, i32 %62, i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %72 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @memcpy(i32 %70, i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %54, %41
  %79 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  %80 = call i32 @neigh_release(%struct.neighbour* %79)
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %3, align 4
  br label %97

82:                                               ; preds = %38
  %83 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %84 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @VXLAN_F_L3MISS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load %struct.net_device*, %struct.net_device** %4, align 8
  %91 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %92 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @vxlan_ip_miss(%struct.net_device* %90, i32 %93)
  br label %95

95:                                               ; preds = %89, %82
  br label %96

96:                                               ; preds = %95
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %78, %37, %29, %18
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local %struct.TYPE_2__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.neighbour* @neigh_lookup(i32*, i32*, %struct.net_device*) #1

declare dso_local i64 @compare_ether_addr(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i32 @vxlan_ip_miss(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
