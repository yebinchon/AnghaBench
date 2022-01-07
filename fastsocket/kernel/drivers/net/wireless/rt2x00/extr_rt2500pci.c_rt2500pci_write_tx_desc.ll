; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500pci.c_rt2500pci_write_tx_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500pci.c_rt2500pci_write_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_4__*, %struct.queue_entry_priv_mmio*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.queue_entry_priv_mmio = type { i32* }
%struct.txentry_desc = type { i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.skb_frame_desc = type { i32, i32, i32* }

@TXD_W1_BUFFER_ADDRESS = common dso_local global i32 0, align 4
@TXD_W2_IV_OFFSET = common dso_local global i32 0, align 4
@IEEE80211_HEADER = common dso_local global i32 0, align 4
@TXD_W2_AIFS = common dso_local global i32 0, align 4
@TXD_W2_CWMIN = common dso_local global i32 0, align 4
@TXD_W2_CWMAX = common dso_local global i32 0, align 4
@TXD_W3_PLCP_SIGNAL = common dso_local global i32 0, align 4
@TXD_W3_PLCP_SERVICE = common dso_local global i32 0, align 4
@TXD_W3_PLCP_LENGTH_LOW = common dso_local global i32 0, align 4
@TXD_W3_PLCP_LENGTH_HIGH = common dso_local global i32 0, align 4
@TXD_W10_RTS = common dso_local global i32 0, align 4
@ENTRY_TXD_RTS_FRAME = common dso_local global i32 0, align 4
@TXD_W0_OWNER_NIC = common dso_local global i32 0, align 4
@TXD_W0_VALID = common dso_local global i32 0, align 4
@TXD_W0_MORE_FRAG = common dso_local global i32 0, align 4
@ENTRY_TXD_MORE_FRAG = common dso_local global i32 0, align 4
@TXD_W0_ACK = common dso_local global i32 0, align 4
@ENTRY_TXD_ACK = common dso_local global i32 0, align 4
@TXD_W0_TIMESTAMP = common dso_local global i32 0, align 4
@ENTRY_TXD_REQ_TIMESTAMP = common dso_local global i32 0, align 4
@TXD_W0_OFDM = common dso_local global i32 0, align 4
@RATE_MODE_OFDM = common dso_local global i64 0, align 8
@TXD_W0_CIPHER_OWNER = common dso_local global i32 0, align 4
@TXD_W0_IFS = common dso_local global i32 0, align 4
@TXD_W0_RETRY_MODE = common dso_local global i32 0, align 4
@ENTRY_TXD_RETRY_MODE = common dso_local global i32 0, align 4
@TXD_W0_DATABYTE_COUNT = common dso_local global i32 0, align 4
@TXD_W0_CIPHER_ALG = common dso_local global i32 0, align 4
@CIPHER_NONE = common dso_local global i32 0, align 4
@TXD_DESC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*, %struct.txentry_desc*)* @rt2500pci_write_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2500pci_write_tx_desc(%struct.queue_entry* %0, %struct.txentry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.txentry_desc*, align 8
  %5 = alloca %struct.skb_frame_desc*, align 8
  %6 = alloca %struct.queue_entry_priv_mmio*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.txentry_desc* %1, %struct.txentry_desc** %4, align 8
  %9 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %10 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.skb_frame_desc* @get_skb_frame_desc(i32 %11)
  store %struct.skb_frame_desc* %12, %struct.skb_frame_desc** %5, align 8
  %13 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %14 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %13, i32 0, i32 1
  %15 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %14, align 8
  store %struct.queue_entry_priv_mmio* %15, %struct.queue_entry_priv_mmio** %6, align 8
  %16 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %6, align 8
  %17 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @rt2x00_desc_read(i32* %19, i32 1, i32* %8)
  %21 = load i32, i32* @TXD_W1_BUFFER_ADDRESS, align 4
  %22 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %23 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @rt2x00_set_field32(i32* %8, i32 %21, i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @rt2x00_desc_write(i32* %26, i32 1, i32 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @rt2x00_desc_read(i32* %29, i32 2, i32* %8)
  %31 = load i32, i32* @TXD_W2_IV_OFFSET, align 4
  %32 = load i32, i32* @IEEE80211_HEADER, align 4
  %33 = call i32 @rt2x00_set_field32(i32* %8, i32 %31, i32 %32)
  %34 = load i32, i32* @TXD_W2_AIFS, align 4
  %35 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %36 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @rt2x00_set_field32(i32* %8, i32 %34, i32 %39)
  %41 = load i32, i32* @TXD_W2_CWMIN, align 4
  %42 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %43 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @rt2x00_set_field32(i32* %8, i32 %41, i32 %46)
  %48 = load i32, i32* @TXD_W2_CWMAX, align 4
  %49 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %50 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @rt2x00_set_field32(i32* %8, i32 %48, i32 %53)
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @rt2x00_desc_write(i32* %55, i32 2, i32 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @rt2x00_desc_read(i32* %58, i32 3, i32* %8)
  %60 = load i32, i32* @TXD_W3_PLCP_SIGNAL, align 4
  %61 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %62 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @rt2x00_set_field32(i32* %8, i32 %60, i32 %65)
  %67 = load i32, i32* @TXD_W3_PLCP_SERVICE, align 4
  %68 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %69 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @rt2x00_set_field32(i32* %8, i32 %67, i32 %72)
  %74 = load i32, i32* @TXD_W3_PLCP_LENGTH_LOW, align 4
  %75 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %76 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @rt2x00_set_field32(i32* %8, i32 %74, i32 %79)
  %81 = load i32, i32* @TXD_W3_PLCP_LENGTH_HIGH, align 4
  %82 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %83 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @rt2x00_set_field32(i32* %8, i32 %81, i32 %86)
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @rt2x00_desc_write(i32* %88, i32 3, i32 %89)
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @rt2x00_desc_read(i32* %91, i32 10, i32* %8)
  %93 = load i32, i32* @TXD_W10_RTS, align 4
  %94 = load i32, i32* @ENTRY_TXD_RTS_FRAME, align 4
  %95 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %96 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %95, i32 0, i32 2
  %97 = call i32 @test_bit(i32 %94, i32* %96)
  %98 = call i32 @rt2x00_set_field32(i32* %8, i32 %93, i32 %97)
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @rt2x00_desc_write(i32* %99, i32 10, i32 %100)
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @rt2x00_desc_read(i32* %102, i32 0, i32* %8)
  %104 = load i32, i32* @TXD_W0_OWNER_NIC, align 4
  %105 = call i32 @rt2x00_set_field32(i32* %8, i32 %104, i32 1)
  %106 = load i32, i32* @TXD_W0_VALID, align 4
  %107 = call i32 @rt2x00_set_field32(i32* %8, i32 %106, i32 1)
  %108 = load i32, i32* @TXD_W0_MORE_FRAG, align 4
  %109 = load i32, i32* @ENTRY_TXD_MORE_FRAG, align 4
  %110 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %111 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %110, i32 0, i32 2
  %112 = call i32 @test_bit(i32 %109, i32* %111)
  %113 = call i32 @rt2x00_set_field32(i32* %8, i32 %108, i32 %112)
  %114 = load i32, i32* @TXD_W0_ACK, align 4
  %115 = load i32, i32* @ENTRY_TXD_ACK, align 4
  %116 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %117 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %116, i32 0, i32 2
  %118 = call i32 @test_bit(i32 %115, i32* %117)
  %119 = call i32 @rt2x00_set_field32(i32* %8, i32 %114, i32 %118)
  %120 = load i32, i32* @TXD_W0_TIMESTAMP, align 4
  %121 = load i32, i32* @ENTRY_TXD_REQ_TIMESTAMP, align 4
  %122 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %123 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %122, i32 0, i32 2
  %124 = call i32 @test_bit(i32 %121, i32* %123)
  %125 = call i32 @rt2x00_set_field32(i32* %8, i32 %120, i32 %124)
  %126 = load i32, i32* @TXD_W0_OFDM, align 4
  %127 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %128 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @RATE_MODE_OFDM, align 8
  %131 = icmp eq i64 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @rt2x00_set_field32(i32* %8, i32 %126, i32 %132)
  %134 = load i32, i32* @TXD_W0_CIPHER_OWNER, align 4
  %135 = call i32 @rt2x00_set_field32(i32* %8, i32 %134, i32 1)
  %136 = load i32, i32* @TXD_W0_IFS, align 4
  %137 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %138 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @rt2x00_set_field32(i32* %8, i32 %136, i32 %141)
  %143 = load i32, i32* @TXD_W0_RETRY_MODE, align 4
  %144 = load i32, i32* @ENTRY_TXD_RETRY_MODE, align 4
  %145 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %146 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %145, i32 0, i32 2
  %147 = call i32 @test_bit(i32 %144, i32* %146)
  %148 = call i32 @rt2x00_set_field32(i32* %8, i32 %143, i32 %147)
  %149 = load i32, i32* @TXD_W0_DATABYTE_COUNT, align 4
  %150 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %151 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @rt2x00_set_field32(i32* %8, i32 %149, i32 %152)
  %154 = load i32, i32* @TXD_W0_CIPHER_ALG, align 4
  %155 = load i32, i32* @CIPHER_NONE, align 4
  %156 = call i32 @rt2x00_set_field32(i32* %8, i32 %154, i32 %155)
  %157 = load i32*, i32** %7, align 8
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @rt2x00_desc_write(i32* %157, i32 0, i32 %158)
  %160 = load i32*, i32** %7, align 8
  %161 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %162 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %161, i32 0, i32 2
  store i32* %160, i32** %162, align 8
  %163 = load i32, i32* @TXD_DESC_SIZE, align 4
  %164 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %165 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(i32) #1

declare dso_local i32 @rt2x00_desc_read(i32*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00_desc_write(i32*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
