; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_get_ht40_target_powers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_get_ht40_target_powers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@HT_TARGET_RATE_0_8_16 = common dso_local global i32 0, align 4
@ALL_TARGET_HT40_0_8_16 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_1_3_9_11_17_19 = common dso_local global i32 0, align 4
@ALL_TARGET_HT40_1_3_9_11_17_19 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_4 = common dso_local global i32 0, align 4
@ALL_TARGET_HT40_4 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_5 = common dso_local global i32 0, align 4
@ALL_TARGET_HT40_5 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_6 = common dso_local global i32 0, align 4
@ALL_TARGET_HT40_6 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_7 = common dso_local global i32 0, align 4
@ALL_TARGET_HT40_7 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_12 = common dso_local global i32 0, align 4
@ALL_TARGET_HT40_12 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_13 = common dso_local global i32 0, align 4
@ALL_TARGET_HT40_13 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_14 = common dso_local global i32 0, align 4
@ALL_TARGET_HT40_14 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_15 = common dso_local global i32 0, align 4
@ALL_TARGET_HT40_15 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_20 = common dso_local global i32 0, align 4
@ALL_TARGET_HT40_20 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_21 = common dso_local global i32 0, align 4
@ALL_TARGET_HT40_21 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_22 = common dso_local global i32 0, align 4
@ALL_TARGET_HT40_22 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_23 = common dso_local global i32 0, align 4
@ALL_TARGET_HT40_23 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32, i64*, i32)* @ar9003_hw_get_ht40_target_powers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_get_ht40_target_powers(%struct.ath_hw* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %11 = load i32, i32* @HT_TARGET_RATE_0_8_16, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @ar9003_hw_eeprom_get_ht40_tgt_pwr(%struct.ath_hw* %10, i32 %11, i32 %12, i32 %13)
  %15 = load i64, i64* %9, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* @ALL_TARGET_HT40_0_8_16, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  store i64 %16, i64* %19, align 8
  %20 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %21 = load i32, i32* @HT_TARGET_RATE_1_3_9_11_17_19, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @ar9003_hw_eeprom_get_ht40_tgt_pwr(%struct.ath_hw* %20, i32 %21, i32 %22, i32 %23)
  %25 = load i64, i64* %9, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* @ALL_TARGET_HT40_1_3_9_11_17_19, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  store i64 %26, i64* %29, align 8
  %30 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %31 = load i32, i32* @HT_TARGET_RATE_4, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @ar9003_hw_eeprom_get_ht40_tgt_pwr(%struct.ath_hw* %30, i32 %31, i32 %32, i32 %33)
  %35 = load i64, i64* %9, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* @ALL_TARGET_HT40_4, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64 %36, i64* %39, align 8
  %40 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %41 = load i32, i32* @HT_TARGET_RATE_5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @ar9003_hw_eeprom_get_ht40_tgt_pwr(%struct.ath_hw* %40, i32 %41, i32 %42, i32 %43)
  %45 = load i64, i64* %9, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* @ALL_TARGET_HT40_5, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  store i64 %46, i64* %49, align 8
  %50 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %51 = load i32, i32* @HT_TARGET_RATE_6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @ar9003_hw_eeprom_get_ht40_tgt_pwr(%struct.ath_hw* %50, i32 %51, i32 %52, i32 %53)
  %55 = load i64, i64* %9, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i64*, i64** %7, align 8
  %58 = load i64, i64* @ALL_TARGET_HT40_6, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64 %56, i64* %59, align 8
  %60 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %61 = load i32, i32* @HT_TARGET_RATE_7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i64 @ar9003_hw_eeprom_get_ht40_tgt_pwr(%struct.ath_hw* %60, i32 %61, i32 %62, i32 %63)
  %65 = load i64, i64* %9, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i64*, i64** %7, align 8
  %68 = load i64, i64* @ALL_TARGET_HT40_7, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  store i64 %66, i64* %69, align 8
  %70 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %71 = load i32, i32* @HT_TARGET_RATE_12, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i64 @ar9003_hw_eeprom_get_ht40_tgt_pwr(%struct.ath_hw* %70, i32 %71, i32 %72, i32 %73)
  %75 = load i64, i64* %9, align 8
  %76 = add nsw i64 %74, %75
  %77 = load i64*, i64** %7, align 8
  %78 = load i64, i64* @ALL_TARGET_HT40_12, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  store i64 %76, i64* %79, align 8
  %80 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %81 = load i32, i32* @HT_TARGET_RATE_13, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i64 @ar9003_hw_eeprom_get_ht40_tgt_pwr(%struct.ath_hw* %80, i32 %81, i32 %82, i32 %83)
  %85 = load i64, i64* %9, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i64*, i64** %7, align 8
  %88 = load i64, i64* @ALL_TARGET_HT40_13, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  store i64 %86, i64* %89, align 8
  %90 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %91 = load i32, i32* @HT_TARGET_RATE_14, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i64 @ar9003_hw_eeprom_get_ht40_tgt_pwr(%struct.ath_hw* %90, i32 %91, i32 %92, i32 %93)
  %95 = load i64, i64* %9, align 8
  %96 = add nsw i64 %94, %95
  %97 = load i64*, i64** %7, align 8
  %98 = load i64, i64* @ALL_TARGET_HT40_14, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  store i64 %96, i64* %99, align 8
  %100 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %101 = load i32, i32* @HT_TARGET_RATE_15, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i64 @ar9003_hw_eeprom_get_ht40_tgt_pwr(%struct.ath_hw* %100, i32 %101, i32 %102, i32 %103)
  %105 = load i64, i64* %9, align 8
  %106 = add nsw i64 %104, %105
  %107 = load i64*, i64** %7, align 8
  %108 = load i64, i64* @ALL_TARGET_HT40_15, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  store i64 %106, i64* %109, align 8
  %110 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %111 = load i32, i32* @HT_TARGET_RATE_20, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i64 @ar9003_hw_eeprom_get_ht40_tgt_pwr(%struct.ath_hw* %110, i32 %111, i32 %112, i32 %113)
  %115 = load i64, i64* %9, align 8
  %116 = add nsw i64 %114, %115
  %117 = load i64*, i64** %7, align 8
  %118 = load i64, i64* @ALL_TARGET_HT40_20, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  store i64 %116, i64* %119, align 8
  %120 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %121 = load i32, i32* @HT_TARGET_RATE_21, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i64 @ar9003_hw_eeprom_get_ht40_tgt_pwr(%struct.ath_hw* %120, i32 %121, i32 %122, i32 %123)
  %125 = load i64, i64* %9, align 8
  %126 = add nsw i64 %124, %125
  %127 = load i64*, i64** %7, align 8
  %128 = load i64, i64* @ALL_TARGET_HT40_21, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  store i64 %126, i64* %129, align 8
  %130 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %131 = load i32, i32* @HT_TARGET_RATE_22, align 4
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i64 @ar9003_hw_eeprom_get_ht40_tgt_pwr(%struct.ath_hw* %130, i32 %131, i32 %132, i32 %133)
  %135 = load i64, i64* %9, align 8
  %136 = add nsw i64 %134, %135
  %137 = load i64*, i64** %7, align 8
  %138 = load i64, i64* @ALL_TARGET_HT40_22, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  store i64 %136, i64* %139, align 8
  %140 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %141 = load i32, i32* @HT_TARGET_RATE_23, align 4
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i64 @ar9003_hw_eeprom_get_ht40_tgt_pwr(%struct.ath_hw* %140, i32 %141, i32 %142, i32 %143)
  %145 = load i64, i64* %9, align 8
  %146 = add nsw i64 %144, %145
  %147 = load i64*, i64** %7, align 8
  %148 = load i64, i64* @ALL_TARGET_HT40_23, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  store i64 %146, i64* %149, align 8
  ret void
}

declare dso_local i64 @ar9003_hw_eeprom_get_ht40_tgt_pwr(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
