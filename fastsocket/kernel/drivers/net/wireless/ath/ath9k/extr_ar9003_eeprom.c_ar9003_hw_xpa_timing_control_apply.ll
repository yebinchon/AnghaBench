; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_xpa_timing_control_apply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_xpa_timing_control_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ar9300_eeprom }
%struct.ar9300_eeprom = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@AR_PHY_XPA_TIMING_CTL = common dso_local global i32 0, align 4
@AR_PHY_XPA_TIMING_CTL_FRAME_XPAB_ON = common dso_local global i32 0, align 4
@AR_PHY_XPA_TIMING_CTL_FRAME_XPAA_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar9003_hw_xpa_timing_control_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_xpa_timing_control_apply(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ar9300_eeprom*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.ar9300_eeprom* %9, %struct.ar9300_eeprom** %5, align 8
  %10 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %5, align 8
  %11 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 128
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %50

17:                                               ; preds = %2
  %18 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %19 = call i32 @AR_SREV_9300(%struct.ath_hw* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = call i32 @AR_SREV_9340(%struct.ath_hw* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %27 = call i32 @AR_SREV_9580(%struct.ath_hw* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %50

30:                                               ; preds = %25, %21, %17
  %31 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call %struct.TYPE_6__* @ar9003_modal_header(%struct.ath_hw* %31, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %40 = load i32, i32* @AR_PHY_XPA_TIMING_CTL, align 4
  %41 = load i32, i32* @AR_PHY_XPA_TIMING_CTL_FRAME_XPAB_ON, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %39, i32 %40, i32 %41, i32 %42)
  br label %50

44:                                               ; preds = %30
  %45 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %46 = load i32, i32* @AR_PHY_XPA_TIMING_CTL, align 4
  %47 = load i32, i32* @AR_PHY_XPA_TIMING_CTL_FRAME_XPAA_ON, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %45, i32 %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %16, %29, %44, %38
  ret void
}

declare dso_local i32 @AR_SREV_9300(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9580(%struct.ath_hw*) #1

declare dso_local %struct.TYPE_6__* @ar9003_modal_header(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
