; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_alloc_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_alloc_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i32, i32, i32, i32, i8*, i32, i32*, i32, i32*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32**, %struct.wl1271*, i32, i32, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.ieee80211_hw*, i32 }
%struct.TYPE_2__ = type { i32* }

@AP_MAX_STATIONS = common dso_local global i32 0, align 4
@WL12XX_MAX_LINKS = common dso_local global i32 0, align 4
@wl1271_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not alloc ieee80211_hw\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"could not alloc wl priv\00", align 1
@NUM_TX_QUEUES = common dso_local global i32 0, align 4
@wl1271_elp_work = common dso_local global i32 0, align 4
@wl1271_netstack_work = common dso_local global i32 0, align 4
@wl1271_tx_work = common dso_local global i32 0, align 4
@wl1271_recovery_work = common dso_local global i32 0, align 4
@wl1271_scan_complete_work = common dso_local global i32 0, align 4
@wlcore_roc_complete_work = common dso_local global i32 0, align 4
@wl12xx_tx_watchdog_work = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"wl12xx_wq\00", align 1
@WL1271_DEFAULT_CHANNEL = common dso_local global i32 0, align 4
@WL1271_DEFAULT_POWER_LEVEL = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4
@WL1271_PSM_ILLEGAL = common dso_local global i32 0, align 4
@WL12XX_SYSTEM_HLID = common dso_local global i32 0, align 4
@WLCORE_STATE_OFF = common dso_local global i32 0, align 4
@WL12XX_FW_TYPE_NONE = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_hw* @wlcore_alloc_hw(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca %struct.wl1271*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @AP_MAX_STATIONS, align 4
  %15 = load i32, i32* @WL12XX_MAX_LINKS, align 4
  %16 = icmp sgt i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUILD_BUG_ON(i32 %17)
  %19 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 304, i32* @wl1271_ops)
  store %struct.ieee80211_hw* %19, %struct.ieee80211_hw** %8, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %21 = icmp ne %struct.ieee80211_hw* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = call i32 @wl1271_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %12, align 4
  br label %332

26:                                               ; preds = %3
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %27, i32 0, i32 0
  %29 = load %struct.wl1271*, %struct.wl1271** %28, align 8
  store %struct.wl1271* %29, %struct.wl1271** %9, align 8
  %30 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %31 = call i32 @memset(%struct.wl1271* %30, i32 0, i32 304)
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kzalloc(i64 %32, i32 %33)
  %35 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %36 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %38 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %26
  %42 = call i32 @wl1271_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  br label %329

45:                                               ; preds = %26
  %46 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %47 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %46, i32 0, i32 49
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %50 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %51 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %50, i32 0, i32 48
  store %struct.ieee80211_hw* %49, %struct.ieee80211_hw** %51, align 8
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %78, %45
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @NUM_TX_QUEUES, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %52
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %74, %56
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @WL12XX_MAX_LINKS, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %63 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %62, i32 0, i32 47
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = call i32 @skb_queue_head_init(i32* %72)
  br label %74

74:                                               ; preds = %61
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %57

77:                                               ; preds = %57
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %52

81:                                               ; preds = %52
  %82 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %83 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %82, i32 0, i32 46
  %84 = call i32 @skb_queue_head_init(i32* %83)
  %85 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %86 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %85, i32 0, i32 45
  %87 = call i32 @skb_queue_head_init(i32* %86)
  %88 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %89 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %88, i32 0, i32 44
  %90 = load i32, i32* @wl1271_elp_work, align 4
  %91 = call i32 @INIT_DELAYED_WORK(i32* %89, i32 %90)
  %92 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %93 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %92, i32 0, i32 43
  %94 = load i32, i32* @wl1271_netstack_work, align 4
  %95 = call i32 @INIT_WORK(i32* %93, i32 %94)
  %96 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %97 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %96, i32 0, i32 42
  %98 = load i32, i32* @wl1271_tx_work, align 4
  %99 = call i32 @INIT_WORK(i32* %97, i32 %98)
  %100 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %101 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %100, i32 0, i32 41
  %102 = load i32, i32* @wl1271_recovery_work, align 4
  %103 = call i32 @INIT_WORK(i32* %101, i32 %102)
  %104 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %105 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %104, i32 0, i32 40
  %106 = load i32, i32* @wl1271_scan_complete_work, align 4
  %107 = call i32 @INIT_DELAYED_WORK(i32* %105, i32 %106)
  %108 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %109 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %108, i32 0, i32 39
  %110 = load i32, i32* @wlcore_roc_complete_work, align 4
  %111 = call i32 @INIT_DELAYED_WORK(i32* %109, i32 %110)
  %112 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %113 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %112, i32 0, i32 38
  %114 = load i32, i32* @wl12xx_tx_watchdog_work, align 4
  %115 = call i32 @INIT_DELAYED_WORK(i32* %113, i32 %114)
  %116 = call i32 @create_freezable_workqueue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %117 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %118 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 8
  %119 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %120 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %81
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %12, align 4
  br label %322

