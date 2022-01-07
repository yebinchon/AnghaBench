; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.be_adapter = type { %struct.be_tx_obj* }
%struct.be_tx_obj = type { %struct.sk_buff**, %struct.be_queue_info }
%struct.be_queue_info = type { i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@BE_MAX_TX_FRAG_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @be_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca %struct.be_tx_obj*, align 8
  %8 = alloca %struct.be_queue_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %16)
  store %struct.be_adapter* %17, %struct.be_adapter** %6, align 8
  %18 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %19 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %18, i32 0, i32 0
  %20 = load %struct.be_tx_obj*, %struct.be_tx_obj** %19, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %20, i64 %22
  store %struct.be_tx_obj* %23, %struct.be_tx_obj** %7, align 8
  %24 = load %struct.be_tx_obj*, %struct.be_tx_obj** %7, align 8
  %25 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %24, i32 0, i32 1
  store %struct.be_queue_info* %25, %struct.be_queue_info** %8, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %26 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %27 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %14, align 8
  %29 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call %struct.sk_buff* @be_xmit_workarounds(%struct.be_adapter* %29, %struct.sk_buff* %30, i32* %13)
  store %struct.sk_buff* %31, %struct.sk_buff** %4, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %35, i32* %3, align 4
  br label %104

36:                                               ; preds = %2
  %37 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i64 @wrb_cnt_for_skb(%struct.be_adapter* %37, %struct.sk_buff* %38, i32* %9)
  store i64 %39, i64* %11, align 8
  %40 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %41 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i64 @make_tx_wrbs(%struct.be_adapter* %40, %struct.be_queue_info* %41, %struct.sk_buff* %42, i64 %43, i32 %44, i32 %45)
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %96

49:                                               ; preds = %36
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %15, align 4
  %54 = load %struct.be_tx_obj*, %struct.be_tx_obj** %7, align 8
  %55 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %54, i32 0, i32 0
  %56 = load %struct.sk_buff**, %struct.sk_buff*** %55, align 8
  %57 = load i64, i64* %14, align 8
  %58 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %56, i64 %57
  %59 = load %struct.sk_buff*, %struct.sk_buff** %58, align 8
  %60 = call i32 @BUG_ON(%struct.sk_buff* %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = load %struct.be_tx_obj*, %struct.be_tx_obj** %7, align 8
  %63 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %62, i32 0, i32 0
  %64 = load %struct.sk_buff**, %struct.sk_buff*** %63, align 8
  %65 = load i64, i64* %14, align 8
  %66 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %64, i64 %65
  store %struct.sk_buff* %61, %struct.sk_buff** %66, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %69 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %68, i32 0, i32 2
  %70 = call i32 @atomic_add(i64 %67, i32* %69)
  %71 = load i64, i64* @BE_MAX_TX_FRAG_COUNT, align 8
  %72 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %73 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %72, i32 0, i32 2
  %74 = call i64 @atomic_read(i32* %73)
  %75 = add nsw i64 %71, %74
  %76 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %77 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %75, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %49
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %82)
  %84 = call i32 @netif_stop_subqueue(%struct.net_device* %81, i64 %83)
  store i32 1, i32* %10, align 4
  br label %85

85:                                               ; preds = %80, %49
  %86 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %87 = load %struct.be_tx_obj*, %struct.be_tx_obj** %7, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @be_txq_notify(%struct.be_adapter* %86, %struct.be_tx_obj* %87, i64 %88)
  %90 = load %struct.be_tx_obj*, %struct.be_tx_obj** %7, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @be_tx_stats_update(%struct.be_tx_obj* %90, i64 %91, i64 %92, i32 %93, i32 %94)
  br label %102

96:                                               ; preds = %36
  %97 = load i64, i64* %14, align 8
  %98 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %99 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %100)
  br label %102

102:                                              ; preds = %96, %85
  %103 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %34
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @be_xmit_workarounds(%struct.be_adapter*, %struct.sk_buff*, i32*) #1

declare dso_local i64 @wrb_cnt_for_skb(%struct.be_adapter*, %struct.sk_buff*, i32*) #1

declare dso_local i64 @make_tx_wrbs(%struct.be_adapter*, %struct.be_queue_info*, %struct.sk_buff*, i64, i32, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(%struct.sk_buff*) #1

declare dso_local i32 @atomic_add(i64, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @netif_stop_subqueue(%struct.net_device*, i64) #1

declare dso_local i32 @be_txq_notify(%struct.be_adapter*, %struct.be_tx_obj*, i64) #1

declare dso_local i32 @be_tx_stats_update(%struct.be_tx_obj*, i64, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
