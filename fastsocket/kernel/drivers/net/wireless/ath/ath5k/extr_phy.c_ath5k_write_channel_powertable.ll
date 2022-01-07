; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_write_channel_powertable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_write_channel_powertable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }

@AR5K_PWRTABLE_PWR_TO_PDADC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, i64, i64)* @ath5k_write_channel_powertable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_write_channel_powertable(%struct.ath5k_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AR5K_PWRTABLE_PWR_TO_PDADC, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @ath5k_write_pwr_to_pdadc_table(%struct.ath5k_hw* %11, i64 %12)
  br label %17

14:                                               ; preds = %3
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %16 = call i32 @ath5k_write_pcdac_table(%struct.ath5k_hw* %15)
  br label %17

17:                                               ; preds = %14, %10
  ret void
}

declare dso_local i32 @ath5k_write_pwr_to_pdadc_table(%struct.ath5k_hw*, i64) #1

declare dso_local i32 @ath5k_write_pcdac_table(%struct.ath5k_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
