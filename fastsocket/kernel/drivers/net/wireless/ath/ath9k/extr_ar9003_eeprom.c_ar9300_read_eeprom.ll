; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9300_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9300_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@AR9300_EEPROM_SIZE = common dso_local global i32 0, align 4
@EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"eeprom address not in range\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"unable to read eeprom region at offset %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32, i32*, i32)* @ar9300_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9300_read_eeprom(%struct.ath_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath_common*, align 8
  %11 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %13 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %12)
  store %struct.ath_common* %13, %struct.ath_common** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %17, %18
  %20 = sdiv i32 %19, 2
  %21 = load i32, i32* @AR9300_EEPROM_SIZE, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %16, %4
  %25 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %26 = load i32, i32* @EEPROM, align 4
  %27 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %25, i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %83

28:                                               ; preds = %16
  %29 = load i32, i32* %7, align 4
  %30 = srem i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %7, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %8, align 8
  %38 = call i32 @ar9300_eeprom_read_byte(%struct.ath_hw* %33, i32 %34, i32* %36)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %78

41:                                               ; preds = %32
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %41, %28
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %62, %44
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sdiv i32 %47, 2
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %45
  %51 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @ar9300_eeprom_read_word(%struct.ath_hw* %51, i32 %52, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %78

57:                                               ; preds = %50
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %58, 2
  store i32 %59, i32* %7, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  store i32* %61, i32** %8, align 8
  br label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %45

65:                                               ; preds = %45
  %66 = load i32, i32* %9, align 4
  %67 = srem i32 %66, 2
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @ar9300_eeprom_read_byte(%struct.ath_hw* %70, i32 %71, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  br label %78

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %65
  store i32 1, i32* %5, align 4
  br label %83

78:                                               ; preds = %75, %56, %40
  %79 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %80 = load i32, i32* @EEPROM, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %79, i32 %80, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %78, %77, %24
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @ar9300_eeprom_read_byte(%struct.ath_hw*, i32, i32*) #1

declare dso_local i32 @ar9300_eeprom_read_word(%struct.ath_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
