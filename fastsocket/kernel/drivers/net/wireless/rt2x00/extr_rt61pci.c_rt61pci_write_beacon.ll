; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_write_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_write_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_6__*, i32, %struct.queue_entry_priv_mmio*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.queue_entry_priv_mmio = type { i32 }
%struct.TYPE_5__ = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }
%struct.txentry_desc = type { i32 }

@TXRX_CSR9 = common dso_local global i32 0, align 4
@TXRX_CSR9_BEACON_GEN = common dso_local global i32 0, align 4
@DUMP_FRAME_BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failure padding beacon, aborting\0A\00", align 1
@TXINFO_SIZE = common dso_local global i32 0, align 4
@TXRX_CSR10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*, %struct.txentry_desc*)* @rt61pci_write_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_write_beacon(%struct.queue_entry* %0, %struct.txentry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.txentry_desc*, align 8
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.queue_entry_priv_mmio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.txentry_desc* %1, %struct.txentry_desc** %4, align 8
  %11 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %12 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %11, i32 0, i32 3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %14, align 8
  store %struct.rt2x00_dev* %15, %struct.rt2x00_dev** %5, align 8
  %16 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %17 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %16, i32 0, i32 2
  %18 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %17, align 8
  store %struct.queue_entry_priv_mmio* %18, %struct.queue_entry_priv_mmio** %6, align 8
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %20 = load i32, i32* @TXRX_CSR9, align 4
  %21 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %19, i32 %20, i32* %10)
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @TXRX_CSR9_BEACON_GEN, align 4
  %24 = call i32 @rt2x00_set_field32(i32* %10, i32 %23, i32 0)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %26 = load i32, i32* @TXRX_CSR9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %25, i32 %26, i32 %27)
  %29 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %30 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %31 = call i32 @rt61pci_write_tx_desc(%struct.queue_entry* %29, %struct.txentry_desc* %30)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %33 = load i32, i32* @DUMP_FRAME_BEACON, align 4
  %34 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %35 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = call i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev* %32, i32 %33, %struct.TYPE_6__* %36)
  %38 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %39 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @roundup(i32 %42, i32 4)
  %44 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %45 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub i32 %43, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %2
  %53 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %54 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @skb_pad(%struct.TYPE_6__* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %61 = call i32 @rt2x00_err(%struct.rt2x00_dev* %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %63 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %62, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %63, align 8
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %65 = load i32, i32* @TXRX_CSR9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %64, i32 %65, i32 %66)
  br label %112

68:                                               ; preds = %52, %2
  %69 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %70 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @HW_BEACON_OFFSET(i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %6, align 8
  %76 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @TXINFO_SIZE, align 4
  %79 = call i32 @rt2x00mmio_register_multiwrite(%struct.rt2x00_dev* %73, i32 %74, i32 %77, i32 %78)
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @TXINFO_SIZE, align 4
  %83 = add i32 %81, %82
  %84 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %85 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %90 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = add i32 %93, %94
  %96 = call i32 @rt2x00mmio_register_multiwrite(%struct.rt2x00_dev* %80, i32 %83, i32 %88, i32 %95)
  %97 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %98 = load i32, i32* @TXRX_CSR10, align 4
  %99 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %97, i32 %98, i32 4104)
  %100 = load i32, i32* @TXRX_CSR9_BEACON_GEN, align 4
  %101 = call i32 @rt2x00_set_field32(i32* %10, i32 %100, i32 1)
  %102 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %103 = load i32, i32* @TXRX_CSR9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %102, i32 %103, i32 %104)
  %106 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %107 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = call i32 @dev_kfree_skb_any(%struct.TYPE_6__* %108)
  %110 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %111 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %110, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %111, align 8
  br label %112

112:                                              ; preds = %68, %59
  ret void
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt61pci_write_tx_desc(%struct.queue_entry*, %struct.txentry_desc*) #1

declare dso_local i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i64 @skb_pad(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @HW_BEACON_OFFSET(i32) #1

declare dso_local i32 @rt2x00mmio_register_multiwrite(%struct.rt2x00_dev*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
