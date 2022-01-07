; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/extr_pci_dma.c_sn_pci_legacy_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/extr_pci_dma.c_sn_pci_legacy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.ia64_sal_retval = type { i64 }
%struct.TYPE_2__ = type { i64 }

@SN_SAL_IOIF_PCI_SAFE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@__IA64_UNCACHED_OFFSET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sn_pci_legacy_read(%struct.pci_bus* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ia64_sal_retval, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @SN_SAL_IOIF_PCI_SAFE, align 4
  %14 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %15 = call i32 @pci_domain_nr(%struct.pci_bus* %14)
  %16 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %17 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @__pa(i32* %21)
  %23 = getelementptr inbounds %struct.ia64_sal_retval, %struct.ia64_sal_retval* %12, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @SAL_CALL(i64 %24, i32 %13, i32 %15, i32 %18, i32 0, i32 0, i64 %19, i32 %20, i32 %22)
  %26 = getelementptr inbounds %struct.ia64_sal_retval, %struct.ia64_sal_retval* %12, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %5, align 4
  br label %66

31:                                               ; preds = %4
  %32 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %33 = call %struct.TYPE_2__* @SN_PCIBUS_BUSSOFT(%struct.pci_bus* %32)
  %34 = icmp ne %struct.TYPE_2__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %66

38:                                               ; preds = %31
  %39 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %40 = call %struct.TYPE_2__* @SN_PCIBUS_BUSSOFT(%struct.pci_bus* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @__IA64_UNCACHED_OFFSET, align 8
  %44 = or i64 %42, %43
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %10, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = load i32*, i32** %8, align 8
  %52 = bitcast i32* %51 to i8*
  %53 = call i32 @ia64_sn_probe_mem(i64 %48, i64 %50, i8* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %59

56:                                               ; preds = %38
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %66

59:                                               ; preds = %38
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32*, i32** %8, align 8
  store i32 -1, i32* %63, align 4
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %56, %35, %29
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @SAL_CALL(i64, i32, i32, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local %struct.TYPE_2__* @SN_PCIBUS_BUSSOFT(%struct.pci_bus*) #1

declare dso_local i32 @ia64_sn_probe_mem(i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
