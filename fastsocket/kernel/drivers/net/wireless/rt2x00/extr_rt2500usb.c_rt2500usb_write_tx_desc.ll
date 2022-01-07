; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500usb.c_rt2500usb_write_tx_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500usb.c_rt2500usb_write_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_5__*, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.txentry_desc = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.skb_frame_desc = type { i32, i32*, i32, i32* }

@TXD_W0_RETRY_LIMIT = common dso_local global i32 0, align 4
@TXD_W0_MORE_FRAG = common dso_local global i32 0, align 4
@ENTRY_TXD_MORE_FRAG = common dso_local global i32 0, align 4
@TXD_W0_ACK = common dso_local global i32 0, align 4
@ENTRY_TXD_ACK = common dso_local global i32 0, align 4
@TXD_W0_TIMESTAMP = common dso_local global i32 0, align 4
@ENTRY_TXD_REQ_TIMESTAMP = common dso_local global i32 0, align 4
@TXD_W0_OFDM = common dso_local global i32 0, align 4
@RATE_MODE_OFDM = common dso_local global i64 0, align 8
@TXD_W0_NEW_SEQ = common dso_local global i32 0, align 4
@ENTRY_TXD_FIRST_FRAGMENT = common dso_local global i32 0, align 4
@TXD_W0_IFS = common dso_local global i32 0, align 4
@TXD_W0_DATABYTE_COUNT = common dso_local global i32 0, align 4
@TXD_W0_CIPHER = common dso_local global i32 0, align 4
@TXD_W0_KEY_ID = common dso_local global i32 0, align 4
@TXD_W1_IV_OFFSET = common dso_local global i32 0, align 4
@TXD_W1_AIFS = common dso_local global i32 0, align 4
@TXD_W1_CWMIN = common dso_local global i32 0, align 4
@TXD_W1_CWMAX = common dso_local global i32 0, align 4
@TXD_W2_PLCP_SIGNAL = common dso_local global i32 0, align 4
@TXD_W2_PLCP_SERVICE = common dso_local global i32 0, align 4
@TXD_W2_PLCP_LENGTH_LOW = common dso_local global i32 0, align 4
@TXD_W2_PLCP_LENGTH_HIGH = common dso_local global i32 0, align 4
@ENTRY_TXD_ENCRYPT = common dso_local global i32 0, align 4
@SKBDESC_DESC_IN_SKB = common dso_local global i32 0, align 4
@TXD_DESC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*, %struct.txentry_desc*)* @rt2500usb_write_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2500usb_write_tx_desc(%struct.queue_entry* %0, %struct.txentry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.txentry_desc*, align 8
  %5 = alloca %struct.skb_frame_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.txentry_desc* %1, %struct.txentry_desc** %4, align 8
  %8 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %9 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = call %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_8__* %10)
  store %struct.skb_frame_desc* %11, %struct.skb_frame_desc** %5, align 8
  %12 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %13 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @rt2x00_desc_read(i32* %18, i32 0, i32* %7)
  %20 = load i32, i32* @TXD_W0_RETRY_LIMIT, align 4
  %21 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %22 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @rt2x00_set_field32(i32* %7, i32 %20, i32 %23)
  %25 = load i32, i32* @TXD_W0_MORE_FRAG, align 4
  %26 = load i32, i32* @ENTRY_TXD_MORE_FRAG, align 4
  %27 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %28 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %27, i32 0, i32 5
  %29 = call i32 @test_bit(i32 %26, i32* %28)
  %30 = call i32 @rt2x00_set_field32(i32* %7, i32 %25, i32 %29)
  %31 = load i32, i32* @TXD_W0_ACK, align 4
  %32 = load i32, i32* @ENTRY_TXD_ACK, align 4
  %33 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %34 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %33, i32 0, i32 5
  %35 = call i32 @test_bit(i32 %32, i32* %34)
  %36 = call i32 @rt2x00_set_field32(i32* %7, i32 %31, i32 %35)
  %37 = load i32, i32* @TXD_W0_TIMESTAMP, align 4
  %38 = load i32, i32* @ENTRY_TXD_REQ_TIMESTAMP, align 4
  %39 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %40 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %39, i32 0, i32 5
  %41 = call i32 @test_bit(i32 %38, i32* %40)
  %42 = call i32 @rt2x00_set_field32(i32* %7, i32 %37, i32 %41)
  %43 = load i32, i32* @TXD_W0_OFDM, align 4
  %44 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %45 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RATE_MODE_OFDM, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @rt2x00_set_field32(i32* %7, i32 %43, i32 %49)
  %51 = load i32, i32* @TXD_W0_NEW_SEQ, align 4
  %52 = load i32, i32* @ENTRY_TXD_FIRST_FRAGMENT, align 4
  %53 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %54 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %53, i32 0, i32 5
  %55 = call i32 @test_bit(i32 %52, i32* %54)
  %56 = call i32 @rt2x00_set_field32(i32* %7, i32 %51, i32 %55)
  %57 = load i32, i32* @TXD_W0_IFS, align 4
  %58 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %59 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @rt2x00_set_field32(i32* %7, i32 %57, i32 %62)
  %64 = load i32, i32* @TXD_W0_DATABYTE_COUNT, align 4
  %65 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %66 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @rt2x00_set_field32(i32* %7, i32 %64, i32 %67)
  %69 = load i32, i32* @TXD_W0_CIPHER, align 4
  %70 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %71 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 @rt2x00_set_field32(i32* %7, i32 %69, i32 %76)
  %78 = load i32, i32* @TXD_W0_KEY_ID, align 4
  %79 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %80 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @rt2x00_set_field32(i32* %7, i32 %78, i32 %81)
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @rt2x00_desc_write(i32* %83, i32 0, i32 %84)
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @rt2x00_desc_read(i32* %86, i32 1, i32* %7)
  %88 = load i32, i32* @TXD_W1_IV_OFFSET, align 4
  %89 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %90 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @rt2x00_set_field32(i32* %7, i32 %88, i32 %91)
  %93 = load i32, i32* @TXD_W1_AIFS, align 4
  %94 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %95 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @rt2x00_set_field32(i32* %7, i32 %93, i32 %98)
  %100 = load i32, i32* @TXD_W1_CWMIN, align 4
  %101 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %102 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @rt2x00_set_field32(i32* %7, i32 %100, i32 %105)
  %107 = load i32, i32* @TXD_W1_CWMAX, align 4
  %108 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %109 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @rt2x00_set_field32(i32* %7, i32 %107, i32 %112)
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @rt2x00_desc_write(i32* %114, i32 1, i32 %115)
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @rt2x00_desc_read(i32* %117, i32 2, i32* %7)
  %119 = load i32, i32* @TXD_W2_PLCP_SIGNAL, align 4
  %120 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %121 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @rt2x00_set_field32(i32* %7, i32 %119, i32 %124)
  %126 = load i32, i32* @TXD_W2_PLCP_SERVICE, align 4
  %127 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %128 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @rt2x00_set_field32(i32* %7, i32 %126, i32 %131)
  %133 = load i32, i32* @TXD_W2_PLCP_LENGTH_LOW, align 4
  %134 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %135 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %134, i32 0, i32 6
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @rt2x00_set_field32(i32* %7, i32 %133, i32 %138)
  %140 = load i32, i32* @TXD_W2_PLCP_LENGTH_HIGH, align 4
  %141 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %142 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @rt2x00_set_field32(i32* %7, i32 %140, i32 %145)
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @rt2x00_desc_write(i32* %147, i32 2, i32 %148)
  %150 = load i32, i32* @ENTRY_TXD_ENCRYPT, align 4
  %151 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %152 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %151, i32 0, i32 5
  %153 = call i32 @test_bit(i32 %150, i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %170

155:                                              ; preds = %2
  %156 = load i32*, i32** %6, align 8
  %157 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %158 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @_rt2x00_desc_write(i32* %156, i32 3, i32 %161)
  %163 = load i32*, i32** %6, align 8
  %164 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %165 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @_rt2x00_desc_write(i32* %163, i32 4, i32 %168)
  br label %170

170:                                              ; preds = %155, %2
  %171 = load i32, i32* @SKBDESC_DESC_IN_SKB, align 4
  %172 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %173 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  %176 = load i32*, i32** %6, align 8
  %177 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %178 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %177, i32 0, i32 1
  store i32* %176, i32** %178, align 8
  %179 = load i32, i32* @TXD_DESC_SIZE, align 4
  %180 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %181 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_8__*) #1

declare dso_local i32 @rt2x00_desc_read(i32*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00_desc_write(i32*, i32, i32) #1

declare dso_local i32 @_rt2x00_desc_write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