126:                                              ; preds = %81
  %127 = load i32, i32* @WL1271_DEFAULT_CHANNEL, align 4
  %128 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %129 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %128, i32 0, i32 37
  store i32 %127, i32* %129, align 8
  %130 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %131 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %130, i32 0, i32 36
  store i64 0, i64* %131, align 8
  %132 = load i32, i32* @WL1271_DEFAULT_POWER_LEVEL, align 4
  %133 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %134 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %133, i32 0, i32 35
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  %136 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %137 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %136, i32 0, i32 34
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  %139 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %140 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %139, i32 0, i32 33
  store i32 %138, i32* %140, align 8
  %141 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %142 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %141, i32 0, i32 32
  store i64 0, i64* %142, align 8
  %143 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %144 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %143, i32 0, i32 0
  store i32 1, i32* %144, align 8
  %145 = load i32, i32* @WL1271_PSM_ILLEGAL, align 4
  %146 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %147 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %146, i32 0, i32 31
  store i32 %145, i32* %147, align 8
  %148 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %149 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %148, i32 0, i32 30
  store i64 0, i64* %149, align 8
  %150 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %151 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %150, i32 0, i32 1
  store i32 -1, i32* %151, align 4
  %152 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %153 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %152, i32 0, i32 29
  store i64 0, i64* %153, align 8
  %154 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %155 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %154, i32 0, i32 28
  store i64 0, i64* %155, align 8
  %156 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %157 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %156, i32 0, i32 27
  store i64 0, i64* %157, align 8
  %158 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %159 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %158, i32 0, i32 26
  store i64 0, i64* %159, align 8
  %160 = load i32, i32* @WL12XX_SYSTEM_HLID, align 4
  %161 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %162 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %161, i32 0, i32 25
  store i32 %160, i32* %162, align 8
  %163 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %164 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %163, i32 0, i32 24
  store i64 0, i64* %164, align 8
  %165 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %166 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %165, i32 0, i32 23
  store i64 0, i64* %166, align 8
  %167 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %168 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %167, i32 0, i32 22
  store i64 0, i64* %168, align 8
  %169 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %170 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %169, i32 0, i32 21
  %171 = call i32 @init_waitqueue_head(i32* %170)
  %172 = load i32, i32* @WL12XX_SYSTEM_HLID, align 4
  %173 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %174 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %173, i32 0, i32 20
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @__set_bit(i32 %172, i32 %175)
  %177 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %178 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %177, i32 0, i32 19
  %179 = load %struct.wl1271*, %struct.wl1271** %178, align 8
  %180 = call i32 @memset(%struct.wl1271* %179, i32 0, i32 8)
  store i32 0, i32* %10, align 4
  br label %181

181:                                              ; preds = %194, %126
  %182 = load i32, i32* %10, align 4
  %183 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %184 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %187, label %197

187:                                              ; preds = %181
  %188 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %189 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %188, i32 0, i32 18
  %190 = load i32**, i32*** %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32*, i32** %190, i64 %192
  store i32* null, i32** %193, align 8
  br label %194

194:                                              ; preds = %187
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %10, align 4
  br label %181

197:                                              ; preds = %181
  %198 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %199 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %198, i32 0, i32 17
  %200 = call i32 @spin_lock_init(i32* %199)
  %201 = load i32, i32* @WLCORE_STATE_OFF, align 4
  %202 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %203 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %202, i32 0, i32 16
  store i32 %201, i32* %203, align 8
  %204 = load i32, i32* @WL12XX_FW_TYPE_NONE, align 4
  %205 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %206 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %205, i32 0, i32 15
  store i32 %204, i32* %206, align 4
  %207 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %208 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %207, i32 0, i32 14
  %209 = call i32 @mutex_init(i32* %208)
  %210 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %211 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %210, i32 0, i32 13
  %212 = call i32 @mutex_init(i32* %211)
  %213 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %214 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %213, i32 0, i32 12
  %215 = call i32 @init_completion(i32* %214)
  %216 = load i8*, i8** %6, align 8
  %217 = call i32 @get_order(i8* %216)
  store i32 %217, i32* %13, align 4
  %218 = load i32, i32* @GFP_KERNEL, align 4
  %219 = load i32, i32* %13, align 4
  %220 = call i64 @__get_free_pages(i32 %218, i32 %219)
  %221 = inttoptr i64 %220 to i32*
  %222 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %223 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %222, i32 0, i32 6
  store i32* %221, i32** %223, align 8
  %224 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %225 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %224, i32 0, i32 6
  %226 = load i32*, i32** %225, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %231, label %228

228:                                              ; preds = %197
  %229 = load i32, i32* @ENOMEM, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %12, align 4
  br label %317

