; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9002_hw_iqcalibrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9002_hw_iqcalibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32*, i32*, i32* }
%struct.ath_common = type { i32 }

@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Starting IQ Cal and Correction for Chain %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Original: Chn %d iq_corr_meas = 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Chn %d pwr_meas_i = 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Chn %d pwr_meas_q = 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"iqCorrNeg is 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Chn %d iCoff = 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Chn %d qCoff = 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"New: Chn %d iCoff = 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Chn %d : iCoff = 0x%x  qCoff = 0x%x\0A\00", align 1
@AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"IQ Cal and Correction done for Chain %d\0A\00", align 1
@AR_PHY_TIMING_CTRL4_IQCORR_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar9002_hw_iqcalibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9002_hw_iqcalibrate(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %16 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %15)
  store %struct.ath_common* %16, %struct.ath_common** %5, align 8
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %158, %2
  %18 = load i32, i32* %14, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %161

21:                                               ; preds = %17
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %30 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %37 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  %43 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %44 = load i32, i32* @CALIBRATE, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %43, i32 %44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %48 = load i32, i32* @CALIBRATE, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %51 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %47, i32 %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %56)
  store i32 0, i32* %13, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ugt i32 %58, -2147483648
  br i1 %59, label %60, label %64

60:                                               ; preds = %21
  %61 = load i32, i32* %8, align 4
  %62 = sub i32 -1, %61
  %63 = add i32 %62, 1
  store i32 %63, i32* %8, align 4
  store i32 1, i32* %13, align 4
  br label %64

64:                                               ; preds = %60, %21
  %65 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %66 = load i32, i32* @CALIBRATE, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %65, i32 %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %71 = load i32, i32* @CALIBRATE, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %70, i32 %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %76 = load i32, i32* @CALIBRATE, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %75, i32 %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = sdiv i32 %79, 2
  %81 = load i32, i32* %6, align 4
  %82 = sdiv i32 %81, 2
  %83 = add nsw i32 %80, %82
  %84 = sdiv i32 %83, 128
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %6, align 4
  %86 = sdiv i32 %85, 64
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %157

89:                                               ; preds = %64
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %157

92:                                               ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %157

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %10, align 4
  %98 = sdiv i32 %96, %97
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %9, align 4
  %101 = sdiv i32 %99, %100
  %102 = sub nsw i32 %101, 64
  store i32 %102, i32* %11, align 4
  %103 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %104 = load i32, i32* @CALIBRATE, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %103, i32 %104, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %109 = load i32, i32* @CALIBRATE, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %108, i32 %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load i32, i32* %12, align 4
  %114 = and i32 %113, 63
  store i32 %114, i32* %12, align 4
  %115 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %116 = load i32, i32* @CALIBRATE, align 4
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %12, align 4
  %119 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %115, i32 %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %117, i32 %118)
  %120 = load i32, i32* %13, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %95
  %123 = load i32, i32* %12, align 4
  %124 = sub nsw i32 64, %123
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %122, %95
  %126 = load i32, i32* %11, align 4
  %127 = icmp sgt i32 %126, 15
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 15, i32* %11, align 4
  br label %134

129:                                              ; preds = %125
  %130 = load i32, i32* %11, align 4
  %131 = icmp sle i32 %130, -16
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 -16, i32* %11, align 4
  br label %133

133:                                              ; preds = %132, %129
  br label %134

134:                                              ; preds = %133, %128
  %135 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %136 = load i32, i32* @CALIBRATE, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %11, align 4
  %140 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %135, i32 %136, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %137, i32 %138, i32 %139)
  %141 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @AR_PHY_TIMING_CTRL4(i32 %142)
  %144 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %141, i32 %143, i32 %144, i32 %145)
  %147 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %148 = load i32, i32* %14, align 4
  %149 = call i32 @AR_PHY_TIMING_CTRL4(i32 %148)
  %150 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, align 4
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %147, i32 %149, i32 %150, i32 %151)
  %153 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %154 = load i32, i32* @CALIBRATE, align 4
  %155 = load i32, i32* %14, align 4
  %156 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %153, i32 %154, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %134, %92, %89, %64
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %14, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %14, align 4
  br label %17

161:                                              ; preds = %17
  %162 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %163 = call i32 @AR_PHY_TIMING_CTRL4(i32 0)
  %164 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_ENABLE, align 4
  %165 = call i32 @REG_SET_BIT(%struct.ath_hw* %162, i32 %163, i32 %164)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, ...) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @AR_PHY_TIMING_CTRL4(i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
