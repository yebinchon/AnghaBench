; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_setuptxqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_setuptxqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath9k_tx_queue_info* }
%struct.ath9k_tx_queue_info = type { i32, i32 }
%struct.ath_common = type { i32 }

@ATH9K_NUM_TX_QUEUES = common dso_local global i32 0, align 4
@ATH9K_TX_QUEUE_INACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"No available TX queue\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid TX queue type: %u\0A\00", align 1
@QUEUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Setup TX queue: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"TX queue: %u already active\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_setuptxqueue(%struct.ath_hw* %0, i32 %1, %struct.ath9k_tx_queue_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath9k_tx_queue_info*, align 8
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.ath9k_tx_queue_info*, align 8
  %10 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ath9k_tx_queue_info* %2, %struct.ath9k_tx_queue_info** %7, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %12 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %11)
  store %struct.ath_common* %12, %struct.ath_common** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %53 [
    i32 132, label %14
    i32 131, label %17
    i32 129, label %20
    i32 128, label %21
    i32 130, label %24
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* @ATH9K_NUM_TX_QUEUES, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %10, align 4
  br label %57

17:                                               ; preds = %3
  %18 = load i32, i32* @ATH9K_NUM_TX_QUEUES, align 4
  %19 = sub nsw i32 %18, 2
  store i32 %19, i32* %10, align 4
  br label %57

20:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %57

21:                                               ; preds = %3
  %22 = load i32, i32* @ATH9K_NUM_TX_QUEUES, align 4
  %23 = sub nsw i32 %22, 3
  store i32 %23, i32* %10, align 4
  br label %57

24:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %42, %24
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @ATH9K_NUM_TX_QUEUES, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %31 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %30, i32 0, i32 0
  %32 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %32, i64 %34
  %36 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ATH9K_TX_QUEUE_INACTIVE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %45

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %25

45:                                               ; preds = %40, %25
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @ATH9K_NUM_TX_QUEUES, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %51 = call i32 (%struct.ath_common*, i8*, ...) @ath_err(%struct.ath_common* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %93

52:                                               ; preds = %45
  br label %57

53:                                               ; preds = %3
  %54 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (%struct.ath_common*, i8*, ...) @ath_err(%struct.ath_common* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  store i32 -1, i32* %4, align 4
  br label %93

57:                                               ; preds = %52, %21, %20, %17, %14
  %58 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %59 = load i32, i32* @QUEUE, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @ath_dbg(%struct.ath_common* %58, i32 %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %63 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %62, i32 0, i32 0
  %64 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %64, i64 %66
  store %struct.ath9k_tx_queue_info* %67, %struct.ath9k_tx_queue_info** %9, align 8
  %68 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %9, align 8
  %69 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ATH9K_TX_QUEUE_INACTIVE, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %57
  %74 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 (%struct.ath_common*, i8*, ...) @ath_err(%struct.ath_common* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  store i32 -1, i32* %4, align 4
  br label %93

77:                                               ; preds = %57
  %78 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %9, align 8
  %79 = call i32 @memset(%struct.ath9k_tx_queue_info* %78, i32 0, i32 8)
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %9, align 8
  %82 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %84 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %9, align 8
  %87 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %91 = call i32 @ath9k_hw_set_txq_props(%struct.ath_hw* %88, i32 %89, %struct.ath9k_tx_queue_info* %90)
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %77, %73, %53, %49
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, ...) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.ath9k_tx_queue_info*, i32, i32) #1

declare dso_local i32 @ath9k_hw_set_txq_props(%struct.ath_hw*, i32, %struct.ath9k_tx_queue_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
