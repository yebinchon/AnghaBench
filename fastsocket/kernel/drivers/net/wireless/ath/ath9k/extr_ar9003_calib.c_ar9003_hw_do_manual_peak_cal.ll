; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_do_manual_peak_cal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_do_manual_peak_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }

@AR9300_MAX_CHAINS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9003_hw_do_manual_peak_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_do_manual_peak_cal(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = call i32 @AR_SREV_9462(%struct.ath_hw* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = call i32 @AR_SREV_9565(%struct.ath_hw* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %15 = call i32 @AR_SREV_9485(%struct.ath_hw* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %41

18:                                               ; preds = %13, %9, %2
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %38, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %25 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 1, %27
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %38

32:                                               ; preds = %23
  %33 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %36 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %35)
  %37 = call i32 @ar9003_hw_manual_peak_cal(%struct.ath_hw* %33, i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %32, %31
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %19

41:                                               ; preds = %17, %19
  ret void
}

declare dso_local i32 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_manual_peak_cal(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
