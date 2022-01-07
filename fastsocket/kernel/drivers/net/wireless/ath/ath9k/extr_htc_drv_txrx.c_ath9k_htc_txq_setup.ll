; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_htc_txq_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_htc_txq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32*, %struct.ath_hw* }
%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }
%struct.ath9k_tx_queue_info = type { i32 }

@ATH9K_TX_QUEUE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"qnum %u out of range, max %zu!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_htc_txq_setup(%struct.ath9k_htc_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath9k_htc_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hw*, align 8
  %7 = alloca %struct.ath_common*, align 8
  %8 = alloca %struct.ath9k_tx_queue_info, align 4
  %9 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %11 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %10, i32 0, i32 1
  %12 = load %struct.ath_hw*, %struct.ath_hw** %11, align 8
  store %struct.ath_hw* %12, %struct.ath_hw** %6, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %14 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %13)
  store %struct.ath_common* %14, %struct.ath_common** %7, align 8
  %15 = call i32 @memset(%struct.ath9k_tx_queue_info* %8, i32 0, i32 4)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @ATH9K_HTC_INIT_TXQ(i32 %16)
  %18 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %19 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %18, i32 0, i32 1
  %20 = load %struct.ath_hw*, %struct.ath_hw** %19, align 8
  %21 = load i32, i32* @ATH9K_TX_QUEUE_DATA, align 4
  %22 = call i32 @ath9k_hw_setuptxqueue(%struct.ath_hw* %20, i32 %21, %struct.ath9k_tx_queue_info* %8)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

26:                                               ; preds = %2
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %29 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  %32 = icmp sge i32 %27, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %37 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @ARRAY_SIZE(i32* %38)
  %40 = call i32 @ath_err(%struct.ath_common* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %39)
  %41 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @ath9k_hw_releasetxqueue(%struct.ath_hw* %41, i32 %42)
  store i32 0, i32* %3, align 4
  br label %52

44:                                               ; preds = %26
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %47 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  store i32 1, i32* %3, align 4
  br label %52

52:                                               ; preds = %44, %33, %25
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @memset(%struct.ath9k_tx_queue_info*, i32, i32) #1

declare dso_local i32 @ATH9K_HTC_INIT_TXQ(i32) #1

declare dso_local i32 @ath9k_hw_setuptxqueue(%struct.ath_hw*, i32, %struct.ath9k_tx_queue_info*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32, i32) #1

declare dso_local i32 @ath9k_hw_releasetxqueue(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
