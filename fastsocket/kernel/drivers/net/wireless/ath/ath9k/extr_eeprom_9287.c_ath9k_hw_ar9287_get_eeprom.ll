; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_9287.c_ath9k_hw_ar9287_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_9287.c_ath9k_hw_ar9287_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ar9287_eeprom }
%struct.ar9287_eeprom = type { %struct.base_eep_ar9287_header, %struct.modal_eep_ar9287_header }
%struct.base_eep_ar9287_header = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.modal_eep_ar9287_header = type { i32*, i32* }

@AR9287_EEP_VER_MINOR_MASK = common dso_local global i32 0, align 4
@AR9287_EEP_MINOR_VER_2 = common dso_local global i32 0, align 4
@AR9287_EEP_MINOR_VER_3 = common dso_local global i32 0, align 4
@u8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32)* @ath9k_hw_ar9287_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_ar9287_get_eeprom(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ar9287_eeprom*, align 8
  %7 = alloca %struct.modal_eep_ar9287_header*, align 8
  %8 = alloca %struct.base_eep_ar9287_header*, align 8
  %9 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ar9287_eeprom* %12, %struct.ar9287_eeprom** %6, align 8
  %13 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %6, align 8
  %14 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %13, i32 0, i32 1
  store %struct.modal_eep_ar9287_header* %14, %struct.modal_eep_ar9287_header** %7, align 8
  %15 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %6, align 8
  %16 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %15, i32 0, i32 0
  store %struct.base_eep_ar9287_header* %16, %struct.base_eep_ar9287_header** %8, align 8
  %17 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %18 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AR9287_EEP_VER_MINOR_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %113 [
    i32 137, label %23
    i32 141, label %29
    i32 140, label %34
    i32 139, label %40
    i32 133, label %46
    i32 135, label %52
    i32 134, label %56
    i32 132, label %60
    i32 138, label %64
    i32 128, label %66
    i32 131, label %70
    i32 142, label %74
    i32 136, label %78
    i32 130, label %82
    i32 129, label %91
    i32 143, label %100
  ]

23:                                               ; preds = %2
  %24 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %25 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  br label %114

29:                                               ; preds = %2
  %30 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %31 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %30, i32 0, i32 11
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @get_unaligned_be16(i32 %32)
  store i32 %33, i32* %3, align 4
  br label %114

34:                                               ; preds = %2
  %35 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %36 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 2
  %39 = call i32 @get_unaligned_be16(i32 %38)
  store i32 %39, i32* %3, align 4
  br label %114

40:                                               ; preds = %2
  %41 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %42 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %41, i32 0, i32 11
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 4
  %45 = call i32 @get_unaligned_be16(i32 %44)
  store i32 %45, i32* %3, align 4
  br label %114

46:                                               ; preds = %2
  %47 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %48 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %3, align 4
  br label %114

52:                                               ; preds = %2
  %53 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %54 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %3, align 4
  br label %114

56:                                               ; preds = %2
  %57 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %58 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %3, align 4
  br label %114

60:                                               ; preds = %2
  %61 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %62 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %3, align 4
  br label %114

64:                                               ; preds = %2
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %114

66:                                               ; preds = %2
  %67 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %68 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %3, align 4
  br label %114

70:                                               ; preds = %2
  %71 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %72 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %3, align 4
  br label %114

74:                                               ; preds = %2
  %75 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %76 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %3, align 4
  br label %114

78:                                               ; preds = %2
  %79 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %80 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %3, align 4
  br label %114

82:                                               ; preds = %2
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @AR9287_EEP_MINOR_VER_2, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %88 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %3, align 4
  br label %114

90:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %114

91:                                               ; preds = %2
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @AR9287_EEP_MINOR_VER_3, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load %struct.base_eep_ar9287_header*, %struct.base_eep_ar9287_header** %8, align 8
  %97 = getelementptr inbounds %struct.base_eep_ar9287_header, %struct.base_eep_ar9287_header* %96, i32 0, i32 10
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %3, align 4
  br label %114

99:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  br label %114

100:                                              ; preds = %2
  %101 = load i32, i32* @u8, align 4
  %102 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %103 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %7, align 8
  %108 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @max_t(i32 %101, i32 %106, i32 %111)
  store i32 %112, i32* %3, align 4
  br label %114

113:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %100, %99, %95, %90, %86, %78, %74, %70, %66, %64, %60, %56, %52, %46, %40, %34, %29, %23
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @get_unaligned_be16(i32) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
