; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_cafe_nand.c_cafe_nand_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_cafe_nand.c_cafe_nand_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mtd_info = type { %struct.cafe_priv* }
%struct.cafe_priv = type { i32 }

@NAND_RESET = common dso_local global i32 0, align 4
@NAND_IRQ_MASK = common dso_local global i32 0, align 4
@timing = common dso_local global i32* null, align 8
@NAND_TIMING1 = common dso_local global i32 0, align 4
@NAND_TIMING2 = common dso_local global i32 0, align 4
@NAND_TIMING3 = common dso_local global i32 0, align 4
@GLOBAL_CTRL = common dso_local global i32 0, align 4
@NAND_DMA_CTRL = common dso_local global i32 0, align 4
@NAND_DMA_ADDR0 = common dso_local global i32 0, align 4
@NAND_DMA_ADDR1 = common dso_local global i32 0, align 4
@GLOBAL_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @cafe_nand_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_nand_resume(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.cafe_priv*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.mtd_info* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.mtd_info* %7, %struct.mtd_info** %4, align 8
  %8 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %9 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %8, i32 0, i32 0
  %10 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  store %struct.cafe_priv* %10, %struct.cafe_priv** %5, align 8
  %11 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %12 = load i32, i32* @NAND_RESET, align 4
  %13 = call i32 @cafe_writel(%struct.cafe_priv* %11, i32 1, i32 %12)
  %14 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %15 = load i32, i32* @NAND_RESET, align 4
  %16 = call i32 @cafe_writel(%struct.cafe_priv* %14, i32 0, i32 %15)
  %17 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %18 = load i32, i32* @NAND_IRQ_MASK, align 4
  %19 = call i32 @cafe_writel(%struct.cafe_priv* %17, i32 -1, i32 %18)
  %20 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %21 = load i32*, i32** @timing, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NAND_TIMING1, align 4
  %25 = call i32 @cafe_writel(%struct.cafe_priv* %20, i32 %23, i32 %24)
  %26 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %27 = load i32*, i32** @timing, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @NAND_TIMING2, align 4
  %31 = call i32 @cafe_writel(%struct.cafe_priv* %26, i32 %29, i32 %30)
  %32 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %33 = load i32*, i32** @timing, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NAND_TIMING3, align 4
  %37 = call i32 @cafe_writel(%struct.cafe_priv* %32, i32 %35, i32 %36)
  %38 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %39 = load i32, i32* @GLOBAL_CTRL, align 4
  %40 = call i32 @cafe_readl(%struct.cafe_priv* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, -4112
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, 28672
  store i32 %44, i32* %3, align 4
  %45 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, 5
  %48 = load i32, i32* @GLOBAL_CTRL, align 4
  %49 = call i32 @cafe_writel(%struct.cafe_priv* %45, i32 %47, i32 %48)
  %50 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, 10
  %53 = load i32, i32* @GLOBAL_CTRL, align 4
  %54 = call i32 @cafe_writel(%struct.cafe_priv* %50, i32 %52, i32 %53)
  %55 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %56 = load i32, i32* @NAND_DMA_CTRL, align 4
  %57 = call i32 @cafe_writel(%struct.cafe_priv* %55, i32 0, i32 %56)
  %58 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %59 = load i32, i32* @GLOBAL_CTRL, align 4
  %60 = call i32 @cafe_writel(%struct.cafe_priv* %58, i32 28678, i32 %59)
  %61 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %62 = load i32, i32* @GLOBAL_CTRL, align 4
  %63 = call i32 @cafe_writel(%struct.cafe_priv* %61, i32 28682, i32 %62)
  %64 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %65 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %66 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @NAND_DMA_ADDR0, align 4
  %69 = call i32 @cafe_writel(%struct.cafe_priv* %64, i32 %67, i32 %68)
  %70 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %71 = load i32, i32* @NAND_DMA_ADDR1, align 4
  %72 = call i32 @cafe_writel(%struct.cafe_priv* %70, i32 0, i32 %71)
  %73 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %74 = load i32, i32* @GLOBAL_IRQ_MASK, align 4
  %75 = call i32 @cafe_writel(%struct.cafe_priv* %73, i32 -2147483641, i32 %74)
  ret i32 0
}

declare dso_local %struct.mtd_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @cafe_writel(%struct.cafe_priv*, i32, i32) #1

declare dso_local i32 @cafe_readl(%struct.cafe_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
