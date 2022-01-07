; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_eeprom_init_sram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_eeprom_init_sram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c">>\0A\00", align 1
@EEPROM_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Writing EEPROM data into SRAM\0A\00", align 1
@IPW_EEPROM_IMAGE_SIZE = common dso_local global i32 0, align 4
@IPW_EEPROM_DATA = common dso_local global i64 0, align 8
@IPW_EEPROM_LOAD_DISABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Enabling FW initializationg of SRAM\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"<<\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*)* @ipw_eeprom_init_sram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_eeprom_init_sram(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  %5 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %6 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %4, align 8
  %8 = call i32 @IPW_DEBUG_TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %21, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 128
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @eeprom_read_u16(%struct.ipw_priv* %13, i32 %14)
  %16 = call i32 @cpu_to_le16(i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 %16, i32* %20, align 4
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %9

24:                                               ; preds = %9
  %25 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %26 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @EEPROM_VERSION, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %24
  %33 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %52, %32
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @IPW_EEPROM_IMAGE_SIZE, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %40 = load i64, i64* @IPW_EEPROM_DATA, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %45 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ipw_write8(%struct.ipw_priv* %39, i64 %43, i32 %50)
  br label %52

52:                                               ; preds = %38
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %34

55:                                               ; preds = %34
  %56 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %57 = load i32, i32* @IPW_EEPROM_LOAD_DISABLE, align 4
  %58 = call i32 @ipw_write32(%struct.ipw_priv* %56, i32 %57, i32 0)
  br label %64

59:                                               ; preds = %24
  %60 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %62 = load i32, i32* @IPW_EEPROM_LOAD_DISABLE, align 4
  %63 = call i32 @ipw_write32(%struct.ipw_priv* %61, i32 %62, i32 1)
  br label %64

64:                                               ; preds = %59, %55
  %65 = call i32 @IPW_DEBUG_TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @IPW_DEBUG_TRACE(i8*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @eeprom_read_u16(%struct.ipw_priv*, i32) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*) #1

declare dso_local i32 @ipw_write8(%struct.ipw_priv*, i64, i32) #1

declare dso_local i32 @ipw_write32(%struct.ipw_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
