; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_normal_mode_setup_5xxx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_normal_mode_setup_5xxx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@EEPROM_NIC_CONF0 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0_RXPATH = common dso_local global i32 0, align 4
@BBP138_RX_ADC1 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0_TXPATH = common dso_local global i32 0, align 4
@BBP138_TX_DAC1 = common dso_local global i32 0, align 4
@RFCSR38_RX_LO1_EN = common dso_local global i32 0, align 4
@RFCSR39_RX_LO2_EN = common dso_local global i32 0, align 4
@RFCSR30_RX_VCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_normal_mode_setup_5xxx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_normal_mode_setup_5xxx(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %6 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %5, i32 138, i32* %3)
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %8 = load i32, i32* @EEPROM_NIC_CONF0, align 4
  %9 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %7, i32 %8, i32* %4)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EEPROM_NIC_CONF0_RXPATH, align 4
  %12 = call i32 @rt2x00_get_field16(i32 %10, i32 %11)
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @BBP138_RX_ADC1, align 4
  %16 = call i32 @rt2x00_set_field8(i32* %3, i32 %15, i32 0)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @EEPROM_NIC_CONF0_TXPATH, align 4
  %20 = call i32 @rt2x00_get_field16(i32 %18, i32 %19)
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @BBP138_TX_DAC1, align 4
  %24 = call i32 @rt2x00_set_field8(i32* %3, i32 %23, i32 1)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %26, i32 138, i32 %27)
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %30 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %29, i32 38, i32* %3)
  %31 = load i32, i32* @RFCSR38_RX_LO1_EN, align 4
  %32 = call i32 @rt2x00_set_field8(i32* %3, i32 %31, i32 0)
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %33, i32 38, i32 %34)
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %37 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %36, i32 39, i32* %3)
  %38 = load i32, i32* @RFCSR39_RX_LO2_EN, align 4
  %39 = call i32 @rt2x00_set_field8(i32* %3, i32 %38, i32 0)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %40, i32 39, i32 %41)
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %44 = call i32 @rt2800_bbp4_mac_if_ctrl(%struct.rt2x00_dev* %43)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %46 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %45, i32 30, i32* %3)
  %47 = load i32, i32* @RFCSR30_RX_VCM, align 4
  %48 = call i32 @rt2x00_set_field8(i32* %3, i32 %47, i32 2)
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %49, i32 30, i32 %50)
  ret void
}

declare dso_local i32 @rt2800_bbp_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_bbp4_mac_if_ctrl(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
