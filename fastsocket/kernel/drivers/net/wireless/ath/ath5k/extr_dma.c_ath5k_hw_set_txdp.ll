; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_dma.c_ath5k_hw_set_txdp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_dma.c_ath5k_hw_set_txdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_NOQCU_TXDP0 = common dso_local global i32 0, align 4
@AR5K_NOQCU_TXDP1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AR5K_QCU_TXE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_set_txdp(%struct.ath5k_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @AR5K_ASSERT_ENTRY(i32 %9, i32 %14)
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %17 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AR5K_AR5210, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %3
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %23 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %34 [
    i32 128, label %30
    i32 130, label %32
    i32 129, label %32
  ]

30:                                               ; preds = %21
  %31 = load i32, i32* @AR5K_NOQCU_TXDP0, align 4
  store i32 %31, i32* %8, align 4
  br label %37

32:                                               ; preds = %21, %21
  %33 = load i32, i32* @AR5K_NOQCU_TXDP1, align 4
  store i32 %33, i32* %8, align 4
  br label %37

34:                                               ; preds = %21
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %55

37:                                               ; preds = %32, %30
  br label %50

38:                                               ; preds = %3
  %39 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %40 = load i32, i32* @AR5K_QCU_TXE, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @AR5K_REG_READ_Q(%struct.ath5k_hw* %39, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %55

47:                                               ; preds = %38
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @AR5K_QUEUE_TXDP(i32 %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %47, %37
  %51 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %51, i32 %52, i32 %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %44, %34
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @AR5K_ASSERT_ENTRY(i32, i32) #1

declare dso_local i64 @AR5K_REG_READ_Q(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_QUEUE_TXDP(i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
