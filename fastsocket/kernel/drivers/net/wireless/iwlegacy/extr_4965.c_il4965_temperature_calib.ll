; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_temperature_calib.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_temperature_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Temperature changed from %dC to %dC\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Temperature initialized to %dC\0A\00", align 1
@S_TEMPERATURE = common dso_local global i32 0, align 4
@S_SCANNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il4965_temperature_calib(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %4 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %5 = call i64 @il4965_hw_get_temperature(%struct.il_priv* %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @IL_TX_POWER_TEMPERATURE_OUT_OF_RANGE(i64 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %67

10:                                               ; preds = %1
  %11 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %12 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %18 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %23 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @KELVIN_TO_CELSIUS(i64 %24)
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @KELVIN_TO_CELSIUS(i64 %26)
  %28 = call i32 (i8*, i32, ...) @D_TEMP(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27)
  br label %33

29:                                               ; preds = %16
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @KELVIN_TO_CELSIUS(i64 %30)
  %32 = call i32 (i8*, i32, ...) @D_TEMP(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %21
  br label %34

34:                                               ; preds = %33, %10
  %35 = load i64, i64* %3, align 8
  %36 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %37 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* @S_TEMPERATURE, align 4
  %39 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %40 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %39, i32 0, i32 3
  %41 = call i32 @set_bit(i32 %38, i32* %40)
  %42 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %43 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %67, label %46

46:                                               ; preds = %34
  %47 = load i32, i32* @S_SCANNING, align 4
  %48 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %49 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %48, i32 0, i32 3
  %50 = call i32 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %46
  %57 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %58 = call i64 @il4965_is_temp_calib_needed(%struct.il_priv* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %62 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %65 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %64, i32 0, i32 1
  %66 = call i32 @queue_work(i32 %63, i32* %65)
  br label %67

67:                                               ; preds = %9, %60, %56, %46, %34
  ret void
}

declare dso_local i64 @il4965_hw_get_temperature(%struct.il_priv*) #1

declare dso_local i64 @IL_TX_POWER_TEMPERATURE_OUT_OF_RANGE(i64) #1

declare dso_local i32 @D_TEMP(i8*, i32, ...) #1

declare dso_local i32 @KELVIN_TO_CELSIUS(i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @il4965_is_temp_calib_needed(%struct.il_priv*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
