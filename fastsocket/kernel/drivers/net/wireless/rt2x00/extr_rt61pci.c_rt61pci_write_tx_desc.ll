; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_write_tx_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_write_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_10__*, %struct.queue_entry_priv_mmio*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.queue_entry_priv_mmio = type { i32* }
%struct.txentry_desc = type { i32, i32, i64, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.skb_frame_desc = type { i32, i32, i32*, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32 }

@TXD_W1_HOST_Q_ID = common dso_local global i32 0, align 4
@TXD_W1_AIFSN = common dso_local global i32 0, align 4
@TXD_W1_CWMIN = common dso_local global i32 0, align 4
@TXD_W1_CWMAX = common dso_local global i32 0, align 4
@TXD_W1_IV_OFFSET = common dso_local global i32 0, align 4
@TXD_W1_HW_SEQUENCE = common dso_local global i32 0, align 4
@ENTRY_TXD_GENERATE_SEQ = common dso_local global i32 0, align 4
@TXD_W1_BUFFER_COUNT = common dso_local global i32 0, align 4
@TXD_W2_PLCP_SIGNAL = common dso_local global i32 0, align 4
@TXD_W2_PLCP_SERVICE = common dso_local global i32 0, align 4
@TXD_W2_PLCP_LENGTH_LOW = common dso_local global i32 0, align 4
@TXD_W2_PLCP_LENGTH_HIGH = common dso_local global i32 0, align 4
@ENTRY_TXD_ENCRYPT = common dso_local global i32 0, align 4
@TXD_W5_PID_TYPE = common dso_local global i32 0, align 4
@TXD_W5_PID_SUBTYPE = common dso_local global i32 0, align 4
@TXD_W5_TX_POWER = common dso_local global i32 0, align 4
@TXD_W5_WAITING_DMA_DONE_INT = common dso_local global i32 0, align 4
@QID_BEACON = common dso_local global i32 0, align 4
@TXD_W6_BUFFER_PHYSICAL_ADDRESS = common dso_local global i32 0, align 4
@TXD_W11_BUFFER_LENGTH0 = common dso_local global i32 0, align 4
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
@TXD_W0_IFS = common dso_local global i32 0, align 4
@TXD_W0_RETRY_MODE = common dso_local global i32 0, align 4
@ENTRY_TXD_RETRY_MODE = common dso_local global i32 0, align 4
@TXD_W0_TKIP_MIC = common dso_local global i32 0, align 4
@ENTRY_TXD_ENCRYPT_MMIC = common dso_local global i32 0, align 4
@TXD_W0_KEY_TABLE = common dso_local global i32 0, align 4
@ENTRY_TXD_ENCRYPT_PAIRWISE = common dso_local global i32 0, align 4
@TXD_W0_KEY_INDEX = common dso_local global i32 0, align 4
@TXD_W0_DATABYTE_COUNT = common dso_local global i32 0, align 4
@TXD_W0_BURST = common dso_local global i32 0, align 4
@ENTRY_TXD_BURST = common dso_local global i32 0, align 4
@TXD_W0_CIPHER_ALG = common dso_local global i32 0, align 4
@TXINFO_SIZE = common dso_local global i32 0, align 4
@TXD_DESC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*, %struct.txentry_desc*)* @rt61pci_write_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_write_tx_desc(%struct.queue_entry* %0, %struct.txentry_desc* %1) #0 {
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
  %21 = load i32, i32* @TXD_W1_HOST_Q_ID, align 4
  %22 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %23 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @rt2x00_set_field32(i32* %8, i32 %21, i32 %26)
  %28 = load i32, i32* @TXD_W1_AIFSN, align 4
  %29 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %30 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rt2x00_set_field32(i32* %8, i32 %28, i32 %33)
  %35 = load i32, i32* @TXD_W1_CWMIN, align 4
  %36 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %37 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @rt2x00_set_field32(i32* %8, i32 %35, i32 %40)
  %42 = load i32, i32* @TXD_W1_CWMAX, align 4
  %43 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %44 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @rt2x00_set_field32(i32* %8, i32 %42, i32 %47)
  %49 = load i32, i32* @TXD_W1_IV_OFFSET, align 4
  %50 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %51 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @rt2x00_set_field32(i32* %8, i32 %49, i32 %52)
  %54 = load i32, i32* @TXD_W1_HW_SEQUENCE, align 4
  %55 = load i32, i32* @ENTRY_TXD_GENERATE_SEQ, align 4
  %56 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %57 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %56, i32 0, i32 5
  %58 = call i32 @test_bit(i32 %55, i32* %57)
  %59 = call i32 @rt2x00_set_field32(i32* %8, i32 %54, i32 %58)
  %60 = load i32, i32* @TXD_W1_BUFFER_COUNT, align 4
  %61 = call i32 @rt2x00_set_field32(i32* %8, i32 %60, i32 1)
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @rt2x00_desc_write(i32* %62, i32 1, i32 %63)
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @rt2x00_desc_read(i32* %65, i32 2, i32* %8)
  %67 = load i32, i32* @TXD_W2_PLCP_SIGNAL, align 4
  %68 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %69 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @rt2x00_set_field32(i32* %8, i32 %67, i32 %72)
  %74 = load i32, i32* @TXD_W2_PLCP_SERVICE, align 4
  %75 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %76 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @rt2x00_set_field32(i32* %8, i32 %74, i32 %79)
  %81 = load i32, i32* @TXD_W2_PLCP_LENGTH_LOW, align 4
  %82 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %83 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @rt2x00_set_field32(i32* %8, i32 %81, i32 %86)
  %88 = load i32, i32* @TXD_W2_PLCP_LENGTH_HIGH, align 4
  %89 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %90 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @rt2x00_set_field32(i32* %8, i32 %88, i32 %93)
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @rt2x00_desc_write(i32* %95, i32 2, i32 %96)
  %98 = load i32, i32* @ENTRY_TXD_ENCRYPT, align 4
  %99 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %100 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %99, i32 0, i32 5
  %101 = call i32 @test_bit(i32 %98, i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %2
  %104 = load i32*, i32** %7, align 8
  %105 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %106 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @_rt2x00_desc_write(i32* %104, i32 3, i32 %109)
  %111 = load i32*, i32** %7, align 8
  %112 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %113 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %112, i32 0, i32 4
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @_rt2x00_desc_write(i32* %111, i32 4, i32 %116)
  br label %118

118:                                              ; preds = %103, %2
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @rt2x00_desc_read(i32* %119, i32 5, i32* %8)
  %121 = load i32, i32* @TXD_W5_PID_TYPE, align 4
  %122 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %123 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %122, i32 0, i32 0
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @rt2x00_set_field32(i32* %8, i32 %121, i32 %126)
  %128 = load i32, i32* @TXD_W5_PID_SUBTYPE, align 4
  %129 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %130 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %129, i32 0, i32 3
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @rt2x00_set_field32(i32* %8, i32 %128, i32 %133)
  %135 = load i32, i32* @TXD_W5_TX_POWER, align 4
  %136 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %137 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %136, i32 0, i32 0
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @TXPOWER_TO_DEV(i32 %142)
  %144 = call i32 @rt2x00_set_field32(i32* %8, i32 %135, i32 %143)
  %145 = load i32, i32* @TXD_W5_WAITING_DMA_DONE_INT, align 4
  %146 = call i32 @rt2x00_set_field32(i32* %8, i32 %145, i32 1)
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @rt2x00_desc_write(i32* %147, i32 5, i32 %148)
  %150 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %151 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %150, i32 0, i32 0
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @QID_BEACON, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %178

157:                                              ; preds = %118
  %158 = load i32*, i32** %7, align 8
  %159 = call i32 @rt2x00_desc_read(i32* %158, i32 6, i32* %8)
  %160 = load i32, i32* @TXD_W6_BUFFER_PHYSICAL_ADDRESS, align 4
  %161 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %162 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @rt2x00_set_field32(i32* %8, i32 %160, i32 %163)
  %165 = load i32*, i32** %7, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @rt2x00_desc_write(i32* %165, i32 6, i32 %166)
  %168 = load i32*, i32** %7, align 8
  %169 = call i32 @rt2x00_desc_read(i32* %168, i32 11, i32* %8)
  %170 = load i32, i32* @TXD_W11_BUFFER_LENGTH0, align 4
  %171 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %172 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @rt2x00_set_field32(i32* %8, i32 %170, i32 %173)
  %175 = load i32*, i32** %7, align 8
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @rt2x00_desc_write(i32* %175, i32 11, i32 %176)
  br label %178

178:                                              ; preds = %157, %118
  %179 = load i32*, i32** %7, align 8
  %180 = call i32 @rt2x00_desc_read(i32* %179, i32 0, i32* %8)
  %181 = load i32, i32* @TXD_W0_OWNER_NIC, align 4
  %182 = call i32 @rt2x00_set_field32(i32* %8, i32 %181, i32 1)
  %183 = load i32, i32* @TXD_W0_VALID, align 4
  %184 = call i32 @rt2x00_set_field32(i32* %8, i32 %183, i32 1)
  %185 = load i32, i32* @TXD_W0_MORE_FRAG, align 4
  %186 = load i32, i32* @ENTRY_TXD_MORE_FRAG, align 4
  %187 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %188 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %187, i32 0, i32 5
  %189 = call i32 @test_bit(i32 %186, i32* %188)
  %190 = call i32 @rt2x00_set_field32(i32* %8, i32 %185, i32 %189)
  %191 = load i32, i32* @TXD_W0_ACK, align 4
  %192 = load i32, i32* @ENTRY_TXD_ACK, align 4
  %193 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %194 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %193, i32 0, i32 5
  %195 = call i32 @test_bit(i32 %192, i32* %194)
  %196 = call i32 @rt2x00_set_field32(i32* %8, i32 %191, i32 %195)
  %197 = load i32, i32* @TXD_W0_TIMESTAMP, align 4
  %198 = load i32, i32* @ENTRY_TXD_REQ_TIMESTAMP, align 4
  %199 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %200 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %199, i32 0, i32 5
  %201 = call i32 @test_bit(i32 %198, i32* %200)
  %202 = call i32 @rt2x00_set_field32(i32* %8, i32 %197, i32 %201)
  %203 = load i32, i32* @TXD_W0_OFDM, align 4
  %204 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %205 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @RATE_MODE_OFDM, align 8
  %208 = icmp eq i64 %206, %207
  %209 = zext i1 %208 to i32
  %210 = call i32 @rt2x00_set_field32(i32* %8, i32 %203, i32 %209)
  %211 = load i32, i32* @TXD_W0_IFS, align 4
  %212 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %213 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %212, i32 0, i32 6
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @rt2x00_set_field32(i32* %8, i32 %211, i32 %216)
  %218 = load i32, i32* @TXD_W0_RETRY_MODE, align 4
  %219 = load i32, i32* @ENTRY_TXD_RETRY_MODE, align 4
  %220 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %221 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %220, i32 0, i32 5
  %222 = call i32 @test_bit(i32 %219, i32* %221)
  %223 = call i32 @rt2x00_set_field32(i32* %8, i32 %218, i32 %222)
  %224 = load i32, i32* @TXD_W0_TKIP_MIC, align 4
  %225 = load i32, i32* @ENTRY_TXD_ENCRYPT_MMIC, align 4
  %226 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %227 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %226, i32 0, i32 5
  %228 = call i32 @test_bit(i32 %225, i32* %227)
  %229 = call i32 @rt2x00_set_field32(i32* %8, i32 %224, i32 %228)
  %230 = load i32, i32* @TXD_W0_KEY_TABLE, align 4
  %231 = load i32, i32* @ENTRY_TXD_ENCRYPT_PAIRWISE, align 4
  %232 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %233 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %232, i32 0, i32 5
  %234 = call i32 @test_bit(i32 %231, i32* %233)
  %235 = call i32 @rt2x00_set_field32(i32* %8, i32 %230, i32 %234)
  %236 = load i32, i32* @TXD_W0_KEY_INDEX, align 4
  %237 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %238 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @rt2x00_set_field32(i32* %8, i32 %236, i32 %239)
  %241 = load i32, i32* @TXD_W0_DATABYTE_COUNT, align 4
  %242 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %243 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @rt2x00_set_field32(i32* %8, i32 %241, i32 %244)
  %246 = load i32, i32* @TXD_W0_BURST, align 4
  %247 = load i32, i32* @ENTRY_TXD_BURST, align 4
  %248 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %249 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %248, i32 0, i32 5
  %250 = call i32 @test_bit(i32 %247, i32* %249)
  %251 = call i32 @rt2x00_set_field32(i32* %8, i32 %246, i32 %250)
  %252 = load i32, i32* @TXD_W0_CIPHER_ALG, align 4
  %253 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %254 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @rt2x00_set_field32(i32* %8, i32 %252, i32 %255)
  %257 = load i32*, i32** %7, align 8
  %258 = load i32, i32* %8, align 4
  %259 = call i32 @rt2x00_desc_write(i32* %257, i32 0, i32 %258)
  %260 = load i32*, i32** %7, align 8
  %261 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %262 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %261, i32 0, i32 2
  store i32* %260, i32** %262, align 8
  %263 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %264 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %263, i32 0, i32 0
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @QID_BEACON, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %272

270:                                              ; preds = %178
  %271 = load i32, i32* @TXINFO_SIZE, align 4
  br label %274

272:                                              ; preds = %178
  %273 = load i32, i32* @TXD_DESC_SIZE, align 4
  br label %274

274:                                              ; preds = %272, %270
  %275 = phi i32 [ %271, %270 ], [ %273, %272 ]
  %276 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %277 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %276, i32 0, i32 1
  store i32 %275, i32* %277, align 4
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(i32) #1

declare dso_local i32 @rt2x00_desc_read(i32*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00_desc_write(i32*, i32, i32) #1

declare dso_local i32 @_rt2x00_desc_write(i32*, i32, i32) #1

declare dso_local i32 @TXPOWER_TO_DEV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
