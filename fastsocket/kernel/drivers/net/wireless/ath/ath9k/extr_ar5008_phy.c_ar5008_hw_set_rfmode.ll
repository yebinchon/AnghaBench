; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_set_rfmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_set_rfmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }

@AR_PHY_MODE_DYNAMIC = common dso_local global i32 0, align 4
@AR_PHY_MODE_OFDM = common dso_local global i32 0, align 4
@AR_PHY_MODE_RF5GHZ = common dso_local global i32 0, align 4
@AR_PHY_MODE_RF2GHZ = common dso_local global i32 0, align 4
@AR_PHY_MODE_DYN_CCK_DISABLE = common dso_local global i32 0, align 4
@AR_PHY_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ar5008_hw_set_rfmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5008_hw_set_rfmode(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %7 = icmp eq %struct.ath9k_channel* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %56

9:                                                ; preds = %2
  %10 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %11 = call i64 @IS_CHAN_B(%struct.ath9k_channel* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %15 = call i64 @IS_CHAN_G(%struct.ath9k_channel* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %9
  %18 = load i32, i32* @AR_PHY_MODE_DYNAMIC, align 4
  br label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @AR_PHY_MODE_OFDM, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %26 = call i32 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %21
  %29 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %30 = call i64 @IS_CHAN_5GHZ(%struct.ath9k_channel* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @AR_PHY_MODE_RF5GHZ, align 4
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @AR_PHY_MODE_RF2GHZ, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %21
  %41 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %42 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %43 = call i64 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw* %41, %struct.ath9k_channel* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i32, i32* @AR_PHY_MODE_DYNAMIC, align 4
  %47 = load i32, i32* @AR_PHY_MODE_DYN_CCK_DISABLE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %53 = load i32, i32* @AR_PHY_MODE, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @REG_WRITE(%struct.ath_hw* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %8
  ret void
}

declare dso_local i64 @IS_CHAN_B(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_G(%struct.ath9k_channel*) #1

declare dso_local i32 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @IS_CHAN_5GHZ(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
