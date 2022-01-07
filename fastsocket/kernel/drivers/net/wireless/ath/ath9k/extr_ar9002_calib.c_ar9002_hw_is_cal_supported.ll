; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9002_hw_is_cal_supported.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9002_hw_is_cal_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*, i32)* @ar9002_hw_is_cal_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9002_hw_is_cal_supported(%struct.ath_hw* %0, %struct.ath9k_channel* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %10, %11
  switch i32 %12, label %38 [
    i32 128, label %13
    i32 129, label %19
    i32 130, label %19
  ]

13:                                               ; preds = %3
  %14 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %15 = call i32 @IS_CHAN_B(%struct.ath9k_channel* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 1, i32* %7, align 4
  br label %18

18:                                               ; preds = %17, %13
  br label %38

19:                                               ; preds = %3, %3
  %20 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %21 = call i32 @IS_CHAN_B(%struct.ath9k_channel* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %19
  %24 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %25 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %29 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %30 = call i32 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw* %28, %struct.ath9k_channel* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27, %23
  %33 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %34 = call i32 @IS_CHAN_HT20(%struct.ath9k_channel* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32, %27
  store i32 1, i32* %7, align 4
  br label %37

37:                                               ; preds = %36, %32, %19
  br label %38

38:                                               ; preds = %3, %37, %18
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @IS_CHAN_B(%struct.ath9k_channel*) #1

declare dso_local i32 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @IS_CHAN_HT20(%struct.ath9k_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
