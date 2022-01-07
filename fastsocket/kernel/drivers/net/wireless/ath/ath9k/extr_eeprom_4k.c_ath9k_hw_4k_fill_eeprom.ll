; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_4k.c_ath9k_hw_4k_fill_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_4k.c_ath9k_hw_4k_fill_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Reading from EEPROM, not flash\0A\00", align 1
@ATH_USB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*)* @ath9k_hw_4k_fill_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_4k_fill_eeprom(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %6 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %5)
  store %struct.ath_common* %6, %struct.ath_common** %4, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %8 = call i32 @ath9k_hw_use_flash(%struct.ath_hw* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %12 = load i32, i32* @EEPROM, align 4
  %13 = call i32 @ath_dbg(%struct.ath_common* %11, i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %16 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ATH_USB, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = call i32 @__ath9k_hw_usb_4k_fill_eeprom(%struct.ath_hw* %23)
  store i32 %24, i32* %2, align 4
  br label %28

25:                                               ; preds = %14
  %26 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %27 = call i32 @__ath9k_hw_4k_fill_eeprom(%struct.ath_hw* %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_use_flash(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @__ath9k_hw_usb_4k_fill_eeprom(%struct.ath_hw*) #1

declare dso_local i32 @__ath9k_hw_4k_fill_eeprom(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
