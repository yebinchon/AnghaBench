; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-iop13xx/extr_pci.c_iop13xx_atue_read_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-iop13xx/extr_pci.c_iop13xx_atue_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@IOP13XX_XBG_BECSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"addr=%#0lx, val=%#010x\00", align 1
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @iop13xx_atue_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop13xx_atue_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @iop13xx_atue_cfg_address(%struct.pci_bus* %13, i32 %14, i32 %15)
  store i64 %16, i64* %12, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @PCI_SLOT(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load i64, i64* %12, align 8
  %22 = and i64 %21, 1
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %20, %5
  %25 = load i64, i64* %12, align 8
  %26 = call i32 @iop13xx_atue_read(i64 %25)
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 3
  %29 = mul nsw i32 %28, 8
  %30 = ashr i32 %26, %29
  store i32 %30, i32* %11, align 4
  %31 = call i64 @iop13xx_atue_pci_status(i32 1)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = call i64 (...) @is_atue_occdr_error()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33, %24
  %37 = load i32, i32* @IOP13XX_XBG_BECSR, align 4
  %38 = call i32 @__raw_readl(i32 %37)
  %39 = and i32 %38, 3
  %40 = load i32, i32* @IOP13XX_XBG_BECSR, align 4
  %41 = call i32 @__raw_writel(i32 %39, i32 %40)
  store i32 -1, i32* %11, align 4
  br label %42

42:                                               ; preds = %36, %33
  %43 = load i64, i64* %12, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @PRINTK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %43, i32 %44)
  br label %47

46:                                               ; preds = %20
  store i32 -1, i32* %11, align 4
  br label %47

47:                                               ; preds = %46, %42
  %48 = load i32, i32* %11, align 4
  %49 = load i32*, i32** %10, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  ret i32 %50
}

declare dso_local i64 @iop13xx_atue_cfg_address(%struct.pci_bus*, i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @iop13xx_atue_read(i64) #1

declare dso_local i64 @iop13xx_atue_pci_status(i32) #1

declare dso_local i64 @is_atue_occdr_error(...) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @PRINTK(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
