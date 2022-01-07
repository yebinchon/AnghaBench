; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_eeprom_get_cck_tgt_pwr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_eeprom_get_cck_tgt_pwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ar9300_eeprom }
%struct.ar9300_eeprom = type { i32*, %struct.cal_tgt_pow_legacy* }
%struct.cal_tgt_pow_legacy = type { i32* }

@AR9300_NUM_2G_CCK_TARGET_POWERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i64, i64)* @ar9003_hw_eeprom_get_cck_tgt_pwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_eeprom_get_cck_tgt_pwr(%struct.ath_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ar9300_eeprom*, align 8
  %13 = alloca %struct.cal_tgt_pow_legacy*, align 8
  %14 = alloca i32*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i32, i32* @AR9300_NUM_2G_CCK_TARGET_POWERS, align 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %7, align 8
  %17 = load i32, i32* @AR9300_NUM_2G_CCK_TARGET_POWERS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load i32, i32* @AR9300_NUM_2G_CCK_TARGET_POWERS, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %24 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %25 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.ar9300_eeprom* %26, %struct.ar9300_eeprom** %12, align 8
  %27 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %12, align 8
  %28 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %27, i32 0, i32 1
  %29 = load %struct.cal_tgt_pow_legacy*, %struct.cal_tgt_pow_legacy** %28, align 8
  store %struct.cal_tgt_pow_legacy* %29, %struct.cal_tgt_pow_legacy** %13, align 8
  %30 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %12, align 8
  %31 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %14, align 8
  store i64 0, i64* %8, align 8
  br label %33

33:                                               ; preds = %55, %3
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %33
  %38 = load i32*, i32** %14, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ath9k_hw_fbin2freq(i32 %41, i32 1)
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds i32, i32* %23, i64 %43
  store i32 %42, i32* %44, align 4
  %45 = load %struct.cal_tgt_pow_legacy*, %struct.cal_tgt_pow_legacy** %13, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.cal_tgt_pow_legacy, %struct.cal_tgt_pow_legacy* %45, i64 %46
  %48 = getelementptr inbounds %struct.cal_tgt_pow_legacy, %struct.cal_tgt_pow_legacy* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds i32, i32* %20, i64 %53
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %37
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %8, align 8
  br label %33

58:                                               ; preds = %33
  %59 = load i64, i64* %6, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @ar9003_hw_power_interpolate(i32 %60, i32* %23, i32* %20, i64 %61)
  %63 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %63)
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ath9k_hw_fbin2freq(i32, i32) #2

declare dso_local i32 @ar9003_hw_power_interpolate(i32, i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
