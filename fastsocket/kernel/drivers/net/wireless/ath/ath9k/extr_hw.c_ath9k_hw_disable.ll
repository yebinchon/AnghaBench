; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@ATH9K_PM_AWAKE = common dso_local global i32 0, align 4
@ATH9K_RESET_COLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_disable(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %5 = load i32, i32* @ATH9K_PM_AWAKE, align 4
  %6 = call i32 @ath9k_hw_setpower(%struct.ath_hw* %4, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

9:                                                ; preds = %1
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = load i32, i32* @ATH9K_RESET_COLD, align 4
  %12 = call i32 @ath9k_hw_set_reset_reg(%struct.ath_hw* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %18

15:                                               ; preds = %9
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = call i32 @ath9k_hw_init_pll(%struct.ath_hw* %16, i32* null)
  store i32 1, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %14, %8
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @ath9k_hw_setpower(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_set_reset_reg(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_init_pll(%struct.ath_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
