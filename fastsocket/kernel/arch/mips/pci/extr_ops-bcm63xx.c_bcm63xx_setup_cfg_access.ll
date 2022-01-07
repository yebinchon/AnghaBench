; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-bcm63xx.c_bcm63xx_setup_cfg_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-bcm63xx.c_bcm63xx_setup_cfg_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MPI_L2PCFG_DEVNUM_MASK = common dso_local global i32 0, align 4
@MPI_L2PCFG_DEVNUM_SHIFT = common dso_local global i32 0, align 4
@MPI_L2PCFG_FUNC_MASK = common dso_local global i32 0, align 4
@MPI_L2PCFG_FUNC_SHIFT = common dso_local global i32 0, align 4
@MPI_L2PCFG_REG_MASK = common dso_local global i32 0, align 4
@MPI_L2PCFG_REG_SHIFT = common dso_local global i32 0, align 4
@MPI_L2PCFG_CFG_USEREG_MASK = common dso_local global i32 0, align 4
@MPI_L2PCFG_CFG_SEL_MASK = common dso_local global i32 0, align 4
@MPI_L2PCFG_CFG_TYPE_SHIFT = common dso_local global i32 0, align 4
@MPI_L2PCFG_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @bcm63xx_setup_cfg_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_setup_cfg_access(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @PCI_SLOT(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @PCI_FUNC(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = ashr i32 %18, 2
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @MPI_L2PCFG_DEVNUM_MASK, align 4
  %22 = load i32, i32* @MPI_L2PCFG_DEVNUM_SHIFT, align 4
  %23 = lshr i32 %21, %22
  %24 = icmp ugt i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %71

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @MPI_L2PCFG_FUNC_MASK, align 4
  %29 = load i32, i32* @MPI_L2PCFG_FUNC_SHIFT, align 4
  %30 = lshr i32 %28, %29
  %31 = icmp ugt i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %71

33:                                               ; preds = %26
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @MPI_L2PCFG_REG_MASK, align 4
  %36 = load i32, i32* @MPI_L2PCFG_REG_SHIFT, align 4
  %37 = lshr i32 %35, %36
  %38 = icmp ugt i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 1, i32* %5, align 4
  br label %71

40:                                               ; preds = %33
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @MPI_L2PCFG_REG_SHIFT, align 4
  %43 = shl i32 %41, %42
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @MPI_L2PCFG_FUNC_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %13, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @MPI_L2PCFG_DEVNUM_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %13, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* @MPI_L2PCFG_CFG_USEREG_MASK, align 4
  %55 = load i32, i32* %13, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* @MPI_L2PCFG_CFG_SEL_MASK, align 4
  %58 = load i32, i32* %13, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %40
  %63 = load i32, i32* @MPI_L2PCFG_CFG_TYPE_SHIFT, align 4
  %64 = shl i32 1, %63
  %65 = load i32, i32* %13, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %62, %40
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @MPI_L2PCFG_REG, align 4
  %70 = call i32 @bcm_mpi_writel(i32 %68, i32 %69)
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %39, %32, %25
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @bcm_mpi_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
