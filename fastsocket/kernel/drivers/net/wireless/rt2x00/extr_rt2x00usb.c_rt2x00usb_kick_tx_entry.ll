; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_kick_tx_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_kick_tx_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.queue_entry_priv_usb* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.queue_entry*)* }
%struct.queue_entry_priv_usb = type { i32 }
%struct.usb_device = type { i32 }

@ENTRY_DATA_PENDING = common dso_local global i32 0, align 4
@ENTRY_DATA_STATUS_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"TX SKB padding error, out of memory\0A\00", align 1
@ENTRY_DATA_IO_FAILED = common dso_local global i32 0, align 4
@rt2x00usb_interrupt_txdone = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DEVICE_STATE_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.queue_entry*, i8*)* @rt2x00usb_kick_tx_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2x00usb_kick_tx_entry(%struct.queue_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.queue_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rt2x00_dev*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.queue_entry_priv_usb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %12 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %11, i32 0, i32 2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %14, align 8
  store %struct.rt2x00_dev* %15, %struct.rt2x00_dev** %6, align 8
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %17 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.usb_device* @to_usb_device_intf(i32 %18)
  store %struct.usb_device* %19, %struct.usb_device** %7, align 8
  %20 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %21 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %20, i32 0, i32 3
  %22 = load %struct.queue_entry_priv_usb*, %struct.queue_entry_priv_usb** %21, align 8
  store %struct.queue_entry_priv_usb* %22, %struct.queue_entry_priv_usb** %8, align 8
  %23 = load i32, i32* @ENTRY_DATA_PENDING, align 4
  %24 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %25 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %24, i32 0, i32 0
  %26 = call i32 @test_and_clear_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load i32, i32* @ENTRY_DATA_STATUS_PENDING, align 4
  %30 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %31 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %30, i32 0, i32 0
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %2
  store i32 0, i32* %3, align 4
  br label %108

35:                                               ; preds = %28
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %37 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32 (%struct.queue_entry*)*, i32 (%struct.queue_entry*)** %41, align 8
  %43 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %44 = call i32 %42(%struct.queue_entry* %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %46 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @skb_padto(%struct.TYPE_8__* %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %35
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %55 = call i32 @rt2x00_warn(%struct.rt2x00_dev* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @ENTRY_DATA_IO_FAILED, align 4
  %57 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %58 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %57, i32 0, i32 0
  %59 = call i32 @set_bit(i32 %56, i32* %58)
  %60 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %61 = call i32 @rt2x00lib_dmadone(%struct.queue_entry* %60)
  store i32 0, i32* %3, align 4
  br label %108

62:                                               ; preds = %35
  %63 = load %struct.queue_entry_priv_usb*, %struct.queue_entry_priv_usb** %8, align 8
  %64 = getelementptr inbounds %struct.queue_entry_priv_usb, %struct.queue_entry_priv_usb* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %67 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %68 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %69 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %68, i32 0, i32 2
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @usb_sndbulkpipe(%struct.usb_device* %67, i32 %72)
  %74 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %75 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @rt2x00usb_interrupt_txdone, align 4
  %81 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %82 = call i32 @usb_fill_bulk_urb(i32 %65, %struct.usb_device* %66, i32 %73, i32 %78, i32 %79, i32 %80, %struct.queue_entry* %81)
  %83 = load %struct.queue_entry_priv_usb*, %struct.queue_entry_priv_usb** %8, align 8
  %84 = getelementptr inbounds %struct.queue_entry_priv_usb, %struct.queue_entry_priv_usb* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @GFP_ATOMIC, align 4
  %87 = call i32 @usb_submit_urb(i32 %85, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %62
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %97 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %98 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %97, i32 0, i32 0
  %99 = call i32 @clear_bit(i32 %96, i32* %98)
  br label %100

100:                                              ; preds = %95, %90
  %101 = load i32, i32* @ENTRY_DATA_IO_FAILED, align 4
  %102 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %103 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %102, i32 0, i32 0
  %104 = call i32 @set_bit(i32 %101, i32* %103)
  %105 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %106 = call i32 @rt2x00lib_dmadone(%struct.queue_entry* %105)
  br label %107

107:                                              ; preds = %100, %62
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %53, %34
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.usb_device* @to_usb_device_intf(i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @skb_padto(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2x00_warn(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rt2x00lib_dmadone(%struct.queue_entry*) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, %struct.usb_device*, i32, i32, i32, i32, %struct.queue_entry*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
