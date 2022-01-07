; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_link.c_ath_hw_pll_rx_hang_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_link.c_ath_hw_pll_rx_hang_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_common = type { i32 }

@ath_hw_pll_rx_hang_check.count = internal global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"PLL WAR, resetting the chip\0A\00", align 1
@RESET_TYPE_PLL_HANG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, i32)* @ath_hw_pll_rx_hang_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_hw_pll_rx_hang_check(%struct.ath_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_common*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %8 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ath_common* @ath9k_hw_common(i32 %9)
  store %struct.ath_common* %10, %struct.ath_common** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 262144
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load i32, i32* @ath_hw_pll_rx_hang_check.count, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @ath_hw_pll_rx_hang_check.count, align 4
  %16 = load i32, i32* @ath_hw_pll_rx_hang_check.count, align 4
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %20 = load i32, i32* @RESET, align 4
  %21 = call i32 @ath_dbg(%struct.ath_common* %19, i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %23 = load i32, i32* @RESET_TYPE_PLL_HANG, align 4
  %24 = call i32 @ath9k_queue_reset(%struct.ath_softc* %22, i32 %23)
  store i32 0, i32* @ath_hw_pll_rx_hang_check.count, align 4
  store i32 1, i32* %3, align 4
  br label %28

25:                                               ; preds = %13
  br label %27

26:                                               ; preds = %2
  store i32 0, i32* @ath_hw_pll_rx_hang_check.count, align 4
  br label %27

27:                                               ; preds = %26, %25
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %18
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @ath9k_queue_reset(%struct.ath_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
