; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800usb.c_rt2800usb_txdone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800usb.c_rt2800usb_txdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.data_queue = type { i32 }
%struct.queue_entry = type { i32, i32 }

@TX_STA_FIFO_PID_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Got TX status for an empty queue %u, dropping\0A\00", align 1
@Q_INDEX_DONE = common dso_local global i32 0, align 4
@ENTRY_OWNER_DEVICE_DATA = common dso_local global i32 0, align 4
@ENTRY_DATA_STATUS_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Data pending for entry %u in queue %u\0A\00", align 1
@TXDONE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800usb_txdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800usb_txdone(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.data_queue*, align 8
  %4 = alloca %struct.queue_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  br label %8

8:                                                ; preds = %76, %1
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %10 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %9, i32 0, i32 0
  %11 = call i64 @kfifo_get(i32* %10, i32* %5)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %77

13:                                               ; preds = %8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @TX_STA_FIFO_PID_QUEUE, align 4
  %16 = call i32 @rt2x00_get_field32(i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.data_queue* @rt2x00queue_get_tx_queue(%struct.rt2x00_dev* %17, i32 %18)
  store %struct.data_queue* %19, %struct.data_queue** %3, align 8
  %20 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %21 = call i32 @rt2x00queue_empty(%struct.data_queue* %20)
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (%struct.rt2x00_dev*, i8*, i32, ...) @rt2x00_warn(%struct.rt2x00_dev* %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %77

28:                                               ; preds = %13
  %29 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %30 = load i32, i32* @Q_INDEX_DONE, align 4
  %31 = call %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue* %29, i32 %30)
  store %struct.queue_entry* %31, %struct.queue_entry** %4, align 8
  %32 = load i32, i32* @ENTRY_OWNER_DEVICE_DATA, align 4
  %33 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %34 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %33, i32 0, i32 1
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @ENTRY_DATA_STATUS_PENDING, align 4
  %39 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %40 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %39, i32 0, i32 1
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %37, %28
  %45 = phi i1 [ true, %28 ], [ %43, %37 ]
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %51 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %52 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (%struct.rt2x00_dev*, i8*, i32, ...) @rt2x00_warn(%struct.rt2x00_dev* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  br label %77

56:                                               ; preds = %44
  %57 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @rt2800usb_txdone_entry_check(%struct.queue_entry* %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @TXDONE_SUCCESS, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @likely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %56
  %67 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %70 = call i32 @rt2800usb_get_txwi(%struct.queue_entry* %69)
  %71 = call i32 @rt2800_txdone_entry(%struct.queue_entry* %67, i32 %68, i32 %70)
  br label %76

72:                                               ; preds = %56
  %73 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @rt2x00lib_txdone_noinfo(%struct.queue_entry* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %66
  br label %8

77:                                               ; preds = %49, %24, %8
  ret void
}

declare dso_local i64 @kfifo_get(i32*, i32*) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local %struct.data_queue* @rt2x00queue_get_tx_queue(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2x00queue_empty(%struct.data_queue*) #1

declare dso_local i32 @rt2x00_warn(%struct.rt2x00_dev*, i8*, i32, ...) #1

declare dso_local %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2800usb_txdone_entry_check(%struct.queue_entry*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rt2800_txdone_entry(%struct.queue_entry*, i32, i32) #1

declare dso_local i32 @rt2800usb_get_txwi(%struct.queue_entry*) #1

declare dso_local i32 @rt2x00lib_txdone_noinfo(%struct.queue_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
