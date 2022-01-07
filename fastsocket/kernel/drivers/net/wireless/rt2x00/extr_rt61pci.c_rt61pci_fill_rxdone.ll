; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_fill_rxdone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_fill_rxdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.queue_entry_priv_mmio*, %struct.TYPE_2__* }
%struct.queue_entry_priv_mmio = type { i32 }
%struct.TYPE_2__ = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }
%struct.rxdone_entry_desc = type { i64, i64, i32, i8*, i32, i8*, i32, i32, i32* }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*, %struct.rxdone_entry_desc*)* @rt61pci_fill_rxdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_fill_rxdone(%struct.queue_entry* %0, %struct.rxdone_entry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.rxdone_entry_desc*, align 8
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.queue_entry_priv_mmio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.rxdone_entry_desc* %1, %struct.rxdone_entry_desc** %4, align 8
  %9 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %10 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %12, align 8
  store %struct.rt2x00_dev* %13, %struct.rt2x00_dev** %5, align 8
  %14 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %15 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %14, i32 0, i32 0
  %16 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %15, align 8
  store %struct.queue_entry_priv_mmio* %16, %struct.queue_entry_priv_mmio** %6, align 8
  %17 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %6, align 8
  %18 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rt2x00_desc_read(i32 %19, i32 0, i32* %7)
  %21 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %6, align 8
  %22 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rt2x00_desc_read(i32 %23, i32 1, i32* %8)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @RXD_W0_CRC_ERROR, align 4
  %27 = call i8* @rt2x00_get_field32(i32 %25, i32 %26)
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load i32, i32* @RX_FLAG_FAILED_FCS_CRC, align 4
  %31 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %32 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %29, %2
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @RXD_W0_CIPHER_ALG, align 4
  %38 = call i8* @rt2x00_get_field32(i32 %36, i32 %37)
  %39 = ptrtoint i8* %38 to i64
  %40 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %41 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @RXD_W0_CIPHER_ERROR, align 4
  %44 = call i8* @rt2x00_get_field32(i32 %42, i32 %43)
  %45 = ptrtoint i8* %44 to i64
  %46 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %47 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %49 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CIPHER_NONE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %121

53:                                               ; preds = %35
  %54 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %6, align 8
  %55 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %58 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %57, i32 0, i32 8
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = call i32 @_rt2x00_desc_read(i32 %56, i32 2, i32* %60)
  %62 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %6, align 8
  %63 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %66 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %65, i32 0, i32 8
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = call i32 @_rt2x00_desc_read(i32 %64, i32 3, i32* %68)
  %70 = load i32, i32* @RXDONE_CRYPTO_IV, align 4
  %71 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %72 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %6, align 8
  %76 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %79 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %78, i32 0, i32 7
  %80 = call i32 @_rt2x00_desc_read(i32 %77, i32 4, i32* %79)
  %81 = load i32, i32* @RXDONE_CRYPTO_ICV, align 4
  %82 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %83 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %87 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %88 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load i32, i32* @RX_FLAG_MMIC_STRIPPED, align 4
  %92 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %93 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %97 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @RX_CRYPTO_SUCCESS, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %53
  %102 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %103 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %104 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %120

107:                                              ; preds = %53
  %108 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %109 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @RX_CRYPTO_FAIL_MIC, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %115 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %116 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %113, %107
  br label %120

120:                                              ; preds = %119, %101
  br label %121

121:                                              ; preds = %120, %35
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @RXD_W1_SIGNAL, align 4
  %124 = call i8* @rt2x00_get_field32(i32 %122, i32 %123)
  %125 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %126 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %125, i32 0, i32 5
  store i8* %124, i8** %126, align 8
  %127 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @rt61pci_agc_to_rssi(%struct.rt2x00_dev* %127, i32 %128)
  %130 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %131 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @RXD_W0_DATABYTE_COUNT, align 4
  %134 = call i8* @rt2x00_get_field32(i32 %132, i32 %133)
  %135 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %136 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %135, i32 0, i32 3
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @RXD_W0_OFDM, align 4
  %139 = call i8* @rt2x00_get_field32(i32 %137, i32 %138)
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %121
  %142 = load i32, i32* @RXDONE_SIGNAL_PLCP, align 4
  %143 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %144 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %153

147:                                              ; preds = %121
  %148 = load i32, i32* @RXDONE_SIGNAL_BITRATE, align 4
  %149 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %150 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %147, %141
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @RXD_W0_MY_BSS, align 4
  %156 = call i8* @rt2x00_get_field32(i32 %154, i32 %155)
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load i32, i32* @RXDONE_MY_BSS, align 4
  %160 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %161 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %164

164:                                              ; preds = %158, %153
  ret void
}

declare dso_local i32 @rt2x00_desc_read(i32, i32, i32*) #1

declare dso_local i8* @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @_rt2x00_desc_read(i32, i32, i32*) #1

declare dso_local i32 @rt61pci_agc_to_rssi(%struct.rt2x00_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
