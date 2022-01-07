; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00mac.c_rt2x00mac_set_tim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00mac.c_rt2x00mac_set_tim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32, i32, i32 }
%struct.ieee80211_sta = type { i32 }

@DEVICE_STATE_ENABLED_RADIO = common dso_local global i32 0, align 4
@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@rt2x00mac_set_tim_iter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2x00mac_set_tim(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rt2x00_dev*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %10, align 8
  store %struct.rt2x00_dev* %11, %struct.rt2x00_dev** %8, align 8
  %12 = load i32, i32* @DEVICE_STATE_ENABLED_RADIO, align 4
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %14 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %13, i32 0, i32 2
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %32

18:                                               ; preds = %3
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %20 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %23 = load i32, i32* @rt2x00mac_set_tim_iter, align 4
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %25 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %21, i32 %22, i32 %23, %struct.rt2x00_dev* %24)
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %27 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %30 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %29, i32 0, i32 0
  %31 = call i32 @ieee80211_queue_work(i32 %28, i32* %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %18, %17
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.rt2x00_dev*) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
