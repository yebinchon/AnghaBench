; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_set_phy_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_set_phy_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"e1000_set_phy_mode\00", align 1
@e1000_82545_rev_3 = common dso_local global i64 0, align 8
@e1000_media_type_copper = common dso_local global i64 0, align 8
@EEPROM_PHY_CLASS_WORD = common dso_local global i32 0, align 4
@EEPROM_RESERVED_WORD = common dso_local global i32 0, align 4
@EEPROM_PHY_CLASS_A = common dso_local global i32 0, align 4
@M88E1000_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@M88E1000_PHY_GEN_CONTROL = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_set_phy_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_set_phy_mode(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = call i32 @e_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @e1000_82545_rev_3, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %55

12:                                               ; preds = %1
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @e1000_media_type_copper, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %12
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = load i32, i32* @EEPROM_PHY_CLASS_WORD, align 4
  %21 = call i64 @e1000_read_eeprom(%struct.e1000_hw* %19, i32 %20, i32 1, i32* %5)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i64, i64* %4, align 8
  store i64 %25, i64* %2, align 8
  br label %57

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @EEPROM_RESERVED_WORD, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @EEPROM_PHY_CLASS_A, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %37 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %38 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %36, i32 %37, i32 11)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i64, i64* %4, align 8
  store i64 %42, i64* %2, align 8
  br label %57

43:                                               ; preds = %35
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %45 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %46 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %44, i32 %45, i32 33028)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i64, i64* %4, align 8
  store i64 %50, i64* %2, align 8
  br label %57

51:                                               ; preds = %43
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %52, i32 0, i32 2
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %30, %26
  br label %55

55:                                               ; preds = %54, %12, %1
  %56 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %56, i64* %2, align 8
  br label %57

57:                                               ; preds = %55, %49, %41, %24
  %58 = load i64, i64* %2, align 8
  ret i64 %58
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
