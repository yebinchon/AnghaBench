; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00lib_conf = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_POWER = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_RETRY_LIMITS = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_PS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rt2x00lib_conf*, i32)* @rt73usb_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt73usb_config(%struct.rt2x00_dev* %0, %struct.rt2x00lib_conf* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.rt2x00lib_conf*, align 8
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.rt2x00lib_conf* %1, %struct.rt2x00lib_conf** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %8 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %9 = call i32 @rt73usb_config_lna_gain(%struct.rt2x00_dev* %7, %struct.rt2x00lib_conf* %8)
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %16 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %17 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %16, i32 0, i32 1
  %18 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %19 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @rt73usb_config_channel(%struct.rt2x00_dev* %15, i32* %17, i32 %22)
  br label %24

24:                                               ; preds = %14, %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @IEEE80211_CONF_CHANGE_POWER, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %36 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %37 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @rt73usb_config_txpower(%struct.rt2x00_dev* %35, i32 %40)
  br label %42

42:                                               ; preds = %34, %29, %24
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @IEEE80211_CONF_CHANGE_RETRY_LIMITS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %49 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %50 = call i32 @rt73usb_config_retry_limit(%struct.rt2x00_dev* %48, %struct.rt2x00lib_conf* %49)
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %58 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %59 = call i32 @rt73usb_config_ps(%struct.rt2x00_dev* %57, %struct.rt2x00lib_conf* %58)
  br label %60

60:                                               ; preds = %56, %51
  ret void
}

declare dso_local i32 @rt73usb_config_lna_gain(%struct.rt2x00_dev*, %struct.rt2x00lib_conf*) #1

declare dso_local i32 @rt73usb_config_channel(%struct.rt2x00_dev*, i32*, i32) #1

declare dso_local i32 @rt73usb_config_txpower(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt73usb_config_retry_limit(%struct.rt2x00_dev*, %struct.rt2x00lib_conf*) #1

declare dso_local i32 @rt73usb_config_ps(%struct.rt2x00_dev*, %struct.rt2x00lib_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
