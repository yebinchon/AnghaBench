; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_main.c_lbtf_op_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_main.c_lbtf_op_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.lbtf_private* }
%struct.lbtf_private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i64, i32, i32 }
%struct.sk_buff = type { i32 }

@LBTF_DEB_MACOPS = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@CMD_TYPE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@CMD_TYPE_LONG_PREAMBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @lbtf_op_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbtf_op_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lbtf_private*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.lbtf_private*, %struct.lbtf_private** %13, align 8
  store %struct.lbtf_private* %14, %struct.lbtf_private** %9, align 8
  %15 = load i32, i32* @LBTF_DEB_MACOPS, align 4
  %16 = call i32 @lbtf_deb_enter(i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %19 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %4
  %24 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %25 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %47 [
    i32 129, label %29
    i32 128, label %29
  ]

29:                                               ; preds = %23, %23
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %32 = call %struct.sk_buff* @ieee80211_beacon_get(%struct.ieee80211_hw* %30, %struct.ieee80211_vif* %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %10, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %38 = call i32 @lbtf_beacon_set(%struct.lbtf_private* %36, %struct.sk_buff* %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %40 = call i32 @kfree_skb(%struct.sk_buff* %39)
  %41 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %42 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %43 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @lbtf_beacon_ctrl(%struct.lbtf_private* %41, i32 1, i32 %44)
  br label %46

46:                                               ; preds = %35, %29
  br label %48

47:                                               ; preds = %23
  br label %48

48:                                               ; preds = %47, %46
  br label %49

49:                                               ; preds = %48, %4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @is_zero_ether_addr(i32 %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %11, align 4
  %62 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %65 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @lbtf_set_bssid(%struct.lbtf_private* %62, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %54, %49
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %75 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @CMD_TYPE_SHORT_PREAMBLE, align 4
  %80 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %81 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %86

82:                                               ; preds = %73
  %83 = load i32, i32* @CMD_TYPE_LONG_PREAMBLE, align 4
  %84 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %85 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %82, %78
  %87 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %88 = call i32 @lbtf_set_radio_control(%struct.lbtf_private* %87)
  br label %89

89:                                               ; preds = %86, %68
  %90 = load i32, i32* @LBTF_DEB_MACOPS, align 4
  %91 = call i32 @lbtf_deb_leave(i32 %90)
  ret void
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local %struct.sk_buff* @ieee80211_beacon_get(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @lbtf_beacon_set(%struct.lbtf_private*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @lbtf_beacon_ctrl(%struct.lbtf_private*, i32, i32) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @lbtf_set_bssid(%struct.lbtf_private*, i32, i32) #1

declare dso_local i32 @lbtf_set_radio_control(%struct.lbtf_private*) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
