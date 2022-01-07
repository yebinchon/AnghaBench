; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ath9k_hw_ar9300_set_board_values.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ath9k_hw_ar9300_set_board_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ath9k_hw_ar9300_set_board_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_ar9300_set_board_values(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %6 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %7 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @ar9003_hw_xpa_timing_control_apply(%struct.ath_hw* %8, i32 %9)
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @ar9003_hw_xpa_bias_level_apply(%struct.ath_hw* %11, i32 %12)
  %14 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ar9003_hw_ant_ctrl_apply(%struct.ath_hw* %14, i32 %15)
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = call i32 @ar9003_hw_drive_strength_apply(%struct.ath_hw* %17)
  %19 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ar9003_hw_xlna_bias_strength_apply(%struct.ath_hw* %19, i32 %20)
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %24 = call i32 @ar9003_hw_atten_apply(%struct.ath_hw* %22, %struct.ath9k_channel* %23)
  %25 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %26 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %27 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ar9003_hw_quick_drop_apply(%struct.ath_hw* %25, i32 %28)
  %30 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %31 = call i32 @AR_SREV_9330(%struct.ath_hw* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %2
  %34 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %35 = call i32 @AR_SREV_9340(%struct.ath_hw* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %39 = call i32 @AR_SREV_9550(%struct.ath_hw* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %43 = call i32 @ar9003_hw_internal_regulator_apply(%struct.ath_hw* %42)
  br label %44

44:                                               ; preds = %41, %37, %33, %2
  %45 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %46 = call i32 @ar9003_hw_apply_tuning_caps(%struct.ath_hw* %45)
  %47 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @ar9003_hw_txend_to_xpa_off_apply(%struct.ath_hw* %47, i32 %48)
  %50 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %51 = call i32 @ar9003_hw_thermometer_apply(%struct.ath_hw* %50)
  %52 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %53 = call i32 @ar9003_hw_thermo_cal_apply(%struct.ath_hw* %52)
  ret void
}

declare dso_local i32 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @ar9003_hw_xpa_timing_control_apply(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_hw_xpa_bias_level_apply(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_hw_ant_ctrl_apply(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_hw_drive_strength_apply(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_xlna_bias_strength_apply(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_hw_atten_apply(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ar9003_hw_quick_drop_apply(%struct.ath_hw*, i32) #1

declare dso_local i32 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_internal_regulator_apply(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_apply_tuning_caps(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_txend_to_xpa_off_apply(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_hw_thermometer_apply(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_thermo_cal_apply(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
