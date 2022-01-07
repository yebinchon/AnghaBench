; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_modal_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_modal_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9300_modal_eep_header = type { i32 }
%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ar9300_eeprom }
%struct.ar9300_eeprom = type { %struct.ar9300_modal_eep_header, %struct.ar9300_modal_eep_header }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ar9300_modal_eep_header* (%struct.ath_hw*, i32)* @ar9003_modal_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ar9300_modal_eep_header* @ar9003_modal_header(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ar9300_modal_eep_header*, align 8
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ar9300_eeprom*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.ar9300_eeprom* %9, %struct.ar9300_eeprom** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %6, align 8
  %14 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %13, i32 0, i32 1
  store %struct.ar9300_modal_eep_header* %14, %struct.ar9300_modal_eep_header** %3, align 8
  br label %18

15:                                               ; preds = %2
  %16 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %6, align 8
  %17 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %16, i32 0, i32 0
  store %struct.ar9300_modal_eep_header* %17, %struct.ar9300_modal_eep_header** %3, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.ar9300_modal_eep_header*, %struct.ar9300_modal_eep_header** %3, align 8
  ret %struct.ar9300_modal_eep_header* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
