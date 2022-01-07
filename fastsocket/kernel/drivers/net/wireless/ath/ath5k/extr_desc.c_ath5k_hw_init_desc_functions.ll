; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_desc.c_ath5k_hw_init_desc_functions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_desc.c_ath5k_hw_init_desc_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i32, i32, i32 }

@AR5K_AR5212 = common dso_local global i64 0, align 8
@ath5k_hw_setup_4word_tx_desc = common dso_local global i32 0, align 4
@ath5k_hw_proc_4word_tx_status = common dso_local global i32 0, align 4
@ath5k_hw_proc_5212_rx_status = common dso_local global i32 0, align 4
@AR5K_AR5211 = common dso_local global i64 0, align 8
@ath5k_hw_setup_2word_tx_desc = common dso_local global i32 0, align 4
@ath5k_hw_proc_2word_tx_status = common dso_local global i32 0, align 4
@ath5k_hw_proc_5210_rx_status = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_init_desc_functions(%struct.ath5k_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath5k_hw*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  %4 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %5 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @AR5K_AR5212, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load i32, i32* @ath5k_hw_setup_4word_tx_desc, align 4
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @ath5k_hw_proc_4word_tx_status, align 4
  %14 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @ath5k_hw_proc_5212_rx_status, align 4
  %17 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  br label %39

19:                                               ; preds = %1
  %20 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %21 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AR5K_AR5211, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load i32, i32* @ath5k_hw_setup_2word_tx_desc, align 4
  %27 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %28 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @ath5k_hw_proc_2word_tx_status, align 4
  %30 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @ath5k_hw_proc_5210_rx_status, align 4
  %33 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %34 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  br label %38

35:                                               ; preds = %19
  %36 = load i32, i32* @ENOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %40

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %9
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
