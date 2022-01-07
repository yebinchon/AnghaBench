; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_write_tx_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_write_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.txentry_desc = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.skb_frame_desc = type { i32, i32*, i32, i32* }

@TXD_W0_BURST = common dso_local global i32 0, align 4
@ENTRY_TXD_BURST = common dso_local global i32 0, align 4
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
@TXD_W0_BURST2 = common dso_local global i32 0, align 4
@TXD_W0_CIPHER_ALG = common dso_local global i32 0, align 4
@TXD_W1_HOST_Q_ID = common dso_local global i32 0, align 4
@TXD_W1_AIFSN = common dso_local global i32 0, align 4
@TXD_W1_CWMIN = common dso_local global i32 0, align 4
@TXD_W1_CWMAX = common dso_local global i32 0, align 4
@TXD_W1_IV_OFFSET = common dso_local global i32 0, align 4
@TXD_W1_HW_SEQUENCE = common dso_local global i32 0, align 4
@ENTRY_TXD_GENERATE_SEQ = common dso_local global i32 0, align 4
@TXD_W2_PLCP_SIGNAL = common dso_local global i32 0, align 4
@TXD_W2_PLCP_SERVICE = common dso_local global i32 0, align 4
@TXD_W2_PLCP_LENGTH_LOW = common dso_local global i32 0, align 4
@TXD_W2_PLCP_LENGTH_HIGH = common dso_local global i32 0, align 4
@ENTRY_TXD_ENCRYPT = common dso_local global i32 0, align 4
@TXD_W5_TX_POWER = common dso_local global i32 0, align 4
@TXD_W5_WAITING_DMA_DONE_INT = common dso_local global i32 0, align 4
@SKBDESC_DESC_IN_SKB = common dso_local global i32 0, align 4
@TXD_DESC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*, %struct.txentry_desc*)* @rt73usb_write_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt73usb_write_tx_desc(%struct.queue_entry* %0, %struct.txentry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.txentry_desc*, align 8
  %5 = alloca %struct.skb_frame_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.txentry_desc* %1, %struct.txentry_desc** %4, align 8
  %8 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %9 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = call %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_10__* %10)
  store %struct.skb_frame_desc* %11, %struct.skb_frame_desc** %5, align 8
  %12 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %13 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @rt2x00_desc_read(i32* %18, i32 0, i32* %7)
  %20 = load i32, i32* @TXD_W0_BURST, align 4
  %21 = load i32, i32* @ENTRY_TXD_BURST, align 4
  %22 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %23 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %22, i32 0, i32 5
  %24 = call i32 @test_bit(i32 %21, i32* %23)
  %25 = call i32 @rt2x00_set_field32(i32* %7, i32 %20, i32 %24)
  %26 = load i32, i32* @TXD_W0_VALID, align 4
  %27 = call i32 @rt2x00_set_field32(i32* %7, i32 %26, i32 1)
  %28 = load i32, i32* @TXD_W0_MORE_FRAG, align 4
  %29 = load i32, i32* @ENTRY_TXD_MORE_FRAG, align 4
  %30 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %31 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %30, i32 0, i32 5
  %32 = call i32 @test_bit(i32 %29, i32* %31)
  %33 = call i32 @rt2x00_set_field32(i32* %7, i32 %28, i32 %32)
  %34 = load i32, i32* @TXD_W0_ACK, align 4
  %35 = load i32, i32* @ENTRY_TXD_ACK, align 4
  %36 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %37 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %36, i32 0, i32 5
  %38 = call i32 @test_bit(i32 %35, i32* %37)
  %39 = call i32 @rt2x00_set_field32(i32* %7, i32 %34, i32 %38)
  %40 = load i32, i32* @TXD_W0_TIMESTAMP, align 4
  %41 = load i32, i32* @ENTRY_TXD_REQ_TIMESTAMP, align 4
  %42 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %43 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %42, i32 0, i32 5
  %44 = call i32 @test_bit(i32 %41, i32* %43)
  %45 = call i32 @rt2x00_set_field32(i32* %7, i32 %40, i32 %44)
  %46 = load i32, i32* @TXD_W0_OFDM, align 4
  %47 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %48 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @RATE_MODE_OFDM, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @rt2x00_set_field32(i32* %7, i32 %46, i32 %52)
  %54 = load i32, i32* @TXD_W0_IFS, align 4
  %55 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %56 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @rt2x00_set_field32(i32* %7, i32 %54, i32 %59)
  %61 = load i32, i32* @TXD_W0_RETRY_MODE, align 4
  %62 = load i32, i32* @ENTRY_TXD_RETRY_MODE, align 4
  %63 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %64 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %63, i32 0, i32 5
  %65 = call i32 @test_bit(i32 %62, i32* %64)
  %66 = call i32 @rt2x00_set_field32(i32* %7, i32 %61, i32 %65)
  %67 = load i32, i32* @TXD_W0_TKIP_MIC, align 4
  %68 = load i32, i32* @ENTRY_TXD_ENCRYPT_MMIC, align 4
  %69 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %70 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %69, i32 0, i32 5
  %71 = call i32 @test_bit(i32 %68, i32* %70)
  %72 = call i32 @rt2x00_set_field32(i32* %7, i32 %67, i32 %71)
  %73 = load i32, i32* @TXD_W0_KEY_TABLE, align 4
  %74 = load i32, i32* @ENTRY_TXD_ENCRYPT_PAIRWISE, align 4
  %75 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %76 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %75, i32 0, i32 5
  %77 = call i32 @test_bit(i32 %74, i32* %76)
  %78 = call i32 @rt2x00_set_field32(i32* %7, i32 %73, i32 %77)
  %79 = load i32, i32* @TXD_W0_KEY_INDEX, align 4
  %80 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %81 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @rt2x00_set_field32(i32* %7, i32 %79, i32 %82)
  %84 = load i32, i32* @TXD_W0_DATABYTE_COUNT, align 4
  %85 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %86 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @rt2x00_set_field32(i32* %7, i32 %84, i32 %87)
  %89 = load i32, i32* @TXD_W0_BURST2, align 4
  %90 = load i32, i32* @ENTRY_TXD_BURST, align 4
  %91 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %92 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %91, i32 0, i32 5
  %93 = call i32 @test_bit(i32 %90, i32* %92)
  %94 = call i32 @rt2x00_set_field32(i32* %7, i32 %89, i32 %93)
  %95 = load i32, i32* @TXD_W0_CIPHER_ALG, align 4
  %96 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %97 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @rt2x00_set_field32(i32* %7, i32 %95, i32 %98)
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @rt2x00_desc_write(i32* %100, i32 0, i32 %101)
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @rt2x00_desc_read(i32* %103, i32 1, i32* %7)
  %105 = load i32, i32* @TXD_W1_HOST_Q_ID, align 4
  %106 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %107 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %106, i32 0, i32 0
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @rt2x00_set_field32(i32* %7, i32 %105, i32 %110)
  %112 = load i32, i32* @TXD_W1_AIFSN, align 4
  %113 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %114 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %113, i32 0, i32 0
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @rt2x00_set_field32(i32* %7, i32 %112, i32 %117)
  %119 = load i32, i32* @TXD_W1_CWMIN, align 4
  %120 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %121 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %120, i32 0, i32 0
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @rt2x00_set_field32(i32* %7, i32 %119, i32 %124)
  %126 = load i32, i32* @TXD_W1_CWMAX, align 4
  %127 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %128 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %127, i32 0, i32 0
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @rt2x00_set_field32(i32* %7, i32 %126, i32 %131)
  %133 = load i32, i32* @TXD_W1_IV_OFFSET, align 4
  %134 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %135 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @rt2x00_set_field32(i32* %7, i32 %133, i32 %136)
  %138 = load i32, i32* @TXD_W1_HW_SEQUENCE, align 4
  %139 = load i32, i32* @ENTRY_TXD_GENERATE_SEQ, align 4
  %140 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %141 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %140, i32 0, i32 5
  %142 = call i32 @test_bit(i32 %139, i32* %141)
  %143 = call i32 @rt2x00_set_field32(i32* %7, i32 %138, i32 %142)
  %144 = load i32*, i32** %6, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @rt2x00_desc_write(i32* %144, i32 1, i32 %145)
  %147 = load i32*, i32** %6, align 8
  %148 = call i32 @rt2x00_desc_read(i32* %147, i32 2, i32* %7)
  %149 = load i32, i32* @TXD_W2_PLCP_SIGNAL, align 4
  %150 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %151 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @rt2x00_set_field32(i32* %7, i32 %149, i32 %154)
  %156 = load i32, i32* @TXD_W2_PLCP_SERVICE, align 4
  %157 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %158 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %157, i32 0, i32 6
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @rt2x00_set_field32(i32* %7, i32 %156, i32 %161)
  %163 = load i32, i32* @TXD_W2_PLCP_LENGTH_LOW, align 4
  %164 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %165 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %164, i32 0, i32 6
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @rt2x00_set_field32(i32* %7, i32 %163, i32 %168)
  %170 = load i32, i32* @TXD_W2_PLCP_LENGTH_HIGH, align 4
  %171 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %172 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %171, i32 0, i32 6
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @rt2x00_set_field32(i32* %7, i32 %170, i32 %175)
  %177 = load i32*, i32** %6, align 8
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @rt2x00_desc_write(i32* %177, i32 2, i32 %178)
  %180 = load i32, i32* @ENTRY_TXD_ENCRYPT, align 4
  %181 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %182 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %181, i32 0, i32 5
  %183 = call i32 @test_bit(i32 %180, i32* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %200

185:                                              ; preds = %2
  %186 = load i32*, i32** %6, align 8
  %187 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %188 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %187, i32 0, i32 3
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @_rt2x00_desc_write(i32* %186, i32 3, i32 %191)
  %193 = load i32*, i32** %6, align 8
  %194 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %195 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %194, i32 0, i32 3
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @_rt2x00_desc_write(i32* %193, i32 4, i32 %198)
  br label %200

200:                                              ; preds = %185, %2
  %201 = load i32*, i32** %6, align 8
  %202 = call i32 @rt2x00_desc_read(i32* %201, i32 5, i32* %7)
  %203 = load i32, i32* @TXD_W5_TX_POWER, align 4
  %204 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %205 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %204, i32 0, i32 0
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 4
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @TXPOWER_TO_DEV(i32 %210)
  %212 = call i32 @rt2x00_set_field32(i32* %7, i32 %203, i32 %211)
  %213 = load i32, i32* @TXD_W5_WAITING_DMA_DONE_INT, align 4
  %214 = call i32 @rt2x00_set_field32(i32* %7, i32 %213, i32 1)
  %215 = load i32*, i32** %6, align 8
  %216 = load i32, i32* %7, align 4
  %217 = call i32 @rt2x00_desc_write(i32* %215, i32 5, i32 %216)
  %218 = load i32, i32* @SKBDESC_DESC_IN_SKB, align 4
  %219 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %220 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 8
  %223 = load i32*, i32** %6, align 8
  %224 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %225 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %224, i32 0, i32 1
  store i32* %223, i32** %225, align 8
  %226 = load i32, i32* @TXD_DESC_SIZE, align 4
  %227 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %228 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 8
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_10__*) #1

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
