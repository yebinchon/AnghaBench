; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_eeprom_check_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_eeprom_check_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@EEPROM_VERSION = common dso_local global i32 0, align 4
@EEPROM_4965_CALIB_VERSION_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"device EEPROM VER=0x%x, CALIB=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"Unsupported (too old) EEPROM VER=0x%x < 0x%x CALIB=0x%x < 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il4965_eeprom_check_version(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %6 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %7 = load i32, i32* @EEPROM_VERSION, align 4
  %8 = call i64 @il_eeprom_query16(%struct.il_priv* %6, i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %10 = load i32, i32* @EEPROM_4965_CALIB_VERSION_OFFSET, align 4
  %11 = call i64 @il_eeprom_query16(%struct.il_priv* %9, i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %14 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %12, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %1
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %22 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %20, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19, %1
  br label %32

28:                                               ; preds = %19
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @IL_INFO(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %30)
  store i32 0, i32* %2, align 4
  br label %48

32:                                               ; preds = %27
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %35 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %41 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @IL_ERR(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %33, i64 %38, i64 %39, i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %32, %28
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @il_eeprom_query16(%struct.il_priv*, i32) #1

declare dso_local i32 @IL_INFO(i8*, i64, i64) #1

declare dso_local i32 @IL_ERR(i8*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
