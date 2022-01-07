; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }

@AR5K_EEPROM_MODE_11A = common dso_local global i64 0, align 8
@AR5K_EEPROM_MODE_11G = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_eeprom_detach(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  %3 = alloca i64, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %4 = load i64, i64* @AR5K_EEPROM_MODE_11A, align 8
  store i64 %4, i64* %3, align 8
  br label %5

5:                                                ; preds = %13, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @AR5K_EEPROM_MODE_11G, align 8
  %8 = icmp sle i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @ath5k_eeprom_free_pcal_info(%struct.ath5k_hw* %10, i64 %11)
  br label %13

13:                                               ; preds = %9
  %14 = load i64, i64* %3, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %3, align 8
  br label %5

16:                                               ; preds = %5
  ret void
}

declare dso_local i32 @ath5k_eeprom_free_pcal_info(%struct.ath5k_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
