; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_init_11bg_2413.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_init_11bg_2413.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info* }
%struct.ath5k_chan_pcal_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AR5K_EEPROM_N_2GHZ_CHAN_2413 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, i32, i32)* @ath5k_eeprom_init_11bg_2413 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_eeprom_init_11bg_2413(%struct.ath5k_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath5k_eeprom_info*, align 8
  %9 = alloca %struct.ath5k_chan_pcal_info*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %12, %struct.ath5k_eeprom_info** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %22 [
    i32 129, label %14
    i32 128, label %18
  ]

14:                                               ; preds = %3
  %15 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %8, align 8
  %16 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %15, i32 0, i32 1
  %17 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %16, align 8
  store %struct.ath5k_chan_pcal_info* %17, %struct.ath5k_chan_pcal_info** %9, align 8
  br label %25

18:                                               ; preds = %3
  %19 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %8, align 8
  %20 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %19, i32 0, i32 0
  %21 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %20, align 8
  store %struct.ath5k_chan_pcal_info* %21, %struct.ath5k_chan_pcal_info** %9, align 8
  br label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %31

25:                                               ; preds = %18, %14
  %26 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %27 = load i32, i32* @AR5K_EEPROM_N_2GHZ_CHAN_2413, align 4
  %28 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ath5k_eeprom_read_freq_list(%struct.ath5k_hw* %26, i32* %7, i32 %27, %struct.ath5k_chan_pcal_info* %28, i32 %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %25, %22
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @ath5k_eeprom_read_freq_list(%struct.ath5k_hw*, i32*, i32, %struct.ath5k_chan_pcal_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
