; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_mac.c_cs_set_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_mac.c_cs_set_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_mac = type { i32 }
%struct.zd_ctrlset = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@IEEE80211_TX_CTL_FIRST_FRAGMENT = common dso_local global i32 0, align 4
@ZD_CS_NEED_RANDOM_BACKOFF = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@ZD_CS_NO_ACK = common dso_local global i32 0, align 4
@ZD_CS_PS_POLL_FRAME = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_RTS_CTS = common dso_local global i32 0, align 4
@ZD_CS_RTS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_CTS_PROTECT = common dso_local global i32 0, align 4
@ZD_CS_SELF_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zd_mac*, %struct.zd_ctrlset*, %struct.ieee80211_hdr*, %struct.ieee80211_tx_info*)* @cs_set_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_set_control(%struct.zd_mac* %0, %struct.zd_ctrlset* %1, %struct.ieee80211_hdr* %2, %struct.ieee80211_tx_info* %3) #0 {
  %5 = alloca %struct.zd_mac*, align 8
  %6 = alloca %struct.zd_ctrlset*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.zd_mac* %0, %struct.zd_mac** %5, align 8
  store %struct.zd_ctrlset* %1, %struct.zd_ctrlset** %6, align 8
  store %struct.ieee80211_hdr* %2, %struct.ieee80211_hdr** %7, align 8
  store %struct.ieee80211_tx_info* %3, %struct.ieee80211_tx_info** %8, align 8
  %9 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %6, align 8
  %10 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %12 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IEEE80211_TX_CTL_FIRST_FRAGMENT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i32, i32* @ZD_CS_NEED_RANDOM_BACKOFF, align 4
  %19 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %6, align 8
  %20 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %17, %4
  %24 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %25 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load i32, i32* @ZD_CS_NO_ACK, align 4
  %32 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %6, align 8
  %33 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %23
  %37 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @ieee80211_is_pspoll(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i32, i32* @ZD_CS_PS_POLL_FRAME, align 4
  %44 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %6, align 8
  %45 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %36
  %49 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %50 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %48
  %60 = load i32, i32* @ZD_CS_RTS, align 4
  %61 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %6, align 8
  %62 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %48
  %66 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %67 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IEEE80211_TX_RC_USE_CTS_PROTECT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %65
  %77 = load i32, i32* @ZD_CS_SELF_CTS, align 4
  %78 = load %struct.zd_ctrlset*, %struct.zd_ctrlset** %6, align 8
  %79 = getelementptr inbounds %struct.zd_ctrlset, %struct.zd_ctrlset* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %65
  ret void
}

declare dso_local i64 @ieee80211_is_pspoll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
