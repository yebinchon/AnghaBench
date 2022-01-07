; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_hw_get_temperature.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_hw_get_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_10__, i32, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i32*, i32*, i32* }

@S_TEMPERATURE = common dso_local global i32 0, align 4
@STATS_REPLY_FLG_HT40_MODE_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Running HT40 temperature calibration\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Running temperature calibration\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Calib values R[1-3]: %d %d %d R4: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Calibration conflict R1 == R3\0A\00", align 1
@TEMPERATURE_CALIB_A_VAL = common dso_local global i64 0, align 8
@TEMPERATURE_CALIB_KELVIN_OFFSET = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"Calibrated temperature: %dK, %dC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il4965_hw_get_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_hw_get_temperature(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %10 = load i32, i32* @S_TEMPERATURE, align 4
  %11 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %12 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %11, i32 0, i32 1
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %1
  %16 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @STATS_REPLY_FLG_HT40_MODE_MSK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %15
  %25 = call i32 (i8*, ...) @D_TEMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %27 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le32_to_cpu(i32 %31)
  store i64 %32, i64* %6, align 8
  %33 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %34 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le32_to_cpu(i32 %38)
  store i64 %39, i64* %7, align 8
  %40 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %41 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @le32_to_cpu(i32 %45)
  store i64 %46, i64* %8, align 8
  %47 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %48 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @le32_to_cpu(i32 %52)
  store i64 %53, i64* %9, align 8
  br label %84

54:                                               ; preds = %15, %1
  %55 = call i32 (i8*, ...) @D_TEMP(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %57 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @le32_to_cpu(i32 %61)
  store i64 %62, i64* %6, align 8
  %63 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %64 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @le32_to_cpu(i32 %68)
  store i64 %69, i64* %7, align 8
  %70 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %71 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @le32_to_cpu(i32 %75)
  store i64 %76, i64* %8, align 8
  %77 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %78 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @le32_to_cpu(i32 %82)
  store i64 %83, i64* %9, align 8
  br label %84

84:                                               ; preds = %54, %24
  %85 = load i32, i32* @S_TEMPERATURE, align 4
  %86 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %87 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %86, i32 0, i32 1
  %88 = call i64 @test_bit(i32 %85, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = load i64, i64* %9, align 8
  %92 = call i64 @sign_extend32(i64 %91, i32 23)
  store i64 %92, i64* %5, align 8
  br label %103

93:                                               ; preds = %84
  %94 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %95 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @le32_to_cpu(i32 %100)
  %102 = call i64 @sign_extend32(i64 %101, i32 23)
  store i64 %102, i64* %5, align 8
  br label %103

103:                                              ; preds = %93, %90
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* %5, align 8
  %108 = call i32 (i8*, ...) @D_TEMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %104, i64 %105, i64 %106, i64 %107)
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %6, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = call i32 @IL_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %136

114:                                              ; preds = %103
  %115 = load i64, i64* @TEMPERATURE_CALIB_A_VAL, align 8
  %116 = load i64, i64* %5, align 8
  %117 = load i64, i64* %7, align 8
  %118 = sub nsw i64 %116, %117
  %119 = mul nsw i64 %115, %118
  store i64 %119, i64* %4, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* %6, align 8
  %122 = sub nsw i64 %120, %121
  %123 = load i64, i64* %4, align 8
  %124 = sdiv i64 %123, %122
  store i64 %124, i64* %4, align 8
  %125 = load i64, i64* %4, align 8
  %126 = mul nsw i64 %125, 97
  %127 = sdiv i64 %126, 100
  %128 = load i64, i64* @TEMPERATURE_CALIB_KELVIN_OFFSET, align 8
  %129 = add nsw i64 %127, %128
  store i64 %129, i64* %4, align 8
  %130 = load i64, i64* %4, align 8
  %131 = load i64, i64* %4, align 8
  %132 = call i32 @KELVIN_TO_CELSIUS(i64 %131)
  %133 = call i32 (i8*, ...) @D_TEMP(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %130, i32 %132)
  %134 = load i64, i64* %4, align 8
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %114, %112
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @D_TEMP(i8*, ...) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @sign_extend32(i64, i32) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @KELVIN_TO_CELSIUS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
