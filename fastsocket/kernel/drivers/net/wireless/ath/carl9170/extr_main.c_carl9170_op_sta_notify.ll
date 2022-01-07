; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_sta_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_sta_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.carl9170_sta_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, %struct.ieee80211_sta*)* @carl9170_op_sta_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_op_sta_notify(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_sta* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.carl9170_sta_info*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %8, align 8
  %10 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.carl9170_sta_info*
  store %struct.carl9170_sta_info* %14, %struct.carl9170_sta_info** %9, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %31 [
    i32 128, label %16
    i32 129, label %28
  ]

16:                                               ; preds = %4
  %17 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %9, align 8
  %18 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %9, align 8
  %20 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %19, i32 0, i32 1
  %21 = call i32 @atomic_read(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %26 = call i32 @ieee80211_sta_block_awake(%struct.ieee80211_hw* %24, %struct.ieee80211_sta* %25, i32 1)
  br label %27

27:                                               ; preds = %23, %16
  br label %31

28:                                               ; preds = %4
  %29 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %9, align 8
  %30 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %4, %28, %27
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ieee80211_sta_block_awake(%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
