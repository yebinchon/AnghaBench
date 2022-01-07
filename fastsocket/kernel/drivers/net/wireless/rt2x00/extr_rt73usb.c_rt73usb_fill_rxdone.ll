; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_fill_rxdone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_fill_rxdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }
%struct.rxdone_entry_desc = type { i64, i64, i8*, i32, i32, i8*, i32, i32, i32* }
%struct.skb_frame_desc = type { i64, i32 }

@RXD_W0_CRC_ERROR = common dso_local global i32 0, align 4
@RX_FLAG_FAILED_FCS_CRC = common dso_local global i32 0, align 4
@RXD_W0_CIPHER_ALG = common dso_local global i32 0, align 4
@RXD_W0_CIPHER_ERROR = common dso_local global i32 0, align 4
@CIPHER_NONE = common dso_local global i64 0, align 8
@RXDONE_CRYPTO_IV = common dso_local global i32 0, align 4
@RXDONE_CRYPTO_ICV = common dso_local global i32 0, align 4
@RX_FLAG_IV_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_STRIPPED = common dso_local global i32 0, align 4
@RX_CRYPTO_SUCCESS = common dso_local global i64 0, align 8
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@RX_CRYPTO_FAIL_MIC = common dso_local global i64 0, align 8
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@RXD_W1_SIGNAL = common dso_local global i32 0, align 4
@RXD_W0_DATABYTE_COUNT = common dso_local global i32 0, align 4
@RXD_W0_OFDM = common dso_local global i32 0, align 4
@RXDONE_SIGNAL_PLCP = common dso_local global i32 0, align 4
@RXDONE_SIGNAL_BITRATE = common dso_local global i32 0, align 4
@RXD_W0_MY_BSS = common dso_local global i32 0, align 4
@RXDONE_MY_BSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*, %struct.rxdone_entry_desc*)* @rt73usb_fill_rxdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt73usb_fill_rxdone(%struct.queue_entry* %0, %struct.rxdone_entry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.rxdone_entry_desc*, align 8
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.skb_frame_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.rxdone_entry_desc* %1, %struct.rxdone_entry_desc** %4, align 8
  %10 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %11 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %13, align 8
  store %struct.rt2x00_dev* %14, %struct.rt2x00_dev** %5, align 8
  %15 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %16 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = call %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_6__* %17)
  store %struct.skb_frame_desc* %18, %struct.skb_frame_desc** %6, align 8
  %19 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %20 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %7, align 8
  %25 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %6, align 8
  %26 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %6, align 8
  %30 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @memcpy(i64 %27, i32* %28, i32 %31)
  %33 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %6, align 8
  %34 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %7, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @rt2x00_desc_read(i32* %37, i32 0, i32* %8)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @rt2x00_desc_read(i32* %39, i32 1, i32* %9)
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @RXD_W0_CRC_ERROR, align 4
  %43 = call i8* @rt2x00_get_field32(i32 %41, i32 %42)
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %2
  %46 = load i32, i32* @RX_FLAG_FAILED_FCS_CRC, align 4
  %47 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %48 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %2
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @RXD_W0_CIPHER_ALG, align 4
  %54 = call i8* @rt2x00_get_field32(i32 %52, i32 %53)
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %57 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @RXD_W0_CIPHER_ERROR, align 4
  %60 = call i8* @rt2x00_get_field32(i32 %58, i32 %59)
  %61 = ptrtoint i8* %60 to i64
  %62 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %63 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %65 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CIPHER_NONE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %131

69:                                               ; preds = %51
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %72 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %71, i32 0, i32 8
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = call i32 @_rt2x00_desc_read(i32* %70, i32 2, i32* %74)
  %76 = load i32*, i32** %7, align 8
  %77 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %78 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %77, i32 0, i32 8
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = call i32 @_rt2x00_desc_read(i32* %76, i32 3, i32* %80)
  %82 = load i32, i32* @RXDONE_CRYPTO_IV, align 4
  %83 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %84 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %89 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %88, i32 0, i32 7
  %90 = call i32 @_rt2x00_desc_read(i32* %87, i32 4, i32* %89)
  %91 = load i32, i32* @RXDONE_CRYPTO_ICV, align 4
  %92 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %93 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %97 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %98 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* @RX_FLAG_MMIC_STRIPPED, align 4
  %102 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %103 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %107 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @RX_CRYPTO_SUCCESS, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %69
  %112 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %113 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %114 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %130

117:                                              ; preds = %69
  %118 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %119 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @RX_CRYPTO_FAIL_MIC, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %125 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %126 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %123, %117
  br label %130

130:                                              ; preds = %129, %111
  br label %131

131:                                              ; preds = %130, %51
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @RXD_W1_SIGNAL, align 4
  %134 = call i8* @rt2x00_get_field32(i32 %132, i32 %133)
  %135 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %136 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %135, i32 0, i32 5
  store i8* %134, i8** %136, align 8
  %137 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @rt73usb_agc_to_rssi(%struct.rt2x00_dev* %137, i32 %138)
  %140 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %141 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @RXD_W0_DATABYTE_COUNT, align 4
  %144 = call i8* @rt2x00_get_field32(i32 %142, i32 %143)
  %145 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %146 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %145, i32 0, i32 2
  store i8* %144, i8** %146, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @RXD_W0_OFDM, align 4
  %149 = call i8* @rt2x00_get_field32(i32 %147, i32 %148)
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %157

151:                                              ; preds = %131
  %152 = load i32, i32* @RXDONE_SIGNAL_PLCP, align 4
  %153 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %154 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 8
  br label %163

157:                                              ; preds = %131
  %158 = load i32, i32* @RXDONE_SIGNAL_BITRATE, align 4
  %159 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %160 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %157, %151
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* @RXD_W0_MY_BSS, align 4
  %166 = call i8* @rt2x00_get_field32(i32 %164, i32 %165)
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load i32, i32* @RXDONE_MY_BSS, align 4
  %170 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %171 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %168, %163
  %175 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %176 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %175, i32 0, i32 0
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %179 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %178, i32 0, i32 1
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @skb_pull(%struct.TYPE_6__* %177, i32 %182)
  %184 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %185 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %184, i32 0, i32 0
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %188 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %187, i32 0, i32 2
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @skb_trim(%struct.TYPE_6__* %186, i8* %189)
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_6__*) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @rt2x00_desc_read(i32*, i32, i32*) #1

declare dso_local i8* @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @_rt2x00_desc_read(i32*, i32, i32*) #1

declare dso_local i32 @rt73usb_agc_to_rssi(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @skb_pull(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @skb_trim(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
