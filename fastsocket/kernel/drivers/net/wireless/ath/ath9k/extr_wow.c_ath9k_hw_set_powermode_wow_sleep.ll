; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_wow.c_ath9k_hw_set_powermode_wow_sleep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_wow.c_ath9k_hw_set_powermode_wow_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@AR_STA_ID1 = common dso_local global i32 0, align 4
@AR_STA_ID1_PWR_SAV = common dso_local global i32 0, align 4
@AR_CR = common dso_local global i32 0, align 4
@AR_CR_RXD = common dso_local global i32 0, align 4
@AR_CR_RXE = common dso_local global i32 0, align 4
@AH_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Failed to stop Rx DMA in 10ms AR_CR=0x%08x AR_DIAG_SW=0x%08x\0A\00", align 1
@AR_DIAG_SW = common dso_local global i32 0, align 4
@AR_RXDP = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE = common dso_local global i32 0, align 4
@AR_RTC_FORCE_WAKE_ON_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_hw_set_powermode_wow_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_set_powermode_wow_sleep(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %4)
  store %struct.ath_common* %5, %struct.ath_common** %3, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %7 = load i32, i32* @AR_STA_ID1, align 4
  %8 = load i32, i32* @AR_STA_ID1_PWR_SAV, align 4
  %9 = call i32 @REG_SET_BIT(%struct.ath_hw* %6, i32 %7, i32 %8)
  %10 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %11 = load i32, i32* @AR_CR, align 4
  %12 = load i32, i32* @AR_CR_RXD, align 4
  %13 = call i32 @REG_WRITE(%struct.ath_hw* %10, i32 %11, i32 %12)
  %14 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %15 = load i32, i32* @AR_CR, align 4
  %16 = load i32, i32* @AR_CR_RXE, align 4
  %17 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %18 = call i32 @ath9k_hw_wait(%struct.ath_hw* %14, i32 %15, i32 %16, i32 0, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %1
  %21 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %22 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %23 = load i32, i32* @AR_CR, align 4
  %24 = call i32 @REG_READ(%struct.ath_hw* %22, i32 %23)
  %25 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %26 = load i32, i32* @AR_DIAG_SW, align 4
  %27 = call i32 @REG_READ(%struct.ath_hw* %25, i32 %26)
  %28 = call i32 @ath_err(%struct.ath_common* %21, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  br label %48

29:                                               ; preds = %1
  %30 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %31 = call i32 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %35 = load i32, i32* @AR_RXDP, align 4
  %36 = call i32 @REG_WRITE(%struct.ath_hw* %34, i32 %35, i32 0)
  br label %37

37:                                               ; preds = %33, %29
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %40 = call i64 @AR_SREV_9280_20(%struct.ath_hw* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %48

43:                                               ; preds = %38
  %44 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %45 = load i32, i32* @AR_RTC_FORCE_WAKE, align 4
  %46 = load i32, i32* @AR_RTC_FORCE_WAKE_ON_INT, align 4
  %47 = call i32 @REG_WRITE(%struct.ath_hw* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %42, %20
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_wait(%struct.ath_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9280_20(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
