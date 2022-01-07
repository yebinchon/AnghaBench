; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_firmware_load_success.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_firmware_load_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl8k_priv = type { i32, i32, i32, i32*, i32, %struct.TYPE_3__*, i64, i64, i32*, i32, i32, i32*, i64, i32*, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.ieee80211_hw* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.ieee80211_hw = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [23 x i8] c"Cannot start firmware\0A\00", align 1
@REDUCED_TX_HEADROOM = common dso_local global i32 0, align 4
@MWL8K_TX_WMM_QUEUES = common dso_local global i32 0, align 4
@IEEE80211_HW_SIGNAL_DBM = common dso_local global i32 0, align 4
@IEEE80211_HW_HAS_RATE_CONTROL = common dso_local global i32 0, align 4
@IEEE80211_HW_AP_LINK_PS = common dso_local global i32 0, align 4
@mwl8k_finalize_join_worker = common dso_local global i32 0, align 4
@mwl8k_watchdog_ba_events = common dso_local global i32 0, align 4
@mwl8k_hw_restart_work = common dso_local global i32 0, align 4
@mwl8k_tx_poll = common dso_local global i32 0, align 4
@mwl8k_rx_poll = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@ap_if_comb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Cannot register device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwl8k_priv*)* @mwl8k_firmware_load_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_firmware_load_success(%struct.mwl8k_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwl8k_priv*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mwl8k_priv* %0, %struct.mwl8k_priv** %3, align 8
  %7 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %7, i32 0, i32 23
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  store %struct.ieee80211_hw* %9, %struct.ieee80211_hw** %4, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = call i32 @mwl8k_load_firmware(%struct.ieee80211_hw* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %13 = call i32 @mwl8k_release_firmware(%struct.mwl8k_priv* %12)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %17, i32 0, i32 5
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = call i32 @wiphy_err(%struct.TYPE_4__* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %249

22:                                               ; preds = %1
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %26 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %25, i32 0, i32 22
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @REDUCED_TX_HEADROOM, align 4
  br label %32

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %38, i32 0, i32 1
  store i32 10, i32* %39, align 4
  %40 = load i32, i32* @MWL8K_TX_WMM_QUEUES, align 4
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %42 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @IEEE80211_HW_SIGNAL_DBM, align 4
  %44 = load i32, i32* @IEEE80211_HW_HAS_RATE_CONTROL, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %51 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %50, i32 0, i32 22
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %32
  %55 = load i32, i32* @IEEE80211_HW_AP_LINK_PS, align 4
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %57 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %54, %32
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %62 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %61, i32 0, i32 3
  store i32 4, i32* %62, align 4
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %64 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %63, i32 0, i32 4
  store i32 4, i32* %64, align 8
  %65 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %66 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %65, i32 0, i32 21
  store i64 0, i64* %66, align 8
  %67 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %68 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %67, i32 0, i32 20
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %71 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %73 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  %74 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %75 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %74, i32 0, i32 19
  %76 = load i32, i32* @mwl8k_finalize_join_worker, align 4
  %77 = call i32 @INIT_WORK(i32* %75, i32 %76)
  %78 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %79 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %78, i32 0, i32 18
  %80 = load i32, i32* @mwl8k_watchdog_ba_events, align 4
  %81 = call i32 @INIT_WORK(i32* %79, i32 %80)
  %82 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %83 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %82, i32 0, i32 17
  %84 = load i32, i32* @mwl8k_hw_restart_work, align 4
  %85 = call i32 @INIT_WORK(i32* %83, i32 %84)
  %86 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %87 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %86, i32 0, i32 16
  %88 = load i32, i32* @mwl8k_tx_poll, align 4
  %89 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %90 = ptrtoint %struct.ieee80211_hw* %89 to i64
  %91 = call i32 @tasklet_init(i32* %87, i32 %88, i64 %90)
  %92 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %93 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %92, i32 0, i32 16
  %94 = call i32 @tasklet_disable(i32* %93)
  %95 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %96 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %95, i32 0, i32 15
  %97 = load i32, i32* @mwl8k_rx_poll, align 4
  %98 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %99 = ptrtoint %struct.ieee80211_hw* %98 to i64
  %100 = call i32 @tasklet_init(i32* %96, i32 %97, i64 %99)
  %101 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %102 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %101, i32 0, i32 15
  %103 = call i32 @tasklet_disable(i32* %102)
  %104 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %105 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %108 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %107, i32 0, i32 2
  %109 = call i32* @pci_alloc_consistent(i32 %106, i32 4, i32* %108)
  %110 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %111 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %110, i32 0, i32 3
  store i32* %109, i32** %111, align 8
  %112 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %113 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %60
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %249

119:                                              ; preds = %60
  %120 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %121 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %120, i32 0, i32 14
  %122 = call i32 @mutex_init(i32* %121)
  %123 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %124 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %123, i32 0, i32 13
  store i32* null, i32** %124, align 8
  %125 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %126 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %125, i32 0, i32 12
  store i64 0, i64* %126, align 8
  %127 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %128 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %127, i32 0, i32 11
  store i32* null, i32** %128, align 8
  %129 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %130 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %129, i32 0, i32 10
  %131 = call i32 @spin_lock_init(i32* %130)
  %132 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %133 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %132, i32 0, i32 9
  %134 = call i32 @spin_lock_init(i32* %133)
  %135 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %136 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %135, i32 0, i32 8
  store i32* null, i32** %136, align 8
  %137 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %138 = call i32 @mwl8k_probe_hw(%struct.ieee80211_hw* %137)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %119
  br label %231

142:                                              ; preds = %119
  %143 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %144 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %143, i32 0, i32 5
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  store i32 0, i32* %146, align 4
  %147 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %148 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %147, i32 0, i32 7
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %142
  %152 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %153 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %152, i32 0, i32 5
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %183

158:                                              ; preds = %151, %142
  %159 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %160 = call i32 @BIT(i32 %159)
  %161 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %162 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %161, i32 0, i32 5
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %160
  store i32 %166, i32* %164, align 4
  %167 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %168 = call i32 @BIT(i32 %167)
  %169 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %170 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %169, i32 0, i32 5
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %168
  store i32 %174, i32* %172, align 4
  %175 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %176 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %175, i32 0, i32 5
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 2
  store i32* @ap_if_comb, i32** %178, align 8
  %179 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %180 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %179, i32 0, i32 5
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  store i32 1, i32* %182, align 8
  br label %183

183:                                              ; preds = %158, %151
  %184 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %185 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %184, i32 0, i32 6
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %195, label %188

188:                                              ; preds = %183
  %189 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %190 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %189, i32 0, i32 5
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %188, %183
  %196 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %197 = call i32 @BIT(i32 %196)
  %198 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %199 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %198, i32 0, i32 5
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %197
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %195, %188
  %205 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %206 = call i32 @ieee80211_register_hw(%struct.ieee80211_hw* %205)
  store i32 %206, i32* %6, align 4
  %207 = load i32, i32* %6, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %204
  %210 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %211 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %210, i32 0, i32 5
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = call i32 @wiphy_err(%struct.TYPE_4__* %212, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %215

214:                                              ; preds = %204
  store i32 0, i32* %2, align 4
  br label %249

215:                                              ; preds = %209
  store i32 0, i32* %5, align 4
  br label %216

216:                                              ; preds = %225, %215
  %217 = load i32, i32* %5, align 4
  %218 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %219 = call i32 @mwl8k_tx_queues(%struct.mwl8k_priv* %218)
  %220 = icmp slt i32 %217, %219
  br i1 %220, label %221, label %228

221:                                              ; preds = %216
  %222 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %223 = load i32, i32* %5, align 4
  %224 = call i32 @mwl8k_txq_deinit(%struct.ieee80211_hw* %222, i32 %223)
  br label %225

225:                                              ; preds = %221
  %226 = load i32, i32* %5, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %5, align 4
  br label %216

228:                                              ; preds = %216
  %229 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %230 = call i32 @mwl8k_rxq_deinit(%struct.ieee80211_hw* %229, i32 0)
  br label %231

231:                                              ; preds = %228, %141
  %232 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %233 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %232, i32 0, i32 3
  %234 = load i32*, i32** %233, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %247

236:                                              ; preds = %231
  %237 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %238 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %241 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %240, i32 0, i32 3
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %244 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @pci_free_consistent(i32 %239, i32 4, i32* %242, i32 %245)
  br label %247

247:                                              ; preds = %236, %231
  %248 = load i32, i32* %6, align 4
  store i32 %248, i32* %2, align 4
  br label %249

249:                                              ; preds = %247, %214, %116, %16
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local i32 @mwl8k_load_firmware(%struct.ieee80211_hw*) #1

declare dso_local i32 @mwl8k_release_firmware(%struct.mwl8k_priv*) #1

declare dso_local i32 @wiphy_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mwl8k_probe_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ieee80211_register_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @mwl8k_tx_queues(%struct.mwl8k_priv*) #1

declare dso_local i32 @mwl8k_txq_deinit(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @mwl8k_rxq_deinit(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
