; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_kick_rx_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_kick_rx_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.queue_entry_priv_usb* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32, i32 }
%struct.queue_entry_priv_usb = type { i32 }
%struct.usb_device = type { i32 }

@ENTRY_OWNER_DEVICE_DATA = common dso_local global i32 0, align 4
@ENTRY_DATA_STATUS_PENDING = common dso_local global i32 0, align 4
@rt2x00usb_interrupt_rxdone = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DEVICE_STATE_PRESENT = common dso_local global i32 0, align 4
@ENTRY_DATA_IO_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.queue_entry*, i8*)* @rt2x00usb_kick_rx_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2x00usb_kick_rx_entry(%struct.queue_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.queue_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rt2x00_dev*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.queue_entry_priv_usb*, align 8
  %9 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %11 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %13, align 8
  store %struct.rt2x00_dev* %14, %struct.rt2x00_dev** %6, align 8
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %16 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.usb_device* @to_usb_device_intf(i32 %17)
  store %struct.usb_device* %18, %struct.usb_device** %7, align 8
  %19 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %20 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %19, i32 0, i32 3
  %21 = load %struct.queue_entry_priv_usb*, %struct.queue_entry_priv_usb** %20, align 8
  store %struct.queue_entry_priv_usb* %21, %struct.queue_entry_priv_usb** %8, align 8
  %22 = load i32, i32* @ENTRY_OWNER_DEVICE_DATA, align 4
  %23 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %24 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %23, i32 0, i32 0
  %25 = call i64 @test_and_set_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ENTRY_DATA_STATUS_PENDING, align 4
  %29 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %30 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %29, i32 0, i32 0
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %2
  store i32 0, i32* %3, align 4
  br label %86

34:                                               ; preds = %27
  %35 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %36 = call i32 @rt2x00lib_dmastart(%struct.queue_entry* %35)
  %37 = load %struct.queue_entry_priv_usb*, %struct.queue_entry_priv_usb** %8, align 8
  %38 = getelementptr inbounds %struct.queue_entry_priv_usb, %struct.queue_entry_priv_usb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %41 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %42 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %43 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %41, i32 %46)
  %48 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %49 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %54 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @rt2x00usb_interrupt_rxdone, align 4
  %59 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %60 = call i32 @usb_fill_bulk_urb(i32 %39, %struct.usb_device* %40, i32 %47, i32 %52, i32 %57, i32 %58, %struct.queue_entry* %59)
  %61 = load %struct.queue_entry_priv_usb*, %struct.queue_entry_priv_usb** %8, align 8
  %62 = getelementptr inbounds %struct.queue_entry_priv_usb, %struct.queue_entry_priv_usb* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @GFP_ATOMIC, align 4
  %65 = call i32 @usb_submit_urb(i32 %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %34
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %76 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %75, i32 0, i32 0
  %77 = call i32 @clear_bit(i32 %74, i32* %76)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* @ENTRY_DATA_IO_FAILED, align 4
  %80 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %81 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %80, i32 0, i32 0
  %82 = call i32 @set_bit(i32 %79, i32* %81)
  %83 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %84 = call i32 @rt2x00lib_dmadone(%struct.queue_entry* %83)
  br label %85

85:                                               ; preds = %78, %34
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %33
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.usb_device* @to_usb_device_intf(i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00lib_dmastart(%struct.queue_entry*) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, %struct.usb_device*, i32, i32, i32, i32, %struct.queue_entry*) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rt2x00lib_dmadone(%struct.queue_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
