; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00mac.c_rt2x00mac_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00mac.c_rt2x00mac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf, %struct.rt2x00_dev* }
%struct.ieee80211_conf = type { i32 }
%struct.rt2x00_dev = type { i32, i32, i32 }

@DEVICE_STATE_PRESENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2x00mac_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rt2x00_dev*, align 8
  %7 = alloca %struct.ieee80211_conf*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 1
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  store %struct.rt2x00_dev* %10, %struct.rt2x00_dev** %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  store %struct.ieee80211_conf* %12, %struct.ieee80211_conf** %7, align 8
  %13 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %15 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %14, i32 0, i32 2
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

19:                                               ; preds = %2
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %21 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @rt2x00queue_stop_queue(i32 %22)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %25 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @rt2x00lib_config(%struct.rt2x00_dev* %24, %struct.ieee80211_conf* %25, i32 %26)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %30 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @rt2x00lib_config_antenna(%struct.rt2x00_dev* %28, i32 %31)
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %34 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rt2x00queue_start_queue(i32 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %19, %18
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00queue_stop_queue(i32) #1

declare dso_local i32 @rt2x00lib_config(%struct.rt2x00_dev*, %struct.ieee80211_conf*, i32) #1

declare dso_local i32 @rt2x00lib_config_antenna(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00queue_start_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
