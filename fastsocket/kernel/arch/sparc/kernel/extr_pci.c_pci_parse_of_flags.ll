; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci.c_pci_parse_of_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci.c_pci_parse_of_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IORESOURCE_MEM = common dso_local global i64 0, align 8
@PCI_BASE_ADDRESS_SPACE_MEMORY = common dso_local global i64 0, align 8
@PCI_BASE_ADDRESS_MEM_TYPE_64 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_TYPE_1M = common dso_local global i32 0, align 4
@IORESOURCE_PREFETCH = common dso_local global i64 0, align 8
@PCI_BASE_ADDRESS_MEM_PREFETCH = common dso_local global i64 0, align 8
@IORESOURCE_IO = common dso_local global i64 0, align 8
@PCI_BASE_ADDRESS_SPACE_IO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @pci_parse_of_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pci_parse_of_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, 33554432
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %1
  %8 = load i64, i64* @IORESOURCE_MEM, align 8
  %9 = load i64, i64* @PCI_BASE_ADDRESS_SPACE_MEMORY, align 8
  %10 = or i64 %8, %9
  store i64 %10, i64* %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = ashr i32 %11, 22
  %13 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_64, align 4
  %14 = and i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* %3, align 8
  %17 = or i64 %16, %15
  store i64 %17, i64* %3, align 8
  %18 = load i32, i32* %2, align 4
  %19 = ashr i32 %18, 28
  %20 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_1M, align 4
  %21 = and i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %3, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %3, align 8
  %25 = load i32, i32* %2, align 4
  %26 = and i32 %25, 1073741824
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %7
  %29 = load i64, i64* @IORESOURCE_PREFETCH, align 8
  %30 = load i64, i64* @PCI_BASE_ADDRESS_MEM_PREFETCH, align 8
  %31 = or i64 %29, %30
  %32 = load i64, i64* %3, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %28, %7
  br label %44

35:                                               ; preds = %1
  %36 = load i32, i32* %2, align 4
  %37 = and i32 %36, 16777216
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i64, i64* @IORESOURCE_IO, align 8
  %41 = load i64, i64* @PCI_BASE_ADDRESS_SPACE_IO, align 8
  %42 = or i64 %40, %41
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %39, %35
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i64, i64* %3, align 8
  ret i64 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
