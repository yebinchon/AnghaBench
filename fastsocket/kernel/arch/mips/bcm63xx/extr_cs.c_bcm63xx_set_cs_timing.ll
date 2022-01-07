; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm63xx/extr_cs.c_bcm63xx_set_cs_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm63xx/extr_cs.c_bcm63xx_set_cs_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@bcm63xx_cs_lock = common dso_local global i32 0, align 4
@MPI_CSCTL_WAIT_MASK = common dso_local global i32 0, align 4
@MPI_CSCTL_SETUP_MASK = common dso_local global i32 0, align 4
@MPI_CSCTL_HOLD_MASK = common dso_local global i32 0, align 4
@MPI_CSCTL_WAIT_SHIFT = common dso_local global i32 0, align 4
@MPI_CSCTL_SETUP_SHIFT = common dso_local global i32 0, align 4
@MPI_CSCTL_HOLD_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm63xx_set_cs_timing(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @is_valid_cs(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %57

18:                                               ; preds = %4
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @spin_lock_irqsave(i32* @bcm63xx_cs_lock, i64 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @MPI_CSCTL_REG(i32 %21)
  %23 = call i32 @bcm_mpi_readl(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @MPI_CSCTL_WAIT_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %11, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* @MPI_CSCTL_SETUP_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @MPI_CSCTL_HOLD_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %11, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @MPI_CSCTL_WAIT_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @MPI_CSCTL_SETUP_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %11, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @MPI_CSCTL_HOLD_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @MPI_CSCTL_REG(i32 %52)
  %54 = call i32 @bcm_mpi_writel(i32 %51, i32 %53)
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* @bcm63xx_cs_lock, i64 %55)
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %18, %15
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @is_valid_cs(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bcm_mpi_readl(i32) #1

declare dso_local i32 @MPI_CSCTL_REG(i32) #1

declare dso_local i32 @bcm_mpi_writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
