; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800usb.c_rt2800usb_write_tx_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800usb.c_rt2800usb_write_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.txentry_desc = type { i32 }
%struct.skb_frame_desc = type { i32, i32*, i32 }

@TXINFO_W0_USB_DMA_TX_PKT_LEN = common dso_local global i32 0, align 4
@TXINFO_DESC_SIZE = common dso_local global i32 0, align 4
@TXINFO_W0_WIV = common dso_local global i32 0, align 4
@ENTRY_TXD_ENCRYPT_IV = common dso_local global i32 0, align 4
@TXINFO_W0_QSEL = common dso_local global i32 0, align 4
@TXINFO_W0_SW_USE_LAST_ROUND = common dso_local global i32 0, align 4
@TXINFO_W0_USB_DMA_NEXT_VALID = common dso_local global i32 0, align 4
@TXINFO_W0_USB_DMA_TX_BURST = common dso_local global i32 0, align 4
@ENTRY_TXD_BURST = common dso_local global i32 0, align 4
@SKBDESC_DESC_IN_SKB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*, %struct.txentry_desc*)* @rt2800usb_write_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800usb_write_tx_desc(%struct.queue_entry* %0, %struct.txentry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.txentry_desc*, align 8
  %5 = alloca %struct.skb_frame_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.txentry_desc* %1, %struct.txentry_desc** %4, align 8
  %8 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %9 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_4__* %10)
  store %struct.skb_frame_desc* %11, %struct.skb_frame_desc** %5, align 8
  %12 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %13 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @rt2x00_desc_read(i32* %18, i32 0, i32* %7)
  %20 = load i32, i32* @TXINFO_W0_USB_DMA_TX_PKT_LEN, align 4
  %21 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %22 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @roundup(i32 %25, i32 4)
  %27 = load i32, i32* @TXINFO_DESC_SIZE, align 4
  %28 = sub nsw i32 %26, %27
  %29 = call i32 @rt2x00_set_field32(i32* %7, i32 %20, i32 %28)
  %30 = load i32, i32* @TXINFO_W0_WIV, align 4
  %31 = load i32, i32* @ENTRY_TXD_ENCRYPT_IV, align 4
  %32 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %33 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %32, i32 0, i32 0
  %34 = call i32 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @rt2x00_set_field32(i32* %7, i32 %30, i32 %37)
  %39 = load i32, i32* @TXINFO_W0_QSEL, align 4
  %40 = call i32 @rt2x00_set_field32(i32* %7, i32 %39, i32 2)
  %41 = load i32, i32* @TXINFO_W0_SW_USE_LAST_ROUND, align 4
  %42 = call i32 @rt2x00_set_field32(i32* %7, i32 %41, i32 0)
  %43 = load i32, i32* @TXINFO_W0_USB_DMA_NEXT_VALID, align 4
  %44 = call i32 @rt2x00_set_field32(i32* %7, i32 %43, i32 0)
  %45 = load i32, i32* @TXINFO_W0_USB_DMA_TX_BURST, align 4
  %46 = load i32, i32* @ENTRY_TXD_BURST, align 4
  %47 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %48 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %47, i32 0, i32 0
  %49 = call i32 @test_bit(i32 %46, i32* %48)
  %50 = call i32 @rt2x00_set_field32(i32* %7, i32 %45, i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @rt2x00_desc_write(i32* %51, i32 0, i32 %52)
  %54 = load i32, i32* @SKBDESC_DESC_IN_SKB, align 4
  %55 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %56 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %61 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %60, i32 0, i32 1
  store i32* %59, i32** %61, align 8
  %62 = load i32, i32* @TXINFO_DESC_SIZE, align 4
  %63 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %64 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %62, %67
  %69 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %70 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_4__*) #1

declare dso_local i32 @rt2x00_desc_read(i32*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00_desc_write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
