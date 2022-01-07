; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_cal_pier_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_cal_pier_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ar9300_eeprom }
%struct.ar9300_eeprom = type { %struct.ar9300_cal_data_per_freq_op_loop**, i32*, %struct.ar9300_cal_data_per_freq_op_loop**, i32* }
%struct.ar9300_cal_data_per_freq_op_loop = type { i32, i32, i32 }
%struct.ath_common = type { i32 }

@AR9300_MAX_CHAINS = common dso_local global i32 0, align 4
@EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Invalid chain index, must be less than %d\0A\00", align 1
@AR9300_NUM_5G_CAL_PIERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Invalid 5GHz cal pier index, must be less than %d\0A\00", align 1
@AR9300_NUM_2G_CAL_PIERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Invalid 2GHz cal pier index, must be less than %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32, i32, i32, i32*, i32*, i32*, i32*)* @ar9003_hw_cal_pier_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_cal_pier_get(%struct.ath_hw* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath_hw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.ar9300_cal_data_per_freq_op_loop*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.ar9300_eeprom*, align 8
  %22 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %23 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.ar9300_eeprom* %25, %struct.ar9300_eeprom** %21, align 8
  %26 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %27 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %26)
  store %struct.ath_common* %27, %struct.ath_common** %22, align 8
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %8
  %32 = load %struct.ath_common*, %struct.ath_common** %22, align 8
  %33 = load i32, i32* @EEPROM, align 4
  %34 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %35 = call i32 @ath_dbg(%struct.ath_common* %32, i32 %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 -1, i32* %9, align 4
  br label %109

36:                                               ; preds = %8
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %36
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @AR9300_NUM_5G_CAL_PIERS, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.ath_common*, %struct.ath_common** %22, align 8
  %45 = load i32, i32* @EEPROM, align 4
  %46 = load i32, i32* @AR9300_NUM_5G_CAL_PIERS, align 4
  %47 = call i32 @ath_dbg(%struct.ath_common* %44, i32 %45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  store i32 -1, i32* %9, align 4
  br label %109

48:                                               ; preds = %39
  %49 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %21, align 8
  %50 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32* %54, i32** %18, align 8
  %55 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %21, align 8
  %56 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %55, i32 0, i32 2
  %57 = load %struct.ar9300_cal_data_per_freq_op_loop**, %struct.ar9300_cal_data_per_freq_op_loop*** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop*, %struct.ar9300_cal_data_per_freq_op_loop** %57, i64 %59
  %61 = load %struct.ar9300_cal_data_per_freq_op_loop*, %struct.ar9300_cal_data_per_freq_op_loop** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop, %struct.ar9300_cal_data_per_freq_op_loop* %61, i64 %63
  store %struct.ar9300_cal_data_per_freq_op_loop* %64, %struct.ar9300_cal_data_per_freq_op_loop** %19, align 8
  store i32 0, i32* %20, align 4
  br label %91

65:                                               ; preds = %36
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @AR9300_NUM_2G_CAL_PIERS, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load %struct.ath_common*, %struct.ath_common** %22, align 8
  %71 = load i32, i32* @EEPROM, align 4
  %72 = load i32, i32* @AR9300_NUM_2G_CAL_PIERS, align 4
  %73 = call i32 @ath_dbg(%struct.ath_common* %70, i32 %71, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  store i32 -1, i32* %9, align 4
  br label %109

74:                                               ; preds = %65
  %75 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %21, align 8
  %76 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32* %80, i32** %18, align 8
  %81 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %21, align 8
  %82 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %81, i32 0, i32 0
  %83 = load %struct.ar9300_cal_data_per_freq_op_loop**, %struct.ar9300_cal_data_per_freq_op_loop*** %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop*, %struct.ar9300_cal_data_per_freq_op_loop** %83, i64 %85
  %87 = load %struct.ar9300_cal_data_per_freq_op_loop*, %struct.ar9300_cal_data_per_freq_op_loop** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop, %struct.ar9300_cal_data_per_freq_op_loop* %87, i64 %89
  store %struct.ar9300_cal_data_per_freq_op_loop* %90, %struct.ar9300_cal_data_per_freq_op_loop** %19, align 8
  store i32 1, i32* %20, align 4
  br label %91

91:                                               ; preds = %74, %48
  %92 = load i32*, i32** %18, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %20, align 4
  %95 = call i32 @ath9k_hw_fbin2freq(i32 %93, i32 %94)
  %96 = load i32*, i32** %14, align 8
  store i32 %95, i32* %96, align 4
  %97 = load %struct.ar9300_cal_data_per_freq_op_loop*, %struct.ar9300_cal_data_per_freq_op_loop** %19, align 8
  %98 = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop, %struct.ar9300_cal_data_per_freq_op_loop* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %15, align 8
  store i32 %99, i32* %100, align 4
  %101 = load %struct.ar9300_cal_data_per_freq_op_loop*, %struct.ar9300_cal_data_per_freq_op_loop** %19, align 8
  %102 = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop, %struct.ar9300_cal_data_per_freq_op_loop* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %16, align 8
  store i32 %103, i32* %104, align 4
  %105 = load %struct.ar9300_cal_data_per_freq_op_loop*, %struct.ar9300_cal_data_per_freq_op_loop** %19, align 8
  %106 = getelementptr inbounds %struct.ar9300_cal_data_per_freq_op_loop, %struct.ar9300_cal_data_per_freq_op_loop* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %17, align 8
  store i32 %107, i32* %108, align 4
  store i32 0, i32* %9, align 4
  br label %109

109:                                              ; preds = %91, %69, %43, %31
  %110 = load i32, i32* %9, align 4
  ret i32 %110
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @ath9k_hw_fbin2freq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
