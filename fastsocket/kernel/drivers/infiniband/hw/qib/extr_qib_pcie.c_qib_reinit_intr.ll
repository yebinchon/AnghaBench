; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_reinit_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_reinit_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, i32, i32 }

@PCI_CAP_ID_MSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Can't find MSI capability, can't restore MSI settings\0A\00", align 1
@PCI_MSI_ADDRESS_LO = common dso_local global i64 0, align 8
@PCI_MSI_ADDRESS_HI = common dso_local global i64 0, align 8
@PCI_MSI_FLAGS = common dso_local global i32 0, align 4
@PCI_MSI_FLAGS_ENABLE = common dso_local global i32 0, align 4
@PCI_MSI_FLAGS_64BIT = common dso_local global i32 0, align 4
@QIB_HAS_INTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_reinit_intr(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %7 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %84

11:                                               ; preds = %1
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %13 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PCI_CAP_ID_MSI, align 4
  %16 = call i32 @pci_find_capability(i32 %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %21 = call i32 @qib_dev_err(%struct.qib_devdata* %20, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %84

22:                                               ; preds = %11
  %23 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %24 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @PCI_MSI_ADDRESS_LO, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %31 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pci_write_config_dword(i32 %25, i64 %29, i32 %32)
  %34 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %35 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* @PCI_MSI_ADDRESS_HI, align 8
  %40 = add nsw i64 %38, %39
  %41 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %42 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pci_write_config_dword(i32 %36, i64 %40, i32 %43)
  %45 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %46 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @PCI_MSI_FLAGS, align 4
  %50 = add nsw i32 %48, %49
  %51 = call i32 @pci_read_config_word(i32 %47, i32 %50, i32* %4)
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @PCI_MSI_FLAGS_ENABLE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %22
  %57 = load i32, i32* @PCI_MSI_FLAGS_ENABLE, align 4
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  %60 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %61 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @PCI_MSI_FLAGS, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @pci_write_config_word(i32 %62, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %56, %22
  %69 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %70 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @PCI_MSI_FLAGS_64BIT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 12, i32 8
  %79 = add nsw i32 %72, %78
  %80 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %81 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @pci_write_config_word(i32 %71, i32 %79, i32 %82)
  store i32 1, i32* %5, align 4
  br label %84

84:                                               ; preds = %68, %19, %10
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %84
  %88 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %89 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @QIB_HAS_INTX, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %96 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @qib_enable_intx(i32 %97)
  store i32 1, i32* %5, align 4
  br label %99

99:                                               ; preds = %94, %87, %84
  %100 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %101 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @pci_set_master(i32 %102)
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @pci_find_capability(i32, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*) #1

declare dso_local i32 @pci_write_config_dword(i32, i64, i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @qib_enable_intx(i32) #1

declare dso_local i32 @pci_set_master(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
