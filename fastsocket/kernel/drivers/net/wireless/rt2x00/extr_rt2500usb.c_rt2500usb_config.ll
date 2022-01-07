; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500usb.c_rt2500usb_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500usb.c_rt2500usb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00lib_conf = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_POWER = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_PS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rt2x00lib_conf*, i32)* @rt2500usb_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2500usb_config(%struct.rt2x00_dev* %0, %struct.rt2x00lib_conf* %1, i32 %2) #0 {
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
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %13 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %14 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %13, i32 0, i32 1
  %15 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %16 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rt2500usb_config_channel(%struct.rt2x00_dev* %12, i32* %14, i32 %19)
  br label %21

21:                                               ; preds = %11, %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @IEEE80211_CONF_CHANGE_POWER, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %33 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %34 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rt2500usb_config_txpower(%struct.rt2x00_dev* %32, i32 %37)
  br label %39

39:                                               ; preds = %31, %26, %21
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %46 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %47 = call i32 @rt2500usb_config_ps(%struct.rt2x00_dev* %45, %struct.rt2x00lib_conf* %46)
  br label %48

48:                                               ; preds = %44, %39
  ret void
}

declare dso_local i32 @rt2500usb_config_channel(%struct.rt2x00_dev*, i32*, i32) #1

declare dso_local i32 @rt2500usb_config_txpower(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2500usb_config_ps(%struct.rt2x00_dev*, %struct.rt2x00lib_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
