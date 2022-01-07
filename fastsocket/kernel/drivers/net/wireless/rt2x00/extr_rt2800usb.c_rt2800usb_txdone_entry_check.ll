; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800usb.c_rt2800usb_txdone_entry_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800usb.c_rt2800usb_txdone_entry_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ENTRY_DATA_IO_FAILED = common dso_local global i32 0, align 4
@TXDONE_FAILURE = common dso_local global i32 0, align 4
@TX_STA_FIFO_WCID = common dso_local global i32 0, align 4
@TX_STA_FIFO_TX_ACK_REQUIRED = common dso_local global i32 0, align 4
@TX_STA_FIFO_PID_TYPE = common dso_local global i32 0, align 4
@TX_STA_FIFO_TX_AGGRE = common dso_local global i32 0, align 4
@TXWI_W1_WIRELESS_CLI_ID = common dso_local global i32 0, align 4
@TXWI_W1_ACK = common dso_local global i32 0, align 4
@TXWI_W1_PACKETID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"TX status report missed for queue %d entry %d\0A\00", align 1
@TXDONE_UNKNOWN = common dso_local global i32 0, align 4
@TXDONE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.queue_entry*, i32)* @rt2800usb_txdone_entry_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800usb_txdone_entry_check(%struct.queue_entry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.queue_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* @ENTRY_DATA_IO_FAILED, align 4
  %16 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %17 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %16, i32 0, i32 2
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @TXDONE_FAILURE, align 4
  store i32 %21, i32* %3, align 4
  br label %80

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @TX_STA_FIFO_WCID, align 4
  %25 = call i32 @rt2x00_get_field32(i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @TX_STA_FIFO_TX_ACK_REQUIRED, align 4
  %28 = call i32 @rt2x00_get_field32(i32 %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @TX_STA_FIFO_PID_TYPE, align 4
  %31 = call i32 @rt2x00_get_field32(i32 %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @TX_STA_FIFO_TX_AGGRE, align 4
  %34 = call i32 @rt2x00_get_field32(i32 %32, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %36 = call i32* @rt2800usb_get_txwi(%struct.queue_entry* %35)
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @rt2x00_desc_read(i32* %37, i32 1, i32* %7)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @TXWI_W1_WIRELESS_CLI_ID, align 4
  %41 = call i32 @rt2x00_get_field32(i32 %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @TXWI_W1_ACK, align 4
  %44 = call i32 @rt2x00_get_field32(i32 %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @TXWI_W1_PACKETID, align 4
  %47 = call i32 @rt2x00_get_field32(i32 %45, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %62, label %51

51:                                               ; preds = %22
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %78, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %58, %51, %22
  %63 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %64 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %69 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %74 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @rt2x00_dbg(i32 %67, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %75)
  %77 = load i32, i32* @TXDONE_UNKNOWN, align 4
  store i32 %77, i32* %3, align 4
  br label %80

78:                                               ; preds = %58, %55
  %79 = load i32, i32* @TXDONE_SUCCESS, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %62, %20
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32* @rt2800usb_get_txwi(%struct.queue_entry*) #1

declare dso_local i32 @rt2x00_desc_read(i32*, i32, i32*) #1

declare dso_local i32 @rt2x00_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
