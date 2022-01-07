; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm63xx/extr_cpu.c_detect_memory_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm63xx/extr_cpu.c_detect_memory_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDRAM_CFG_REG = common dso_local global i32 0, align 4
@SDRAM_CFG_ROW_MASK = common dso_local global i32 0, align 4
@SDRAM_CFG_ROW_SHIFT = common dso_local global i32 0, align 4
@SDRAM_CFG_COL_MASK = common dso_local global i32 0, align 4
@SDRAM_CFG_COL_SHIFT = common dso_local global i32 0, align 4
@SDRAM_CFG_32B_MASK = common dso_local global i32 0, align 4
@SDRAM_CFG_BANK_MASK = common dso_local global i32 0, align 4
@MEMC_CFG_REG = common dso_local global i32 0, align 4
@MEMC_CFG_ROW_MASK = common dso_local global i32 0, align 4
@MEMC_CFG_ROW_SHIFT = common dso_local global i32 0, align 4
@MEMC_CFG_COL_MASK = common dso_local global i32 0, align 4
@MEMC_CFG_COL_SHIFT = common dso_local global i32 0, align 4
@MEMC_CFG_32B_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @detect_memory_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_memory_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = call i64 (...) @BCMCPU_IS_6345()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 8388608, i32* %1, align 4
  br label %77

10:                                               ; preds = %0
  %11 = call i64 (...) @BCMCPU_IS_6338()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = call i64 (...) @BCMCPU_IS_6348()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %13, %10
  %17 = load i32, i32* @SDRAM_CFG_REG, align 4
  %18 = call i32 @bcm_sdram_readl(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SDRAM_CFG_ROW_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @SDRAM_CFG_ROW_SHIFT, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SDRAM_CFG_COL_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @SDRAM_CFG_COL_SHIFT, align 4
  %28 = ashr i32 %26, %27
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SDRAM_CFG_32B_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @SDRAM_CFG_BANK_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 2, i32 1
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %16, %13
  %42 = call i64 (...) @BCMCPU_IS_6358()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load i32, i32* @MEMC_CFG_REG, align 4
  %46 = call i32 @bcm_memc_readl(i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @MEMC_CFG_ROW_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @MEMC_CFG_ROW_SHIFT, align 4
  %51 = ashr i32 %49, %50
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @MEMC_CFG_COL_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @MEMC_CFG_COL_SHIFT, align 4
  %56 = ashr i32 %54, %55
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @MEMC_CFG_32B_MASK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 0, i32 1
  store i32 %62, i32* %4, align 4
  store i32 2, i32* %5, align 4
  br label %63

63:                                               ; preds = %44, %41
  %64 = load i32, i32* %3, align 4
  %65 = add i32 %64, 11
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %2, align 4
  %67 = add i32 %66, 8
  store i32 %67, i32* %2, align 4
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* %3, align 4
  %70 = add i32 %68, %69
  %71 = load i32, i32* %4, align 4
  %72 = add i32 %71, 1
  %73 = add i32 %70, %72
  %74 = load i32, i32* %5, align 4
  %75 = add i32 %73, %74
  %76 = shl i32 1, %75
  store i32 %76, i32* %1, align 4
  br label %77

77:                                               ; preds = %63, %9
  %78 = load i32, i32* %1, align 4
  ret i32 %78
}

declare dso_local i64 @BCMCPU_IS_6345(...) #1

declare dso_local i64 @BCMCPU_IS_6338(...) #1

declare dso_local i64 @BCMCPU_IS_6348(...) #1

declare dso_local i32 @bcm_sdram_readl(i32) #1

declare dso_local i64 @BCMCPU_IS_6358(...) #1

declare dso_local i32 @bcm_memc_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
