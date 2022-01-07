; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_send_2g5g_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_send_2g5g_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i64, i64, i32 }

@MCI_BT_SLEEP = common dso_local global i64 0, align 8
@MCI_2G_FLAGS = common dso_local global i64 0, align 8
@MCI_2G_FLAGS_CLEAR_MASK = common dso_local global i64 0, align 8
@MCI_2G_FLAGS_SET_MASK = common dso_local global i64 0, align 8
@MCI_5G_FLAGS = common dso_local global i64 0, align 8
@MCI_5G_FLAGS_CLEAR_MASK = common dso_local global i64 0, align 8
@MCI_5G_FLAGS_SET_MASK = common dso_local global i64 0, align 8
@MCI_GPM_COEX_BT_FLAGS_CLEAR = common dso_local global i32 0, align 4
@MCI_GPM_COEX_BT_FLAGS_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar9003_mci_send_2g5g_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_mci_send_2g5g_status(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath9k_hw_mci*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.ath9k_hw_mci* %11, %struct.ath9k_hw_mci** %5, align 8
  %12 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %13 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %18 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MCI_BT_SLEEP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %2
  br label %54

23:                                               ; preds = %16
  %24 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %25 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i64, i64* @MCI_2G_FLAGS, align 8
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* @MCI_2G_FLAGS_CLEAR_MASK, align 8
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* @MCI_2G_FLAGS_SET_MASK, align 8
  store i64 %31, i64* %7, align 8
  br label %36

32:                                               ; preds = %23
  %33 = load i64, i64* @MCI_5G_FLAGS, align 8
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* @MCI_5G_FLAGS_CLEAR_MASK, align 8
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* @MCI_5G_FLAGS_SET_MASK, align 8
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @MCI_GPM_COEX_BT_FLAGS_CLEAR, align 4
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @ar9003_mci_send_coex_bt_flags(%struct.ath_hw* %40, i32 %41, i32 %42, i64 %43)
  br label %45

45:                                               ; preds = %39, %36
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @MCI_GPM_COEX_BT_FLAGS_SET, align 4
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @ar9003_mci_send_coex_bt_flags(%struct.ath_hw* %49, i32 %50, i32 %51, i64 %52)
  br label %54

54:                                               ; preds = %22, %48, %45
  ret void
}

declare dso_local i32 @ar9003_mci_send_coex_bt_flags(%struct.ath_hw*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
