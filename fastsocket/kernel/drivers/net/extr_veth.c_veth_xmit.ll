; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_veth.c_veth_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_veth.c_veth_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.veth_priv = type { i64, i32, %struct.net_device* }
%struct.veth_net_stats = type { i32, i32, i32, i32, i32, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i64 0, align 8
@NET_RX_SUCCESS = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @veth_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @veth_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.veth_priv*, align 8
  %8 = alloca %struct.veth_priv*, align 8
  %9 = alloca %struct.veth_net_stats*, align 8
  %10 = alloca %struct.veth_net_stats*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.net_device* null, %struct.net_device** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.veth_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.veth_priv* %14, %struct.veth_priv** %7, align 8
  %15 = load %struct.veth_priv*, %struct.veth_priv** %7, align 8
  %16 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %15, i32 0, i32 2
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call %struct.veth_priv* @netdev_priv(%struct.net_device* %18)
  store %struct.veth_priv* %19, %struct.veth_priv** %8, align 8
  %20 = call i32 (...) @smp_processor_id()
  store i32 %20, i32* %12, align 4
  %21 = load %struct.veth_priv*, %struct.veth_priv** %7, align 8
  %22 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call %struct.veth_net_stats* @per_cpu_ptr(i32 %23, i32 %24)
  store %struct.veth_net_stats* %25, %struct.veth_net_stats** %9, align 8
  %26 = load %struct.veth_priv*, %struct.veth_priv** %8, align 8
  %27 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call %struct.veth_net_stats* @per_cpu_ptr(i32 %28, i32 %29)
  store %struct.veth_net_stats* %30, %struct.veth_net_stats** %10, align 8
  %31 = load %struct.net_device*, %struct.net_device** %6, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IFF_UP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %2
  br label %80

38:                                               ; preds = %2
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CHECKSUM_NONE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.veth_priv*, %struct.veth_priv** %8, align 8
  %46 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %44, %38
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %11, align 4
  %54 = load %struct.net_device*, %struct.net_device** %6, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = call i64 @dev_forward_skb(%struct.net_device* %54, %struct.sk_buff* %55)
  %57 = load i64, i64* @NET_RX_SUCCESS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %88

60:                                               ; preds = %50
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.veth_net_stats*, %struct.veth_net_stats** %9, align 8
  %63 = getelementptr inbounds %struct.veth_net_stats, %struct.veth_net_stats* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.veth_net_stats*, %struct.veth_net_stats** %9, align 8
  %67 = getelementptr inbounds %struct.veth_net_stats, %struct.veth_net_stats* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.veth_net_stats*, %struct.veth_net_stats** %10, align 8
  %72 = getelementptr inbounds %struct.veth_net_stats, %struct.veth_net_stats* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.veth_net_stats*, %struct.veth_net_stats** %10, align 8
  %76 = getelementptr inbounds %struct.veth_net_stats, %struct.veth_net_stats* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %79, i32* %3, align 4
  br label %94

80:                                               ; preds = %37
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = call i32 @kfree_skb(%struct.sk_buff* %81)
  %83 = load %struct.veth_net_stats*, %struct.veth_net_stats** %9, align 8
  %84 = getelementptr inbounds %struct.veth_net_stats, %struct.veth_net_stats* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %87, i32* %3, align 4
  br label %94

88:                                               ; preds = %59
  %89 = load %struct.veth_net_stats*, %struct.veth_net_stats** %10, align 8
  %90 = getelementptr inbounds %struct.veth_net_stats, %struct.veth_net_stats* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %88, %80, %60
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.veth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.veth_net_stats* @per_cpu_ptr(i32, i32) #1

declare dso_local i64 @dev_forward_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
