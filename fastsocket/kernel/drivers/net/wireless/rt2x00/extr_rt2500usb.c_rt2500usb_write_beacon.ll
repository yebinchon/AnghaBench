; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500usb.c_rt2500usb_write_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500usb.c_rt2500usb_write_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_9__*, %struct.TYPE_6__*, %struct.queue_entry_priv_usb_bcn* }
%struct.TYPE_9__ = type { i64* }
%struct.TYPE_6__ = type { i32, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.queue_entry*)* }
%struct.queue_entry_priv_usb_bcn = type { i32, i64, i32 }
%struct.txentry_desc = type { i32 }
%struct.usb_device = type { i32 }

@TXRX_CSR19 = common dso_local global i32 0, align 4
@TXRX_CSR19_BEACON_GEN = common dso_local global i32 0, align 4
@TXD_DESC_SIZE = common dso_local global i32 0, align 4
@DUMP_FRAME_BEACON = common dso_local global i32 0, align 4
@rt2500usb_beacondone = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@TXRX_CSR19_TSF_COUNT = common dso_local global i32 0, align 4
@TXRX_CSR19_TBCN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*, %struct.txentry_desc*)* @rt2500usb_write_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2500usb_write_beacon(%struct.queue_entry* %0, %struct.txentry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.txentry_desc*, align 8
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.queue_entry_priv_usb_bcn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.txentry_desc* %1, %struct.txentry_desc** %4, align 8
  %12 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %13 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %15, align 8
  store %struct.rt2x00_dev* %16, %struct.rt2x00_dev** %5, align 8
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %18 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.usb_device* @to_usb_device_intf(i32 %19)
  store %struct.usb_device* %20, %struct.usb_device** %6, align 8
  %21 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %22 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %21, i32 0, i32 2
  %23 = load %struct.queue_entry_priv_usb_bcn*, %struct.queue_entry_priv_usb_bcn** %22, align 8
  store %struct.queue_entry_priv_usb_bcn* %23, %struct.queue_entry_priv_usb_bcn** %7, align 8
  %24 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %25 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %26 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @usb_sndbulkpipe(%struct.usb_device* %24, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %32 = load i32, i32* @TXRX_CSR19, align 4
  %33 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %31, i32 %32, i32* %10)
  %34 = load i32, i32* @TXRX_CSR19_BEACON_GEN, align 4
  %35 = call i32 @rt2x00_set_field16(i32* %10, i32 %34, i32 0)
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %37 = load i32, i32* @TXRX_CSR19, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %36, i32 %37, i32 %38)
  %40 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %41 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = load i32, i32* @TXD_DESC_SIZE, align 4
  %44 = call i32 @skb_push(%struct.TYPE_9__* %42, i32 %43)
  %45 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %46 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* @TXD_DESC_SIZE, align 4
  %51 = call i32 @memset(i64* %49, i32 0, i32 %50)
  %52 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %53 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %54 = call i32 @rt2500usb_write_tx_desc(%struct.queue_entry* %52, %struct.txentry_desc* %53)
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %56 = load i32, i32* @DUMP_FRAME_BEACON, align 4
  %57 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %58 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = call i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev* %55, i32 %56, %struct.TYPE_9__* %59)
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %62 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32 (%struct.queue_entry*)*, i32 (%struct.queue_entry*)** %66, align 8
  %68 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %69 = call i32 %67(%struct.queue_entry* %68)
  store i32 %69, i32* %9, align 4
  %70 = load %struct.queue_entry_priv_usb_bcn*, %struct.queue_entry_priv_usb_bcn** %7, align 8
  %71 = getelementptr inbounds %struct.queue_entry_priv_usb_bcn, %struct.queue_entry_priv_usb_bcn* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %76 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @rt2500usb_beacondone, align 4
  %82 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %83 = call i32 @usb_fill_bulk_urb(i32 %72, %struct.usb_device* %73, i32 %74, i64* %79, i32 %80, i32 %81, %struct.queue_entry* %82)
  %84 = load %struct.queue_entry_priv_usb_bcn*, %struct.queue_entry_priv_usb_bcn** %7, align 8
  %85 = getelementptr inbounds %struct.queue_entry_priv_usb_bcn, %struct.queue_entry_priv_usb_bcn* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.queue_entry_priv_usb_bcn*, %struct.queue_entry_priv_usb_bcn** %7, align 8
  %87 = getelementptr inbounds %struct.queue_entry_priv_usb_bcn, %struct.queue_entry_priv_usb_bcn* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.queue_entry_priv_usb_bcn*, %struct.queue_entry_priv_usb_bcn** %7, align 8
  %92 = getelementptr inbounds %struct.queue_entry_priv_usb_bcn, %struct.queue_entry_priv_usb_bcn* %91, i32 0, i32 1
  %93 = load i32, i32* @rt2500usb_beacondone, align 4
  %94 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %95 = call i32 @usb_fill_bulk_urb(i32 %88, %struct.usb_device* %89, i32 %90, i64* %92, i32 1, i32 %93, %struct.queue_entry* %94)
  %96 = load %struct.queue_entry_priv_usb_bcn*, %struct.queue_entry_priv_usb_bcn** %7, align 8
  %97 = getelementptr inbounds %struct.queue_entry_priv_usb_bcn, %struct.queue_entry_priv_usb_bcn* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @GFP_ATOMIC, align 4
  %100 = call i32 @usb_submit_urb(i32 %98, i32 %99)
  %101 = load i32, i32* @TXRX_CSR19_TSF_COUNT, align 4
  %102 = call i32 @rt2x00_set_field16(i32* %10, i32 %101, i32 1)
  %103 = load i32, i32* @TXRX_CSR19_TBCN, align 4
  %104 = call i32 @rt2x00_set_field16(i32* %10, i32 %103, i32 1)
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* @TXRX_CSR19_BEACON_GEN, align 4
  %107 = call i32 @rt2x00_set_field16(i32* %10, i32 %106, i32 1)
  %108 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %109 = load i32, i32* @TXRX_CSR19, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %108, i32 %109, i32 %110)
  %112 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %113 = load i32, i32* @TXRX_CSR19, align 4
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %112, i32 %113, i32 %114)
  %116 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %117 = load i32, i32* @TXRX_CSR19, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %116, i32 %117, i32 %118)
  %120 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %121 = load i32, i32* @TXRX_CSR19, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %120, i32 %121, i32 %122)
  %124 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %125 = load i32, i32* @TXRX_CSR19, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %124, i32 %125, i32 %126)
  ret void
}

declare dso_local %struct.usb_device* @to_usb_device_intf(i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @rt2500usb_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field16(i32*, i32, i32) #1

declare dso_local i32 @rt2500usb_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @skb_push(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @rt2500usb_write_tx_desc(%struct.queue_entry*, %struct.txentry_desc*) #1

declare dso_local i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, %struct.usb_device*, i32, i64*, i32, i32, %struct.queue_entry*) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
