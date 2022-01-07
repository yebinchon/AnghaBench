; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9002_hw_adc_dccal_calibrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9002_hw_adc_dccal_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64*, i64*, i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ath9k_percal_data* }
%struct.ath9k_percal_data = type { i32, i32 }
%struct.ath_common = type { i32 }

@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Starting ADC DC Offset Cal for Chain %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Chn %d pwr_meas_odd_i = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Chn %d pwr_meas_even_i = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Chn %d pwr_meas_odd_q = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Chn %d pwr_meas_even_q = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Chn %d dc_offset_mismatch_i = 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Chn %d dc_offset_mismatch_q = 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"ADC DC Offset Cal done for Chain %d\0A\00", align 1
@AR_PHY_NEW_ADC_DC_OFFSET_CORR_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i64)* @ar9002_hw_adc_dccal_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9002_hw_adc_dccal_calibrate(%struct.ath_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ath9k_percal_data*, align 8
  %15 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %16)
  store %struct.ath_common* %17, %struct.ath_common** %5, align 8
  %18 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %19 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.ath9k_percal_data*, %struct.ath9k_percal_data** %21, align 8
  store %struct.ath9k_percal_data* %22, %struct.ath9k_percal_data** %14, align 8
  %23 = load %struct.ath9k_percal_data*, %struct.ath9k_percal_data** %14, align 8
  %24 = getelementptr inbounds %struct.ath9k_percal_data, %struct.ath9k_percal_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 5
  %27 = shl i32 1, %26
  %28 = load %struct.ath9k_percal_data*, %struct.ath9k_percal_data** %14, align 8
  %29 = getelementptr inbounds %struct.ath9k_percal_data, %struct.ath9k_percal_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %15, align 8
  store i64 0, i64* %9, align 8
  br label %33

33:                                               ; preds = %136, %2
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %139

37:                                               ; preds = %33
  %38 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %39 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %6, align 8
  %44 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %45 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %7, align 8
  %50 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %51 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %10, align 4
  %56 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %57 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  %62 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %63 = load i32, i32* @CALIBRATE, align 4
  %64 = load i64, i64* %9, align 8
  %65 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %62, i32 %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %64)
  %66 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %67 = load i32, i32* @CALIBRATE, align 4
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %66, i32 %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %68, i64 %69)
  %71 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %72 = load i32, i32* @CALIBRATE, align 4
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %7, align 8
  %75 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %71, i32 %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %73, i64 %74)
  %76 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %77 = load i32, i32* @CALIBRATE, align 4
  %78 = load i64, i64* %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %76, i32 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %78, i32 %79)
  %81 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %82 = load i32, i32* @CALIBRATE, align 4
  %83 = load i64, i64* %9, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %81, i32 %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %83, i32 %84)
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* %6, align 8
  %88 = sub i64 %86, %87
  %89 = mul i64 %88, 2
  %90 = load i64, i64* %15, align 8
  %91 = udiv i64 %89, %90
  %92 = and i64 %91, 511
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = sub nsw i32 %94, %95
  %97 = mul nsw i32 %96, 2
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %15, align 8
  %100 = udiv i64 %98, %99
  %101 = and i64 %100, 511
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %12, align 4
  %103 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %104 = load i32, i32* @CALIBRATE, align 4
  %105 = load i64, i64* %9, align 8
  %106 = load i32, i32* %13, align 4
  %107 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %103, i32 %104, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %105, i32 %106)
  %108 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %109 = load i32, i32* @CALIBRATE, align 4
  %110 = load i64, i64* %9, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %108, i32 %109, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i64 %110, i32 %111)
  %113 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %114 = load i64, i64* %9, align 8
  %115 = call i32 @AR_PHY_NEW_ADC_DC_GAIN_CORR(i64 %114)
  %116 = call i64 @REG_READ(%struct.ath_hw* %113, i32 %115)
  store i64 %116, i64* %8, align 8
  %117 = load i64, i64* %8, align 8
  %118 = and i64 %117, 3221229567
  store i64 %118, i64* %8, align 8
  %119 = load i32, i32* %12, align 4
  %120 = shl i32 %119, 12
  %121 = load i32, i32* %13, align 4
  %122 = shl i32 %121, 21
  %123 = or i32 %120, %122
  %124 = sext i32 %123 to i64
  %125 = load i64, i64* %8, align 8
  %126 = or i64 %125, %124
  store i64 %126, i64* %8, align 8
  %127 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %128 = load i64, i64* %9, align 8
  %129 = call i32 @AR_PHY_NEW_ADC_DC_GAIN_CORR(i64 %128)
  %130 = load i64, i64* %8, align 8
  %131 = call i32 @REG_WRITE(%struct.ath_hw* %127, i32 %129, i64 %130)
  %132 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %133 = load i32, i32* @CALIBRATE, align 4
  %134 = load i64, i64* %9, align 8
  %135 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %132, i32 %133, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64 %134)
  br label %136

136:                                              ; preds = %37
  %137 = load i64, i64* %9, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %9, align 8
  br label %33

139:                                              ; preds = %33
  %140 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %141 = call i32 @AR_PHY_NEW_ADC_DC_GAIN_CORR(i64 0)
  %142 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %143 = call i32 @AR_PHY_NEW_ADC_DC_GAIN_CORR(i64 0)
  %144 = call i64 @REG_READ(%struct.ath_hw* %142, i32 %143)
  %145 = load i64, i64* @AR_PHY_NEW_ADC_DC_OFFSET_CORR_ENABLE, align 8
  %146 = or i64 %144, %145
  %147 = call i32 @REG_WRITE(%struct.ath_hw* %140, i32 %141, i64 %146)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, ...) #1

declare dso_local i64 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @AR_PHY_NEW_ADC_DC_GAIN_CORR(i64) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
