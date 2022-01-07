; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_adjust_serdes_amplitude.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_adjust_serdes_amplitude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i32 }

@.str = private unnamed_addr constant [30 x i8] c"e1000_adjust_serdes_amplitude\00", align 1
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@EEPROM_SERDES_AMPLITUDE = common dso_local global i32 0, align 4
@EEPROM_RESERVED_WORD = common dso_local global i32 0, align 4
@EEPROM_SERDES_AMPLITUDE_MASK = common dso_local global i32 0, align 4
@M88E1000_PHY_EXT_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_adjust_serdes_amplitude to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_adjust_serdes_amplitude(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = call i32 @e_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %13, i64* %2, align 8
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %19 [
    i32 129, label %18
    i32 128, label %18
  ]

18:                                               ; preds = %14, %14
  br label %21

19:                                               ; preds = %14
  %20 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %20, i64* %2, align 8
  br label %48

21:                                               ; preds = %18
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %23 = load i32, i32* @EEPROM_SERDES_AMPLITUDE, align 4
  %24 = call i64 @e1000_read_eeprom(%struct.e1000_hw* %22, i32 %23, i32 1, i32* %4)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* %5, align 8
  store i64 %28, i64* %2, align 8
  br label %48

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @EEPROM_RESERVED_WORD, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i32, i32* @EEPROM_SERDES_AMPLITUDE_MASK, align 4
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %38 = load i32, i32* @M88E1000_PHY_EXT_CTRL, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %37, i32 %38, i32 %39)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i64, i64* %5, align 8
  store i64 %44, i64* %2, align 8
  br label %48

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %29
  %47 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %47, i64* %2, align 8
  br label %48

48:                                               ; preds = %46, %43, %27, %19, %12
  %49 = load i64, i64* %2, align 8
  ret i64 %49
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_read_eeprom(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i64 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
