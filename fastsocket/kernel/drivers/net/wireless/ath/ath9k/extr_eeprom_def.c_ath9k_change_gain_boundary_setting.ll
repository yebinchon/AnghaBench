; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_def.c_ath9k_change_gain_boundary_setting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_def.c_ath9k_change_gain_boundary_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR5416_PWR_TABLE_OFFSET_DB = common dso_local global i64 0, align 8
@MAX_RATE_POWER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i64*, i64, i64, i64, i32*)* @ath9k_change_gain_boundary_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_change_gain_boundary_setting(%struct.ath_hw* %0, i64* %1, i64 %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %16 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %73

18:                                               ; preds = %6
  %19 = load i64, i64* @AR5416_PWR_TABLE_OFFSET_DB, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %18
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @AR5416_PWR_TABLE_OFFSET_DB, align 8
  %25 = sub nsw i64 %23, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32*, i32** %12, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %12, align 8
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 2
  store i32 %30, i32* %28, align 4
  store i64 0, i64* %13, align 8
  br label %31

31:                                               ; preds = %47, %22
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i64*, i64** %8, align 8
  %37 = load i64, i64* %13, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 %39, %42
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %13, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64 %43, i64* %46, align 8
  br label %47

47:                                               ; preds = %35
  %48 = load i64, i64* %13, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %13, align 8
  br label %31

50:                                               ; preds = %31
  br label %51

51:                                               ; preds = %50, %18
  %52 = load i64, i64* @MAX_RATE_POWER, align 8
  %53 = load i64, i64* %10, align 8
  %54 = sub i64 %52, %53
  store i64 %54, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %55

55:                                               ; preds = %69, %51
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load i64, i64* %14, align 8
  %61 = load i64*, i64** %8, align 8
  %62 = load i64, i64* %13, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @min(i64 %60, i64 %64)
  %66 = load i64*, i64** %8, align 8
  %67 = load i64, i64* %13, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  store i64 %65, i64* %68, align 8
  br label %69

69:                                               ; preds = %59
  %70 = load i64, i64* %13, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %13, align 8
  br label %55

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %72, %6
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %74, align 4
  ret i32 %75
}

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
