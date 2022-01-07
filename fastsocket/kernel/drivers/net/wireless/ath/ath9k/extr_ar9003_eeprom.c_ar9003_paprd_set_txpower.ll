; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_paprd_set_txpower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_paprd_set_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }

@ALL_TARGET_HT40_7 = common dso_local global i32 0, align 4
@ALL_TARGET_HT20_7 = common dso_local global i32 0, align 4
@ALL_TARGET_HT40_0_8_16 = common dso_local global i32 0, align 4
@ALL_TARGET_HT20_0_8_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*, i32*)* @ar9003_paprd_set_txpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_paprd_set_txpower(%struct.ath_hw* %0, %struct.ath9k_channel* %1, i32* %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %9 = call i32 @ar9003_is_paprd_enabled(%struct.ath_hw* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %58

12:                                               ; preds = %3
  %13 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %14 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @ALL_TARGET_HT40_7, align 4
  store i32 %17, i32* %7, align 4
  br label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @ALL_TARGET_HT20_7, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %22 = call i64 @IS_CHAN_2GHZ(%struct.ath9k_channel* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %20
  %25 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %26 = call i32 @AR_SREV_9330(%struct.ath_hw* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %49, label %28

28:                                               ; preds = %24
  %29 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %30 = call i32 @AR_SREV_9340(%struct.ath_hw* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %28
  %33 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %34 = call i32 @AR_SREV_9462(%struct.ath_hw* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %32
  %37 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %38 = call i32 @AR_SREV_9565(%struct.ath_hw* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %42 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @ALL_TARGET_HT40_0_8_16, align 4
  store i32 %45, i32* %7, align 4
  br label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @ALL_TARGET_HT20_0_8_16, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %44
  br label %49

49:                                               ; preds = %48, %36, %32, %28, %24
  br label %50

50:                                               ; preds = %49, %20
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %57 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %50, %11
  ret void
}

declare dso_local i32 @ar9003_is_paprd_enabled(%struct.ath_hw*) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9565(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
