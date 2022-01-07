; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00lib_conf = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_POWER = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_RETRY_LIMITS = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_PS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_config(%struct.rt2x00_dev* %0, %struct.rt2x00lib_conf* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.rt2x00lib_conf*, align 8
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.rt2x00lib_conf* %1, %struct.rt2x00lib_conf** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %8 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %9 = call i32 @rt2800_config_lna_gain(%struct.rt2x00_dev* %7, %struct.rt2x00lib_conf* %8)
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %3
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %16 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %17 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %20 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %19, i32 0, i32 2
  %21 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %22 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %21, i32 0, i32 1
  %23 = call i32 @rt2800_config_channel(%struct.rt2x00_dev* %15, %struct.TYPE_4__* %18, i32* %20, i32* %22)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %25 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %26 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %32 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rt2800_config_txpower(%struct.rt2x00_dev* %24, i32 %30, i32 %35)
  br label %37

37:                                               ; preds = %14, %3
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @IEEE80211_CONF_CHANGE_POWER, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %44 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %45 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %51 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @rt2800_config_txpower(%struct.rt2x00_dev* %43, i32 %49, i32 %54)
  br label %56

56:                                               ; preds = %42, %37
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @IEEE80211_CONF_CHANGE_RETRY_LIMITS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %63 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %64 = call i32 @rt2800_config_retry_limit(%struct.rt2x00_dev* %62, %struct.rt2x00lib_conf* %63)
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %72 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %5, align 8
  %73 = call i32 @rt2800_config_ps(%struct.rt2x00_dev* %71, %struct.rt2x00lib_conf* %72)
  br label %74

74:                                               ; preds = %70, %65
  ret void
}

declare dso_local i32 @rt2800_config_lna_gain(%struct.rt2x00_dev*, %struct.rt2x00lib_conf*) #1

declare dso_local i32 @rt2800_config_channel(%struct.rt2x00_dev*, %struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @rt2800_config_txpower(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_config_retry_limit(%struct.rt2x00_dev*, %struct.rt2x00lib_conf*) #1

declare dso_local i32 @rt2800_config_ps(%struct.rt2x00_dev*, %struct.rt2x00lib_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
