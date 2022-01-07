; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800pci.c_rt2800pci_txdone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800pci.c_rt2800pci_txdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.data_queue = type { i32 }

@TX_STA_FIFO_PID_QUEUE = common dso_local global i32 0, align 4
@QID_RX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"Got TX status report with unexpected pid %u, dropping\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Got TX status for an unavailable queue %u, dropping\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Got TX status for an empty queue %u, dropping\0A\00", align 1
@Q_INDEX_DONE = common dso_local global i32 0, align 4
@Q_INDEX = common dso_local global i32 0, align 4
@rt2800pci_txdone_find_entry = common dso_local global i32 0, align 4
@rt2800pci_txdone_match_first = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"No frame found for TX status on queue %u, dropping\0A\00", align 1
@rt2800pci_txdone_release_entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2800pci_txdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800pci_txdone(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.data_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  store i32 16, i32* %6, align 4
  br label %7

7:                                                ; preds = %77, %1
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %9 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %8, i32 0, i32 0
  %10 = call i64 @kfifo_get(i32* %9, i32* %4)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %78

12:                                               ; preds = %7
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @TX_STA_FIFO_PID_QUEUE, align 4
  %15 = call i64 @rt2x00_get_field32(i32 %13, i32 %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @QID_RX, align 8
  %18 = icmp sge i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @rt2x00_warn(%struct.rt2x00_dev* %23, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %78

26:                                               ; preds = %12
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call %struct.data_queue* @rt2x00queue_get_tx_queue(%struct.rt2x00_dev* %27, i64 %28)
  store %struct.data_queue* %29, %struct.data_queue** %3, align 8
  %30 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %31 = icmp eq %struct.data_queue* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @rt2x00_warn(%struct.rt2x00_dev* %36, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  br label %78

39:                                               ; preds = %26
  %40 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %41 = call i32 @rt2x00queue_empty(%struct.data_queue* %40)
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @rt2x00_warn(%struct.rt2x00_dev* %45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  br label %78

48:                                               ; preds = %39
  %49 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %50 = load i32, i32* @Q_INDEX_DONE, align 4
  %51 = load i32, i32* @Q_INDEX, align 4
  %52 = load i32, i32* @rt2800pci_txdone_find_entry, align 4
  %53 = call i32 @rt2x00queue_for_each_entry(%struct.data_queue* %49, i32 %50, i32 %51, i32* %4, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %48
  %56 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %57 = load i32, i32* @Q_INDEX_DONE, align 4
  %58 = load i32, i32* @Q_INDEX, align 4
  %59 = load i32, i32* @rt2800pci_txdone_match_first, align 4
  %60 = call i32 @rt2x00queue_for_each_entry(%struct.data_queue* %56, i32 %57, i32 %58, i32* %4, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %55
  %63 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @rt2x00_warn(%struct.rt2x00_dev* %63, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i64 %64)
  br label %78

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %48
  %68 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %69 = load i32, i32* @Q_INDEX_DONE, align 4
  %70 = load i32, i32* @Q_INDEX, align 4
  %71 = load i32, i32* @rt2800pci_txdone_release_entries, align 4
  %72 = call i32 @rt2x00queue_for_each_entry(%struct.data_queue* %68, i32 %69, i32 %70, i32* null, i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %6, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %78

77:                                               ; preds = %67
  br label %7

78:                                               ; preds = %76, %62, %44, %35, %22, %7
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  ret i32 %82
}

declare dso_local i64 @kfifo_get(i32*, i32*) #1

declare dso_local i64 @rt2x00_get_field32(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2x00_warn(%struct.rt2x00_dev*, i8*, i64) #1

declare dso_local %struct.data_queue* @rt2x00queue_get_tx_queue(%struct.rt2x00_dev*, i64) #1

declare dso_local i32 @rt2x00queue_empty(%struct.data_queue*) #1

declare dso_local i32 @rt2x00queue_for_each_entry(%struct.data_queue*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
