; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_get_paprd_scale_factor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_get_paprd_scale_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ar9300_eeprom }
%struct.ar9300_eeprom = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ath9k_channel = type { i32 }

@AR9300_PAPRD_SCALE_1 = common dso_local global i32 0, align 4
@AR9300_PAPRD_SCALE_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9003_get_paprd_scale_factor(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca %struct.ar9300_eeprom*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.ar9300_eeprom* %9, %struct.ar9300_eeprom** %6, align 8
  %10 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %11 = call i64 @IS_CHAN_2GHZ(%struct.ath9k_channel* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %6, align 8
  %15 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = load i32, i32* @AR9300_PAPRD_SCALE_1, align 4
  %20 = call i32 @MS(i32 %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %55

21:                                               ; preds = %2
  %22 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %23 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 5700
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %6, align 8
  %28 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  %32 = load i32, i32* @AR9300_PAPRD_SCALE_1, align 4
  %33 = call i32 @MS(i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %55

34:                                               ; preds = %21
  %35 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %36 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 5400
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %6, align 8
  %41 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = load i32, i32* @AR9300_PAPRD_SCALE_2, align 4
  %46 = call i32 @MS(i32 %44, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %55

47:                                               ; preds = %34
  %48 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %6, align 8
  %49 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le32_to_cpu(i32 %51)
  %53 = load i32, i32* @AR9300_PAPRD_SCALE_1, align 4
  %54 = call i32 @MS(i32 %52, i32 %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %47, %39, %26, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
