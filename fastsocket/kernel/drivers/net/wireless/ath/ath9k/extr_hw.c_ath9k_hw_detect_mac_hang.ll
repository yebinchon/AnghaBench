; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_detect_mac_hang.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_detect_mac_hang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_DMADBG_4 = common dso_local global i64 0, align 8
@AR_DMADBG_6 = common dso_local global i64 0, align 8
@DCU_COMPLETE_STATE_MASK = common dso_local global i64 0, align 8
@DCU_COMPLETE_STATE = common dso_local global i64 0, align 8
@RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"MAC Hang signature not found at DCU complete\0A\00", align 1
@AR_DMADBG_5 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"MAC Hang signature 1 not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"DCU registers: chain %08x complete %08x Hang: state %d pos %d\0A\00", align 1
@NUM_STATUS_READS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"MAC Hang signature 1 found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*)* @ath9k_hw_detect_mac_hang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_detect_mac_hang(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %11 = load i64, i64* @AR_DMADBG_4, align 8
  store i64 %11, i64* %6, align 8
  store i64 6, i64* %10, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %13 = load i64, i64* @AR_DMADBG_6, align 8
  %14 = call i64 @REG_READ(%struct.ath_hw* %12, i64 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @DCU_COMPLETE_STATE_MASK, align 8
  %17 = and i64 %15, %16
  %18 = load i64, i64* @DCU_COMPLETE_STATE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %22 = call i32 @ath9k_hw_common(%struct.ath_hw* %21)
  %23 = load i32, i32* @RESET, align 4
  %24 = call i32 (i32, i32, i8*, ...) @ath_dbg(i32 %22, i32 %23, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %93

25:                                               ; preds = %1
  %26 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @REG_READ(%struct.ath_hw* %26, i64 %27)
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @ath9k_hw_check_dcs(i64 %29, i64 %30, i64* %9, i64* %8)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %49

34:                                               ; preds = %25
  %35 = load i64, i64* @AR_DMADBG_5, align 8
  store i64 %35, i64* %6, align 8
  store i64 4, i64* %10, align 8
  %36 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @REG_READ(%struct.ath_hw* %36, i64 %37)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i64 @ath9k_hw_check_dcs(i64 %39, i64 %40, i64* %9, i64* %8)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %49

44:                                               ; preds = %34
  %45 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %46 = call i32 @ath9k_hw_common(%struct.ath_hw* %45)
  %47 = load i32, i32* @RESET, align 4
  %48 = call i32 (i32, i32, i8*, ...) @ath_dbg(i32 %46, i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %93

49:                                               ; preds = %43, %33
  %50 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %51 = call i32 @ath9k_hw_common(%struct.ath_hw* %50)
  %52 = load i32, i32* @RESET, align 4
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 (i32, i32, i8*, ...) @ath_dbg(i32 %51, i32 %52, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i64 %53, i64 %54, i64 %55, i64 %56)
  store i64 0, i64* %7, align 8
  br label %58

58:                                               ; preds = %85, %49
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @NUM_STATUS_READS, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %88

62:                                               ; preds = %58
  %63 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i64 @REG_READ(%struct.ath_hw* %63, i64 %64)
  store i64 %65, i64* %4, align 8
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* %8, align 8
  %68 = mul nsw i64 5, %67
  %69 = ashr i64 %66, %68
  %70 = and i64 %69, 31
  store i64 %70, i64* %4, align 8
  %71 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %72 = load i64, i64* @AR_DMADBG_6, align 8
  %73 = call i64 @REG_READ(%struct.ath_hw* %71, i64 %72)
  store i64 %73, i64* %5, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @DCU_COMPLETE_STATE_MASK, align 8
  %76 = and i64 %74, %75
  %77 = load i64, i64* @DCU_COMPLETE_STATE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %62
  %80 = load i64, i64* %4, align 8
  %81 = load i64, i64* %9, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79, %62
  store i32 0, i32* %2, align 4
  br label %93

84:                                               ; preds = %79
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %7, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %7, align 8
  br label %58

88:                                               ; preds = %58
  %89 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %90 = call i32 @ath9k_hw_common(%struct.ath_hw* %89)
  %91 = load i32, i32* @RESET, align 4
  %92 = call i32 (i32, i32, i8*, ...) @ath_dbg(i32 %90, i32 %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %93

93:                                               ; preds = %88, %83, %44, %20
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @REG_READ(%struct.ath_hw*, i64) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*, ...) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @ath9k_hw_check_dcs(i64, i64, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
