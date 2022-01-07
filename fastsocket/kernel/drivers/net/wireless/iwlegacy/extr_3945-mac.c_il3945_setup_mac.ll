; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_setup_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_setup_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.ieee80211_hw*, %struct.TYPE_4__* }
%struct.ieee80211_hw = type { i8*, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"iwl-3945-rs\00", align 1
@IEEE80211_HW_SIGNAL_DBM = common dso_local global i32 0, align 4
@IEEE80211_HW_SPECTRUM_MGMT = common dso_local global i32 0, align 4
@IEEE80211_HW_SUPPORTS_PS = common dso_local global i32 0, align 4
@IEEE80211_HW_SUPPORTS_DYNAMIC_PS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@WIPHY_FLAG_CUSTOM_REGULATORY = common dso_local global i32 0, align 4
@WIPHY_FLAG_DISABLE_BEACON_HINTS = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@WIPHY_FLAG_PS_ON_BY_DEFAULT = common dso_local global i32 0, align 4
@PROBE_OPTION_MAX_3945 = common dso_local global i32 0, align 4
@IL3945_MAX_PROBE_REQUEST = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to register hw (error %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il3945_setup_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_setup_mac(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %6 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %7 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %6, i32 0, i32 1
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  store %struct.ieee80211_hw* %8, %struct.ieee80211_hw** %5, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 1
  store i32 4, i32* %12, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 2
  store i32 4, i32* %14, align 4
  %15 = load i32, i32* @IEEE80211_HW_SIGNAL_DBM, align 4
  %16 = load i32, i32* @IEEE80211_HW_SPECTRUM_MGMT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @IEEE80211_HW_SUPPORTS_PS, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @IEEE80211_HW_SUPPORTS_DYNAMIC_PS, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = or i32 %25, %27
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %29, i32 0, i32 5
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 8
  %33 = load i32, i32* @WIPHY_FLAG_CUSTOM_REGULATORY, align 4
  %34 = load i32, i32* @WIPHY_FLAG_DISABLE_BEACON_HINTS, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %38, i32 0, i32 5
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %37
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @WIPHY_FLAG_PS_ON_BY_DEFAULT, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %46, i32 0, i32 5
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %45
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @PROBE_OPTION_MAX_3945, align 4
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %54 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %53, i32 0, i32 5
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  store i32 %52, i32* %56, align 8
  %57 = load i32, i32* @IL3945_MAX_PROBE_REQUEST, align 4
  %58 = sub nsw i32 %57, 24
  %59 = sub nsw i32 %58, 2
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %60, i32 0, i32 5
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  store i32 %59, i32* %63, align 8
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %65 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %64, i32 0, i32 4
  store i32 4, i32* %65, align 4
  %66 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %67 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %1
  %75 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %76 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %78
  %80 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %81 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %80, i32 0, i32 1
  %82 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %81, align 8
  %83 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %82, i32 0, i32 5
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %85, align 8
  %87 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %86, i64 %87
  store %struct.TYPE_4__* %79, %struct.TYPE_4__** %88, align 8
  br label %89

89:                                               ; preds = %74, %1
  %90 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %91 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %89
  %99 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %100 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %99, i32 0, i32 2
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %102
  %104 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %105 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %104, i32 0, i32 1
  %106 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %105, align 8
  %107 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %106, i32 0, i32 5
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %109, align 8
  %111 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %110, i64 %111
  store %struct.TYPE_4__* %103, %struct.TYPE_4__** %112, align 8
  br label %113

113:                                              ; preds = %98, %89
  %114 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %115 = call i32 @il_leds_init(%struct.il_priv* %114)
  %116 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %117 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %116, i32 0, i32 1
  %118 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %117, align 8
  %119 = call i32 @ieee80211_register_hw(%struct.ieee80211_hw* %118)
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %113
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @IL_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %4, align 4
  store i32 %125, i32* %2, align 4
  br label %129

126:                                              ; preds = %113
  %127 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %128 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %126, %122
  %130 = load i32, i32* %2, align 4
  ret i32 %130
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
