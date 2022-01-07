; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800pci.c_rt2800pci_write_tx_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800pci.c_rt2800pci_write_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_2__*, %struct.queue_entry_priv_mmio* }
%struct.TYPE_2__ = type { i32 }
%struct.queue_entry_priv_mmio = type { i32* }
%struct.txentry_desc = type { i32 }
%struct.skb_frame_desc = type { i32, i32, i32* }

@TXD_W0_SD_PTR0 = common dso_local global i32 0, align 4
@TXD_W1_SD_LEN1 = common dso_local global i32 0, align 4
@TXD_W1_LAST_SEC1 = common dso_local global i32 0, align 4
@ENTRY_TXD_MORE_FRAG = common dso_local global i32 0, align 4
@TXD_W1_BURST = common dso_local global i32 0, align 4
@ENTRY_TXD_BURST = common dso_local global i32 0, align 4
@TXD_W1_SD_LEN0 = common dso_local global i32 0, align 4
@TXWI_DESC_SIZE = common dso_local global i32 0, align 4
@TXD_W1_LAST_SEC0 = common dso_local global i32 0, align 4
@TXD_W1_DMA_DONE = common dso_local global i32 0, align 4
@TXD_W2_SD_PTR1 = common dso_local global i32 0, align 4
@TXD_W3_WIV = common dso_local global i32 0, align 4
@ENTRY_TXD_ENCRYPT_IV = common dso_local global i32 0, align 4
@TXD_W3_QSEL = common dso_local global i32 0, align 4
@TXD_DESC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*, %struct.txentry_desc*)* @rt2800pci_write_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800pci_write_tx_desc(%struct.queue_entry* %0, %struct.txentry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.txentry_desc*, align 8
  %5 = alloca %struct.skb_frame_desc*, align 8
  %6 = alloca %struct.queue_entry_priv_mmio*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.txentry_desc* %1, %struct.txentry_desc** %4, align 8
  %9 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %10 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_2__* %11)
  store %struct.skb_frame_desc* %12, %struct.skb_frame_desc** %5, align 8
  %13 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %14 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %13, i32 0, i32 1
  %15 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %14, align 8
  store %struct.queue_entry_priv_mmio* %15, %struct.queue_entry_priv_mmio** %6, align 8
  %16 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %6, align 8
  %17 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  store i64 0, i64* %8, align 8
  %19 = load i32, i32* @TXD_W0_SD_PTR0, align 4
  %20 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %21 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @rt2x00_set_field32(i64* %8, i32 %19, i32 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @rt2x00_desc_write(i32* %24, i32 0, i64 %25)
  store i64 0, i64* %8, align 8
  %27 = load i32, i32* @TXD_W1_SD_LEN1, align 4
  %28 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %29 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rt2x00_set_field32(i64* %8, i32 %27, i32 %32)
  %34 = load i32, i32* @TXD_W1_LAST_SEC1, align 4
  %35 = load i32, i32* @ENTRY_TXD_MORE_FRAG, align 4
  %36 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %37 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %36, i32 0, i32 0
  %38 = call i32 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @rt2x00_set_field32(i64* %8, i32 %34, i32 %41)
  %43 = load i32, i32* @TXD_W1_BURST, align 4
  %44 = load i32, i32* @ENTRY_TXD_BURST, align 4
  %45 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %46 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %45, i32 0, i32 0
  %47 = call i32 @test_bit(i32 %44, i32* %46)
  %48 = call i32 @rt2x00_set_field32(i64* %8, i32 %43, i32 %47)
  %49 = load i32, i32* @TXD_W1_SD_LEN0, align 4
  %50 = load i32, i32* @TXWI_DESC_SIZE, align 4
  %51 = call i32 @rt2x00_set_field32(i64* %8, i32 %49, i32 %50)
  %52 = load i32, i32* @TXD_W1_LAST_SEC0, align 4
  %53 = call i32 @rt2x00_set_field32(i64* %8, i32 %52, i32 0)
  %54 = load i32, i32* @TXD_W1_DMA_DONE, align 4
  %55 = call i32 @rt2x00_set_field32(i64* %8, i32 %54, i32 0)
  %56 = load i32*, i32** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @rt2x00_desc_write(i32* %56, i32 1, i64 %57)
  store i64 0, i64* %8, align 8
  %59 = load i32, i32* @TXD_W2_SD_PTR1, align 4
  %60 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %61 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @TXWI_DESC_SIZE, align 4
  %64 = add nsw i32 %62, %63
  %65 = call i32 @rt2x00_set_field32(i64* %8, i32 %59, i32 %64)
  %66 = load i32*, i32** %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @rt2x00_desc_write(i32* %66, i32 2, i64 %67)
  store i64 0, i64* %8, align 8
  %69 = load i32, i32* @TXD_W3_WIV, align 4
  %70 = load i32, i32* @ENTRY_TXD_ENCRYPT_IV, align 4
  %71 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %72 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %71, i32 0, i32 0
  %73 = call i32 @test_bit(i32 %70, i32* %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 @rt2x00_set_field32(i64* %8, i32 %69, i32 %76)
  %78 = load i32, i32* @TXD_W3_QSEL, align 4
  %79 = call i32 @rt2x00_set_field32(i64* %8, i32 %78, i32 2)
  %80 = load i32*, i32** %7, align 8
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @rt2x00_desc_write(i32* %80, i32 3, i64 %81)
  %83 = load i32*, i32** %7, align 8
  %84 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %85 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %84, i32 0, i32 2
  store i32* %83, i32** %85, align 8
  %86 = load i32, i32* @TXD_DESC_SIZE, align 4
  %87 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %88 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_2__*) #1

declare dso_local i32 @rt2x00_set_field32(i64*, i32, i32) #1

declare dso_local i32 @rt2x00_desc_write(i32*, i32, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
