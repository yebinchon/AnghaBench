; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_mac.c_zd_op_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_mac.c_zd_op_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.zd_mac = type { i32, %struct.sk_buff_head, %struct.zd_chip }
%struct.sk_buff_head = type { i32 }
%struct.zd_chip = type { i32 }
%struct.sk_buff = type { i32 }

@ZD_DEVICE_RUNNING = common dso_local global i32 0, align 4
@zd_workqueue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zd_op_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.zd_mac*, align 8
  %4 = alloca %struct.zd_chip*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw* %7)
  store %struct.zd_mac* %8, %struct.zd_mac** %3, align 8
  %9 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %10 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %9, i32 0, i32 2
  store %struct.zd_chip* %10, %struct.zd_chip** %4, align 8
  %11 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %12 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %11, i32 0, i32 1
  store %struct.sk_buff_head* %12, %struct.sk_buff_head** %6, align 8
  %13 = load i32, i32* @ZD_DEVICE_RUNNING, align 4
  %14 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %15 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %14, i32 0, i32 0
  %16 = call i32 @clear_bit(i32 %13, i32* %15)
  %17 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %18 = call i32 @zd_chip_disable_rxtx(%struct.zd_chip* %17)
  %19 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %20 = call i32 @beacon_disable(%struct.zd_mac* %19)
  %21 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %22 = call i32 @housekeeping_disable(%struct.zd_mac* %21)
  %23 = load i32, i32* @zd_workqueue, align 4
  %24 = call i32 @flush_workqueue(i32 %23)
  %25 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %26 = call i32 @zd_chip_disable_hwint(%struct.zd_chip* %25)
  %27 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %28 = call i32 @zd_chip_switch_radio_off(%struct.zd_chip* %27)
  %29 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %30 = call i32 @zd_chip_disable_int(%struct.zd_chip* %29)
  br label %31

31:                                               ; preds = %35, %1
  %32 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %33 = call %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head* %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %5, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %36)
  br label %31

38:                                               ; preds = %31
  ret void
}

declare dso_local %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @zd_chip_disable_rxtx(%struct.zd_chip*) #1

declare dso_local i32 @beacon_disable(%struct.zd_mac*) #1

declare dso_local i32 @housekeeping_disable(%struct.zd_mac*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @zd_chip_disable_hwint(%struct.zd_chip*) #1

declare dso_local i32 @zd_chip_switch_radio_off(%struct.zd_chip*) #1

declare dso_local i32 @zd_chip_disable_int(%struct.zd_chip*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
