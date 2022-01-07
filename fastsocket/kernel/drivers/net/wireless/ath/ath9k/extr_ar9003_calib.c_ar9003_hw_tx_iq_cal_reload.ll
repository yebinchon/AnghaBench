; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_tx_iq_cal_reload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_tx_iq_cal_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.ath9k_hw_cal_data* }
%struct.ath9k_hw_cal_data = type { i32*, i32** }

@MAX_MEASUREMENT = common dso_local global i32 0, align 4
@AR9300_MAX_CHAINS = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CORR_COEFF_00_COEFF_TABLE = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CORR_COEFF_01_COEFF_TABLE = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_3 = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_3_IQCORR_EN = common dso_local global i32 0, align 4
@AR_PHY_RX_IQCAL_CORR_B0 = common dso_local global i32 0, align 4
@AR_PHY_RX_IQCAL_CORR_B0_LOOPBACK_IQCORR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_hw_tx_iq_cal_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_tx_iq_cal_reload(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath9k_hw_cal_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 1
  %11 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %10, align 8
  store %struct.ath9k_hw_cal_data* %11, %struct.ath9k_hw_cal_data** %3, align 8
  %12 = load i32, i32* @MAX_MEASUREMENT, align 4
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = mul nuw i64 %13, %15
  %18 = alloca i32, i64 %17, align 16
  store i64 %13, i64* %5, align 8
  store i64 %15, i64* %6, align 8
  %19 = bitcast i32* %18 to i32**
  %20 = mul nuw i64 %13, %15
  %21 = mul nuw i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memset(i32** %19, i32 0, i32 %22)
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %80, %1
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MAX_MEASUREMENT, align 4
  %27 = sdiv i32 %26, 2
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %83

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @AR_PHY_TX_IQCAL_CORR_COEFF_B0(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 %32, 2
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %35, %15
  %37 = getelementptr inbounds i32, i32* %18, i64 %36
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %31, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = mul nsw i64 %41, %15
  %43 = getelementptr inbounds i32, i32* %18, i64 %42
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %31, i32* %44, align 4
  %45 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %46 = call i32 @AR_SREV_9485(%struct.ath_hw* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %79, label %48

48:                                               ; preds = %29
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @AR_PHY_TX_IQCAL_CORR_COEFF_B1(i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 %51, 2
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = mul nsw i64 %54, %15
  %56 = getelementptr inbounds i32, i32* %18, i64 %55
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 %50, i32* %57, align 4
  %58 = load i32, i32* %7, align 4
  %59 = mul nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = mul nsw i64 %60, %15
  %62 = getelementptr inbounds i32, i32* %18, i64 %61
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %50, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @AR_PHY_TX_IQCAL_CORR_COEFF_B2(i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = mul nsw i32 %66, 2
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = mul nsw i64 %69, %15
  %71 = getelementptr inbounds i32, i32* %18, i64 %70
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 %65, i32* %72, align 4
  %73 = load i32, i32* %7, align 4
  %74 = mul nsw i32 %73, 2
  %75 = sext i32 %74 to i64
  %76 = mul nsw i64 %75, %15
  %77 = getelementptr inbounds i32, i32* %18, i64 %76
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  store i32 %65, i32* %78, align 4
  br label %79

79:                                               ; preds = %48, %29
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %24

83:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %163, %83
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %166

88:                                               ; preds = %84
  %89 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %90 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = shl i32 1, %92
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %88
  br label %163

97:                                               ; preds = %88
  store i32 0, i32* %8, align 4
  br label %98

98:                                               ; preds = %159, %97
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %3, align 8
  %101 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %99, %106
  br i1 %107, label %108, label %162

108:                                              ; preds = %98
  %109 = load i32, i32* %8, align 4
  %110 = srem i32 %109, 2
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %135

112:                                              ; preds = %108
  %113 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = mul nsw i64 %115, %15
  %117 = getelementptr inbounds i32, i32* %18, i64 %116
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @AR_PHY_TX_IQCAL_CORR_COEFF_00_COEFF_TABLE, align 4
  %123 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %3, align 8
  %124 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %123, i32 0, i32 1
  %125 = load i32**, i32*** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %113, i32 %121, i32 %122, i32 %133)
  br label %158

135:                                              ; preds = %108
  %136 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = mul nsw i64 %138, %15
  %140 = getelementptr inbounds i32, i32* %18, i64 %139
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @AR_PHY_TX_IQCAL_CORR_COEFF_01_COEFF_TABLE, align 4
  %146 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %3, align 8
  %147 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %146, i32 0, i32 1
  %148 = load i32**, i32*** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %136, i32 %144, i32 %145, i32 %156)
  br label %158

158:                                              ; preds = %135, %112
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %8, align 4
  br label %98

162:                                              ; preds = %98
  br label %163

163:                                              ; preds = %162, %96
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %84

166:                                              ; preds = %84
  %167 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %168 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_3, align 4
  %169 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_3_IQCORR_EN, align 4
  %170 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %167, i32 %168, i32 %169, i32 1)
  %171 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %172 = load i32, i32* @AR_PHY_RX_IQCAL_CORR_B0, align 4
  %173 = load i32, i32* @AR_PHY_RX_IQCAL_CORR_B0_LOOPBACK_IQCORR_EN, align 4
  %174 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %171, i32 %172, i32 %173, i32 1)
  %175 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %175)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32**, i32, i32) #2

declare dso_local i32 @AR_PHY_TX_IQCAL_CORR_COEFF_B0(i32) #2

declare dso_local i32 @AR_SREV_9485(%struct.ath_hw*) #2

declare dso_local i32 @AR_PHY_TX_IQCAL_CORR_COEFF_B1(i32) #2

declare dso_local i32 @AR_PHY_TX_IQCAL_CORR_COEFF_B2(i32) #2

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
