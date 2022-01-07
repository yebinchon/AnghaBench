; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvlan.c_macvlan_queue_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvlan.c_macvlan_queue_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i64 }
%struct.net_device = type { i32 }
%struct.macvlan_dev = type { i64, i32 (i32, %struct.sk_buff*)*, i32, i32, %struct.macvlan_port* }
%struct.macvlan_port = type { i32 }
%struct.ethhdr = type { i32 }

@MACVLAN_MODE_BRIDGE = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @macvlan_queue_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvlan_queue_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.macvlan_dev*, align 8
  %7 = alloca %struct.macvlan_port*, align 8
  %8 = alloca %struct.macvlan_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ethhdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %13)
  store %struct.macvlan_dev* %14, %struct.macvlan_dev** %6, align 8
  %15 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %16 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %15, i32 0, i32 4
  %17 = load %struct.macvlan_port*, %struct.macvlan_port** %16, align 8
  store %struct.macvlan_port* %17, %struct.macvlan_port** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %22 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MACVLAN_MODE_BRIDGE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %83

26:                                               ; preds = %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.ethhdr*
  store %struct.ethhdr* %31, %struct.ethhdr** %10, align 8
  %32 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ethhdr*, %struct.ethhdr** %10, align 8
  %36 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @is_multicast_ether_addr(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %26
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load %struct.macvlan_port*, %struct.macvlan_port** %7, align 8
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = load i64, i64* @MACVLAN_MODE_BRIDGE, align 8
  %45 = call i32 @macvlan_broadcast(%struct.sk_buff* %41, %struct.macvlan_port* %42, %struct.net_device* %43, i64 %44)
  br label %84

46:                                               ; preds = %26
  %47 = load %struct.macvlan_port*, %struct.macvlan_port** %7, align 8
  %48 = load %struct.ethhdr*, %struct.ethhdr** %10, align 8
  %49 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.macvlan_dev* @macvlan_hash_lookup(%struct.macvlan_port* %47, i32 %50)
  store %struct.macvlan_dev* %51, %struct.macvlan_dev** %8, align 8
  %52 = load %struct.macvlan_dev*, %struct.macvlan_dev** %8, align 8
  %53 = icmp ne %struct.macvlan_dev* %52, null
  br i1 %53, label %54, label %82

54:                                               ; preds = %46
  %55 = load %struct.macvlan_dev*, %struct.macvlan_dev** %8, align 8
  %56 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MACVLAN_MODE_BRIDGE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %54
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ETH_HLEN, align 4
  %65 = add i32 %63, %64
  store i32 %65, i32* %11, align 4
  %66 = load %struct.macvlan_dev*, %struct.macvlan_dev** %8, align 8
  %67 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %66, i32 0, i32 1
  %68 = load i32 (i32, %struct.sk_buff*)*, i32 (i32, %struct.sk_buff*)** %67, align 8
  %69 = load %struct.macvlan_dev*, %struct.macvlan_dev** %8, align 8
  %70 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = call i32 %68(i32 %71, %struct.sk_buff* %72)
  store i32 %73, i32* %12, align 4
  %74 = load %struct.macvlan_dev*, %struct.macvlan_dev** %8, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @NET_RX_SUCCESS, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @macvlan_count_rx(%struct.macvlan_dev* %74, i32 %75, i32 %79, i32 0)
  %81 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %81, i32* %3, align 4
  br label %95

82:                                               ; preds = %54, %46
  br label %83

83:                                               ; preds = %82, %2
  br label %84

84:                                               ; preds = %83, %40
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %89 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = call i32 @dev_queue_xmit(%struct.sk_buff* %93)
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %84, %60
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @macvlan_broadcast(%struct.sk_buff*, %struct.macvlan_port*, %struct.net_device*, i64) #1

declare dso_local %struct.macvlan_dev* @macvlan_hash_lookup(%struct.macvlan_port*, i32) #1

declare dso_local i32 @macvlan_count_rx(%struct.macvlan_dev*, i32, i32, i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
