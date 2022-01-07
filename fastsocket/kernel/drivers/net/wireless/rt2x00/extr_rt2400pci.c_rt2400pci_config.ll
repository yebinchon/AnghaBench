; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00lib_conf = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_POWER = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_RETRY_LIMITS = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_PS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rt2x00lib_conf*, i32)* @rt2400pci_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2400pci_config(%struct.rt2x00_dev* %0, %struct.rt2x00lib_conf* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.rt2x00lib_conf*, align 8
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.rt2x00lib_conf* %1, %struct.rt2x00lib_conf** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %13 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %14 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %13, i32 0, i32 1
  %15 = call i32 @rt2400pci_config_channel(%struct.rt2x00_dev* %12, i32* %14)
  br label %16

16:                                               ; preds = %11, %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @IEEE80211_CONF_CHANGE_POWER, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %23 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %24 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rt2400pci_config_txpower(%struct.rt2x00_dev* %22, i32 %27)
  br label %29

29:                                               ; preds = %21, %16
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @IEEE80211_CONF_CHANGE_RETRY_LIMITS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %36 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %37 = call i32 @rt2400pci_config_retry_limit(%struct.rt2x00_dev* %35, %struct.rt2x00lib_conf* %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %45 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %46 = call i32 @rt2400pci_config_ps(%struct.rt2x00_dev* %44, %struct.rt2x00lib_conf* %45)
  br label %47

47:                                               ; preds = %43, %38
  ret void
}

declare dso_local i32 @rt2400pci_config_channel(%struct.rt2x00_dev*, i32*) #1

declare dso_local i32 @rt2400pci_config_txpower(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2400pci_config_retry_limit(%struct.rt2x00_dev*, %struct.rt2x00lib_conf*) #1

declare dso_local i32 @rt2400pci_config_ps(%struct.rt2x00_dev*, %struct.rt2x00lib_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
