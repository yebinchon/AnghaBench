; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_def.c_ath9k_hw_def_set_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_def.c_ath9k_hw_def_set_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.modal_eep_header = type { i32*, i32*, i32*, i32*, i32*, i32* }
%struct.ar5416_eeprom_def = type { i32 }

@AR5416_VER_MASK = common dso_local global i64 0, align 8
@AR5416_EEP_MINOR_VER_3 = common dso_local global i64 0, align 8
@AR_PHY_GAIN_2GHZ = common dso_local global i64 0, align 8
@AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_XATTEN1_DB = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_XATTEN2_DB = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_BSW_MARGIN = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_BSW_ATTEN = common dso_local global i32 0, align 4
@AR_PHY_RXGAIN = common dso_local global i64 0, align 8
@AR9280_PHY_RXGAIN_TXRX_ATTEN = common dso_local global i32 0, align 4
@AR9280_PHY_RXGAIN_TXRX_MARGIN = common dso_local global i32 0, align 4
@AR_PHY_RXGAIN_TXRX_ATTEN = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_RXTX_MARGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.modal_eep_header*, %struct.ar5416_eeprom_def*, i32, i32, i32)* @ath9k_hw_def_set_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_def_set_gain(%struct.ath_hw* %0, %struct.modal_eep_header* %1, %struct.ar5416_eeprom_def* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.modal_eep_header*, align 8
  %9 = alloca %struct.ar5416_eeprom_def*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %7, align 8
  store %struct.modal_eep_header* %1, %struct.modal_eep_header** %8, align 8
  store %struct.ar5416_eeprom_def* %2, %struct.ar5416_eeprom_def** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i64, i64* @AR5416_VER_MASK, align 8
  %14 = load i64, i64* @AR5416_EEP_MINOR_VER_3, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %136

16:                                               ; preds = %6
  %17 = load %struct.modal_eep_header*, %struct.modal_eep_header** %8, align 8
  %18 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %25 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %84

27:                                               ; preds = %16
  %28 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %29 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN, align 4
  %34 = load %struct.modal_eep_header*, %struct.modal_eep_header** %8, align 8
  %35 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %28, i64 %32, i32 %33, i32 %40)
  %42 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %43 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN1_DB, align 4
  %48 = load %struct.modal_eep_header*, %struct.modal_eep_header** %8, align 8
  %49 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %42, i64 %46, i32 %47, i32 %54)
  %56 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %57 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN, align 4
  %62 = load %struct.modal_eep_header*, %struct.modal_eep_header** %8, align 8
  %63 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %56, i64 %60, i32 %61, i32 %68)
  %70 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %71 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN2_DB, align 4
  %76 = load %struct.modal_eep_header*, %struct.modal_eep_header** %8, align 8
  %77 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %70, i64 %74, i32 %75, i32 %82)
  br label %135

84:                                               ; preds = %16
  %85 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %86 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %91 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %91, %93
  %95 = call i32 @REG_READ(%struct.ath_hw* %90, i64 %94)
  %96 = load i32, i32* @AR_PHY_GAIN_2GHZ_BSW_MARGIN, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %95, %97
  %99 = load %struct.modal_eep_header*, %struct.modal_eep_header** %8, align 8
  %100 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @AR_PHY_GAIN_2GHZ_BSW_MARGIN, align 4
  %107 = call i32 @SM(i32 %105, i32 %106)
  %108 = or i32 %98, %107
  %109 = call i32 @REG_WRITE(%struct.ath_hw* %85, i64 %89, i32 %108)
  %110 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %111 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %116 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %116, %118
  %120 = call i32 @REG_READ(%struct.ath_hw* %115, i64 %119)
  %121 = load i32, i32* @AR_PHY_GAIN_2GHZ_BSW_ATTEN, align 4
  %122 = xor i32 %121, -1
  %123 = and i32 %120, %122
  %124 = load %struct.modal_eep_header*, %struct.modal_eep_header** %8, align 8
  %125 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @AR_PHY_GAIN_2GHZ_BSW_ATTEN, align 4
  %132 = call i32 @SM(i32 %130, i32 %131)
  %133 = or i32 %123, %132
  %134 = call i32 @REG_WRITE(%struct.ath_hw* %110, i64 %114, i32 %133)
  br label %135

135:                                              ; preds = %84, %27
  br label %136

136:                                              ; preds = %135, %6
  %137 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %138 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %163

140:                                              ; preds = %136
  %141 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %142 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %142, %144
  %146 = load i32, i32* @AR9280_PHY_RXGAIN_TXRX_ATTEN, align 4
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %141, i64 %145, i32 %146, i32 %147)
  %149 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %150 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %150, %152
  %154 = load i32, i32* @AR9280_PHY_RXGAIN_TXRX_MARGIN, align 4
  %155 = load %struct.modal_eep_header*, %struct.modal_eep_header** %8, align 8
  %156 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %149, i64 %153, i32 %154, i32 %161)
  br label %208

163:                                              ; preds = %136
  %164 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %165 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %165, %167
  %169 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %170 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %170, %172
  %174 = call i32 @REG_READ(%struct.ath_hw* %169, i64 %173)
  %175 = load i32, i32* @AR_PHY_RXGAIN_TXRX_ATTEN, align 4
  %176 = xor i32 %175, -1
  %177 = and i32 %174, %176
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* @AR_PHY_RXGAIN_TXRX_ATTEN, align 4
  %180 = call i32 @SM(i32 %178, i32 %179)
  %181 = or i32 %177, %180
  %182 = call i32 @REG_WRITE(%struct.ath_hw* %164, i64 %168, i32 %181)
  %183 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %184 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %184, %186
  %188 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %189 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %189, %191
  %193 = call i32 @REG_READ(%struct.ath_hw* %188, i64 %192)
  %194 = load i32, i32* @AR_PHY_GAIN_2GHZ_RXTX_MARGIN, align 4
  %195 = xor i32 %194, -1
  %196 = and i32 %193, %195
  %197 = load %struct.modal_eep_header*, %struct.modal_eep_header** %8, align 8
  %198 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @AR_PHY_GAIN_2GHZ_RXTX_MARGIN, align 4
  %205 = call i32 @SM(i32 %203, i32 %204)
  %206 = or i32 %196, %205
  %207 = call i32 @REG_WRITE(%struct.ath_hw* %183, i64 %187, i32 %206)
  br label %208

208:                                              ; preds = %163, %140
  ret void
}

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i64, i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i64, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i64) #1

declare dso_local i32 @SM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
