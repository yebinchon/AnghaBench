; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_wireless_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_wireless_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { %struct.TYPE_5__, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.ssb_sprom }
%struct.ssb_sprom = type { i32, i32 }
%struct.ieee80211_hw = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.b43legacy_wl = type { i64*, i32*, i32, i32, i32, i32, i32, i32, %struct.ieee80211_hw* }

@ENOMEM = common dso_local global i32 0, align 4
@b43legacy_hw_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not allocate ieee80211 device\0A\00", align 1
@IEEE80211_HW_RX_INCLUDES_FCS = common dso_local global i32 0, align 4
@IEEE80211_HW_SIGNAL_DBM = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_WDS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@b43legacy_beacon_update_trigger_work = common dso_local global i32 0, align 4
@b43legacy_tx_work = common dso_local global i32 0, align 4
@B43legacy_QOS_QUEUE_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Broadcom %04X WLAN found (core revision %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_device*)* @b43legacy_wireless_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_wireless_init(%struct.ssb_device* %0) #0 {
  %2 = alloca %struct.ssb_device*, align 8
  %3 = alloca %struct.ssb_sprom*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.b43legacy_wl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ssb_device* %0, %struct.ssb_device** %2, align 8
  %8 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %9 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store %struct.ssb_sprom* %11, %struct.ssb_sprom** %3, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %15 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = call i32 @b43legacy_sprom_fixup(%struct.TYPE_6__* %16)
  %18 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 48, i32* @b43legacy_hw_ops)
  store %struct.ieee80211_hw* %18, %struct.ieee80211_hw** %4, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %20 = icmp ne %struct.ieee80211_hw* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = call i32 @b43legacyerr(i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %134

23:                                               ; preds = %1
  %24 = load i32, i32* @IEEE80211_HW_RX_INCLUDES_FCS, align 4
  %25 = load i32, i32* @IEEE80211_HW_SIGNAL_DBM, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = or i32 %30, %32
  %34 = load i32, i32* @NL80211_IFTYPE_WDS, align 4
  %35 = call i32 @BIT(i32 %34)
  %36 = or i32 %33, %35
  %37 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = or i32 %36, %38
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %41 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %46, i32 0, i32 2
  store i32 2, i32* %47, align 8
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %49 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %50 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw* %48, i32 %51)
  %53 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %54 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @is_valid_ether_addr(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %23
  %59 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %60 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %61 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw* %59, i32 %62)
  br label %70

64:                                               ; preds = %23
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %66 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %67 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw* %65, i32 %68)
  br label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %72 = call %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw* %71)
  store %struct.b43legacy_wl* %72, %struct.b43legacy_wl** %5, align 8
  %73 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %74 = call i32 @memset(%struct.b43legacy_wl* %73, i32 0, i32 48)
  %75 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %76 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %77 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %76, i32 0, i32 8
  store %struct.ieee80211_hw* %75, %struct.ieee80211_hw** %77, align 8
  %78 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %79 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %78, i32 0, i32 7
  %80 = call i32 @spin_lock_init(i32* %79)
  %81 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %82 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %81, i32 0, i32 6
  %83 = call i32 @spin_lock_init(i32* %82)
  %84 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %85 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %84, i32 0, i32 5
  %86 = call i32 @mutex_init(i32* %85)
  %87 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %88 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %87, i32 0, i32 4
  %89 = call i32 @INIT_LIST_HEAD(i32* %88)
  %90 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %91 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %90, i32 0, i32 3
  %92 = load i32, i32* @b43legacy_beacon_update_trigger_work, align 4
  %93 = call i32 @INIT_WORK(i32* %91, i32 %92)
  %94 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %95 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %94, i32 0, i32 2
  %96 = load i32, i32* @b43legacy_tx_work, align 4
  %97 = call i32 @INIT_WORK(i32* %95, i32 %96)
  store i32 0, i32* %7, align 4
  br label %98

98:                                               ; preds = %116, %70
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @B43legacy_QOS_QUEUE_NUM, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %98
  %103 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %104 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = call i32 @skb_queue_head_init(i32* %108)
  %110 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %111 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %102
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %98

119:                                              ; preds = %98
  %120 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %121 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %122 = call i32 @ssb_set_devtypedata(%struct.ssb_device* %120, %struct.b43legacy_wl* %121)
  %123 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %5, align 8
  %124 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %125 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %124, i32 0, i32 1
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %130 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @b43legacyinfo(%struct.b43legacy_wl* %123, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %128, i32 %132)
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %119, %21
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @b43legacy_sprom_fixup(%struct.TYPE_6__*) #1

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32*) #1

declare dso_local i32 @b43legacyerr(i32*, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw*, i32) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw*, i32) #1

declare dso_local %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @memset(%struct.b43legacy_wl*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @ssb_set_devtypedata(%struct.ssb_device*, %struct.b43legacy_wl*) #1

declare dso_local i32 @b43legacyinfo(%struct.b43legacy_wl*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
