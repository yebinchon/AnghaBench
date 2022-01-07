; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_4k.c_ath9k_hw_4k_set_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_4k.c_ath9k_hw_4k_set_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.modal_eep_4k_header = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.ar5416_eeprom_4k = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AR_PHY_SWITCH_CHAIN_0 = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF = common dso_local global i32 0, align 4
@AR5416_EEP_VER_MINOR_MASK = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_3 = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ = common dso_local global i64 0, align 8
@AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_XATTEN1_DB = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_XATTEN2_DB = common dso_local global i32 0, align 4
@AR_PHY_RXGAIN = common dso_local global i64 0, align 8
@AR9280_PHY_RXGAIN_TXRX_ATTEN = common dso_local global i32 0, align 4
@AR9280_PHY_RXGAIN_TXRX_MARGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.modal_eep_4k_header*, %struct.ar5416_eeprom_4k*, i32)* @ath9k_hw_4k_set_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_4k_set_gain(%struct.ath_hw* %0, %struct.modal_eep_4k_header* %1, %struct.ar5416_eeprom_4k* %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.modal_eep_4k_header*, align 8
  %7 = alloca %struct.ar5416_eeprom_4k*, align 8
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store %struct.modal_eep_4k_header* %1, %struct.modal_eep_4k_header** %6, align 8
  store %struct.ar5416_eeprom_4k* %2, %struct.ar5416_eeprom_4k** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %10 = load i32, i32* @AR_PHY_SWITCH_CHAIN_0, align 4
  %11 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %12 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @REG_WRITE(%struct.ath_hw* %9, i32 %10, i32 %15)
  %17 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %18 = call i32 @AR_PHY_TIMING_CTRL4(i32 0)
  %19 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %20 = call i32 @AR_PHY_TIMING_CTRL4(i32 0)
  %21 = call i32 @REG_READ(%struct.ath_hw* %19, i32 %20)
  %22 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, align 4
  %23 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = and i32 %21, %25
  %27 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %28 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %27, i32 0, i32 8
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, align 4
  %33 = call i32 @SM(i32 %31, i32 %32)
  %34 = or i32 %26, %33
  %35 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %36 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %35, i32 0, i32 7
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, align 4
  %41 = call i32 @SM(i32 %39, i32 %40)
  %42 = or i32 %34, %41
  %43 = call i32 @REG_WRITE(%struct.ath_hw* %17, i32 %18, i32 %42)
  %44 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %7, align 8
  %45 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AR5416_EEP_VER_MINOR_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @AR5416_EEP_MINOR_VER_3, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %134

52:                                               ; preds = %4
  %53 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %54 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %53, i32 0, i32 6
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  %58 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %59 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %60 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN, align 4
  %61 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %62 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %61, i32 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %58, i64 %59, i32 %60, i32 %65)
  %67 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %68 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %69 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN1_DB, align 4
  %70 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %71 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %67, i64 %68, i32 %69, i32 %74)
  %76 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %77 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %78 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN, align 4
  %79 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %80 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %76, i64 %77, i32 %78, i32 %83)
  %85 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %86 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %87 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN2_DB, align 4
  %88 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %89 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %85, i64 %86, i32 %87, i32 %92)
  %94 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %95 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %96 = add nsw i64 %95, 4096
  %97 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN, align 4
  %98 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %99 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %98, i32 0, i32 5
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %94, i64 %96, i32 %97, i32 %102)
  %104 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %105 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %106 = add nsw i64 %105, 4096
  %107 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN1_DB, align 4
  %108 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %109 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %104, i64 %106, i32 %107, i32 %112)
  %114 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %115 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %116 = add nsw i64 %115, 4096
  %117 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN, align 4
  %118 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %119 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %114, i64 %116, i32 %117, i32 %122)
  %124 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %125 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %126 = add nsw i64 %125, 4096
  %127 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN2_DB, align 4
  %128 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %129 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %124, i64 %126, i32 %127, i32 %132)
  br label %134

134:                                              ; preds = %52, %4
  %135 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %136 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %137 = load i32, i32* @AR9280_PHY_RXGAIN_TXRX_ATTEN, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %135, i64 %136, i32 %137, i32 %138)
  %140 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %141 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %142 = load i32, i32* @AR9280_PHY_RXGAIN_TXRX_MARGIN, align 4
  %143 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %144 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %140, i64 %141, i32 %142, i32 %147)
  %149 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %150 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %151 = add nsw i64 %150, 4096
  %152 = load i32, i32* @AR9280_PHY_RXGAIN_TXRX_ATTEN, align 4
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %149, i64 %151, i32 %152, i32 %153)
  %155 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %156 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %157 = add nsw i64 %156, 4096
  %158 = load i32, i32* @AR9280_PHY_RXGAIN_TXRX_MARGIN, align 4
  %159 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %6, align 8
  %160 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %155, i64 %157, i32 %158, i32 %163)
  ret void
}

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @AR_PHY_TIMING_CTRL4(i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
