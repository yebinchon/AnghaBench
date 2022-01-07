; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_wireless_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_wireless_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wl = type { i32, i64*, i32*, i32, i32, i32, i32, i32, i32, %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.b43_bus_dev = type { i32, i32, i32, %struct.ssb_sprom* }
%struct.ssb_sprom = type { i32, i32 }

@b43_hw_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not allocate ieee80211 device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_HW_RX_INCLUDES_FCS = common dso_local global i32 0, align 4
@IEEE80211_HW_SIGNAL_DBM = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_WDS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@b43_beacon_update_trigger_work = common dso_local global i32 0, align 4
@b43_phy_txpower_adjust_work = common dso_local global i32 0, align 4
@b43_tx_work = common dso_local global i32 0, align 4
@B43_QOS_QUEUE_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%04X\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Broadcom %s WLAN found (core revision %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.b43_wl* (%struct.b43_bus_dev*)* @b43_wireless_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.b43_wl* @b43_wireless_init(%struct.b43_bus_dev* %0) #0 {
  %2 = alloca %struct.b43_wl*, align 8
  %3 = alloca %struct.b43_bus_dev*, align 8
  %4 = alloca %struct.ssb_sprom*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.b43_wl*, align 8
  %7 = alloca [6 x i8], align 1
  %8 = alloca i32, align 4
  store %struct.b43_bus_dev* %0, %struct.b43_bus_dev** %3, align 8
  %9 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %3, align 8
  %10 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %9, i32 0, i32 3
  %11 = load %struct.ssb_sprom*, %struct.ssb_sprom** %10, align 8
  store %struct.ssb_sprom* %11, %struct.ssb_sprom** %4, align 8
  %12 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 56, i32* @b43_hw_ops)
  store %struct.ieee80211_hw* %12, %struct.ieee80211_hw** %5, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = icmp ne %struct.ieee80211_hw* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = call i32 @b43err(i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.b43_wl* @ERR_PTR(i32 %18)
  store %struct.b43_wl* %19, %struct.b43_wl** %2, align 8
  br label %146

20:                                               ; preds = %1
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %22 = call %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw* %21)
  store %struct.b43_wl* %22, %struct.b43_wl** %6, align 8
  %23 = load i32, i32* @IEEE80211_HW_RX_INCLUDES_FCS, align 4
  %24 = load i32, i32* @IEEE80211_HW_SIGNAL_DBM, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = or i32 %29, %31
  %33 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = or i32 %32, %34
  %36 = load i32, i32* @NL80211_IFTYPE_WDS, align 4
  %37 = call i32 @BIT(i32 %36)
  %38 = or i32 %35, %37
  %39 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %40 = call i32 @BIT(i32 %39)
  %41 = or i32 %38, %40
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %46
  store i32 %52, i32* %50, align 4
  %53 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %54 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %56 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %55, i32 0, i32 1
  store i32 2, i32* %56, align 4
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %58 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %3, align 8
  %59 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw* %57, i32 %60)
  %62 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %63 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @is_valid_ether_addr(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %20
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %69 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %70 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw* %68, i32 %71)
  br label %79

73:                                               ; preds = %20
  %74 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %75 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %76 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw* %74, i32 %77)
  br label %79

79:                                               ; preds = %73, %67
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %81 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %82 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %81, i32 0, i32 9
  store %struct.ieee80211_hw* %80, %struct.ieee80211_hw** %82, align 8
  %83 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %84 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %83, i32 0, i32 8
  %85 = call i32 @mutex_init(i32* %84)
  %86 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %87 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %86, i32 0, i32 7
  %88 = call i32 @spin_lock_init(i32* %87)
  %89 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %90 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %89, i32 0, i32 6
  %91 = call i32 @INIT_LIST_HEAD(i32* %90)
  %92 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %93 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %92, i32 0, i32 5
  %94 = load i32, i32* @b43_beacon_update_trigger_work, align 4
  %95 = call i32 @INIT_WORK(i32* %93, i32 %94)
  %96 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %97 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %96, i32 0, i32 4
  %98 = load i32, i32* @b43_phy_txpower_adjust_work, align 4
  %99 = call i32 @INIT_WORK(i32* %97, i32 %98)
  %100 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %101 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %100, i32 0, i32 3
  %102 = load i32, i32* @b43_tx_work, align 4
  %103 = call i32 @INIT_WORK(i32* %101, i32 %102)
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %122, %79
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @B43_QOS_QUEUE_NUM, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %125

108:                                              ; preds = %104
  %109 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %110 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = call i32 @skb_queue_head_init(i32* %114)
  %116 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %117 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %108
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %104

125:                                              ; preds = %104
  %126 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %127 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %128 = call i32 @ARRAY_SIZE(i8* %127)
  %129 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %3, align 8
  %130 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp sgt i32 %131, 39321
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %135 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %3, align 8
  %136 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @snprintf(i8* %126, i32 %128, i8* %134, i32 %137)
  %139 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %140 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %141 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %3, align 8
  %142 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @b43info(%struct.b43_wl* %139, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %140, i32 %143)
  %145 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  store %struct.b43_wl* %145, %struct.b43_wl** %2, align 8
  br label %146

146:                                              ; preds = %125, %15
  %147 = load %struct.b43_wl*, %struct.b43_wl** %2, align 8
  ret %struct.b43_wl* %147
}

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32*) #1

declare dso_local i32 @b43err(i32*, i8*) #1

declare dso_local %struct.b43_wl* @ERR_PTR(i32) #1

declare dso_local %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw*, i32) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @b43info(%struct.b43_wl*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
