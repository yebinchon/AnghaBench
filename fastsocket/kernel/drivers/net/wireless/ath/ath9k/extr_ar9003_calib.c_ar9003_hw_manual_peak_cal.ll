; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_manual_peak_cal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_manual_peak_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_PHY_65NM_RXRF_GAINSTAGES_RX_OVERRIDE = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_GAINSTAGES_LNAON_CALDC = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_GAINSTAGES_LNA2G_GAIN_OVR = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_GAINSTAGES_LNA5G_GAIN_OVR = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXTX2_RXON_OVR = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXTX2_RXON = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_AGC_AGC_OVERRIDE = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_AGC_AGC_ON_OVR = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_AGC_AGC_CAL_OVR = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_AGC_AGC2G_DBDAC_OVR = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_AGC_AGC5G_DBDAC_OVR = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_AGC_AGC_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32, i32)* @ar9003_hw_manual_peak_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_manual_peak_cal(%struct.ath_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @AR_PHY_65NM_RXRF_GAINSTAGES(i32 %13)
  %15 = load i32, i32* @AR_PHY_65NM_RXRF_GAINSTAGES_RX_OVERRIDE, align 4
  %16 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %12, i32 %14, i32 %15, i32 1)
  %17 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @AR_PHY_65NM_RXRF_GAINSTAGES(i32 %18)
  %20 = load i32, i32* @AR_PHY_65NM_RXRF_GAINSTAGES_LNAON_CALDC, align 4
  %21 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %17, i32 %19, i32 %20, i32 0)
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @AR_PHY_65NM_RXRF_GAINSTAGES(i32 %26)
  %28 = load i32, i32* @AR_PHY_65NM_RXRF_GAINSTAGES_LNA2G_GAIN_OVR, align 4
  %29 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %25, i32 %27, i32 %28, i32 0)
  br label %36

30:                                               ; preds = %3
  %31 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @AR_PHY_65NM_RXRF_GAINSTAGES(i32 %32)
  %34 = load i32, i32* @AR_PHY_65NM_RXRF_GAINSTAGES_LNA5G_GAIN_OVR, align 4
  %35 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %31, i32 %33, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @AR_PHY_65NM_RXTX2(i32 %38)
  %40 = load i32, i32* @AR_PHY_65NM_RXTX2_RXON_OVR, align 4
  %41 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %37, i32 %39, i32 %40, i32 1)
  %42 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @AR_PHY_65NM_RXTX2(i32 %43)
  %45 = load i32, i32* @AR_PHY_65NM_RXTX2_RXON, align 4
  %46 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %42, i32 %44, i32 %45, i32 0)
  %47 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 %48)
  %50 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC_OVERRIDE, align 4
  %51 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %47, i32 %49, i32 %50, i32 1)
  %52 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 %53)
  %55 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC_ON_OVR, align 4
  %56 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %52, i32 %54, i32 %55, i32 1)
  %57 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 %58)
  %60 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC_CAL_OVR, align 4
  %61 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %57, i32 %59, i32 %60, i32 1)
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %36
  %65 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 %66)
  %68 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC2G_DBDAC_OVR, align 4
  %69 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %65, i32 %67, i32 %68, i32 0)
  br label %76

70:                                               ; preds = %36
  %71 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 %72)
  %74 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC5G_DBDAC_OVR, align 4
  %75 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %71, i32 %73, i32 %74, i32 0)
  br label %76

76:                                               ; preds = %70, %64
  store i32 6, i32* %11, align 4
  br label %77

77:                                               ; preds = %132, %76
  %78 = load i32, i32* %11, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %135

80:                                               ; preds = %77
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %81, 1
  %83 = call i32 @BIT(i32 %82)
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %85
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %87, %91
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %80
  %96 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 %97)
  %99 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %96, i32 %98, i32 %99, i32 %100)
  br label %109

102:                                              ; preds = %80
  %103 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 %104)
  %106 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %103, i32 %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %102, %95
  %110 = call i32 @udelay(i32 100)
  %111 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 %112)
  %114 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC_OUT, align 4
  %115 = call i32 @REG_READ_FIELD(%struct.ath_hw* %111, i32 %113, i32 %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 0, i32 1
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %121
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %11, align 4
  %128 = sub nsw i32 %127, 1
  %129 = shl i32 %126, %128
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %8, align 4
  br label %132

132:                                              ; preds = %109
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %11, align 4
  br label %77

135:                                              ; preds = %77
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 %140)
  %142 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %139, i32 %141, i32 %142, i32 %143)
  br label %152

145:                                              ; preds = %135
  %146 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 %147)
  %149 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %146, i32 %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %145, %138
  %153 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @AR_PHY_65NM_RXRF_GAINSTAGES(i32 %154)
  %156 = load i32, i32* @AR_PHY_65NM_RXRF_GAINSTAGES_RX_OVERRIDE, align 4
  %157 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %153, i32 %155, i32 %156, i32 0)
  %158 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @AR_PHY_65NM_RXTX2(i32 %159)
  %161 = load i32, i32* @AR_PHY_65NM_RXTX2_RXON_OVR, align 4
  %162 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %158, i32 %160, i32 %161, i32 0)
  %163 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 %164)
  %166 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC_CAL_OVR, align 4
  %167 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %163, i32 %165, i32 %166, i32 0)
  ret void
}

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @AR_PHY_65NM_RXRF_GAINSTAGES(i32) #1

declare dso_local i32 @AR_PHY_65NM_RXTX2(i32) #1

declare dso_local i32 @AR_PHY_65NM_RXRF_AGC(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @REG_READ_FIELD(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
