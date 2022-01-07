; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_qcu.c_ath5k_hw_setup_tx_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_qcu.c_ath5k_hw_setup_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ath5k_txq_info = type { i32 }

@AR5K_TX_QUEUE_ID_NOQCU_DATA = common dso_local global i32 0, align 4
@AR5K_TX_QUEUE_ID_NOQCU_BEACON = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AR5K_TX_QUEUE_ID_DATA_MIN = common dso_local global i32 0, align 4
@AR5K_TX_QUEUE_INACTIVE = common dso_local global i32 0, align 4
@AR5K_TX_QUEUE_ID_DATA_MAX = common dso_local global i32 0, align 4
@AR5K_TX_QUEUE_ID_UAPSD = common dso_local global i32 0, align 4
@AR5K_TX_QUEUE_ID_BEACON = common dso_local global i32 0, align 4
@AR5K_TX_QUEUE_ID_CAB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_setup_tx_queue(%struct.ath5k_hw* %0, i32 %1, %struct.ath5k_txq_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath5k_txq_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ath5k_txq_info* %2, %struct.ath5k_txq_info** %7, align 8
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %22 [
    i32 129, label %18
    i32 131, label %20
    i32 130, label %20
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* @AR5K_TX_QUEUE_ID_NOQCU_DATA, align 4
  store i32 %19, i32* %8, align 4
  br label %25

20:                                               ; preds = %16, %16
  %21 = load i32, i32* @AR5K_TX_QUEUE_ID_NOQCU_BEACON, align 4
  store i32 %21, i32* %8, align 4
  br label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %101

25:                                               ; preds = %20, %18
  br label %63

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %59 [
    i32 129, label %28
    i32 128, label %53
    i32 131, label %55
    i32 130, label %57
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* @AR5K_TX_QUEUE_ID_DATA_MIN, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %49, %28
  %31 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %32 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AR5K_TX_QUEUE_INACTIVE, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %30
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @AR5K_TX_QUEUE_ID_DATA_MAX, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %101

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %30

52:                                               ; preds = %30
  br label %62

53:                                               ; preds = %26
  %54 = load i32, i32* @AR5K_TX_QUEUE_ID_UAPSD, align 4
  store i32 %54, i32* %8, align 4
  br label %62

55:                                               ; preds = %26
  %56 = load i32, i32* @AR5K_TX_QUEUE_ID_BEACON, align 4
  store i32 %56, i32* %8, align 4
  br label %62

57:                                               ; preds = %26
  %58 = load i32, i32* @AR5K_TX_QUEUE_ID_CAB, align 4
  store i32 %58, i32* %8, align 4
  br label %62

59:                                               ; preds = %26
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %101

62:                                               ; preds = %57, %55, %53, %52
  br label %63

63:                                               ; preds = %62, %25
  %64 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %65 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = call i32 @memset(%struct.TYPE_6__* %69, i32 0, i32 4)
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %73 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i32 %71, i32* %78, align 4
  %79 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %7, align 8
  %80 = icmp ne %struct.ath5k_txq_info* %79, null
  br i1 %80, label %81, label %94

81:                                               ; preds = %63
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %7, align 8
  %84 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %7, align 8
  %88 = call i32 @ath5k_hw_set_tx_queueprops(%struct.ath5k_hw* %85, i32 %86, %struct.ath5k_txq_info* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %4, align 4
  br label %101

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93, %63
  %95 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %96 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @AR5K_Q_ENABLE_BITS(i32 %97, i32 %98)
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %94, %91, %59, %45, %22
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @ath5k_hw_set_tx_queueprops(%struct.ath5k_hw*, i32, %struct.ath5k_txq_info*) #1

declare dso_local i32 @AR5K_Q_ENABLE_BITS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
