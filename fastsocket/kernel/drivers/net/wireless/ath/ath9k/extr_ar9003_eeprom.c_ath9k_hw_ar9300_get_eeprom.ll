; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ath9k_hw_ar9300_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ath9k_hw_ar9300_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ar9300_eeprom }
%struct.ar9300_eeprom = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32, %struct.ar9300_base_eep_hdr }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ar9300_base_eep_hdr = type { i32, i32, i32, i32, i32, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32)* @ath9k_hw_ar9300_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_ar9300_get_eeprom(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ar9300_eeprom*, align 8
  %7 = alloca %struct.ar9300_base_eep_hdr*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.ar9300_eeprom* %10, %struct.ar9300_eeprom** %6, align 8
  %11 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %6, align 8
  %12 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %11, i32 0, i32 4
  store %struct.ar9300_base_eep_hdr* %12, %struct.ar9300_base_eep_hdr** %7, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %93 [
    i32 137, label %14
    i32 136, label %19
    i32 135, label %25
    i32 131, label %31
    i32 134, label %38
    i32 133, label %42
    i32 130, label %47
    i32 128, label %51
    i32 129, label %57
    i32 132, label %62
    i32 138, label %72
    i32 139, label %78
    i32 140, label %83
    i32 141, label %88
  ]

14:                                               ; preds = %2
  %15 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %6, align 8
  %16 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @get_unaligned_be16(i32 %17)
  store i32 %18, i32* %3, align 4
  br label %94

19:                                               ; preds = %2
  %20 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %6, align 8
  %21 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 2
  %24 = call i32 @get_unaligned_be16(i32 %23)
  store i32 %24, i32* %3, align 4
  br label %94

25:                                               ; preds = %2
  %26 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %6, align 8
  %27 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 4
  %30 = call i32 @get_unaligned_be16(i32 %29)
  store i32 %30, i32* %3, align 4
  br label %94

31:                                               ; preds = %2
  %32 = load %struct.ar9300_base_eep_hdr*, %struct.ar9300_base_eep_hdr** %7, align 8
  %33 = getelementptr inbounds %struct.ar9300_base_eep_hdr, %struct.ar9300_base_eep_hdr* %32, i32 0, i32 6
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %94

38:                                               ; preds = %2
  %39 = load %struct.ar9300_base_eep_hdr*, %struct.ar9300_base_eep_hdr** %7, align 8
  %40 = getelementptr inbounds %struct.ar9300_base_eep_hdr, %struct.ar9300_base_eep_hdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %3, align 4
  br label %94

42:                                               ; preds = %2
  %43 = load %struct.ar9300_base_eep_hdr*, %struct.ar9300_base_eep_hdr** %7, align 8
  %44 = getelementptr inbounds %struct.ar9300_base_eep_hdr, %struct.ar9300_base_eep_hdr* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %3, align 4
  br label %94

47:                                               ; preds = %2
  %48 = load %struct.ar9300_base_eep_hdr*, %struct.ar9300_base_eep_hdr** %7, align 8
  %49 = getelementptr inbounds %struct.ar9300_base_eep_hdr, %struct.ar9300_base_eep_hdr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %3, align 4
  br label %94

51:                                               ; preds = %2
  %52 = load %struct.ar9300_base_eep_hdr*, %struct.ar9300_base_eep_hdr** %7, align 8
  %53 = getelementptr inbounds %struct.ar9300_base_eep_hdr, %struct.ar9300_base_eep_hdr* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = ashr i32 %54, 4
  %56 = and i32 %55, 15
  store i32 %56, i32* %3, align 4
  br label %94

57:                                               ; preds = %2
  %58 = load %struct.ar9300_base_eep_hdr*, %struct.ar9300_base_eep_hdr** %7, align 8
  %59 = getelementptr inbounds %struct.ar9300_base_eep_hdr, %struct.ar9300_base_eep_hdr* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 15
  store i32 %61, i32* %3, align 4
  br label %94

62:                                               ; preds = %2
  %63 = load %struct.ar9300_base_eep_hdr*, %struct.ar9300_base_eep_hdr** %7, align 8
  %64 = getelementptr inbounds %struct.ar9300_base_eep_hdr, %struct.ar9300_base_eep_hdr* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @BIT(i32 5)
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %3, align 4
  br label %94

72:                                               ; preds = %2
  %73 = load %struct.ar9300_base_eep_hdr*, %struct.ar9300_base_eep_hdr** %7, align 8
  %74 = getelementptr inbounds %struct.ar9300_base_eep_hdr, %struct.ar9300_base_eep_hdr* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = ashr i32 %75, 3
  %77 = and i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %94

78:                                               ; preds = %2
  %79 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %6, align 8
  %80 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %3, align 4
  br label %94

83:                                               ; preds = %2
  %84 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %6, align 8
  %85 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %3, align 4
  br label %94

88:                                               ; preds = %2
  %89 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %6, align 8
  %90 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %3, align 4
  br label %94

93:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %88, %83, %78, %72, %62, %57, %51, %47, %42, %38, %31, %25, %19, %14
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @get_unaligned_be16(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
