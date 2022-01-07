; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_pci_v3.c_v3_open_config_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_pci_v3.c_v3_open_config_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@V3_LB_MAP_TYPE_CONFIG = common dso_local global i32 0, align 4
@V3_LB_MAP_AD_LOW_EN = common dso_local global i32 0, align 4
@V3_LB_BASE0 = common dso_local global i32 0, align 4
@PHYS_PCI_MEM_BASE = common dso_local global i32 0, align 4
@V3_LB_BASE_ADR_SIZE_512MB = common dso_local global i32 0, align 4
@V3_LB_BASE_ENABLE = common dso_local global i32 0, align 4
@V3_LB_BASE1 = common dso_local global i32 0, align 4
@PHYS_PCI_CONFIG_BASE = common dso_local global i32 0, align 4
@V3_LB_BASE_ADR_SIZE_16MB = common dso_local global i32 0, align 4
@V3_LB_MAP1 = common dso_local global i32 0, align 4
@PCI_CONFIG_VADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pci_bus*, i32, i32)* @v3_open_config_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @v3_open_config_window(%struct.pci_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %12 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 255
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 (...) @BUG()
  br label %18

18:                                               ; preds = %16, %3
  %19 = load i32, i32* %9, align 4
  %20 = icmp ugt i32 %19, 255
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 (...) @BUG()
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, i32* %5, align 4
  %25 = icmp ugt i32 %24, 255
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 (...) @BUG()
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @PCI_SLOT(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @PCI_FUNC(i32 %34)
  %36 = shl i32 %35, 8
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @V3_LB_MAP_TYPE_CONFIG, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %38, 12
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load i32, i32* %10, align 4
  %42 = sub nsw i32 %41, 5
  %43 = shl i32 1, %42
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %52

46:                                               ; preds = %31
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 11
  %49 = shl i32 1, %48
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %46, %40
  br label %62

53:                                               ; preds = %28
  %54 = load i32, i32* @V3_LB_MAP_TYPE_CONFIG, align 4
  %55 = load i32, i32* @V3_LB_MAP_AD_LOW_EN, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = shl i32 %57, 16
  %59 = load i32, i32* %5, align 4
  %60 = shl i32 %59, 8
  %61 = or i32 %58, %60
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %53, %52
  %63 = load i32, i32* @V3_LB_BASE0, align 4
  %64 = load i32, i32* @PHYS_PCI_MEM_BASE, align 4
  %65 = call i32 @v3_addr_to_lb_base(i32 %64)
  %66 = load i32, i32* @V3_LB_BASE_ADR_SIZE_512MB, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @V3_LB_BASE_ENABLE, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @v3_writel(i32 %63, i32 %69)
  %71 = load i32, i32* @V3_LB_BASE1, align 4
  %72 = load i32, i32* @PHYS_PCI_CONFIG_BASE, align 4
  %73 = call i32 @v3_addr_to_lb_base(i32 %72)
  %74 = load i32, i32* @V3_LB_BASE_ADR_SIZE_16MB, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @V3_LB_BASE_ENABLE, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @v3_writel(i32 %71, i32 %77)
  %79 = load i32, i32* @V3_LB_MAP1, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @v3_writew(i32 %79, i32 %80)
  %82 = load i64, i64* @PCI_CONFIG_VADDR, align 8
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = add i64 %82, %84
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = add i64 %85, %87
  ret i64 %88
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @v3_writel(i32, i32) #1

declare dso_local i32 @v3_addr_to_lb_base(i32) #1

declare dso_local i32 @v3_writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
