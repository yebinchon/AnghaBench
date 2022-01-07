; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_gpmc.c_gpmc_prefetch_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_gpmc.c_gpmc_prefetch_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPMC_PREFETCH_CONTROL = common dso_local global i32 0, align 4
@GPMC_PREFETCH_CONFIG2 = common dso_local global i32 0, align 4
@CS_NUM_SHIFT = common dso_local global i32 0, align 4
@PREFETCH_FIFOTHRESHOLD = common dso_local global i32 0, align 4
@ENABLE_PREFETCH = common dso_local global i32 0, align 4
@DMA_MPU_MODE = common dso_local global i32 0, align 4
@GPMC_PREFETCH_CONFIG1 = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpmc_prefetch_enable(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @GPMC_PREFETCH_CONTROL, align 4
  %12 = call i32 @gpmc_read_reg(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @GPMC_PREFETCH_CONFIG2, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @gpmc_write_reg(i32 %15, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @CS_NUM_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* @PREFETCH_FIFOTHRESHOLD, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @ENABLE_PREFETCH, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @DMA_MPU_MODE, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %24, %27
  %29 = load i32, i32* %9, align 4
  %30 = and i32 1, %29
  %31 = or i32 %28, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @GPMC_PREFETCH_CONFIG1, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @gpmc_write_reg(i32 %32, i32 %33)
  br label %38

35:                                               ; preds = %4
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %41

38:                                               ; preds = %14
  %39 = load i32, i32* @GPMC_PREFETCH_CONTROL, align 4
  %40 = call i32 @gpmc_write_reg(i32 %39, i32 1)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @gpmc_read_reg(i32) #1

declare dso_local i32 @gpmc_write_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
