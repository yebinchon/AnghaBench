; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_double_buffer_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64 }
%struct.ieee80211_tx_info = type { i32 }

@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_STYPE_QOS_DATA = common dso_local global i32 0, align 4
@IEEE80211_STYPE_QOS_NULLFUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tx_double_buffer_desc*, %struct.ieee80211_tx_info*, i32)* @wl1251_tx_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_tx_control(%struct.tx_double_buffer_desc* %0, %struct.ieee80211_tx_info* %1, i32 %2) #0 {
  %4 = alloca %struct.tx_double_buffer_desc*, align 8
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  %6 = alloca i32, align 4
  store %struct.tx_double_buffer_desc* %0, %struct.tx_double_buffer_desc** %4, align 8
  store %struct.ieee80211_tx_info* %1, %struct.ieee80211_tx_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %4, align 8
  %8 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %7, i32 0, i32 0
  %9 = bitcast %struct.TYPE_2__* %8 to i32*
  store i32 0, i32* %9, align 8
  %10 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %4, align 8
  %11 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %4, align 8
  %14 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %4, align 8
  %24 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %22, %3
  %27 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %4, align 8
  %28 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @IEEE80211_FTYPE_DATA, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @IEEE80211_STYPE_QOS_DATA, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @IEEE80211_STYPE_QOS_NULLFUNC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39, %34
  %45 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %4, align 8
  %46 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  store i32 1, i32* %47, align 8
  br label %48

48:                                               ; preds = %44, %39, %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
