; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_rx_compl_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_rx_compl_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_rx_obj = type { %struct.be_adapter* }
%struct.be_adapter = type { i32, %struct.be_rx_obj*, i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.be_rx_compl_info = type { i32, i64, i32 }
%struct.sk_buff = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@BE_RX_SKB_ALLOC_SIZE = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_rx_obj*, %struct.be_rx_compl_info*)* @be_rx_compl_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_rx_compl_process(%struct.be_rx_obj* %0, %struct.be_rx_compl_info* %1) #0 {
  %3 = alloca %struct.be_rx_obj*, align 8
  %4 = alloca %struct.be_rx_compl_info*, align 8
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.be_rx_obj* %0, %struct.be_rx_obj** %3, align 8
  store %struct.be_rx_compl_info* %1, %struct.be_rx_compl_info** %4, align 8
  %8 = load %struct.be_rx_obj*, %struct.be_rx_obj** %3, align 8
  %9 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %8, i32 0, i32 0
  %10 = load %struct.be_adapter*, %struct.be_adapter** %9, align 8
  store %struct.be_adapter* %10, %struct.be_adapter** %5, align 8
  %11 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %11, i32 0, i32 3
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = load i32, i32* @BE_RX_SKB_ALLOC_SIZE, align 4
  %16 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %14, i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.be_rx_obj*, %struct.be_rx_obj** %3, align 8
  %25 = call %struct.TYPE_2__* @rx_stats(%struct.be_rx_obj* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.be_rx_obj*, %struct.be_rx_obj** %3, align 8
  %30 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %4, align 8
  %31 = call i32 @be_rx_compl_discard(%struct.be_rx_obj* %29, %struct.be_rx_compl_info* %30)
  br label %104

32:                                               ; preds = %2
  %33 = load %struct.be_rx_obj*, %struct.be_rx_obj** %3, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %4, align 8
  %36 = call i32 @skb_fill_rx_data(%struct.be_rx_obj* %33, %struct.sk_buff* %34, %struct.be_rx_compl_info* %35)
  %37 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %38 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %4, align 8
  %43 = call i64 @csum_passed(%struct.be_rx_compl_info* %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %41, %32
  %46 = phi i1 [ false, %32 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = call i64 @likely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  br label %57

54:                                               ; preds = %45
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %55)
  br label %57

57:                                               ; preds = %54, %50
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = load %struct.net_device*, %struct.net_device** %6, align 8
  %60 = call i32 @eth_type_trans(%struct.sk_buff* %58, %struct.net_device* %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = load %struct.be_rx_obj*, %struct.be_rx_obj** %3, align 8
  %65 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %66 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %65, i32 0, i32 1
  %67 = load %struct.be_rx_obj*, %struct.be_rx_obj** %66, align 8
  %68 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %67, i64 0
  %69 = ptrtoint %struct.be_rx_obj* %64 to i64
  %70 = ptrtoint %struct.be_rx_obj* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @skb_record_rx_queue(%struct.sk_buff* %63, i32 %73)
  %75 = load %struct.net_device*, %struct.net_device** %6, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @NETIF_F_RXHASH, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %57
  %82 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %4, align 8
  %83 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %81, %57
  %88 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %4, align 8
  %89 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %94 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %95 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %4, align 8
  %98 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @vlan_hwaccel_receive_skb(%struct.sk_buff* %93, i32 %96, i32 %99)
  br label %104

101:                                              ; preds = %87
  %102 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %103 = call i32 @netif_receive_skb(%struct.sk_buff* %102)
  br label %104

104:                                              ; preds = %23, %101, %92
  ret void
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_2__* @rx_stats(%struct.be_rx_obj*) #1

declare dso_local i32 @be_rx_compl_discard(%struct.be_rx_obj*, %struct.be_rx_compl_info*) #1

declare dso_local i32 @skb_fill_rx_data(%struct.be_rx_obj*, %struct.sk_buff*, %struct.be_rx_compl_info*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @csum_passed(%struct.be_rx_compl_info*) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @vlan_hwaccel_receive_skb(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
