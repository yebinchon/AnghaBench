; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_sw_tso.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_sw_tso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sk_buff* }
%struct.net_device = type { i32 }
%struct.myri10ge_priv = type { %struct.myri10ge_slice_state* }
%struct.myri10ge_slice_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sk_buff*, %struct.net_device*)* @myri10ge_sw_tso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @myri10ge_sw_tso(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.myri10ge_priv*, align 8
  %9 = alloca %struct.myri10ge_slice_state*, align 8
  %10 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.myri10ge_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.myri10ge_priv* %12, %struct.myri10ge_priv** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NETIF_F_TSO6, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = call %struct.sk_buff* @skb_gso_segment(%struct.sk_buff* %13, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i64 @IS_ERR(%struct.sk_buff* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %61

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %56, %25
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %29, label %57

29:                                               ; preds = %26
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %30, %struct.sk_buff** %7, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load %struct.sk_buff*, %struct.sk_buff** %32, align 8
  store %struct.sk_buff* %33, %struct.sk_buff** %6, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %35, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = call i64 @myri10ge_xmit(%struct.sk_buff* %36, %struct.net_device* %37)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %29
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %47, %struct.sk_buff** %7, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load %struct.sk_buff*, %struct.sk_buff** %49, align 8
  store %struct.sk_buff* %50, %struct.sk_buff** %6, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %52, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %53)
  br label %55

55:                                               ; preds = %46, %41
  br label %61

56:                                               ; preds = %29
  br label %26

57:                                               ; preds = %26
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %58)
  %60 = load i64, i64* @NETDEV_TX_OK, align 8
  store i64 %60, i64* %3, align 8
  br label %76

61:                                               ; preds = %55, %24
  %62 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %8, align 8
  %63 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %62, i32 0, i32 0
  %64 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %63, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %64, i64 %66
  store %struct.myri10ge_slice_state* %67, %struct.myri10ge_slice_state** %9, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %68)
  %70 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %9, align 8
  %71 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load i64, i64* @NETDEV_TX_OK, align 8
  store i64 %75, i64* %3, align 8
  br label %76

76:                                               ; preds = %61, %57
  %77 = load i64, i64* %3, align 8
  ret i64 %77
}

declare dso_local %struct.myri10ge_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @skb_gso_segment(%struct.sk_buff*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i64 @myri10ge_xmit(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
