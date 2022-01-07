; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_operating_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set_operating_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_STA_ID1_STA_AP = common dso_local global i32 0, align 4
@AR_STA_ID1_ADHOC = common dso_local global i32 0, align 4
@AR_STA_ID1_KSRCH_MODE = common dso_local global i32 0, align 4
@AR_CFG = common dso_local global i32 0, align 4
@AR_CFG_AP_ADHOC_INDICATION = common dso_local global i32 0, align 4
@AR_STA_ID1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ath9k_hw_set_operating_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_set_operating_mode(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @AR_STA_ID1_STA_AP, align 4
  %8 = load i32, i32* @AR_STA_ID1_ADHOC, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @AR_STA_ID1_KSRCH_MODE, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %29 [
    i32 131, label %12
    i32 129, label %12
    i32 130, label %20
    i32 128, label %24
  ]

12:                                               ; preds = %2, %2
  %13 = load i32, i32* @AR_STA_ID1_ADHOC, align 4
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %6, align 4
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = load i32, i32* @AR_CFG, align 4
  %18 = load i32, i32* @AR_CFG_AP_ADHOC_INDICATION, align 4
  %19 = call i32 @REG_SET_BIT(%struct.ath_hw* %16, i32 %17, i32 %18)
  br label %36

20:                                               ; preds = %2
  %21 = load i32, i32* @AR_STA_ID1_STA_AP, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %2, %20
  %25 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %26 = load i32, i32* @AR_CFG, align 4
  %27 = load i32, i32* @AR_CFG_AP_ADHOC_INDICATION, align 4
  %28 = call i32 @REG_CLR_BIT(%struct.ath_hw* %25, i32 %26, i32 %27)
  br label %36

29:                                               ; preds = %2
  %30 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %34, %29
  br label %36

36:                                               ; preds = %35, %24, %12
  %37 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %38 = load i32, i32* @AR_STA_ID1, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @REG_RMW(%struct.ath_hw* %37, i32 %38, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_RMW(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
