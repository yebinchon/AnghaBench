; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800usb.c_rt2800usb_tx_sta_fifo_read_completed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800usb.c_rt2800usb_tx_sta_fifo_read_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"TX status read failed %d\0A\00", align 1
@TX_STA_FIFO_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"TX status FIFO overrun\0A\00", align 1
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@TX_STATUS_READING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, i32, i32)* @rt2800usb_tx_sta_fifo_read_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800usb_tx_sta_fifo_read_completed(%struct.rt2x00_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_warn(%struct.rt2x00_dev* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %58

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @TX_STA_FIFO_VALID, align 4
  %18 = call i32 @rt2x00_get_field32(i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %23 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %22, i32 0, i32 4
  %24 = call i32 @kfifo_put(i32* %23, i32* %7)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %28 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_warn(%struct.rt2x00_dev* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %31 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %34 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %33, i32 0, i32 2
  %35 = call i32 @queue_work(i32 %32, i32* %34)
  store i32 1, i32* %4, align 4
  br label %74

36:                                               ; preds = %15
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %38 = call i64 @rt2800usb_txstatus_timeout(%struct.rt2x00_dev* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %42 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %45 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %44, i32 0, i32 2
  %46 = call i32 @queue_work(i32 %43, i32* %45)
  br label %47

47:                                               ; preds = %40, %36
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %49 = call i64 @rt2800usb_txstatus_pending(%struct.rt2x00_dev* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %53 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %52, i32 0, i32 1
  %54 = call i32 @ktime_set(i32 0, i32 250000)
  %55 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %56 = call i32 @hrtimer_start(i32* %53, i32 %54, i32 %55)
  store i32 0, i32* %4, align 4
  br label %74

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %11
  %59 = load i32, i32* @TX_STATUS_READING, align 4
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %61 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %60, i32 0, i32 0
  %62 = call i32 @clear_bit(i32 %59, i32* %61)
  %63 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %64 = call i64 @rt2800usb_txstatus_pending(%struct.rt2x00_dev* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %58
  %67 = load i32, i32* @TX_STATUS_READING, align 4
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %69 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %68, i32 0, i32 0
  %70 = call i32 @test_and_set_bit(i32 %67, i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  store i32 1, i32* %4, align 4
  br label %74

73:                                               ; preds = %66, %58
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %72, %51, %29
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @rt2x00_warn(%struct.rt2x00_dev*, i8*, ...) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @kfifo_put(i32*, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @rt2800usb_txstatus_timeout(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2800usb_txstatus_pending(%struct.rt2x00_dev*) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
