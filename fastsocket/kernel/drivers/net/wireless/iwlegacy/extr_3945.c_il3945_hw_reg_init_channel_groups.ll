; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_hw_reg_init_channel_groups.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_hw_reg_init_channel_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.il3945_eeprom = type { %struct.il3945_eeprom_txpower_group* }
%struct.il3945_eeprom_txpower_group = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Initializing factory calib info from EEPROM\0A\00", align 1
@IL_NUM_TX_CALIB_GROUPS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"Error: saturation power is %d, less than minimum expected 40\0A\00", align 1
@RATE_COUNT_3945 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*)* @il3945_hw_reg_init_channel_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il3945_hw_reg_init_channel_groups(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.il3945_eeprom*, align 8
  %6 = alloca %struct.il3945_eeprom_txpower_group*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %9 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %10 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.il3945_eeprom*
  store %struct.il3945_eeprom* %12, %struct.il3945_eeprom** %5, align 8
  %13 = call i32 @D_POWER(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %14

14:                                               ; preds = %99, %1
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @IL_NUM_TX_CALIB_GROUPS, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %102

18:                                               ; preds = %14
  %19 = load %struct.il3945_eeprom*, %struct.il3945_eeprom** %5, align 8
  %20 = getelementptr inbounds %struct.il3945_eeprom, %struct.il3945_eeprom* %19, i32 0, i32 0
  %21 = load %struct.il3945_eeprom_txpower_group*, %struct.il3945_eeprom_txpower_group** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds %struct.il3945_eeprom_txpower_group, %struct.il3945_eeprom_txpower_group* %21, i64 %22
  store %struct.il3945_eeprom_txpower_group* %23, %struct.il3945_eeprom_txpower_group** %6, align 8
  %24 = load %struct.il3945_eeprom_txpower_group*, %struct.il3945_eeprom_txpower_group** %6, align 8
  %25 = getelementptr inbounds %struct.il3945_eeprom_txpower_group, %struct.il3945_eeprom_txpower_group* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 40
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.il3945_eeprom_txpower_group*, %struct.il3945_eeprom_txpower_group** %6, align 8
  %30 = getelementptr inbounds %struct.il3945_eeprom_txpower_group, %struct.il3945_eeprom_txpower_group* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @IL_WARN(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %102

33:                                               ; preds = %18
  %34 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %35 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i64, i64* %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i64*
  store i64* %42, i64** %7, align 8
  %43 = load %struct.il3945_eeprom_txpower_group*, %struct.il3945_eeprom_txpower_group** %6, align 8
  %44 = getelementptr inbounds %struct.il3945_eeprom_txpower_group, %struct.il3945_eeprom_txpower_group* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 1
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %8, align 8
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %93, %33
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @RATE_COUNT_3945, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %98

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  switch i32 %53, label %89 [
    i32 130, label %54
    i32 129, label %65
    i32 128, label %77
  ]

54:                                               ; preds = %52
  %55 = load i64, i64* %3, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i64, i64* %8, align 8
  %59 = load i64*, i64** %7, align 8
  store i64 %58, i64* %59, align 8
  br label %64

60:                                               ; preds = %54
  %61 = load i64, i64* %8, align 8
  %62 = sub nsw i64 %61, 5
  %63 = load i64*, i64** %7, align 8
  store i64 %62, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %57
  br label %92

65:                                               ; preds = %52
  %66 = load i64, i64* %3, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i64, i64* %8, align 8
  %70 = sub nsw i64 %69, 7
  %71 = load i64*, i64** %7, align 8
  store i64 %70, i64* %71, align 8
  br label %76

72:                                               ; preds = %65
  %73 = load i64, i64* %8, align 8
  %74 = sub nsw i64 %73, 10
  %75 = load i64*, i64** %7, align 8
  store i64 %74, i64* %75, align 8
  br label %76

76:                                               ; preds = %72, %68
  br label %92

77:                                               ; preds = %52
  %78 = load i64, i64* %3, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i64, i64* %8, align 8
  %82 = sub nsw i64 %81, 9
  %83 = load i64*, i64** %7, align 8
  store i64 %82, i64* %83, align 8
  br label %88

84:                                               ; preds = %77
  %85 = load i64, i64* %8, align 8
  %86 = sub nsw i64 %85, 12
  %87 = load i64*, i64** %7, align 8
  store i64 %86, i64* %87, align 8
  br label %88

88:                                               ; preds = %84, %80
  br label %92

89:                                               ; preds = %52
  %90 = load i64, i64* %8, align 8
  %91 = load i64*, i64** %7, align 8
  store i64 %90, i64* %91, align 8
  br label %92

92:                                               ; preds = %89, %88, %76, %64
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  %96 = load i64*, i64** %7, align 8
  %97 = getelementptr inbounds i64, i64* %96, i32 1
  store i64* %97, i64** %7, align 8
  br label %48

98:                                               ; preds = %48
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %3, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %3, align 8
  br label %14

102:                                              ; preds = %28, %14
  ret void
}

declare dso_local i32 @D_POWER(i8*) #1

declare dso_local i32 @IL_WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
