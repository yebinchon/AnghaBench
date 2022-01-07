; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_init_drv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_init_drv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32*, %struct.TYPE_2__, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.il3945_eeprom = type { i64 }

@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@IL_MISSED_BEACON_THRESHOLD_DEF = common dso_local global i32 0, align 4
@IL_DELAY_NEXT_FORCE_FW_RELOAD = common dso_local global i32 0, align 4
@EEPROM_3945_EEPROM_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Unsupported EEPROM version: 0x%04X\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"initializing regulatory failed: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"initializing geos failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il3945_init_drv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_init_drv(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.il3945_eeprom*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %6 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %7 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %6, i32 0, i32 12
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.il3945_eeprom*
  store %struct.il3945_eeprom* %9, %struct.il3945_eeprom** %5, align 8
  %10 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %13 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %12, i32 0, i32 11
  store i32* null, i32** %13, align 8
  %14 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %15 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %14, i32 0, i32 10
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %18 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %17, i32 0, i32 9
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %21 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %20, i32 0, i32 8
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %24 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %23, i32 0, i32 7
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %27 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %26, i32 0, i32 6
  store i32* null, i32** %27, align 8
  %28 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %29 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  %31 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %32 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %34 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %35 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @IL_MISSED_BEACON_THRESHOLD_DEF, align 4
  %37 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %38 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @IL_DELAY_NEXT_FORCE_FW_RELOAD, align 4
  %40 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %41 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.il3945_eeprom*, %struct.il3945_eeprom** %5, align 8
  %44 = getelementptr inbounds %struct.il3945_eeprom, %struct.il3945_eeprom* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @EEPROM_3945_EEPROM_VERSION, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %1
  %49 = load %struct.il3945_eeprom*, %struct.il3945_eeprom** %5, align 8
  %50 = getelementptr inbounds %struct.il3945_eeprom, %struct.il3945_eeprom* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @IL_WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %87

55:                                               ; preds = %1
  %56 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %57 = call i32 @il_init_channel_map(%struct.il_priv* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @IL_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %87

63:                                               ; preds = %55
  %64 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %65 = call i64 @il3945_txpower_set_from_eeprom(%struct.il_priv* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %84

70:                                               ; preds = %63
  %71 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %72 = call i32 @il_init_geos(%struct.il_priv* %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @IL_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %84

78:                                               ; preds = %70
  %79 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %80 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %81 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @il3945_init_hw_rates(%struct.il_priv* %79, i32* %82)
  store i32 0, i32* %2, align 4
  br label %89

84:                                               ; preds = %75, %67
  %85 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %86 = call i32 @il_free_channel_map(%struct.il_priv* %85)
  br label %87

87:                                               ; preds = %84, %60, %48
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %78
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @IL_WARN(i8*, i64) #1

declare dso_local i32 @il_init_channel_map(%struct.il_priv*) #1

declare dso_local i32 @IL_ERR(i8*, i32) #1

declare dso_local i64 @il3945_txpower_set_from_eeprom(%struct.il_priv*) #1

declare dso_local i32 @il_init_geos(%struct.il_priv*) #1

declare dso_local i32 @il3945_init_hw_rates(%struct.il_priv*, i32*) #1

declare dso_local i32 @il_free_channel_map(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
