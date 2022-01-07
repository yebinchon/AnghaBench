; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_get_target_power_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_get_target_power_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { i32 }

@ar9300RateSize = common dso_local global i32 0, align 4
@EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"TPC[%02d] 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*, i32*)* @ar9003_hw_get_target_power_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_get_target_power_eeprom(%struct.ath_hw* %0, %struct.ath9k_channel* %1, i32* %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath_common*, align 8
  %10 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %12 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %11)
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %14 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %13)
  store %struct.ath_common* %14, %struct.ath_common** %9, align 8
  %15 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %16 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @ar9003_hw_get_cck_target_powers(%struct.ath_hw* %21, i32 %22, i32* %23)
  br label %25

25:                                               ; preds = %20, %3
  %26 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ar9003_hw_get_legacy_target_powers(%struct.ath_hw* %26, i32 %27, i32* %28, i32 %29)
  %31 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @ar9003_hw_get_ht20_target_powers(%struct.ath_hw* %31, i32 %32, i32* %33, i32 %34)
  %36 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %37 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %25
  %40 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ar9003_hw_get_ht40_target_powers(%struct.ath_hw* %40, i32 %41, i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %25
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %60, %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @ar9300RateSize, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %52 = load i32, i32* @EEPROM, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ath_dbg(%struct.ath_common* %51, i32 %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %58)
  br label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %46

63:                                               ; preds = %46
  ret void
}

declare dso_local i32 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_get_cck_target_powers(%struct.ath_hw*, i32, i32*) #1

declare dso_local i32 @ar9003_hw_get_legacy_target_powers(%struct.ath_hw*, i32, i32*, i32) #1

declare dso_local i32 @ar9003_hw_get_ht20_target_powers(%struct.ath_hw*, i32, i32*, i32) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i32 @ar9003_hw_get_ht40_target_powers(%struct.ath_hw*, i32, i32*, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
