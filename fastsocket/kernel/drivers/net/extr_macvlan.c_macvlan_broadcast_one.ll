; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvlan.c_macvlan_broadcast_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvlan.c_macvlan_broadcast_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.macvlan_dev = type { i32 (%struct.net_device*, %struct.sk_buff*)*, i32 (%struct.sk_buff*)*, %struct.net_device* }
%struct.ethhdr = type { i32 }

@NET_RX_DROP = common dso_local global i32 0, align 4
@PACKET_BROADCAST = common dso_local global i32 0, align 4
@PACKET_MULTICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.macvlan_dev*, %struct.ethhdr*, i32)* @macvlan_broadcast_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvlan_broadcast_one(%struct.sk_buff* %0, %struct.macvlan_dev* %1, %struct.ethhdr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.macvlan_dev*, align 8
  %8 = alloca %struct.ethhdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.macvlan_dev* %1, %struct.macvlan_dev** %7, align 8
  store %struct.ethhdr* %2, %struct.ethhdr** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.macvlan_dev*, %struct.macvlan_dev** %7, align 8
  %12 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %11, i32 0, i32 2
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %10, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %17, i32* %5, align 4
  br label %54

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.macvlan_dev*, %struct.macvlan_dev** %7, align 8
  %23 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %22, i32 0, i32 0
  %24 = load i32 (%struct.net_device*, %struct.sk_buff*)*, i32 (%struct.net_device*, %struct.sk_buff*)** %23, align 8
  %25 = load %struct.net_device*, %struct.net_device** %10, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i32 %24(%struct.net_device* %25, %struct.sk_buff* %26)
  store i32 %27, i32* %5, align 4
  br label %54

28:                                               ; preds = %18
  %29 = load %struct.net_device*, %struct.net_device** %10, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  store %struct.net_device* %29, %struct.net_device** %31, align 8
  %32 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %33 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.net_device*, %struct.net_device** %10, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @compare_ether_addr_64bits(i32 %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %28
  %41 = load i32, i32* @PACKET_BROADCAST, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %48

44:                                               ; preds = %28
  %45 = load i32, i32* @PACKET_MULTICAST, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %44, %40
  %49 = load %struct.macvlan_dev*, %struct.macvlan_dev** %7, align 8
  %50 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %49, i32 0, i32 1
  %51 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %50, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = call i32 %51(%struct.sk_buff* %52)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %48, %21, %16
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @compare_ether_addr_64bits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
