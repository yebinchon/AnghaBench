; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_defaults.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, i32, i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ath_regulatory = type { i32, i32 }

@CTRY_DEFAULT = common dso_local global i32 0, align 4
@MAX_RATE_POWER = common dso_local global i32 0, align 4
@AR5416_MAGIC = common dso_local global i32 0, align 4
@AR_STA_ID1_CRPT_MIC_ENABLE = common dso_local global i32 0, align 4
@AR_STA_ID1_MCAST_KSRCH = common dso_local global i32 0, align 4
@AR_STA_ID1_AR9100_BA_FIX = common dso_local global i32 0, align 4
@ATH9K_SLOT_TIME_9 = common dso_local global i32 0, align 4
@ATH9K_PM_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_hw_init_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_init_defaults(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_regulatory*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = call %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw* %4)
  store %struct.ath_regulatory* %5, %struct.ath_regulatory** %3, align 8
  %6 = load i32, i32* @CTRY_DEFAULT, align 4
  %7 = load %struct.ath_regulatory*, %struct.ath_regulatory** %3, align 8
  %8 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @MAX_RATE_POWER, align 4
  %10 = load %struct.ath_regulatory*, %struct.ath_regulatory** %3, align 8
  %11 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @AR5416_MAGIC, align 4
  %13 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %14 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 8
  %16 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @AR_STA_ID1_CRPT_MIC_ENABLE, align 4
  %22 = load i32, i32* @AR_STA_ID1_MCAST_KSRCH, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %25 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %27 = call i64 @AR_SREV_9100(%struct.ath_hw* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load i32, i32* @AR_STA_ID1_AR9100_BA_FIX, align 4
  %31 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %32 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %29, %1
  %36 = load i32, i32* @ATH9K_SLOT_TIME_9, align 4
  %37 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %38 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %40 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %39, i32 0, i32 3
  store i64 -1, i64* %40, align 8
  %41 = load i32, i32* @ATH9K_PM_UNDEFINED, align 4
  %42 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %43 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %45 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  ret void
}

declare dso_local %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9100(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
