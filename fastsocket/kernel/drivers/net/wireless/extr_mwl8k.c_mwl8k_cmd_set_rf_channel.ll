; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_cmd_set_rf_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_cmd_set_rf_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_conf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64, i32 }
%struct.mwl8k_cmd_set_rf_channel = type { %struct.TYPE_3__, i32, i32, i8* }
%struct.TYPE_3__ = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_SET_RF_CHANNEL = common dso_local global i32 0, align 4
@MWL8K_CMD_SET = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4
@NL80211_CHAN_HT20 = common dso_local global i32 0, align 4
@NL80211_CHAN_HT40MINUS = common dso_local global i32 0, align 4
@NL80211_CHAN_HT40PLUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_conf*)* @mwl8k_cmd_set_rf_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_set_rf_channel(%struct.ieee80211_hw* %0, %struct.ieee80211_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_conf*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwl8k_cmd_set_rf_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_conf* %1, %struct.ieee80211_conf** %5, align 8
  %10 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  store %struct.ieee80211_channel* %13, %struct.ieee80211_channel** %6, align 8
  %14 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %14, i32 0, i32 0
  %16 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_4__* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mwl8k_cmd_set_rf_channel* @kzalloc(i32 32, i32 %17)
  store %struct.mwl8k_cmd_set_rf_channel* %18, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %19 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %20 = icmp eq %struct.mwl8k_cmd_set_rf_channel* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %111

24:                                               ; preds = %2
  %25 = load i32, i32* @MWL8K_CMD_SET_RF_CHANNEL, align 4
  %26 = call i8* @cpu_to_le16(i32 %25)
  %27 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %28 = getelementptr inbounds %struct.mwl8k_cmd_set_rf_channel, %struct.mwl8k_cmd_set_rf_channel* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i8* %26, i8** %29, align 8
  %30 = call i8* @cpu_to_le16(i32 32)
  %31 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %32 = getelementptr inbounds %struct.mwl8k_cmd_set_rf_channel, %struct.mwl8k_cmd_set_rf_channel* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  %34 = load i32, i32* @MWL8K_CMD_SET, align 4
  %35 = call i8* @cpu_to_le16(i32 %34)
  %36 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %37 = getelementptr inbounds %struct.mwl8k_cmd_set_rf_channel, %struct.mwl8k_cmd_set_rf_channel* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %42 = getelementptr inbounds %struct.mwl8k_cmd_set_rf_channel, %struct.mwl8k_cmd_set_rf_channel* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %44 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %24
  %49 = call i32 @cpu_to_le32(i32 1)
  %50 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %51 = getelementptr inbounds %struct.mwl8k_cmd_set_rf_channel, %struct.mwl8k_cmd_set_rf_channel* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %67

54:                                               ; preds = %24
  %55 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %56 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = call i32 @cpu_to_le32(i32 4)
  %62 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %63 = getelementptr inbounds %struct.mwl8k_cmd_set_rf_channel, %struct.mwl8k_cmd_set_rf_channel* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %54
  br label %67

67:                                               ; preds = %66, %48
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @NL80211_CHAN_HT20, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71, %67
  %76 = call i32 @cpu_to_le32(i32 128)
  %77 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %78 = getelementptr inbounds %struct.mwl8k_cmd_set_rf_channel, %struct.mwl8k_cmd_set_rf_channel* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %103

81:                                               ; preds = %71
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @NL80211_CHAN_HT40MINUS, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = call i32 @cpu_to_le32(i32 6400)
  %87 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %88 = getelementptr inbounds %struct.mwl8k_cmd_set_rf_channel, %struct.mwl8k_cmd_set_rf_channel* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %102

91:                                               ; preds = %81
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @NL80211_CHAN_HT40PLUS, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = call i32 @cpu_to_le32(i32 2304)
  %97 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %98 = getelementptr inbounds %struct.mwl8k_cmd_set_rf_channel, %struct.mwl8k_cmd_set_rf_channel* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %91
  br label %102

102:                                              ; preds = %101, %85
  br label %103

103:                                              ; preds = %102, %75
  %104 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %105 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %106 = getelementptr inbounds %struct.mwl8k_cmd_set_rf_channel, %struct.mwl8k_cmd_set_rf_channel* %105, i32 0, i32 0
  %107 = call i32 @mwl8k_post_cmd(%struct.ieee80211_hw* %104, %struct.TYPE_3__* %106)
  store i32 %107, i32* %9, align 4
  %108 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %109 = call i32 @kfree(%struct.mwl8k_cmd_set_rf_channel* %108)
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %103, %21
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @cfg80211_get_chandef_type(%struct.TYPE_4__*) #1

declare dso_local %struct.mwl8k_cmd_set_rf_channel* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mwl8k_post_cmd(%struct.ieee80211_hw*, %struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_set_rf_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
