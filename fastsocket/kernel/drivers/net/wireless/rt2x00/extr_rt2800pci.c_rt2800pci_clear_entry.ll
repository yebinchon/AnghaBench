; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800pci.c_rt2800pci_clear_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800pci.c_rt2800pci_clear_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { i32, %struct.TYPE_2__*, i32, %struct.queue_entry_priv_mmio* }
%struct.TYPE_2__ = type { i64, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }
%struct.queue_entry_priv_mmio = type { i32 }
%struct.skb_frame_desc = type { i32 }

@QID_RX = common dso_local global i64 0, align 8
@RXD_W0_SDP0 = common dso_local global i32 0, align 4
@RXD_W1_DMA_DONE = common dso_local global i32 0, align 4
@RX_CRX_IDX = common dso_local global i32 0, align 4
@TXD_W1_DMA_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*)* @rt2800pci_clear_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800pci_clear_entry(%struct.queue_entry* %0) #0 {
  %2 = alloca %struct.queue_entry*, align 8
  %3 = alloca %struct.queue_entry_priv_mmio*, align 8
  %4 = alloca %struct.skb_frame_desc*, align 8
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %2, align 8
  %7 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %8 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %7, i32 0, i32 3
  %9 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %8, align 8
  store %struct.queue_entry_priv_mmio* %9, %struct.queue_entry_priv_mmio** %3, align 8
  %10 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %11 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.skb_frame_desc* @get_skb_frame_desc(i32 %12)
  store %struct.skb_frame_desc* %13, %struct.skb_frame_desc** %4, align 8
  %14 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %15 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %17, align 8
  store %struct.rt2x00_dev* %18, %struct.rt2x00_dev** %5, align 8
  %19 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %20 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @QID_RX, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %1
  %27 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %28 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @rt2x00_desc_read(i32 %29, i32 0, i32* %6)
  %31 = load i32, i32* @RXD_W0_SDP0, align 4
  %32 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %4, align 8
  %33 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @rt2x00_set_field32(i32* %6, i32 %31, i32 %34)
  %36 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %37 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @rt2x00_desc_write(i32 %38, i32 0, i32 %39)
  %41 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %42 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @rt2x00_desc_read(i32 %43, i32 1, i32* %6)
  %45 = load i32, i32* @RXD_W1_DMA_DONE, align 4
  %46 = call i32 @rt2x00_set_field32(i32* %6, i32 %45, i32 0)
  %47 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %48 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @rt2x00_desc_write(i32 %49, i32 1, i32 %50)
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %53 = load i32, i32* @RX_CRX_IDX, align 4
  %54 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %55 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %52, i32 %53, i32 %56)
  br label %70

58:                                               ; preds = %1
  %59 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %60 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @rt2x00_desc_read(i32 %61, i32 1, i32* %6)
  %63 = load i32, i32* @TXD_W1_DMA_DONE, align 4
  %64 = call i32 @rt2x00_set_field32(i32* %6, i32 %63, i32 1)
  %65 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %66 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @rt2x00_desc_write(i32 %67, i32 1, i32 %68)
  br label %70

70:                                               ; preds = %58, %26
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(i32) #1

declare dso_local i32 @rt2x00_desc_read(i32, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00_desc_write(i32, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
