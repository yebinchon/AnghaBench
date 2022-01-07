; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_config_lna_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_config_lna_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i16, i32 }
%struct.rt2x00lib_conf = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@CAPABILITY_EXTERNAL_LNA_BG = common dso_local global i32 0, align 4
@EEPROM_RSSI_OFFSET_BG = common dso_local global i32 0, align 4
@EEPROM_RSSI_OFFSET_BG_1 = common dso_local global i32 0, align 4
@CAPABILITY_EXTERNAL_LNA_A = common dso_local global i32 0, align 4
@EEPROM_RSSI_OFFSET_A = common dso_local global i32 0, align 4
@EEPROM_RSSI_OFFSET_A_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rt2x00lib_conf*)* @rt61pci_config_lna_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_config_lna_gain(%struct.rt2x00_dev* %0, %struct.rt2x00lib_conf* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.rt2x00lib_conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.rt2x00lib_conf* %1, %struct.rt2x00lib_conf** %4, align 8
  store i16 0, i16* %6, align 2
  %7 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %4, align 8
  %8 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  %18 = load i32, i32* @CAPABILITY_EXTERNAL_LNA_BG, align 4
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %20 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %19, i32 0, i32 1
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i16, i16* %6, align 2
  %25 = sext i16 %24 to i32
  %26 = add nsw i32 %25, 14
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %6, align 2
  br label %28

28:                                               ; preds = %23, %17
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %30 = load i32, i32* @EEPROM_RSSI_OFFSET_BG, align 4
  %31 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %29, i32 %30, i32* %5)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_1, align 4
  %34 = call i64 @rt2x00_get_field16(i32 %32, i32 %33)
  %35 = load i16, i16* %6, align 2
  %36 = sext i16 %35 to i64
  %37 = sub nsw i64 %36, %34
  %38 = trunc i64 %37 to i16
  store i16 %38, i16* %6, align 2
  br label %61

39:                                               ; preds = %2
  %40 = load i32, i32* @CAPABILITY_EXTERNAL_LNA_A, align 4
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %42 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %41, i32 0, i32 1
  %43 = call i64 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i16, i16* %6, align 2
  %47 = sext i16 %46 to i32
  %48 = add nsw i32 %47, 14
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %6, align 2
  br label %50

50:                                               ; preds = %45, %39
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %52 = load i32, i32* @EEPROM_RSSI_OFFSET_A, align 4
  %53 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %51, i32 %52, i32* %5)
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @EEPROM_RSSI_OFFSET_A_1, align 4
  %56 = call i64 @rt2x00_get_field16(i32 %54, i32 %55)
  %57 = load i16, i16* %6, align 2
  %58 = sext i16 %57 to i64
  %59 = sub nsw i64 %58, %56
  %60 = trunc i64 %59 to i16
  store i16 %60, i16* %6, align 2
  br label %61

61:                                               ; preds = %50, %28
  %62 = load i16, i16* %6, align 2
  %63 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %64 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %63, i32 0, i32 0
  store i16 %62, i16* %64, align 4
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i64 @rt2x00_get_field16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
