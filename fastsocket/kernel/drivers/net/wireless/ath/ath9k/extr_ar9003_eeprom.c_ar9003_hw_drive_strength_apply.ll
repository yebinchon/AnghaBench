; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_drive_strength_apply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_drive_strength_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ar9300_eeprom }
%struct.ar9300_eeprom = type { %struct.ar9300_base_eep_hdr }
%struct.ar9300_base_eep_hdr = type { i32 }

@AR_PHY_65NM_CH0_BIAS1 = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_BIAS2 = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_BIAS4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_hw_drive_strength_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_drive_strength_apply(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ar9300_eeprom*, align 8
  %4 = alloca %struct.ar9300_base_eep_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.ar9300_eeprom* %9, %struct.ar9300_eeprom** %3, align 8
  %10 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %3, align 8
  %11 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %10, i32 0, i32 0
  store %struct.ar9300_base_eep_hdr* %11, %struct.ar9300_base_eep_hdr** %4, align 8
  %12 = load %struct.ar9300_base_eep_hdr*, %struct.ar9300_base_eep_hdr** %4, align 8
  %13 = getelementptr inbounds %struct.ar9300_base_eep_hdr, %struct.ar9300_base_eep_hdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BIT(i32 0)
  %16 = and i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %84

20:                                               ; preds = %1
  %21 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %22 = load i32, i32* @AR_PHY_65NM_CH0_BIAS1, align 4
  %23 = call i64 @REG_READ(%struct.ath_hw* %21, i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = and i64 %24, -16777153
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = or i64 %26, 10485760
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = or i64 %28, 1310720
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = or i64 %30, 163840
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = or i64 %32, 20480
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = or i64 %34, 2560
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = or i64 %36, 320
  store i64 %37, i64* %6, align 8
  %38 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %39 = load i32, i32* @AR_PHY_65NM_CH0_BIAS1, align 4
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @REG_WRITE(%struct.ath_hw* %38, i32 %39, i64 %40)
  %42 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %43 = load i32, i32* @AR_PHY_65NM_CH0_BIAS2, align 4
  %44 = call i64 @REG_READ(%struct.ath_hw* %42, i32 %43)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = and i64 %45, 31
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = or i64 %47, -1610612736
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = or i64 %49, 335544320
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = or i64 %51, 41943040
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = or i64 %53, 5242880
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = or i64 %55, 655360
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = or i64 %57, 81920
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = or i64 %59, 10240
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = or i64 %61, 1280
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  %64 = or i64 %63, 160
  store i64 %64, i64* %6, align 8
  %65 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %66 = load i32, i32* @AR_PHY_65NM_CH0_BIAS2, align 4
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @REG_WRITE(%struct.ath_hw* %65, i32 %66, i64 %67)
  %69 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %70 = load i32, i32* @AR_PHY_65NM_CH0_BIAS4, align 4
  %71 = call i64 @REG_READ(%struct.ath_hw* %69, i32 %70)
  store i64 %71, i64* %6, align 8
  %72 = load i64, i64* %6, align 8
  %73 = and i64 %72, 8388607
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* %6, align 8
  %75 = or i64 %74, -1610612736
  store i64 %75, i64* %6, align 8
  %76 = load i64, i64* %6, align 8
  %77 = or i64 %76, 335544320
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* %6, align 8
  %79 = or i64 %78, 41943040
  store i64 %79, i64* %6, align 8
  %80 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %81 = load i32, i32* @AR_PHY_65NM_CH0_BIAS4, align 4
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @REG_WRITE(%struct.ath_hw* %80, i32 %81, i64 %82)
  br label %84

84:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
