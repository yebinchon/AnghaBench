; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_xpa_bias_level_apply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_xpa_bias_level_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.TYPE_2__ = type { i32 }

@AR_CH0_TOP2 = common dso_local global i32 0, align 4
@AR_CH0_TOP2_XPABIASLVL = common dso_local global i32 0, align 4
@AR_CH0_TOP = common dso_local global i32 0, align 4
@AR_CH0_TOP_XPABIASLVL = common dso_local global i32 0, align 4
@AR_CH0_THERM = common dso_local global i32 0, align 4
@AR_CH0_THERM_XPABIASLVL_MSB = common dso_local global i32 0, align 4
@AR_CH0_THERM_XPASHORT2GND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar9003_hw_xpa_bias_level_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_xpa_bias_level_apply(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TYPE_2__* @ar9003_modal_header(%struct.ath_hw* %6, i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = call i64 @AR_SREV_9485(%struct.ath_hw* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %16 = call i64 @AR_SREV_9330(%struct.ath_hw* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %20 = call i64 @AR_SREV_9340(%struct.ath_hw* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18, %14, %2
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = load i32, i32* @AR_CH0_TOP2, align 4
  %25 = load i32, i32* @AR_CH0_TOP2_XPABIASLVL, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %23, i32 %24, i32 %25, i32 %26)
  br label %63

28:                                               ; preds = %18
  %29 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %30 = call i64 @AR_SREV_9462(%struct.ath_hw* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %34 = call i64 @AR_SREV_9550(%struct.ath_hw* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %38 = call i64 @AR_SREV_9565(%struct.ath_hw* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36, %32, %28
  %41 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %42 = load i32, i32* @AR_CH0_TOP, align 4
  %43 = load i32, i32* @AR_CH0_TOP_XPABIASLVL, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %41, i32 %42, i32 %43, i32 %44)
  br label %62

46:                                               ; preds = %36
  %47 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %48 = load i32, i32* @AR_CH0_TOP, align 4
  %49 = load i32, i32* @AR_CH0_TOP_XPABIASLVL, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %53 = load i32, i32* @AR_CH0_THERM, align 4
  %54 = load i32, i32* @AR_CH0_THERM_XPABIASLVL_MSB, align 4
  %55 = load i32, i32* %5, align 4
  %56 = ashr i32 %55, 2
  %57 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %52, i32 %53, i32 %54, i32 %56)
  %58 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %59 = load i32, i32* @AR_CH0_THERM, align 4
  %60 = load i32, i32* @AR_CH0_THERM_XPASHORT2GND, align 4
  %61 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %58, i32 %59, i32 %60, i32 1)
  br label %62

62:                                               ; preds = %46, %40
  br label %63

63:                                               ; preds = %62, %22
  ret void
}

declare dso_local %struct.TYPE_2__* @ar9003_modal_header(%struct.ath_hw*, i32) #1

declare dso_local i64 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
