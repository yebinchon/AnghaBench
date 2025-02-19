; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_main.c_p54_conf_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_main.c_p54_conf_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i64, %struct.p54_common* }
%struct.p54_common = type { i32, i32* }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_tx_queue_params = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i64, %struct.ieee80211_tx_queue_params*)* @p54_conf_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54_conf_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i64 %2, %struct.ieee80211_tx_queue_params* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %9 = alloca %struct.p54_common*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.ieee80211_tx_queue_params* %3, %struct.ieee80211_tx_queue_params** %8, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 1
  %13 = load %struct.p54_common*, %struct.p54_common** %12, align 8
  store %struct.p54_common* %13, %struct.p54_common** %9, align 8
  %14 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %15 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %4
  %23 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %24 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %30 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %33 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %36 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %39 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @P54_SET_QUEUE(i32 %28, i32 %31, i32 %34, i32 %37, i32 %40)
  %42 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %43 = call i32 @p54_set_edcf(%struct.p54_common* %42)
  store i32 %43, i32* %10, align 4
  br label %47

44:                                               ; preds = %4
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %44, %22
  %48 = load %struct.p54_common*, %struct.p54_common** %9, align 8
  %49 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %10, align 4
  ret i32 %51
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @P54_SET_QUEUE(i32, i32, i32, i32, i32) #1

declare dso_local i32 @p54_set_edcf(%struct.p54_common*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
