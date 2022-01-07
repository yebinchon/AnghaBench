; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_lna_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_lna_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i16 }
%struct.rt2x00lib_conf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EEPROM_LNA = common dso_local global i32 0, align 4
@EEPROM_LNA_BG = common dso_local global i32 0, align 4
@EEPROM_LNA_A0 = common dso_local global i32 0, align 4
@EEPROM_RSSI_BG2 = common dso_local global i32 0, align 4
@EEPROM_RSSI_BG2_LNA_A1 = common dso_local global i32 0, align 4
@EEPROM_RSSI_A2 = common dso_local global i32 0, align 4
@EEPROM_RSSI_A2_LNA_A2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rt2x00lib_conf*)* @rt2800_config_lna_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_lna_gain(%struct.rt2x00_dev* %0, %struct.rt2x00lib_conf* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.rt2x00lib_conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.rt2x00lib_conf* %1, %struct.rt2x00lib_conf** %4, align 8
  %7 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %4, align 8
  %8 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sle i32 %10, 14
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %14 = load i32, i32* @EEPROM_LNA, align 4
  %15 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %13, i32 %14, i32* %5)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @EEPROM_LNA_BG, align 4
  %18 = call signext i16 @rt2x00_get_field16(i32 %16, i32 %17)
  store i16 %18, i16* %6, align 2
  br label %54

19:                                               ; preds = %2
  %20 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %4, align 8
  %21 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %23, 64
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %27 = load i32, i32* @EEPROM_LNA, align 4
  %28 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %26, i32 %27, i32* %5)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @EEPROM_LNA_A0, align 4
  %31 = call signext i16 @rt2x00_get_field16(i32 %29, i32 %30)
  store i16 %31, i16* %6, align 2
  br label %53

32:                                               ; preds = %19
  %33 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %4, align 8
  %34 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %36, 128
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %40 = load i32, i32* @EEPROM_RSSI_BG2, align 4
  %41 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %39, i32 %40, i32* %5)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @EEPROM_RSSI_BG2_LNA_A1, align 4
  %44 = call signext i16 @rt2x00_get_field16(i32 %42, i32 %43)
  store i16 %44, i16* %6, align 2
  br label %52

45:                                               ; preds = %32
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %47 = load i32, i32* @EEPROM_RSSI_A2, align 4
  %48 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %46, i32 %47, i32* %5)
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @EEPROM_RSSI_A2_LNA_A2, align 4
  %51 = call signext i16 @rt2x00_get_field16(i32 %49, i32 %50)
  store i16 %51, i16* %6, align 2
  br label %52

52:                                               ; preds = %45, %38
  br label %53

53:                                               ; preds = %52, %25
  br label %54

54:                                               ; preds = %53, %12
  %55 = load i16, i16* %6, align 2
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %57 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %56, i32 0, i32 0
  store i16 %55, i16* %57, align 2
  ret void
}

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local signext i16 @rt2x00_get_field16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
