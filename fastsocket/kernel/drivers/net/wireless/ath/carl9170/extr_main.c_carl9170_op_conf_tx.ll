; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_conf_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_conf_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ar9170* }
%struct.ar9170 = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_tx_queue_params = type { i32 }

@ar9170_qmap = common dso_local global i64* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i64, %struct.ieee80211_tx_queue_params*)* @carl9170_op_conf_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_op_conf_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i64 %2, %struct.ieee80211_tx_queue_params* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %9 = alloca %struct.ar9170*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.ieee80211_tx_queue_params* %3, %struct.ieee80211_tx_queue_params** %8, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.ar9170*, %struct.ar9170** %12, align 8
  store %struct.ar9170* %13, %struct.ar9170** %9, align 8
  %14 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %15 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %19 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %17, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %4
  %25 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %26 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64*, i64** @ar9170_qmap, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %34 = call i32 @memcpy(i32* %32, %struct.ieee80211_tx_queue_params* %33, i32 4)
  %35 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %36 = call i32 @carl9170_set_qos(%struct.ar9170* %35)
  store i32 %36, i32* %10, align 4
  br label %40

37:                                               ; preds = %4
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %37, %24
  %41 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %42 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %10, align 4
  ret i32 %44
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.ieee80211_tx_queue_params*, i32) #1

declare dso_local i32 @carl9170_set_qos(%struct.ar9170*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
