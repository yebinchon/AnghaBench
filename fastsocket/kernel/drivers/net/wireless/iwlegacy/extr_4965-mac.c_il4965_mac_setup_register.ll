; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_mac_setup_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_mac_setup_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.ieee80211_hw*, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.ieee80211_hw = type { i8*, i32, i32, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_6__**, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"iwl-4965-rs\00", align 1
@IEEE80211_HW_SIGNAL_DBM = common dso_local global i32 0, align 4
@IEEE80211_HW_AMPDU_AGGREGATION = common dso_local global i32 0, align 4
@IEEE80211_HW_NEED_DTIM_BEFORE_ASSOC = common dso_local global i32 0, align 4
@IEEE80211_HW_SPECTRUM_MGMT = common dso_local global i32 0, align 4
@IEEE80211_HW_SUPPORTS_PS = common dso_local global i32 0, align 4
@IEEE80211_HW_SUPPORTS_DYNAMIC_PS = common dso_local global i32 0, align 4
@IL_SKU_N = common dso_local global i32 0, align 4
@IEEE80211_HW_SUPPORTS_DYNAMIC_SMPS = common dso_local global i32 0, align 4
@IEEE80211_HW_SUPPORTS_STATIC_SMPS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@WIPHY_FLAG_CUSTOM_REGULATORY = common dso_local global i32 0, align 4
@WIPHY_FLAG_DISABLE_BEACON_HINTS = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@WIPHY_FLAG_PS_ON_BY_DEFAULT = common dso_local global i32 0, align 4
@PROBE_OPTION_MAX = common dso_local global i32 0, align 4
@IL_CONN_MAX_LISTEN_INTERVAL = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to register hw (error %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, i32)* @il4965_mac_setup_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_mac_setup_register(%struct.il_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %9 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %8, i32 0, i32 1
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  store %struct.ieee80211_hw* %10, %struct.ieee80211_hw** %7, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = load i32, i32* @IEEE80211_HW_SIGNAL_DBM, align 4
  %14 = load i32, i32* @IEEE80211_HW_AMPDU_AGGREGATION, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @IEEE80211_HW_NEED_DTIM_BEFORE_ASSOC, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @IEEE80211_HW_SPECTRUM_MGMT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @IEEE80211_HW_SUPPORTS_PS, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @IEEE80211_HW_SUPPORTS_DYNAMIC_PS, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %27 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IL_SKU_N, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load i32, i32* @IEEE80211_HW_SUPPORTS_DYNAMIC_SMPS, align 4
  %36 = load i32, i32* @IEEE80211_HW_SUPPORTS_STATIC_SMPS, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %34, %2
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %44 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %43, i32 0, i32 2
  store i32 4, i32* %44, align 4
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %46 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %45, i32 0, i32 3
  store i32 4, i32* %46, align 8
  %47 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %48 = call i32 @BIT(i32 %47)
  %49 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %50 = call i32 @BIT(i32 %49)
  %51 = or i32 %48, %50
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %53 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %52, i32 0, i32 5
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 8
  %56 = load i32, i32* @WIPHY_FLAG_CUSTOM_REGULATORY, align 4
  %57 = load i32, i32* @WIPHY_FLAG_DISABLE_BEACON_HINTS, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %61, i32 0, i32 5
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %60
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* @WIPHY_FLAG_PS_ON_BY_DEFAULT, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %70 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %69, i32 0, i32 5
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %68
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @PROBE_OPTION_MAX, align 4
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %77 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %76, i32 0, i32 5
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 4
  store i32 %75, i32* %79, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sub nsw i32 %80, 24
  %82 = sub nsw i32 %81, 2
  %83 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %84 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %83, i32 0, i32 5
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  store i32 %82, i32* %86, align 8
  %87 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %88 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %87, i32 0, i32 4
  store i32 4, i32* %88, align 4
  %89 = load i32, i32* @IL_CONN_MAX_LISTEN_INTERVAL, align 4
  %90 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %91 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 8
  %92 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %93 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %92, i32 0, i32 2
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %42
  %101 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %102 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %101, i32 0, i32 2
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %104
  %106 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %107 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %106, i32 0, i32 1
  %108 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %107, align 8
  %109 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %108, i32 0, i32 5
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %111, align 8
  %113 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %112, i64 %113
  store %struct.TYPE_6__* %105, %struct.TYPE_6__** %114, align 8
  br label %115

115:                                              ; preds = %100, %42
  %116 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %117 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %116, i32 0, i32 2
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %115
  %125 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %126 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %125, i32 0, i32 2
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %128
  %130 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %131 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %130, i32 0, i32 1
  %132 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %131, align 8
  %133 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %132, i32 0, i32 5
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %135, align 8
  %137 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %136, i64 %137
  store %struct.TYPE_6__* %129, %struct.TYPE_6__** %138, align 8
  br label %139

139:                                              ; preds = %124, %115
  %140 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %141 = call i32 @il_leds_init(%struct.il_priv* %140)
  %142 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %143 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %142, i32 0, i32 1
  %144 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %143, align 8
  %145 = call i32 @ieee80211_register_hw(%struct.ieee80211_hw* %144)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %139
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @IL_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %3, align 4
  br label %155

152:                                              ; preds = %139
  %153 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %154 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %153, i32 0, i32 0
  store i32 1, i32* %154, align 8
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %152, %148
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @il_leds_init(%struct.il_priv*) #1

declare dso_local i32 @ieee80211_register_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @IL_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
