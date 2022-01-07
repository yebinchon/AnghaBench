; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_celleb_scc_epci.c_celleb_epci_check_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_celleb_scc_epci.c_celleb_epci_check_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_controller = type { i32 }

@PCI_COMMAND = common dso_local global i64 0, align 8
@PCI_STATUS_REC_MASTER_ABORT = common dso_local global i32 0, align 4
@SCC_EPCI_STATUS = common dso_local global i64 0, align 8
@SCC_EPCI_INT_PAI = common dso_local global i32 0, align 4
@SCC_EPCI_VCSR = common dso_local global i64 0, align 8
@SCC_EPCI_VCSR_FRE = common dso_local global i32 0, align 4
@SCC_EPCI_VISTAT = common dso_local global i64 0, align 8
@SCC_EPCI_VISTAT_PMFE = common dso_local global i32 0, align 4
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_controller*, i64)* @celleb_epci_check_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @celleb_epci_check_abort(%struct.pci_controller* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_controller*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pci_controller* %0, %struct.pci_controller** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = call i32 (...) @iob()
  %10 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %11 = call i64 @celleb_epci_get_epci_base(%struct.pci_controller* %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @PCI_COMMAND, align 8
  %14 = add nsw i64 %12, %13
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @in_be32(i64 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @PCI_STATUS_REC_MASTER_ABORT, align 4
  %19 = shl i32 %18, 16
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %2
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 65535
  %26 = load i32, i32* @PCI_STATUS_REC_MASTER_ABORT, align 4
  %27 = shl i32 %26, 16
  %28 = or i32 %25, %27
  %29 = call i32 @out_be32(i64 %23, i32 %28)
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @SCC_EPCI_STATUS, align 8
  %32 = add nsw i64 %30, %31
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* @SCC_EPCI_INT_PAI, align 4
  %35 = call i32 @out_be32(i64 %33, i32 %34)
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @SCC_EPCI_VCSR, align 8
  %38 = add nsw i64 %36, %37
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @in_be32(i64 %39)
  %41 = and i32 %40, 65535
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* @SCC_EPCI_VCSR_FRE, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @out_be32(i64 %45, i32 %46)
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @SCC_EPCI_VISTAT, align 8
  %50 = add nsw i64 %48, %49
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i32, i32* @SCC_EPCI_VISTAT_PMFE, align 4
  %53 = call i32 @out_be32(i64 %51, i32 %52)
  %54 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %2
  %56 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %22
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @iob(...) #1

declare dso_local i64 @celleb_epci_get_epci_base(%struct.pci_controller*) #1

declare dso_local i32 @in_be32(i64) #1

declare dso_local i32 @out_be32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
