; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_tv8532.c_tv_8532WriteEEprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_tv8532.c_tv_8532WriteEEprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@R01_TIMING_CONTROL_LOW = common dso_local global i32 0, align 4
@CMD_EEprom_Open = common dso_local global i32 0, align 4
@eeprom_data = common dso_local global i32** null, align 8
@R03_TABLE_ADDR = common dso_local global i32 0, align 4
@R04_WTRAM_DATA_L = common dso_local global i32 0, align 4
@R05_WTRAM_DATA_M = common dso_local global i32 0, align 4
@R06_WTRAM_DATA_H = common dso_local global i32 0, align 4
@R08_RAM_WRITE_ACTION = common dso_local global i32 0, align 4
@R07_TABLE_LEN = common dso_local global i32 0, align 4
@CMD_EEprom_Close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @tv_8532WriteEEprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tv_8532WriteEEprom(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = load i32, i32* @R01_TIMING_CONTROL_LOW, align 4
  %6 = load i32, i32* @CMD_EEprom_Open, align 4
  %7 = call i32 @reg_w1(%struct.gspca_dev* %4, i32 %5, i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %51, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32**, i32*** @eeprom_data, align 8
  %11 = call i32 @ARRAY_SIZE(i32** %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %54

13:                                               ; preds = %8
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = load i32, i32* @R03_TABLE_ADDR, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @reg_w1(%struct.gspca_dev* %14, i32 %15, i32 %16)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %19 = load i32, i32* @R04_WTRAM_DATA_L, align 4
  %20 = load i32**, i32*** @eeprom_data, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @reg_w1(%struct.gspca_dev* %18, i32 %19, i32 %26)
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %29 = load i32, i32* @R05_WTRAM_DATA_M, align 4
  %30 = load i32**, i32*** @eeprom_data, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @reg_w1(%struct.gspca_dev* %28, i32 %29, i32 %36)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = load i32, i32* @R06_WTRAM_DATA_H, align 4
  %40 = load i32**, i32*** @eeprom_data, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @reg_w1(%struct.gspca_dev* %38, i32 %39, i32 %46)
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %49 = load i32, i32* @R08_RAM_WRITE_ACTION, align 4
  %50 = call i32 @reg_w1(%struct.gspca_dev* %48, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %13
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %8

54:                                               ; preds = %8
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %56 = load i32, i32* @R07_TABLE_LEN, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @reg_w1(%struct.gspca_dev* %55, i32 %56, i32 %57)
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %60 = load i32, i32* @R01_TIMING_CONTROL_LOW, align 4
  %61 = load i32, i32* @CMD_EEprom_Close, align 4
  %62 = call i32 @reg_w1(%struct.gspca_dev* %59, i32 %60, i32 %61)
  ret void
}

declare dso_local i32 @reg_w1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
