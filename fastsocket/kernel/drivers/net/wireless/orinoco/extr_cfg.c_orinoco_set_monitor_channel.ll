; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_cfg.c_orinoco_set_monitor_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_cfg.c_orinoco_set_monitor_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_chan_def = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.orinoco_private = type { i32, i32, i64, %struct.hermes }
%struct.hermes = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.hermes*, i32, i32, i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@NL80211_CHAN_NO_HT = common dso_local global i64 0, align 8
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NUM_CHANNELS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@HERMES_CMD_TEST = common dso_local global i32 0, align 4
@HERMES_TEST_SET_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.cfg80211_chan_def*)* @orinoco_set_monitor_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_set_monitor_channel(%struct.wiphy* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.cfg80211_chan_def*, align 8
  %6 = alloca %struct.orinoco_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hermes*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %5, align 8
  %11 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %12 = call %struct.orinoco_private* @wiphy_priv(%struct.wiphy* %11)
  store %struct.orinoco_private* %12, %struct.orinoco_private** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %14 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %98

20:                                               ; preds = %2
  %21 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %22 = call i64 @cfg80211_get_chandef_type(%struct.cfg80211_chan_def* %21)
  %23 = load i64, i64* @NL80211_CHAN_NO_HT, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %98

28:                                               ; preds = %20
  %29 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %30 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %98

39:                                               ; preds = %28
  %40 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %41 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ieee80211_freq_to_dsss_chan(i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %61, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @NUM_CHANNELS, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %61, label %52

52:                                               ; preds = %48
  %53 = load %struct.orinoco_private*, %struct.orinoco_private** %6, align 8
  %54 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %56, 1
  %58 = shl i32 1, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %52, %48, %39
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %98

64:                                               ; preds = %52
  %65 = load %struct.orinoco_private*, %struct.orinoco_private** %6, align 8
  %66 = call i64 @orinoco_lock(%struct.orinoco_private* %65, i64* %8)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @EBUSY, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %98

71:                                               ; preds = %64
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.orinoco_private*, %struct.orinoco_private** %6, align 8
  %74 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.orinoco_private*, %struct.orinoco_private** %6, align 8
  %76 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %71
  %81 = load %struct.orinoco_private*, %struct.orinoco_private** %6, align 8
  %82 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %81, i32 0, i32 3
  store %struct.hermes* %82, %struct.hermes** %10, align 8
  %83 = load %struct.hermes*, %struct.hermes** %10, align 8
  %84 = getelementptr inbounds %struct.hermes, %struct.hermes* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32 (%struct.hermes*, i32, i32, i32*)*, i32 (%struct.hermes*, i32, i32, i32*)** %86, align 8
  %88 = load %struct.hermes*, %struct.hermes** %10, align 8
  %89 = load i32, i32* @HERMES_CMD_TEST, align 4
  %90 = load i32, i32* @HERMES_TEST_SET_CHANNEL, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %9, align 4
  %93 = call i32 %87(%struct.hermes* %88, i32 %91, i32 %92, i32* null)
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %80, %71
  %95 = load %struct.orinoco_private*, %struct.orinoco_private** %6, align 8
  %96 = call i32 @orinoco_unlock(%struct.orinoco_private* %95, i64* %8)
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %94, %68, %61, %36, %25, %17
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.orinoco_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i64 @cfg80211_get_chandef_type(%struct.cfg80211_chan_def*) #1

declare dso_local i32 @ieee80211_freq_to_dsss_chan(i32) #1

declare dso_local i64 @orinoco_lock(%struct.orinoco_private*, i64*) #1

declare dso_local i32 @orinoco_unlock(%struct.orinoco_private*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
