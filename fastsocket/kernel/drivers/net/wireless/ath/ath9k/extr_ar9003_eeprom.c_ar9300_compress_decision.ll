; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9300_compress_decision.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9300_compress_decision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ar9300_eeprom = type { i32 }
%struct.ath_common = type { i32 }

@EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"EEPROM structure size mismatch memory=%d eeprom=%d\0A\00", align 1
@COMP_HDR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"restored eeprom %d: uncompressed, length %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"can't find reference eeprom struct %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"restore eeprom %d: block, reference %d, length %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"unknown compression code %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32, i32, i32, %struct.ar9300_eeprom*, %struct.ar9300_eeprom*, i32, i32)* @ar9300_compress_decision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9300_compress_decision(%struct.ath_hw* %0, i32 %1, i32 %2, i32 %3, %struct.ar9300_eeprom* %4, %struct.ar9300_eeprom* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath_hw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ar9300_eeprom*, align 8
  %15 = alloca %struct.ar9300_eeprom*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ath_common*, align 8
  %19 = alloca %struct.ar9300_eeprom*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.ar9300_eeprom* %4, %struct.ar9300_eeprom** %14, align 8
  store %struct.ar9300_eeprom* %5, %struct.ar9300_eeprom** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %20 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %21 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %20)
  store %struct.ath_common* %21, %struct.ath_common** %18, align 8
  store %struct.ar9300_eeprom* null, %struct.ar9300_eeprom** %19, align 8
  %22 = load i32, i32* %12, align 4
  switch i32 %22, label %81 [
    i32 128, label %23
    i32 129, label %46
  ]

23:                                               ; preds = %8
  %24 = load i32, i32* %16, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.ath_common*, %struct.ath_common** %18, align 8
  %29 = load i32, i32* @EEPROM, align 4
  %30 = load i32, i32* %17, align 4
  %31 = load i32, i32* %16, align 4
  %32 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %28, i32 %29, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  store i32 -1, i32* %9, align 4
  br label %87

33:                                               ; preds = %23
  %34 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %35 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %15, align 8
  %36 = load i32, i32* @COMP_HDR_LEN, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %35, i64 %37
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @memcpy(%struct.ar9300_eeprom* %34, %struct.ar9300_eeprom* %38, i32 %39)
  %41 = load %struct.ath_common*, %struct.ath_common** %18, align 8
  %42 = load i32, i32* @EEPROM, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %16, align 4
  %45 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %41, i32 %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  br label %86

46:                                               ; preds = %8
  %47 = load i32, i32* %13, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %65

50:                                               ; preds = %46
  %51 = load i32, i32* %13, align 4
  %52 = call %struct.ar9300_eeprom* @ar9003_eeprom_struct_find_by_id(i32 %51)
  store %struct.ar9300_eeprom* %52, %struct.ar9300_eeprom** %19, align 8
  %53 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %19, align 8
  %54 = icmp eq %struct.ar9300_eeprom* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.ath_common*, %struct.ath_common** %18, align 8
  %57 = load i32, i32* @EEPROM, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %56, i32 %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  store i32 -1, i32* %9, align 4
  br label %87

60:                                               ; preds = %50
  %61 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %62 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %19, align 8
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @memcpy(%struct.ar9300_eeprom* %61, %struct.ar9300_eeprom* %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %49
  %66 = load %struct.ath_common*, %struct.ath_common** %18, align 8
  %67 = load i32, i32* @EEPROM, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %16, align 4
  %71 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %66, i32 %67, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %69, i32 %70)
  %72 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %73 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %74 = load i32, i32* %17, align 4
  %75 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %15, align 8
  %76 = load i32, i32* @COMP_HDR_LEN, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %75, i64 %77
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @ar9300_uncompress_block(%struct.ath_hw* %72, %struct.ar9300_eeprom* %73, i32 %74, %struct.ar9300_eeprom* %78, i32 %79)
  br label %86

81:                                               ; preds = %8
  %82 = load %struct.ath_common*, %struct.ath_common** %18, align 8
  %83 = load i32, i32* @EEPROM, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %82, i32 %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  store i32 -1, i32* %9, align 4
  br label %87

86:                                               ; preds = %65, %33
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %86, %81, %55, %27
  %88 = load i32, i32* %9, align 4
  ret i32 %88
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy(%struct.ar9300_eeprom*, %struct.ar9300_eeprom*, i32) #1

declare dso_local %struct.ar9300_eeprom* @ar9003_eeprom_struct_find_by_id(i32) #1

declare dso_local i32 @ar9300_uncompress_block(%struct.ath_hw*, %struct.ar9300_eeprom*, i32, %struct.ar9300_eeprom*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
