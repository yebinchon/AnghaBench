; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/extr_pci_dma.c_sn_pci_legacy_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/extr_pci_dma.c_sn_pci_legacy_write.c"
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
define dso_local i32 @sn_pci_legacy_write(%struct.pci_bus* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.ia64_sal_retval, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @SN_SAL_IOIF_PCI_SAFE, align 4
  %16 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %17 = call i32 @pci_domain_nr(%struct.pci_bus* %16)
  %18 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %19 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @__pa(i32* %8)
  %24 = getelementptr inbounds %struct.ia64_sal_retval, %struct.ia64_sal_retval* %13, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @SAL_CALL(i64 %25, i32 %15, i32 %17, i32 %20, i32 0, i32 1, i64 %21, i32 %22, i32 %23)
  %27 = getelementptr inbounds %struct.ia64_sal_retval, %struct.ia64_sal_retval* %13, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %5, align 4
  br label %70

32:                                               ; preds = %4
  %33 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %34 = call %struct.TYPE_2__* @SN_PCIBUS_BUSSOFT(%struct.pci_bus* %33)
  %35 = icmp ne %struct.TYPE_2__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  br label %68

39:                                               ; preds = %32
  %40 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %41 = call %struct.TYPE_2__* @SN_PCIBUS_BUSSOFT(%struct.pci_bus* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @__IA64_UNCACHED_OFFSET, align 8
  %45 = or i64 %43, %44
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %11, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = inttoptr i64 %49 to i64*
  store i64* %50, i64** %12, align 8
  %51 = load i32, i32* %9, align 4
  switch i32 %51, label %64 [
    i32 1, label %52
    i32 2, label %56
    i32 4, label %60
  ]

52:                                               ; preds = %39
  %53 = load i32, i32* %8, align 4
  %54 = load i64*, i64** %12, align 8
  %55 = bitcast i64* %54 to i32*
  store volatile i32 %53, i32* %55, align 4
  br label %67

56:                                               ; preds = %39
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64*, i64** %12, align 8
  store volatile i64 %58, i64* %59, align 8
  br label %67

60:                                               ; preds = %39
  %61 = load i32, i32* %8, align 4
  %62 = load i64*, i64** %12, align 8
  %63 = bitcast i64* %62 to i32*
  store volatile i32 %61, i32* %63, align 4
  br label %67

64:                                               ; preds = %39
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %64, %60, %56, %52
  br label %68

68:                                               ; preds = %67, %36
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %30
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @SAL_CALL(i64, i32, i32, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local %struct.TYPE_2__* @SN_PCIBUS_BUSSOFT(%struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
