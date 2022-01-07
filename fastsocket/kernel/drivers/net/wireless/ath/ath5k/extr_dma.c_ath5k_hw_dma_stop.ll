; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_dma.c_ath5k_hw_dma_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_dma.c_ath5k_hw_dma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64 }

@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_PISR = common dso_local global i32 0, align 4
@AR5K_NUM_TX_QUEUES = common dso_local global i32 0, align 4
@AR5K_ISR = common dso_local global i32 0, align 4
@AR5K_NUM_TX_QUEUES_NOQCU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_dma_stop(%struct.ath5k_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %8 = call i32 @ath5k_hw_set_imr(%struct.ath5k_hw* %7, i32 0)
  %9 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %10 = call i32 @ath5k_hw_stop_rx_dma(%struct.ath5k_hw* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %54

15:                                               ; preds = %1
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %17 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AR5K_AR5210, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %23 = load i32, i32* @AR5K_PISR, align 4
  %24 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %22, i32 -1, i32 %23)
  %25 = load i32, i32* @AR5K_NUM_TX_QUEUES, align 4
  store i32 %25, i32* %5, align 4
  br label %31

26:                                               ; preds = %15
  %27 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %28 = load i32, i32* @AR5K_ISR, align 4
  %29 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %27, i32 %28)
  %30 = load i32, i32* @AR5K_NUM_TX_QUEUES_NOQCU, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %26, %21
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %50, %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ath5k_hw_stop_tx_dma(%struct.ath5k_hw* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %54

49:                                               ; preds = %42, %36
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %32

53:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %47, %13
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @ath5k_hw_set_imr(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_stop_rx_dma(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_stop_tx_dma(%struct.ath5k_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
