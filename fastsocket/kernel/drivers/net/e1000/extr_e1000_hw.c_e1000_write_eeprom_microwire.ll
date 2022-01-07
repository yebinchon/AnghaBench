; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_write_eeprom_microwire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_write_eeprom_microwire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_eeprom_info }
%struct.e1000_eeprom_info = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"e1000_write_eeprom_microwire\00", align 1
@EEPROM_EWEN_OPCODE_MICROWIRE = common dso_local global i64 0, align 8
@EEPROM_WRITE_OPCODE_MICROWIRE = common dso_local global i64 0, align 8
@EECD = common dso_local global i32 0, align 4
@E1000_EECD_DO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"EEPROM Write did not complete\0A\00", align 1
@E1000_ERR_EEPROM = common dso_local global i32 0, align 4
@EEPROM_EWDS_OPCODE_MICROWIRE = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i64, i64, i64*)* @e1000_write_eeprom_microwire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_write_eeprom_microwire(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.e1000_eeprom_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  store %struct.e1000_eeprom_info* %15, %struct.e1000_eeprom_info** %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %16 = call i32 @e_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %18 = load i64, i64* @EEPROM_EWEN_OPCODE_MICROWIRE, align 8
  %19 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %20 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 2
  %23 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %17, i64 %18, i64 %22)
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %25 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %26 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %24, i64 0, i64 %29)
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %32 = call i32 @e1000_standby_eeprom(%struct.e1000_hw* %31)
  br label %33

33:                                               ; preds = %84, %4
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %89

37:                                               ; preds = %33
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %39 = load i64, i64* @EEPROM_WRITE_OPCODE_MICROWIRE, align 8
  %40 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %41 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %38, i64 %39, i64 %42)
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %12, align 8
  %47 = add nsw i64 %45, %46
  %48 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %49 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %44, i64 %47, i64 %51)
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %54 = load i64*, i64** %9, align 8
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %53, i64 %57, i64 16)
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %60 = call i32 @e1000_standby_eeprom(%struct.e1000_hw* %59)
  store i64 0, i64* %13, align 8
  br label %61

61:                                               ; preds = %74, %37
  %62 = load i64, i64* %13, align 8
  %63 = icmp slt i64 %62, 200
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load i32, i32* @EECD, align 4
  %66 = call i32 @er32(i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @E1000_EECD_DO, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %77

72:                                               ; preds = %64
  %73 = call i32 @udelay(i32 50)
  br label %74

74:                                               ; preds = %72
  %75 = load i64, i64* %13, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %13, align 8
  br label %61

77:                                               ; preds = %71, %61
  %78 = load i64, i64* %13, align 8
  %79 = icmp eq i64 %78, 200
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = call i32 @e_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @E1000_ERR_EEPROM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %105

84:                                               ; preds = %77
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %86 = call i32 @e1000_standby_eeprom(%struct.e1000_hw* %85)
  %87 = load i64, i64* %12, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %12, align 8
  br label %33

89:                                               ; preds = %33
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %91 = load i64, i64* @EEPROM_EWDS_OPCODE_MICROWIRE, align 8
  %92 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %93 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 2
  %96 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %90, i64 %91, i64 %95)
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %98 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %99 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %97, i64 0, i64 %102)
  %104 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %89, %80
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @e1000_shift_out_ee_bits(%struct.e1000_hw*, i64, i64) #1

declare dso_local i32 @e1000_standby_eeprom(%struct.e1000_hw*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
