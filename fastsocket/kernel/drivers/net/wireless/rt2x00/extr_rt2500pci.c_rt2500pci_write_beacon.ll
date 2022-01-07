; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500pci.c_rt2500pci_write_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500pci.c_rt2500pci_write_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }
%struct.txentry_desc = type { i32 }

@CSR14 = common dso_local global i32 0, align 4
@CSR14_BEACON_GEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Fail to map beacon, aborting\0A\00", align 1
@DUMP_FRAME_BEACON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*, %struct.txentry_desc*)* @rt2500pci_write_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2500pci_write_beacon(%struct.queue_entry* %0, %struct.txentry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.txentry_desc*, align 8
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.txentry_desc* %1, %struct.txentry_desc** %4, align 8
  %7 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %8 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %10, align 8
  store %struct.rt2x00_dev* %11, %struct.rt2x00_dev** %5, align 8
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %13 = load i32, i32* @CSR14, align 4
  %14 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %12, i32 %13, i32* %6)
  %15 = load i32, i32* @CSR14_BEACON_GEN, align 4
  %16 = call i32 @rt2x00_set_field32(i32* %6, i32 %15, i32 0)
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %18 = load i32, i32* @CSR14, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %17, i32 %18, i32 %19)
  %21 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %22 = call i64 @rt2x00queue_map_txskb(%struct.queue_entry* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %26 = call i32 @rt2x00_err(%struct.rt2x00_dev* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %37

27:                                               ; preds = %2
  %28 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %29 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %30 = call i32 @rt2500pci_write_tx_desc(%struct.queue_entry* %28, %struct.txentry_desc* %29)
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %32 = load i32, i32* @DUMP_FRAME_BEACON, align 4
  %33 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %34 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev* %31, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %27, %24
  %38 = load i32, i32* @CSR14_BEACON_GEN, align 4
  %39 = call i32 @rt2x00_set_field32(i32* %6, i32 %38, i32 1)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %41 = load i32, i32* @CSR14, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %40, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00queue_map_txskb(%struct.queue_entry*) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @rt2500pci_write_tx_desc(%struct.queue_entry*, %struct.txentry_desc*) #1

declare dso_local i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
