; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_4xx.c_ibm4xx_denali_fixup_memsize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_4xx.c_ibm4xx_denali_fixup_memsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DDR0_02 = common dso_local global i32 0, align 4
@DDR_START = common dso_local global i32 0, align 4
@DDR_START_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"DDR controller is not initialized\0A\00", align 1
@DDR_MAX_CS_REG = common dso_local global i32 0, align 4
@DDR_MAX_CS_REG_SHIFT = common dso_local global i32 0, align 4
@DDR_MAX_COL_REG = common dso_local global i32 0, align 4
@DDR_MAX_COL_REG_SHIFT = common dso_local global i32 0, align 4
@DDR_MAX_ROW_REG = common dso_local global i32 0, align 4
@DDR_MAX_ROW_REG_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"No memory installed\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"DDR wrong CS configuration\0A\00", align 1
@DDR0_14 = common dso_local global i32 0, align 4
@DDR_REDUC = common dso_local global i32 0, align 4
@DDR_REDUC_SHIFT = common dso_local global i32 0, align 4
@DDR0_42 = common dso_local global i32 0, align 4
@DDR_APIN = common dso_local global i32 0, align 4
@DDR_APIN_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"DDR wrong APIN configuration\0A\00", align 1
@DDR0_43 = common dso_local global i32 0, align 4
@DDR_COL_SZ = common dso_local global i32 0, align 4
@DDR_COL_SZ_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"DDR wrong COL configuration\0A\00", align 1
@DDR_BANK8 = common dso_local global i32 0, align 4
@DDR_BANK8_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ibm4xx_denali_fixup_memsize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = load i32, i32* @DDR0_02, align 4
  %12 = call i32 @SDRAM0_READ(i32 %11)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @DDR_START, align 4
  %15 = load i32, i32* @DDR_START_SHIFT, align 4
  %16 = call i32 @DDR_GET_VAL(i32 %13, i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %0
  %19 = call i32 @fatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %0
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @DDR_MAX_CS_REG, align 4
  %23 = load i32, i32* @DDR_MAX_CS_REG_SHIFT, align 4
  %24 = call i32 @DDR_GET_VAL(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @DDR_MAX_COL_REG, align 4
  %27 = load i32, i32* @DDR_MAX_COL_REG_SHIFT, align 4
  %28 = call i32 @DDR_GET_VAL(i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* @DDR_MAX_ROW_REG, align 4
  %31 = load i32, i32* @DDR_MAX_ROW_REG_SHIFT, align 4
  %32 = call i32 @DDR_GET_VAL(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = call i32 (...) @ibm4xx_denali_get_cs()
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %20
  %37 = call i32 @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %20
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %2, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i32, i32* @DDR0_14, align 4
  %46 = call i32 @SDRAM0_READ(i32 %45)
  store i32 %46, i32* %1, align 4
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* @DDR_REDUC, align 4
  %49 = load i32, i32* @DDR_REDUC_SHIFT, align 4
  %50 = call i32 @DDR_GET_VAL(i32 %47, i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 4, i32* %9, align 4
  br label %54

53:                                               ; preds = %44
  store i32 8, i32* %9, align 4
  br label %54

54:                                               ; preds = %53, %52
  %55 = load i32, i32* @DDR0_42, align 4
  %56 = call i32 @SDRAM0_READ(i32 %55)
  store i32 %56, i32* %1, align 4
  %57 = load i32, i32* %1, align 4
  %58 = load i32, i32* @DDR_APIN, align 4
  %59 = load i32, i32* @DDR_APIN_SHIFT, align 4
  %60 = call i32 @DDR_GET_VAL(i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = call i32 @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %54
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* @DDR0_43, align 4
  %71 = call i32 @SDRAM0_READ(i32 %70)
  store i32 %71, i32* %1, align 4
  %72 = load i32, i32* %1, align 4
  %73 = load i32, i32* @DDR_COL_SZ, align 4
  %74 = load i32, i32* @DDR_COL_SZ_SHIFT, align 4
  %75 = call i32 @DDR_GET_VAL(i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %3, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  %80 = call i32 @fatal(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %66
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %6, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %1, align 4
  %86 = load i32, i32* @DDR_BANK8, align 4
  %87 = load i32, i32* @DDR_BANK8_SHIFT, align 4
  %88 = call i32 @DDR_GET_VAL(i32 %85, i32 %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  store i32 8, i32* %8, align 4
  br label %92

91:                                               ; preds = %81
  store i32 4, i32* %8, align 4
  br label %92

92:                                               ; preds = %91, %90
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %94, %95
  %97 = shl i32 1, %96
  %98 = mul nsw i32 %93, %97
  %99 = load i32, i32* %8, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* %9, align 4
  %102 = mul nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %10, align 8
  %104 = load i64, i64* %10, align 8
  %105 = call i64 @chip_11_errata(i64 %104)
  store i64 %105, i64* %10, align 8
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @dt_fixup_memory(i32 0, i64 %106)
  ret void
}

declare dso_local i32 @SDRAM0_READ(i32) #1

declare dso_local i32 @DDR_GET_VAL(i32, i32, i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @ibm4xx_denali_get_cs(...) #1

declare dso_local i64 @chip_11_errata(i64) #1

declare dso_local i32 @dt_fixup_memory(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
