; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_create_tx_descriptor_seq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_create_tx_descriptor_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.txentry_desc = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.rt2x00_intf = type { i32 }

@IEEE80211_TX_CTL_ASSIGN_SEQ = common dso_local global i32 0, align 4
@ENTRY_TXD_GENERATE_SEQ = common dso_local global i32 0, align 4
@REQUIRE_SW_SEQNO = common dso_local global i32 0, align 4
@CONFIG_QOS_DISABLED = common dso_local global i32 0, align 4
@ENTRY_TXD_FIRST_FRAGMENT = common dso_local global i32 0, align 4
@IEEE80211_SCTL_FRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.sk_buff*, %struct.txentry_desc*)* @rt2x00queue_create_tx_descriptor_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00queue_create_tx_descriptor_seq(%struct.rt2x00_dev* %0, %struct.sk_buff* %1, %struct.txentry_desc* %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.txentry_desc*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.rt2x00_intf*, align 8
  %10 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.txentry_desc* %2, %struct.txentry_desc** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %11)
  store %struct.ieee80211_tx_info* %12, %struct.ieee80211_tx_info** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %16, %struct.ieee80211_hdr** %8, align 8
  %17 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.rt2x00_intf* @vif_to_intf(i32 %20)
  store %struct.rt2x00_intf* %21, %struct.rt2x00_intf** %9, align 8
  %22 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %23 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IEEE80211_TX_CTL_ASSIGN_SEQ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  br label %79

29:                                               ; preds = %3
  %30 = load i32, i32* @ENTRY_TXD_GENERATE_SEQ, align 4
  %31 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %32 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %31, i32 0, i32 0
  %33 = call i32 @__set_bit(i32 %30, i32* %32)
  %34 = load i32, i32* @REQUIRE_SW_SEQNO, align 4
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %36 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %35, i32 0, i32 1
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @CONFIG_QOS_DISABLED, align 4
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %42 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %41, i32 0, i32 0
  %43 = call i64 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, i32* @ENTRY_TXD_GENERATE_SEQ, align 4
  %47 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %48 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %47, i32 0, i32 0
  %49 = call i32 @__clear_bit(i32 %46, i32* %48)
  br label %51

50:                                               ; preds = %39
  br label %79

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %29
  %53 = load i32, i32* @ENTRY_TXD_FIRST_FRAGMENT, align 4
  %54 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %55 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %54, i32 0, i32 0
  %56 = call i64 @test_bit(i32 %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %9, align 8
  %60 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %59, i32 0, i32 0
  %61 = call i32 @atomic_add_return(i32 16, i32* %60)
  store i32 %61, i32* %10, align 4
  br label %66

62:                                               ; preds = %52
  %63 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %9, align 8
  %64 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %63, i32 0, i32 0
  %65 = call i32 @atomic_read(i32* %64)
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %62, %58
  %67 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %68 = call i32 @cpu_to_le16(i32 %67)
  %69 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %70 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @cpu_to_le16(i32 %73)
  %75 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %76 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %66, %50, %28
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.rt2x00_intf* @vif_to_intf(i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
