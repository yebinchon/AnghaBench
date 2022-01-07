; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm63xx/extr_cpu.c_detect_cpu_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm63xx/extr_cpu.c_detect_cpu_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PERF_MIPSPLLCTL_REG = common dso_local global i32 0, align 4
@MIPSPLLCTL_N1_MASK = common dso_local global i32 0, align 4
@MIPSPLLCTL_N1_SHIFT = common dso_local global i32 0, align 4
@MIPSPLLCTL_N2_MASK = common dso_local global i32 0, align 4
@MIPSPLLCTL_N2_SHIFT = common dso_local global i32 0, align 4
@MIPSPLLCTL_M1CPU_MASK = common dso_local global i32 0, align 4
@MIPSPLLCTL_M1CPU_SHIFT = common dso_local global i32 0, align 4
@DDR_DMIPSPLLCFG_REG = common dso_local global i32 0, align 4
@DMIPSPLLCFG_N1_MASK = common dso_local global i32 0, align 4
@DMIPSPLLCFG_N1_SHIFT = common dso_local global i32 0, align 4
@DMIPSPLLCFG_N2_MASK = common dso_local global i32 0, align 4
@DMIPSPLLCFG_N2_SHIFT = common dso_local global i32 0, align 4
@DMIPSPLLCFG_M1_MASK = common dso_local global i32 0, align 4
@DMIPSPLLCFG_M1_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @detect_cpu_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_cpu_clock() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = call i64 (...) @BCMCPU_IS_6338()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 240000000, i32* %1, align 4
  br label %68

9:                                                ; preds = %0
  %10 = call i64 (...) @BCMCPU_IS_6345()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 140000000, i32* %1, align 4
  br label %68

13:                                               ; preds = %9
  %14 = call i64 (...) @BCMCPU_IS_6348()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %13
  %17 = load i32, i32* @PERF_MIPSPLLCTL_REG, align 4
  %18 = call i32 @bcm_perf_readl(i32 %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @MIPSPLLCTL_N1_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @MIPSPLLCTL_N1_SHIFT, align 4
  %23 = lshr i32 %21, %22
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @MIPSPLLCTL_N2_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @MIPSPLLCTL_N2_SHIFT, align 4
  %28 = lshr i32 %26, %27
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @MIPSPLLCTL_M1CPU_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @MIPSPLLCTL_M1CPU_SHIFT, align 4
  %33 = lshr i32 %31, %32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %3, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = add i32 %36, 2
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %16, %13
  %41 = call i64 (...) @BCMCPU_IS_6358()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %40
  %44 = load i32, i32* @DDR_DMIPSPLLCFG_REG, align 4
  %45 = call i32 @bcm_ddr_readl(i32 %44)
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @DMIPSPLLCFG_N1_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @DMIPSPLLCFG_N1_SHIFT, align 4
  %50 = lshr i32 %48, %49
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @DMIPSPLLCFG_N2_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @DMIPSPLLCFG_N2_SHIFT, align 4
  %55 = lshr i32 %53, %54
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @DMIPSPLLCFG_M1_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @DMIPSPLLCFG_M1_SHIFT, align 4
  %60 = lshr i32 %58, %59
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %43, %40
  %62 = load i32, i32* %3, align 4
  %63 = mul i32 16000000, %62
  %64 = load i32, i32* %4, align 4
  %65 = mul i32 %63, %64
  %66 = load i32, i32* %5, align 4
  %67 = udiv i32 %65, %66
  store i32 %67, i32* %1, align 4
  br label %68

68:                                               ; preds = %61, %12, %8
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare dso_local i64 @BCMCPU_IS_6338(...) #1

declare dso_local i64 @BCMCPU_IS_6345(...) #1

declare dso_local i64 @BCMCPU_IS_6348(...) #1

declare dso_local i32 @bcm_perf_readl(i32) #1

declare dso_local i64 @BCMCPU_IS_6358(...) #1

declare dso_local i32 @bcm_ddr_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
