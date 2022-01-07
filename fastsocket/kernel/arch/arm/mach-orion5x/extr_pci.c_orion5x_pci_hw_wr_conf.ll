; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-orion5x/extr_pci.c_orion5x_pci_hw_wr_conf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-orion5x/extr_pci.c_orion5x_pci_hw_wr_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@orion5x_pci_lock = common dso_local global i32 0, align 4
@PCI_CONF_ADDR_EN = common dso_local global i32 0, align 4
@PCI_CONF_ADDR = common dso_local global i32 0, align 4
@PCI_CONF_DATA = common dso_local global i64 0, align 8
@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @orion5x_pci_hw_wr_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orion5x_pci_hw_wr_conf(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i64, i64* %13, align 8
  %17 = call i32 @spin_lock_irqsave(i32* @orion5x_pci_lock, i64 %16)
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @PCI_CONF_BUS(i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @PCI_CONF_DEV(i32 %20)
  %22 = or i32 %19, %21
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @PCI_CONF_REG(i32 %23)
  %25 = or i32 %22, %24
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @PCI_CONF_FUNC(i32 %26)
  %28 = or i32 %25, %27
  %29 = load i32, i32* @PCI_CONF_ADDR_EN, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @PCI_CONF_ADDR, align 4
  %32 = call i32 @writel(i32 %30, i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 4
  br i1 %34, label %35, label %39

35:                                               ; preds = %6
  %36 = load i32, i32* %12, align 4
  %37 = load i64, i64* @PCI_CONF_DATA, align 8
  %38 = call i32 @__raw_writel(i32 %36, i64 %37)
  br label %65

39:                                               ; preds = %6
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i32, i32* %12, align 4
  %44 = load i64, i64* @PCI_CONF_DATA, align 8
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 3
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = call i32 @__raw_writew(i32 %43, i64 %48)
  br label %64

50:                                               ; preds = %39
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i32, i32* %12, align 4
  %55 = load i64, i64* @PCI_CONF_DATA, align 8
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, 3
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %55, %58
  %60 = call i32 @__raw_writeb(i32 %54, i64 %59)
  br label %63

61:                                               ; preds = %50
  %62 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %61, %53
  br label %64

64:                                               ; preds = %63, %42
  br label %65

65:                                               ; preds = %64, %35
  %66 = load i64, i64* %13, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* @orion5x_pci_lock, i64 %66)
  %68 = load i32, i32* %14, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @PCI_CONF_BUS(i32) #1

declare dso_local i32 @PCI_CONF_DEV(i32) #1

declare dso_local i32 @PCI_CONF_REG(i32) #1

declare dso_local i32 @PCI_CONF_FUNC(i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @__raw_writew(i32, i64) #1

declare dso_local i32 @__raw_writeb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
