; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_init_ieee80211.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_init_ieee80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32, i32** }

@WL1251_TKIP_IV_SPACE = common dso_local global i64 0, align 8
@IEEE80211_HW_SIGNAL_DBM = common dso_local global i32 0, align 4
@IEEE80211_HW_SUPPORTS_PS = common dso_local global i32 0, align 4
@IEEE80211_HW_SUPPORTS_UAPSD = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@wl1251_band_2ghz = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"initialized\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_init_ieee80211(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  %3 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  %4 = load i64, i64* @WL1251_TKIP_IV_SPACE, align 8
  %5 = add i64 4, %4
  %6 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %7 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  store i64 %5, i64* %9, align 8
  %10 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %11 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 10000, i32* %13, align 8
  %14 = load i32, i32* @IEEE80211_HW_SIGNAL_DBM, align 4
  %15 = load i32, i32* @IEEE80211_HW_SUPPORTS_PS, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @IEEE80211_HW_SUPPORTS_UAPSD, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %20 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %24 = call i32 @BIT(i32 %23)
  %25 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = or i32 %24, %26
  %28 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %29 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %27, i32* %33, align 8
  %34 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %35 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %41 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32**, i32*** %45, align 8
  %47 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  store i32* @wl1251_band_2ghz, i32** %48, align 8
  %49 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %50 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i32 4, i32* %52, align 8
  %53 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %54 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %1
  %58 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %59 = call i32 @wl1251_read_eeprom_mac(%struct.wl1251* %58)
  br label %60

60:                                               ; preds = %57, %1
  %61 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %62 = call i32 @wl1251_register_hw(%struct.wl1251* %61)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %70

66:                                               ; preds = %60
  %67 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %68 = call i32 @wl1251_debugfs_init(%struct.wl1251* %67)
  %69 = call i32 @wl1251_notice(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %65
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wl1251_read_eeprom_mac(%struct.wl1251*) #1

declare dso_local i32 @wl1251_register_hw(%struct.wl1251*) #1

declare dso_local i32 @wl1251_debugfs_init(%struct.wl1251*) #1

declare dso_local i32 @wl1251_notice(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
