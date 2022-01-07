; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom.c_ath9k_hw_usb_gen_fill_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom.c_ath9k_hw_usb_gen_fill_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR5416_EEPROM_OFFSET = common dso_local global i64 0, align 8
@AR5416_EEPROM_S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_usb_gen_fill_eeprom(%struct.ath_hw* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [8 x i64], align 16
  %13 = alloca [8 x i64], align 16
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %57, %4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %60

18:                                               ; preds = %14
  %19 = load i64, i64* @AR5416_EEPROM_OFFSET, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* @AR5416_EEPROM_S, align 4
  %24 = shl i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %19, %25
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 %28
  store i64 %26, i64* %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 8
  br i1 %33, label %34, label %56

34:                                               ; preds = %18
  %35 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %36 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 0
  %37 = getelementptr inbounds [8 x i64], [8 x i64]* %13, i64 0, i64 0
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @REG_READ_MULTI(%struct.ath_hw* %35, i64* %36, i64* %37, i32 %38)
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %52, %34
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [8 x i64], [8 x i64]* %13, i64 0, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %6, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i64*, i64** %6, align 8
  %51 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %51, i64** %6, align 8
  br label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %40

55:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %55, %18
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %14

60:                                               ; preds = %14
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %60
  %64 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %65 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 0
  %66 = getelementptr inbounds [8 x i64], [8 x i64]* %13, i64 0, i64 0
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @REG_READ_MULTI(%struct.ath_hw* %64, i64* %65, i64* %66, i32 %67)
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %81, %63
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [8 x i64], [8 x i64]* %13, i64 0, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %6, align 8
  store i64 %77, i64* %78, align 8
  %79 = load i64*, i64** %6, align 8
  %80 = getelementptr inbounds i64, i64* %79, i32 1
  store i64* %80, i64** %6, align 8
  br label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %69

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84, %60
  ret void
}

declare dso_local i32 @REG_READ_MULTI(%struct.ath_hw*, i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
