; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_init_softc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_init_softc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_9__, %struct.ath_hw*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32* }
%struct.ath_hw = type { i32, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.ath9k_platform_data* }
%struct.ath9k_platform_data = type { i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.ath_bus_ops = type { i32 (%struct.ath_common*)* }
%struct.ath_common = type { i32, i32, i32, i32, %struct.ath_bus_ops*, i32, i32, i32, %struct.ath_softc*, i32, %struct.ath_hw*, %struct.TYPE_7__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ath9k_ioread32 = common dso_local global i32 0, align 4
@ath9k_iowrite32 = common dso_local global i32 0, align 4
@ath9k_reg_rmw = common dso_local global i32 0, align 4
@NL80211_DFS_UNSET = common dso_local global i32 0, align 4
@AH_USE_EEPROM = common dso_local global i32 0, align 4
@ath9k_debug = common dso_local global i32 0, align 4
@ath9k_btcoex_enable = common dso_local global i32 0, align 4
@ath9k_enable_diversity = common dso_local global i64 0, align 8
@ath9k_tasklet = common dso_local global i32 0, align 4
@ath9k_beacon_tasklet = common dso_local global i32 0, align 4
@ath_reset_work = common dso_local global i32 0, align 4
@ath_hw_check = common dso_local global i32 0, align 4
@ath_paprd_calibrate = common dso_local global i32 0, align 4
@ath_hw_pll_work = common dso_local global i32 0, align 4
@ath_rx_poll = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ATH9K_NUM_TX_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ath_softc*, %struct.ath_bus_ops*)* @ath9k_init_softc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_init_softc(i32 %0, %struct.ath_softc* %1, %struct.ath_bus_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_softc*, align 8
  %7 = alloca %struct.ath_bus_ops*, align 8
  %8 = alloca %struct.ath9k_platform_data*, align 8
  %9 = alloca %struct.ath_hw*, align 8
  %10 = alloca %struct.ath_common*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.ath_softc* %1, %struct.ath_softc** %6, align 8
  store %struct.ath_bus_ops* %2, %struct.ath_bus_ops** %7, align 8
  %14 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 15
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %17, align 8
  store %struct.ath9k_platform_data* %18, %struct.ath9k_platform_data** %8, align 8
  store %struct.ath_hw* null, %struct.ath_hw** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %20 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %19, i32 0, i32 15
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ath_hw* @devm_kzalloc(%struct.TYPE_10__* %21, i32 64, i32 %22)
  store %struct.ath_hw* %23, %struct.ath_hw** %9, align 8
  %24 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %25 = icmp ne %struct.ath_hw* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %325

29:                                               ; preds = %3
  %30 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %31 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %30, i32 0, i32 15
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %34 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %33, i32 0, i32 11
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %34, align 8
  %35 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %36 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %35, i32 0, i32 13
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %39 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %38, i32 0, i32 10
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %42 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %41, i32 0, i32 9
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @ath9k_ioread32, align 4
  %45 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %46 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @ath9k_iowrite32, align 4
  %49 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %50 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @ath9k_reg_rmw, align 4
  %53 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %54 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %57 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %56, i32 0, i32 8
  %58 = call i32 @atomic_set(i32* %57, i32 -1)
  %59 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %60 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %61 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %60, i32 0, i32 1
  store %struct.ath_hw* %59, %struct.ath_hw** %61, align 8
  %62 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %63 = load i32, i32* @NL80211_DFS_UNSET, align 4
  %64 = call i32 @dfs_pattern_detector_init(%struct.ath_hw* %62, i32 %63)
  %65 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %66 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %65, i32 0, i32 14
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %8, align 8
  %68 = icmp ne %struct.ath9k_platform_data* %67, null
  br i1 %68, label %79, label %69

69:                                               ; preds = %29
  %70 = load i32, i32* @AH_USE_EEPROM, align 4
  %71 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %72 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %76 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %75, i32 0, i32 1
  %77 = load %struct.ath_hw*, %struct.ath_hw** %76, align 8
  %78 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %77, i32 0, i32 0
  store i32 -1, i32* %78, align 8
  br label %116

79:                                               ; preds = %29
  %80 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %8, align 8
  %81 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %84 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %83, i32 0, i32 1
  %85 = load %struct.ath_hw*, %struct.ath_hw** %84, align 8
  %86 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %85, i32 0, i32 6
  store i32 %82, i32* %86, align 8
  %87 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %8, align 8
  %88 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %91 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %90, i32 0, i32 1
  %92 = load %struct.ath_hw*, %struct.ath_hw** %91, align 8
  %93 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %92, i32 0, i32 5
  store i32 %89, i32* %93, align 4
  %94 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %8, align 8
  %95 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %98 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %97, i32 0, i32 1
  %99 = load %struct.ath_hw*, %struct.ath_hw** %98, align 8
  %100 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 8
  %101 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %8, align 8
  %102 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %105 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 8
  %106 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %8, align 8
  %107 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %110 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %8, align 8
  %112 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %115 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %79, %69
  %117 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %118 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %117)
  store %struct.ath_common* %118, %struct.ath_common** %10, align 8
  %119 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %120 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %119, i32 0, i32 1
  %121 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %122 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %121, i32 0, i32 11
  store %struct.TYPE_7__* %120, %struct.TYPE_7__** %122, align 8
  %123 = load %struct.ath_bus_ops*, %struct.ath_bus_ops** %7, align 8
  %124 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %125 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %124, i32 0, i32 4
  store %struct.ath_bus_ops* %123, %struct.ath_bus_ops** %125, align 8
  %126 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %127 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %128 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %127, i32 0, i32 10
  store %struct.ath_hw* %126, %struct.ath_hw** %128, align 8
  %129 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %130 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %129, i32 0, i32 13
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %133 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %132, i32 0, i32 9
  store i32 %131, i32* %133, align 8
  %134 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %135 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %136 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %135, i32 0, i32 8
  store %struct.ath_softc* %134, %struct.ath_softc** %136, align 8
  %137 = load i32, i32* @ath9k_debug, align 4
  %138 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %139 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %138, i32 0, i32 7
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* @ath9k_btcoex_enable, align 4
  %141 = icmp eq i32 %140, 1
  %142 = zext i1 %141 to i32
  %143 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %144 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %146 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %145, i32 0, i32 1
  store i32 0, i32* %146, align 4
  %147 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %148 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %116
  %152 = load i64, i64* @ath9k_enable_diversity, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %156 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %155, i32 0, i32 2
  store i32 1, i32* %156, align 8
  br label %157

157:                                              ; preds = %154, %151, %116
  %158 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %159 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %158, i32 0, i32 6
  %160 = call i32 @spin_lock_init(i32* %159)
  %161 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %162 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %161, i32 0, i32 12
  %163 = call i32 @spin_lock_init(i32* %162)
  %164 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %165 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %164, i32 0, i32 11
  %166 = call i32 @spin_lock_init(i32* %165)
  %167 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %168 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %167, i32 0, i32 10
  %169 = call i32 @mutex_init(i32* %168)
  %170 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %171 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %170, i32 0, i32 8
  %172 = load i32, i32* @ath9k_tasklet, align 4
  %173 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %174 = ptrtoint %struct.ath_softc* %173 to i64
  %175 = call i32 @tasklet_init(i32* %171, i32 %172, i64 %174)
  %176 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %177 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %176, i32 0, i32 7
  %178 = load i32, i32* @ath9k_beacon_tasklet, align 4
  %179 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %180 = ptrtoint %struct.ath_softc* %179 to i64
  %181 = call i32 @tasklet_init(i32* %177, i32 %178, i64 %180)
  %182 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %183 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %182, i32 0, i32 6
  %184 = load i32, i32* @ath_reset_work, align 4
  %185 = call i32 @INIT_WORK(i32* %183, i32 %184)
  %186 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %187 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %186, i32 0, i32 5
  %188 = load i32, i32* @ath_hw_check, align 4
  %189 = call i32 @INIT_WORK(i32* %187, i32 %188)
  %190 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %191 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %190, i32 0, i32 4
  %192 = load i32, i32* @ath_paprd_calibrate, align 4
  %193 = call i32 @INIT_WORK(i32* %191, i32 %192)
  %194 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %195 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %194, i32 0, i32 3
  %196 = load i32, i32* @ath_hw_pll_work, align 4
  %197 = call i32 @INIT_DELAYED_WORK(i32* %195, i32 %196)
  %198 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %199 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %198, i32 0, i32 2
  %200 = load i32, i32* @ath_rx_poll, align 4
  %201 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %202 = ptrtoint %struct.ath_softc* %201 to i64
  %203 = call i32 @setup_timer(i32* %199, i32 %200, i64 %202)
  %204 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %205 = call i32 @ath_read_cachesize(%struct.ath_common* %204, i32* %13)
  %206 = load i32, i32* %13, align 4
  %207 = shl i32 %206, 2
  %208 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %209 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %208, i32 0, i32 3
  store i32 %207, i32* %209, align 4
  %210 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %8, align 8
  %211 = icmp ne %struct.ath9k_platform_data* %210, null
  br i1 %211, label %212, label %228

212:                                              ; preds = %157
  %213 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %8, align 8
  %214 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %228

217:                                              ; preds = %212
  %218 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %219 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %8, align 8
  %220 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @ath9k_eeprom_request(%struct.ath_softc* %218, i64 %221)
  store i32 %222, i32* %11, align 4
  %223 = load i32, i32* %11, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %217
  %226 = load i32, i32* %11, align 4
  store i32 %226, i32* %4, align 4
  br label %325

227:                                              ; preds = %217
  br label %228

228:                                              ; preds = %227, %212, %157
  %229 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %230 = call i32 @ath9k_hw_init(%struct.ath_hw* %229)
  store i32 %230, i32* %11, align 4
  %231 = load i32, i32* %11, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %228
  br label %321

234:                                              ; preds = %228
  %235 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %8, align 8
  %236 = icmp ne %struct.ath9k_platform_data* %235, null
  br i1 %236, label %237, label %251

237:                                              ; preds = %234
  %238 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %8, align 8
  %239 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %237
  %243 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %244 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.ath9k_platform_data*, %struct.ath9k_platform_data** %8, align 8
  %247 = getelementptr inbounds %struct.ath9k_platform_data, %struct.ath9k_platform_data* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load i32, i32* @ETH_ALEN, align 4
  %250 = call i32 @memcpy(i32 %245, i64 %248, i32 %249)
  br label %251

251:                                              ; preds = %242, %237, %234
  %252 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %253 = call i32 @ath9k_init_queues(%struct.ath_softc* %252)
  store i32 %253, i32* %11, align 4
  %254 = load i32, i32* %11, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %251
  br label %318

257:                                              ; preds = %251
  %258 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %259 = call i32 @ath9k_init_btcoex(%struct.ath_softc* %258)
  store i32 %259, i32* %11, align 4
  %260 = load i32, i32* %11, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %257
  br label %293

263:                                              ; preds = %257
  %264 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %265 = call i32 @ath9k_init_channels_rates(%struct.ath_softc* %264)
  store i32 %265, i32* %11, align 4
  %266 = load i32, i32* %11, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %263
  br label %293

269:                                              ; preds = %263
  %270 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %271 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %270, i32 0, i32 1
  %272 = load %struct.ath_hw*, %struct.ath_hw** %271, align 8
  %273 = call i32 @ath9k_cmn_init_crypto(%struct.ath_hw* %272)
  %274 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %275 = call i32 @ath9k_init_misc(%struct.ath_softc* %274)
  %276 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %277 = call i32 @ath_fill_led_pin(%struct.ath_softc* %276)
  %278 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %279 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %278, i32 0, i32 4
  %280 = load %struct.ath_bus_ops*, %struct.ath_bus_ops** %279, align 8
  %281 = getelementptr inbounds %struct.ath_bus_ops, %struct.ath_bus_ops* %280, i32 0, i32 0
  %282 = load i32 (%struct.ath_common*)*, i32 (%struct.ath_common*)** %281, align 8
  %283 = icmp ne i32 (%struct.ath_common*)* %282, null
  br i1 %283, label %284, label %292

284:                                              ; preds = %269
  %285 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %286 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %285, i32 0, i32 4
  %287 = load %struct.ath_bus_ops*, %struct.ath_bus_ops** %286, align 8
  %288 = getelementptr inbounds %struct.ath_bus_ops, %struct.ath_bus_ops* %287, i32 0, i32 0
  %289 = load i32 (%struct.ath_common*)*, i32 (%struct.ath_common*)** %288, align 8
  %290 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %291 = call i32 %289(%struct.ath_common* %290)
  br label %292

292:                                              ; preds = %284, %269
  store i32 0, i32* %4, align 4
  br label %325

293:                                              ; preds = %268, %262
  store i32 0, i32* %12, align 4
  br label %294

294:                                              ; preds = %314, %293
  %295 = load i32, i32* %12, align 4
  %296 = load i32, i32* @ATH9K_NUM_TX_QUEUES, align 4
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %298, label %317

298:                                              ; preds = %294
  %299 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %300 = load i32, i32* %12, align 4
  %301 = call i64 @ATH_TXQ_SETUP(%struct.ath_softc* %299, i32 %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %313

303:                                              ; preds = %298
  %304 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %305 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %306 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %12, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = call i32 @ath_tx_cleanupq(%struct.ath_softc* %304, i32* %311)
  br label %313

313:                                              ; preds = %303, %298
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %12, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %12, align 4
  br label %294

317:                                              ; preds = %294
  br label %318

318:                                              ; preds = %317, %256
  %319 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %320 = call i32 @ath9k_hw_deinit(%struct.ath_hw* %319)
  br label %321

321:                                              ; preds = %318, %233
  %322 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %323 = call i32 @ath9k_eeprom_release(%struct.ath_softc* %322)
  %324 = load i32, i32* %11, align 4
  store i32 %324, i32* %4, align 4
  br label %325

325:                                              ; preds = %321, %292, %225, %26
  %326 = load i32, i32* %4, align 4
  ret i32 %326
}

declare dso_local %struct.ath_hw* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dfs_pattern_detector_init(%struct.ath_hw*, i32) #1

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @ath_read_cachesize(%struct.ath_common*, i32*) #1

declare dso_local i32 @ath9k_eeprom_request(%struct.ath_softc*, i64) #1

declare dso_local i32 @ath9k_hw_init(%struct.ath_hw*) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @ath9k_init_queues(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_init_btcoex(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_init_channels_rates(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_cmn_init_crypto(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_init_misc(%struct.ath_softc*) #1

declare dso_local i32 @ath_fill_led_pin(%struct.ath_softc*) #1

declare dso_local i64 @ATH_TXQ_SETUP(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath_tx_cleanupq(%struct.ath_softc*, i32*) #1

declare dso_local i32 @ath9k_hw_deinit(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_eeprom_release(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
