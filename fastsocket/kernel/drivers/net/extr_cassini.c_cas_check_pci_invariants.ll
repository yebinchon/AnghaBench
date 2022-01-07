; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_check_pci_invariants.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_check_pci_invariants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i64, i64, i64 }

@PCI_VENDOR_ID_SUN = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_SUN_CASSINI = common dso_local global i64 0, align 8
@CAS_ID_REVPLUS = common dso_local global i64 0, align 8
@CAS_FLAG_REG_PLUS = common dso_local global i32 0, align 4
@CAS_ID_REVPLUS02u = common dso_local global i64 0, align 8
@CAS_FLAG_TARGET_ABORT = common dso_local global i32 0, align 4
@CAS_ID_REV2 = common dso_local global i64 0, align 8
@CAS_FLAG_NO_HW_CSUM = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_NS = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_NS_SATURN = common dso_local global i64 0, align 8
@CAS_FLAG_SATURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*)* @cas_check_pci_invariants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_check_pci_invariants(%struct.cas* %0) #0 {
  %2 = alloca %struct.cas*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.cas* %0, %struct.cas** %2, align 8
  %4 = load %struct.cas*, %struct.cas** %2, align 8
  %5 = getelementptr inbounds %struct.cas, %struct.cas* %4, i32 0, i32 1
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.cas*, %struct.cas** %2, align 8
  %8 = getelementptr inbounds %struct.cas, %struct.cas* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PCI_VENDOR_ID_SUN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %57

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PCI_DEVICE_ID_SUN_CASSINI, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %57

20:                                               ; preds = %14
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CAS_ID_REVPLUS, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i32, i32* @CAS_FLAG_REG_PLUS, align 4
  %28 = load %struct.cas*, %struct.cas** %2, align 8
  %29 = getelementptr inbounds %struct.cas, %struct.cas* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %26, %20
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CAS_ID_REVPLUS02u, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i32, i32* @CAS_FLAG_TARGET_ABORT, align 4
  %40 = load %struct.cas*, %struct.cas** %2, align 8
  %41 = getelementptr inbounds %struct.cas, %struct.cas* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %38, %32
  %45 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CAS_ID_REV2, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i32, i32* @CAS_FLAG_NO_HW_CSUM, align 4
  %52 = load %struct.cas*, %struct.cas** %2, align 8
  %53 = getelementptr inbounds %struct.cas, %struct.cas* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %50, %44
  br label %81

57:                                               ; preds = %14, %1
  %58 = load i32, i32* @CAS_FLAG_REG_PLUS, align 4
  %59 = load %struct.cas*, %struct.cas** %2, align 8
  %60 = getelementptr inbounds %struct.cas, %struct.cas* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PCI_VENDOR_ID_NS, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %57
  %69 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PCI_DEVICE_ID_NS_SATURN, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load i32, i32* @CAS_FLAG_SATURN, align 4
  %76 = load %struct.cas*, %struct.cas** %2, align 8
  %77 = getelementptr inbounds %struct.cas, %struct.cas* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %74, %68, %57
  br label %81

81:                                               ; preds = %80, %56
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
