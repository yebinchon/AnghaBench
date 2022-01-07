; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_4k.c_ath9k_hw_4k_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_4k.c_ath9k_hw_4k_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ar5416_eeprom_4k }
%struct.ar5416_eeprom_4k = type { %struct.base_eep_header_4k, %struct.modal_eep_4k_header }
%struct.base_eep_header_4k = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.modal_eep_4k_header = type { i32*, i32, i32, i32, i32, i32* }

@AR5416_EEP_VER_MINOR_MASK = common dso_local global i32 0, align 4
@AR5416_PWR_TABLE_OFFSET_DB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32)* @ath9k_hw_4k_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_4k_get_eeprom(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ar5416_eeprom_4k*, align 8
  %7 = alloca %struct.modal_eep_4k_header*, align 8
  %8 = alloca %struct.base_eep_header_4k*, align 8
  %9 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ar5416_eeprom_4k* %12, %struct.ar5416_eeprom_4k** %6, align 8
  %13 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %6, align 8
  %14 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %13, i32 0, i32 1
  store %struct.modal_eep_4k_header* %14, %struct.modal_eep_4k_header** %7, align 8
  %15 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %6, align 8
  %16 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %15, i32 0, i32 0
  store %struct.base_eep_header_4k* %16, %struct.base_eep_header_4k** %8, align 8
  %17 = load %struct.base_eep_header_4k*, %struct.base_eep_header_4k** %8, align 8
  %18 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AR5416_EEP_VER_MINOR_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %103 [
    i32 137, label %23
    i32 142, label %29
    i32 141, label %34
    i32 140, label %40
    i32 132, label %46
    i32 135, label %52
    i32 134, label %56
    i32 131, label %60
    i32 136, label %64
    i32 144, label %68
    i32 139, label %72
    i32 128, label %74
    i32 130, label %78
    i32 143, label %82
    i32 133, label %83
    i32 138, label %85
    i32 145, label %89
    i32 129, label %93
    i32 146, label %97
  ]

23:                                               ; preds = %2
  %24 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %7, align 8
  %25 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  br label %104

29:                                               ; preds = %2
  %30 = load %struct.base_eep_header_4k*, %struct.base_eep_header_4k** %8, align 8
  %31 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @get_unaligned_be16(i32 %32)
  store i32 %33, i32* %3, align 4
  br label %104

34:                                               ; preds = %2
  %35 = load %struct.base_eep_header_4k*, %struct.base_eep_header_4k** %8, align 8
  %36 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 2
  %39 = call i32 @get_unaligned_be16(i32 %38)
  store i32 %39, i32* %3, align 4
  br label %104

40:                                               ; preds = %2
  %41 = load %struct.base_eep_header_4k*, %struct.base_eep_header_4k** %8, align 8
  %42 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 4
  %45 = call i32 @get_unaligned_be16(i32 %44)
  store i32 %45, i32* %3, align 4
  br label %104

46:                                               ; preds = %2
  %47 = load %struct.base_eep_header_4k*, %struct.base_eep_header_4k** %8, align 8
  %48 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %3, align 4
  br label %104

52:                                               ; preds = %2
  %53 = load %struct.base_eep_header_4k*, %struct.base_eep_header_4k** %8, align 8
  %54 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %3, align 4
  br label %104

56:                                               ; preds = %2
  %57 = load %struct.base_eep_header_4k*, %struct.base_eep_header_4k** %8, align 8
  %58 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %3, align 4
  br label %104

60:                                               ; preds = %2
  %61 = load %struct.base_eep_header_4k*, %struct.base_eep_header_4k** %8, align 8
  %62 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %3, align 4
  br label %104

64:                                               ; preds = %2
  %65 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %7, align 8
  %66 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %3, align 4
  br label %104

68:                                               ; preds = %2
  %69 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %7, align 8
  %70 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %3, align 4
  br label %104

72:                                               ; preds = %2
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %3, align 4
  br label %104

74:                                               ; preds = %2
  %75 = load %struct.base_eep_header_4k*, %struct.base_eep_header_4k** %8, align 8
  %76 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %3, align 4
  br label %104

78:                                               ; preds = %2
  %79 = load %struct.base_eep_header_4k*, %struct.base_eep_header_4k** %8, align 8
  %80 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %3, align 4
  br label %104

82:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %104

83:                                               ; preds = %2
  %84 = load i32, i32* @AR5416_PWR_TABLE_OFFSET_DB, align 4
  store i32 %84, i32* %3, align 4
  br label %104

85:                                               ; preds = %2
  %86 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %7, align 8
  %87 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %3, align 4
  br label %104

89:                                               ; preds = %2
  %90 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %7, align 8
  %91 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %3, align 4
  br label %104

93:                                               ; preds = %2
  %94 = load %struct.base_eep_header_4k*, %struct.base_eep_header_4k** %8, align 8
  %95 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %3, align 4
  br label %104

97:                                               ; preds = %2
  %98 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %7, align 8
  %99 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %98, i32 0, i32 5
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %3, align 4
  br label %104

103:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %97, %93, %89, %85, %83, %82, %78, %74, %72, %68, %64, %60, %56, %52, %46, %40, %34, %29, %23
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @get_unaligned_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
