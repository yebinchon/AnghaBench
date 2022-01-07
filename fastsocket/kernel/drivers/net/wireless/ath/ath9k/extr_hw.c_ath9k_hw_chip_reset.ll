; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_chip_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_chip_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.ath_hw*, i32)* }
%struct.ath9k_channel = type { i32 }

@ATH9K_RESET_WARM = common dso_local global i32 0, align 4
@EEP_OL_PWRCTRL = common dso_local global i32 0, align 4
@ATH9K_RESET_POWER_ON = common dso_local global i32 0, align 4
@ATH9K_RESET_COLD = common dso_local global i32 0, align 4
@AR_Q_TXE = common dso_local global i32 0, align 4
@AR_CR = common dso_local global i32 0, align 4
@AR_CR_RXE = common dso_local global i32 0, align 4
@ATH9K_PM_AWAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ath9k_hw_chip_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_chip_reset(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  %7 = load i32, i32* @ATH9K_RESET_WARM, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %9 = call i64 @AR_SREV_9280(%struct.ath_hw* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64 (%struct.ath_hw*, i32)*, i64 (%struct.ath_hw*, i32)** %15, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %18 = load i32, i32* @EEP_OL_PWRCTRL, align 4
  %19 = call i64 %16(%struct.ath_hw* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load i32, i32* @ATH9K_RESET_POWER_ON, align 4
  store i32 %22, i32* %6, align 4
  br label %25

23:                                               ; preds = %11
  %24 = load i32, i32* @ATH9K_RESET_COLD, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %23, %21
  br label %46

26:                                               ; preds = %2
  %27 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %28 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %26
  %32 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %33 = load i32, i32* @AR_Q_TXE, align 4
  %34 = call i32 @REG_READ(%struct.ath_hw* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %38 = load i32, i32* @AR_CR, align 4
  %39 = call i32 @REG_READ(%struct.ath_hw* %37, i32 %38)
  %40 = load i32, i32* @AR_CR_RXE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36, %31, %26
  %44 = load i32, i32* @ATH9K_RESET_COLD, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %43, %36
  br label %46

46:                                               ; preds = %45, %25
  %47 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @ath9k_hw_set_reset_reg(%struct.ath_hw* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %74

52:                                               ; preds = %46
  %53 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %54 = load i32, i32* @ATH9K_PM_AWAKE, align 4
  %55 = call i32 @ath9k_hw_setpower(%struct.ath_hw* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %74

58:                                               ; preds = %52
  %59 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %60 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %62 = call i64 @AR_SREV_9330(%struct.ath_hw* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %66 = call i32 @ar9003_hw_internal_regulator_apply(%struct.ath_hw* %65)
  br label %67

67:                                               ; preds = %64, %58
  %68 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %69 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %70 = call i32 @ath9k_hw_init_pll(%struct.ath_hw* %68, %struct.ath9k_channel* %69)
  %71 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %72 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %73 = call i32 @ath9k_hw_set_rfmode(%struct.ath_hw* %71, %struct.ath9k_channel* %72)
  store i32 1, i32* %3, align 4
  br label %74

74:                                               ; preds = %67, %57, %51
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @AR_SREV_9280(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_set_reset_reg(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_setpower(%struct.ath_hw*, i32) #1

declare dso_local i64 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_internal_regulator_apply(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_init_pll(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_set_rfmode(%struct.ath_hw*, %struct.ath9k_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
