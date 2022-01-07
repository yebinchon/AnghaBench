; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_pci_of_scan.c_pci_parse_of_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_pci_of_scan.c_pci_parse_of_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_SPACE_MEMORY = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_TYPE_64 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_TYPE_1M = common dso_local global i32 0, align 4
@IORESOURCE_PREFETCH = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_PREFETCH = common dso_local global i32 0, align 4
@IORESOURCE_READONLY = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_SPACE_IO = common dso_local global i32 0, align 4
@IORESOURCE_SIZEALIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_parse_of_flags(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 33554432
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %46

9:                                                ; preds = %2
  %10 = load i32, i32* @IORESOURCE_MEM, align 4
  %11 = load i32, i32* @PCI_BASE_ADDRESS_SPACE_MEMORY, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = ashr i32 %13, 22
  %15 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_64, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = ashr i32 %19, 28
  %21 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_1M, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, 1073741824
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %9
  %29 = load i32, i32* @IORESOURCE_PREFETCH, align 4
  %30 = load i32, i32* @PCI_BASE_ADDRESS_MEM_PREFETCH, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %28, %9
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, 255
  %40 = icmp eq i32 %39, 48
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* @IORESOURCE_READONLY, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %37, %34
  br label %55

46:                                               ; preds = %2
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, 16777216
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* @IORESOURCE_IO, align 4
  %52 = load i32, i32* @PCI_BASE_ADDRESS_SPACE_IO, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %45
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @IORESOURCE_SIZEALIGN, align 4
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
