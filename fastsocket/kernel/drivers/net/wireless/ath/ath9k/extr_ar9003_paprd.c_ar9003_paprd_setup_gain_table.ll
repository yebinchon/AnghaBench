; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_paprd.c_ar9003_paprd_setup_gain_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_paprd.c_ar9003_paprd_setup_gain_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32* }

@PAPRD_GAIN_TABLE_ENTRIES = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_STAT1 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9003_paprd_setup_gain_table(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @ar9003_get_desired_gain(%struct.ath_hw* %12, i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %34, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PAPRD_GAIN_TABLE_ENTRIES, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %22 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %37

31:                                               ; preds = %20
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %16

37:                                               ; preds = %30, %16
  %38 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @ar9003_tx_force_gain(%struct.ath_hw* %38, i32 %39)
  %41 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %42 = load i32, i32* @AR_PHY_PAPRD_TRAINER_STAT1, align 4
  %43 = load i32, i32* @AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE, align 4
  %44 = call i32 @REG_CLR_BIT(%struct.ath_hw* %41, i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @ar9003_get_desired_gain(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ar9003_tx_force_gain(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
