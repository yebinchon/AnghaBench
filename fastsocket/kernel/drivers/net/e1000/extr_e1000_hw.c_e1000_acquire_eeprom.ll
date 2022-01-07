; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_acquire_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_acquire_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, %struct.e1000_eeprom_info }
%struct.e1000_eeprom_info = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"e1000_acquire_eeprom\00", align 1
@EECD = common dso_local global i32 0, align 4
@e1000_82544 = common dso_local global i64 0, align 8
@E1000_EECD_REQ = common dso_local global i64 0, align 8
@E1000_EECD_GNT = common dso_local global i64 0, align 8
@E1000_EEPROM_GRANT_ATTEMPTS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not acquire EEPROM grant\0A\00", align 1
@E1000_ERR_EEPROM = common dso_local global i32 0, align 4
@e1000_eeprom_microwire = common dso_local global i64 0, align 8
@E1000_EECD_DI = common dso_local global i64 0, align 8
@E1000_EECD_SK = common dso_local global i64 0, align 8
@E1000_EECD_CS = common dso_local global i64 0, align 8
@e1000_eeprom_spi = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_acquire_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_acquire_eeprom(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_eeprom_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  store %struct.e1000_eeprom_info* %8, %struct.e1000_eeprom_info** %4, align 8
  store i64 0, i64* %6, align 8
  %9 = call i32 @e_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @EECD, align 4
  %11 = call i64 @er32(i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @e1000_82544, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %60

17:                                               ; preds = %1
  %18 = load i64, i64* @E1000_EECD_REQ, align 8
  %19 = load i64, i64* %5, align 8
  %20 = or i64 %19, %18
  store i64 %20, i64* %5, align 8
  %21 = load i32, i32* @EECD, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @ew32(i32 %21, i64 %22)
  %24 = load i32, i32* @EECD, align 4
  %25 = call i64 @er32(i32 %24)
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %37, %17
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @E1000_EECD_GNT, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @E1000_EEPROM_GRANT_ATTEMPTS, align 8
  %34 = icmp slt i64 %32, %33
  br label %35

35:                                               ; preds = %31, %26
  %36 = phi i1 [ false, %26 ], [ %34, %31 ]
  br i1 %36, label %37, label %43

37:                                               ; preds = %35
  %38 = load i64, i64* %6, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %6, align 8
  %40 = call i32 @udelay(i32 5)
  %41 = load i32, i32* @EECD, align 4
  %42 = call i64 @er32(i32 %41)
  store i64 %42, i64* %5, align 8
  br label %26

43:                                               ; preds = %35
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @E1000_EECD_GNT, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* @E1000_EECD_REQ, align 8
  %50 = xor i64 %49, -1
  %51 = load i64, i64* %5, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %5, align 8
  %53 = load i32, i32* @EECD, align 4
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @ew32(i32 %53, i64 %54)
  %56 = call i32 @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @E1000_ERR_EEPROM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %103

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59, %1
  %61 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %62 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @e1000_eeprom_microwire, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %60
  %67 = load i64, i64* @E1000_EECD_DI, align 8
  %68 = load i64, i64* @E1000_EECD_SK, align 8
  %69 = or i64 %67, %68
  %70 = xor i64 %69, -1
  %71 = load i64, i64* %5, align 8
  %72 = and i64 %71, %70
  store i64 %72, i64* %5, align 8
  %73 = load i32, i32* @EECD, align 4
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @ew32(i32 %73, i64 %74)
  %76 = load i64, i64* @E1000_EECD_CS, align 8
  %77 = load i64, i64* %5, align 8
  %78 = or i64 %77, %76
  store i64 %78, i64* %5, align 8
  %79 = load i32, i32* @EECD, align 4
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @ew32(i32 %79, i64 %80)
  br label %101

82:                                               ; preds = %60
  %83 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %84 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @e1000_eeprom_spi, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %82
  %89 = load i64, i64* @E1000_EECD_CS, align 8
  %90 = load i64, i64* @E1000_EECD_SK, align 8
  %91 = or i64 %89, %90
  %92 = xor i64 %91, -1
  %93 = load i64, i64* %5, align 8
  %94 = and i64 %93, %92
  store i64 %94, i64* %5, align 8
  %95 = load i32, i32* @EECD, align 4
  %96 = load i64, i64* %5, align 8
  %97 = call i32 @ew32(i32 %95, i64 %96)
  %98 = call i32 (...) @E1000_WRITE_FLUSH()
  %99 = call i32 @udelay(i32 1)
  br label %100

100:                                              ; preds = %88, %82
  br label %101

101:                                              ; preds = %100, %66
  %102 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %48
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @er32(i32) #1

declare dso_local i32 @ew32(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
