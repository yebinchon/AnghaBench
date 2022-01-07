; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_init_ah.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_init_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, i32, i32, i64, i64, %struct.TYPE_4__, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.ieee80211_hw* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.ieee80211_hw = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32* }
%struct.ath_bus_ops = type { i32 }
%struct.ath_common = type { i32, i32, i32, %struct.ath5k_hw*, %struct.ieee80211_hw*, %struct.ath5k_hw*, %struct.ath_bus_ops*, i32* }

@IEEE80211_HW_RX_INCLUDES_FCS = common dso_local global i32 0, align 4
@IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING = common dso_local global i32 0, align 4
@IEEE80211_HW_SIGNAL_DBM = common dso_local global i32 0, align 4
@IEEE80211_HW_MFP_CAPABLE = common dso_local global i32 0, align 4
@IEEE80211_HW_REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@if_comb = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@ATH_STAT_INVALID = common dso_local global i32 0, align 4
@ath5k_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ath\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"request_irq failed\0A\00", align 1
@ath5k_common_ops = common dso_local global i32 0, align 4
@AR5K_INIT_RETRY_SHORT = common dso_local global i32 0, align 4
@AR5K_INIT_RETRY_LONG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Atheros AR%s chip found (MAC: 0x%x, PHY: 0x%x)\0A\00", align 1
@AR5K_VERSION_MAC = common dso_local global i32 0, align 4
@AR5K_MODE_11A = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"RF%s 2GHz radio found (0x%x)\0A\00", align 1
@AR5K_VERSION_RAD = common dso_local global i32 0, align 4
@AR5K_MODE_11B = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"RF%s 5GHz radio found (0x%x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"RF%s multiband radio found (0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_init_ah(%struct.ath5k_hw* %0, %struct.ath_bus_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.ath_bus_ops*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ath_common*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.ath_bus_ops* %1, %struct.ath_bus_ops** %5, align 8
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %10, i32 0, i32 16
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %11, align 8
  store %struct.ieee80211_hw* %12, %struct.ieee80211_hw** %6, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %14 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %14, i32 0, i32 15
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw* %13, i32 %16)
  %18 = load i32, i32* @IEEE80211_HW_RX_INCLUDES_FCS, align 4
  %19 = load i32, i32* @IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IEEE80211_HW_SIGNAL_DBM, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @IEEE80211_HW_MFP_CAPABLE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @IEEE80211_HW_REPORTS_TX_ACK_STATUS, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = or i32 %30, %32
  %34 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %35 = call i32 @BIT(i32 %34)
  %36 = or i32 %33, %35
  %37 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = or i32 %36, %38
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %41 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %40, i32 0, i32 6
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 8
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %44, i32 0, i32 6
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 5
  store i32* @if_comb, i32** %47, align 8
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %49 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %48, i32 0, i32 6
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %54 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %53, i32 0, i32 6
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %52
  store i32 %58, i32* %56, align 8
  %59 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %60 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %59, i32 0, i32 6
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  store i32 3, i32* %62, align 8
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %64 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %63, i32 0, i32 6
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  store i32 3, i32* %66, align 4
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %68 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %67, i32 0, i32 1
  store i32 2, i32* %68, align 4
  %69 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %70 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %69, i32 0, i32 2
  store i32 5000, i32* %70, align 8
  %71 = load i32, i32* @ATH_STAT_INVALID, align 4
  %72 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %73 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @__set_bit(i32 %71, i32 %74)
  %76 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %77 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %78 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %77, i32 0, i32 14
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %80 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %79, i32 0, i32 0
  store i32 1000, i32* %80, align 8
  %81 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %82 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %81, i32 0, i32 13
  %83 = call i32 @mutex_init(i32* %82)
  %84 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %85 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %84, i32 0, i32 12
  %86 = call i32 @spin_lock_init(i32* %85)
  %87 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %88 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %87, i32 0, i32 11
  %89 = call i32 @spin_lock_init(i32* %88)
  %90 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %91 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %90, i32 0, i32 10
  %92 = call i32 @spin_lock_init(i32* %91)
  %93 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %94 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %93, i32 0, i32 9
  %95 = call i32 @spin_lock_init(i32* %94)
  %96 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %97 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ath5k_intr, align 4
  %100 = load i32, i32* @IRQF_SHARED, align 4
  %101 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %102 = call i32 @request_irq(i32 %98, i32 %99, i32 %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.ath5k_hw* %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %2
  %106 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %107 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %292

108:                                              ; preds = %2
  %109 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %110 = call %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw* %109)
  store %struct.ath_common* %110, %struct.ath_common** %7, align 8
  %111 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %112 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %111, i32 0, i32 7
  store i32* @ath5k_common_ops, i32** %112, align 8
  %113 = load %struct.ath_bus_ops*, %struct.ath_bus_ops** %5, align 8
  %114 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %115 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %114, i32 0, i32 6
  store %struct.ath_bus_ops* %113, %struct.ath_bus_ops** %115, align 8
  %116 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %117 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %118 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %117, i32 0, i32 5
  store %struct.ath5k_hw* %116, %struct.ath5k_hw** %118, align 8
  %119 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %120 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %121 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %120, i32 0, i32 4
  store %struct.ieee80211_hw* %119, %struct.ieee80211_hw** %121, align 8
  %122 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %123 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %124 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %123, i32 0, i32 3
  store %struct.ath5k_hw* %122, %struct.ath5k_hw** %124, align 8
  %125 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %126 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %125, i32 0, i32 0
  store i32 40, i32* %126, align 8
  %127 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %128 = call i32 @ath5k_read_cachesize(%struct.ath_common* %127, i32* %9)
  %129 = load i32, i32* %9, align 4
  %130 = shl i32 %129, 2
  %131 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %132 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %134 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %133, i32 0, i32 2
  %135 = call i32 @spin_lock_init(i32* %134)
  %136 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %137 = call i32 @ath5k_hw_init(%struct.ath5k_hw* %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %108
  br label %286

141:                                              ; preds = %108
  %142 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %143 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %141
  %148 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %149 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %148, i32 0, i32 3
  store i32 4, i32* %149, align 4
  %150 = load i32, i32* @AR5K_INIT_RETRY_SHORT, align 4
  %151 = load i32, i32* @AR5K_INIT_RETRY_LONG, align 4
  %152 = call i32 @max(i32 %150, i32 %151)
  %153 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %154 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %147, %141
  %156 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %157 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %156, i32 0, i32 4
  store i32 4, i32* %157, align 8
  %158 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %159 = call i32 @ath5k_init(%struct.ieee80211_hw* %158)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  br label %283

163:                                              ; preds = %155
  %164 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %165 = load i32, i32* @AR5K_VERSION_MAC, align 4
  %166 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %167 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %166, i32 0, i32 8
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @ath5k_chip_name(i32 %165, i64 %168)
  %170 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %171 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %170, i32 0, i32 8
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %174 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (%struct.ath5k_hw*, i8*, i32, i64, ...) @ATH5K_INFO(%struct.ath5k_hw* %164, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %169, i64 %172, i32 %175)
  %177 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %178 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %275, label %181

181:                                              ; preds = %163
  %182 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %183 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %242

186:                                              ; preds = %181
  %187 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %188 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %242, label %191

191:                                              ; preds = %186
  %192 = load i32, i32* @AR5K_MODE_11A, align 4
  %193 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %194 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %193, i32 0, i32 5
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @test_bit(i32 %192, i32 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %210, label %199

199:                                              ; preds = %191
  %200 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %201 = load i32, i32* @AR5K_VERSION_RAD, align 4
  %202 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %203 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @ath5k_chip_name(i32 %201, i64 %204)
  %206 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %207 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = call i32 (%struct.ath5k_hw*, i8*, i32, i64, ...) @ATH5K_INFO(%struct.ath5k_hw* %200, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %205, i64 %208)
  br label %241

210:                                              ; preds = %191
  %211 = load i32, i32* @AR5K_MODE_11B, align 4
  %212 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %213 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %212, i32 0, i32 5
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @test_bit(i32 %211, i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %229, label %218

218:                                              ; preds = %210
  %219 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %220 = load i32, i32* @AR5K_VERSION_RAD, align 4
  %221 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %222 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %221, i32 0, i32 4
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @ath5k_chip_name(i32 %220, i64 %223)
  %225 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %226 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %225, i32 0, i32 4
  %227 = load i64, i64* %226, align 8
  %228 = call i32 (%struct.ath5k_hw*, i8*, i32, i64, ...) @ATH5K_INFO(%struct.ath5k_hw* %219, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %224, i64 %227)
  br label %240

229:                                              ; preds = %210
  %230 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %231 = load i32, i32* @AR5K_VERSION_RAD, align 4
  %232 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %233 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %232, i32 0, i32 4
  %234 = load i64, i64* %233, align 8
  %235 = call i32 @ath5k_chip_name(i32 %231, i64 %234)
  %236 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %237 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %236, i32 0, i32 4
  %238 = load i64, i64* %237, align 8
  %239 = call i32 (%struct.ath5k_hw*, i8*, i32, i64, ...) @ATH5K_INFO(%struct.ath5k_hw* %230, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %235, i64 %238)
  br label %240

240:                                              ; preds = %229, %218
  br label %241

241:                                              ; preds = %240, %199
  br label %274

242:                                              ; preds = %186, %181
  %243 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %244 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %243, i32 0, i32 4
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %273

247:                                              ; preds = %242
  %248 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %249 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %248, i32 0, i32 3
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %273

252:                                              ; preds = %247
  %253 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %254 = load i32, i32* @AR5K_VERSION_RAD, align 4
  %255 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %256 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %255, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @ath5k_chip_name(i32 %254, i64 %257)
  %259 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %260 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %259, i32 0, i32 4
  %261 = load i64, i64* %260, align 8
  %262 = call i32 (%struct.ath5k_hw*, i8*, i32, i64, ...) @ATH5K_INFO(%struct.ath5k_hw* %253, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %258, i64 %261)
  %263 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %264 = load i32, i32* @AR5K_VERSION_RAD, align 4
  %265 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %266 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = call i32 @ath5k_chip_name(i32 %264, i64 %267)
  %269 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %270 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = call i32 (%struct.ath5k_hw*, i8*, i32, i64, ...) @ATH5K_INFO(%struct.ath5k_hw* %263, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %268, i64 %271)
  br label %273

273:                                              ; preds = %252, %247, %242
  br label %274

274:                                              ; preds = %273, %241
  br label %275

275:                                              ; preds = %274, %163
  %276 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %277 = call i32 @ath5k_debug_init_device(%struct.ath5k_hw* %276)
  %278 = load i32, i32* @ATH_STAT_INVALID, align 4
  %279 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %280 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @__clear_bit(i32 %278, i32 %281)
  store i32 0, i32* %3, align 4
  br label %294

283:                                              ; preds = %162
  %284 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %285 = call i32 @ath5k_hw_deinit(%struct.ath5k_hw* %284)
  br label %286

286:                                              ; preds = %283, %140
  %287 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %288 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %291 = call i32 @free_irq(i32 %289, %struct.ath5k_hw* %290)
  br label %292

292:                                              ; preds = %286, %105
  %293 = load i32, i32* %8, align 4
  store i32 %293, i32* %3, align 4
  br label %294

294:                                              ; preds = %292, %275
  %295 = load i32, i32* %3, align 4
  ret i32 %295
}

declare dso_local i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.ath5k_hw*) #1

declare dso_local i32 @ATH5K_ERR(%struct.ath5k_hw*, i8*) #1

declare dso_local %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_read_cachesize(%struct.ath_common*, i32*) #1

declare dso_local i32 @ath5k_hw_init(%struct.ath5k_hw*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @ath5k_init(%struct.ieee80211_hw*) #1

declare dso_local i32 @ATH5K_INFO(%struct.ath5k_hw*, i8*, i32, i64, ...) #1

declare dso_local i32 @ath5k_chip_name(i32, i64) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ath5k_debug_init_device(%struct.ath5k_hw*) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @ath5k_hw_deinit(%struct.ath5k_hw*) #1

declare dso_local i32 @free_irq(i32, %struct.ath5k_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
