; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_spectral_scan_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_spectral_scan_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@AR_PHY_SPECTRAL_SCAN = common dso_local global i32 0, align 4
@AR_PHY_SPECTRAL_SCAN_ACTIVE = common dso_local global i32 0, align 4
@AH_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"spectral scan wait failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_hw_spectral_scan_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_spectral_scan_wait(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %4)
  store %struct.ath_common* %5, %struct.ath_common** %3, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %7 = load i32, i32* @AR_PHY_SPECTRAL_SCAN, align 4
  %8 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_ACTIVE, align 4
  %9 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %10 = call i32 @ath9k_hw_wait(%struct.ath_hw* %6, i32 %7, i32 %8, i32 0, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %14 = call i32 @ath_err(%struct.ath_common* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %1
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_wait(%struct.ath_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