231:                                              ; preds = %197
  %232 = load i8*, i8** %6, align 8
  %233 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %234 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %233, i32 0, i32 11
  store i8* %232, i8** %234, align 8
  %235 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %236 = call i32 @wl12xx_alloc_dummy_packet(%struct.wl1271* %235)
  %237 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %238 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %237, i32 0, i32 7
  store i32 %236, i32* %238, align 8
  %239 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %240 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %239, i32 0, i32 7
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %231
  %244 = load i32, i32* @ENOMEM, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %12, align 4
  br label %310

246:                                              ; preds = %231
  %247 = load i32, i32* @GFP_KERNEL, align 4
  %248 = call i64 @get_zeroed_page(i32 %247)
  %249 = inttoptr i64 %248 to i32*
  %250 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %251 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %250, i32 0, i32 8
  store i32* %249, i32** %251, align 8
  %252 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %253 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %252, i32 0, i32 8
  %254 = load i32*, i32** %253, align 8
  %255 = icmp ne i32* %254, null
  br i1 %255, label %259, label %256

256:                                              ; preds = %246
  %257 = load i32, i32* @ENOMEM, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %12, align 4
  br label %305

259:                                              ; preds = %246
  %260 = load i8*, i8** %7, align 8
  %261 = ptrtoint i8* %260 to i32
  %262 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %263 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %262, i32 0, i32 3
  store i32 %261, i32* %263, align 4
  %264 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %265 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @GFP_KERNEL, align 4
  %268 = load i32, i32* @GFP_DMA, align 4
  %269 = or i32 %267, %268
  %270 = call i8* @kmalloc(i32 %266, i32 %269)
  %271 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %272 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %271, i32 0, i32 9
  store i8* %270, i8** %272, align 8
  %273 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %274 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %273, i32 0, i32 9
  %275 = load i8*, i8** %274, align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %280, label %277

277:                                              ; preds = %259
  %278 = load i32, i32* @ENOMEM, align 4
  %279 = sub nsw i32 0, %278
  store i32 %279, i32* %12, align 4
  br label %299

280:                                              ; preds = %259
  %281 = load i32, i32* @GFP_KERNEL, align 4
  %282 = call i8* @kmalloc(i32 1, i32 %281)
  %283 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %284 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %283, i32 0, i32 10
  store i8* %282, i8** %284, align 8
  %285 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %286 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %285, i32 0, i32 10
  %287 = load i8*, i8** %286, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %292, label %289

289:                                              ; preds = %280
  %290 = load i32, i32* @ENOMEM, align 4
  %291 = sub nsw i32 0, %290
  store i32 %291, i32* %12, align 4
  br label %294

292:                                              ; preds = %280
  %293 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  store %struct.ieee80211_hw* %293, %struct.ieee80211_hw** %4, align 8
  br label %335

294:                                              ; preds = %289
  %295 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %296 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %295, i32 0, i32 9
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 @kfree(i8* %297)
  br label %299

299:                                              ; preds = %294, %277
  %300 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %301 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %300, i32 0, i32 8
  %302 = load i32*, i32** %301, align 8
  %303 = ptrtoint i32* %302 to i64
  %304 = call i32 @free_page(i64 %303)
  br label %305

305:                                              ; preds = %299, %256
  %306 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %307 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %306, i32 0, i32 7
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @dev_kfree_skb(i32 %308)
  br label %310

310:                                              ; preds = %305, %243
  %311 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %312 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %311, i32 0, i32 6
  %313 = load i32*, i32** %312, align 8
  %314 = ptrtoint i32* %313 to i64
  %315 = load i32, i32* %13, align 4
  %316 = call i32 @free_pages(i64 %314, i32 %315)
  br label %317

317:                                              ; preds = %310, %228
  %318 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %319 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %318, i32 0, i32 5
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @destroy_workqueue(i32 %320)
  br label %322

322:                                              ; preds = %317, %123
  %323 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %324 = call i32 @wl1271_debugfs_exit(%struct.wl1271* %323)
  %325 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %326 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %325, i32 0, i32 4
  %327 = load i8*, i8** %326, align 8
  %328 = call i32 @kfree(i8* %327)
  br label %329

329:                                              ; preds = %322, %41
  %330 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %331 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %330)
  br label %332

332:                                              ; preds = %329, %22
  %333 = load i32, i32* %12, align 4
  %334 = call %struct.ieee80211_hw* @ERR_PTR(i32 %333)
  store %struct.ieee80211_hw* %334, %struct.ieee80211_hw** %4, align 8
  br label %335

335:                                              ; preds = %332, %292
  %336 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  ret %struct.ieee80211_hw* %336
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32*) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @memset(%struct.wl1271*, i32, i32) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @create_freezable_workqueue(i8*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @get_order(i8*) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @wl12xx_alloc_dummy_packet(%struct.wl1271*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @wl1271_debugfs_exit(%struct.wl1271*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

declare dso_local %struct.ieee80211_hw* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
