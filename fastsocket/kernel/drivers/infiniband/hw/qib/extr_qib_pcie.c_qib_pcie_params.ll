; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_pcie_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_pcie_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, i32 }
%struct.qib_msix_entry = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Can't find PCI Express capability!\0A\00", align 1
@PCI_CAP_ID_MSIX = common dso_local global i32 0, align 4
@PCI_CAP_ID_MSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"No PCI MSI or MSIx capability!\0A\00", align 1
@PCI_EXP_LNKSTA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"PCIe width %u (x%u HCA), performance reduced\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"PCIe,%uMHz,x%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_pcie_params(%struct.qib_devdata* %0, i32 %1, i32* %2, %struct.qib_msix_entry* %3) #0 {
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.qib_msix_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.qib_msix_entry* %3, %struct.qib_msix_entry** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %14 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pci_is_pcie(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %4
  %19 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %20 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %22 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %24 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %23, i32 0, i32 1
  store i32 2500, i32* %24, align 4
  br label %112

25:                                               ; preds = %4
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %27 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PCI_CAP_ID_MSIX, align 4
  %30 = call i32 @pci_find_capability(i32 %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %25
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.qib_msix_entry*, %struct.qib_msix_entry** %8, align 8
  %45 = call i32 @qib_msix_setup(%struct.qib_devdata* %41, i32 %42, i32* %43, %struct.qib_msix_entry* %44)
  store i32 0, i32* %12, align 4
  br label %62

46:                                               ; preds = %37, %33, %25
  %47 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %48 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PCI_CAP_ID_MSI, align 4
  %51 = call i32 @pci_find_capability(i32 %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @qib_msi_setup(%struct.qib_devdata* %55, i32 %56)
  store i32 %57, i32* %12, align 4
  br label %61

58:                                               ; preds = %46
  %59 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %60 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %54
  br label %62

62:                                               ; preds = %61, %40
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %67 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @qib_enable_intx(i32 %68)
  br label %70

70:                                               ; preds = %65, %62
  %71 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %72 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PCI_EXP_LNKSTA, align 4
  %75 = call i32 @pcie_capability_read_word(i32 %73, i32 %74, i32* %9)
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, 15
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = ashr i32 %78, 4
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = and i32 %80, 31
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %84 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %10, align 4
  switch i32 %85, label %92 [
    i32 1, label %86
    i32 2, label %89
  ]

86:                                               ; preds = %70
  %87 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %88 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %87, i32 0, i32 1
  store i32 2500, i32* %88, align 4
  br label %95

89:                                               ; preds = %70
  %90 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %91 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %90, i32 0, i32 1
  store i32 5000, i32* %91, align 4
  br label %95

92:                                               ; preds = %70
  %93 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %94 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %93, i32 0, i32 1
  store i32 2500, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %89, %86
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %103, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %98, %95
  %108 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %109 = call i32 @qib_tune_pcie_caps(%struct.qib_devdata* %108)
  %110 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %111 = call i32 @qib_tune_pcie_coalesce(%struct.qib_devdata* %110)
  br label %112

112:                                              ; preds = %107, %18
  %113 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %114 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %117 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %120 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @snprintf(i32 %115, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %118, i32 %121)
  %123 = load i32, i32* %12, align 4
  ret i32 %123
}

declare dso_local i32 @pci_is_pcie(i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, ...) #1

declare dso_local i32 @pci_find_capability(i32, i32) #1

declare dso_local i32 @qib_msix_setup(%struct.qib_devdata*, i32, i32*, %struct.qib_msix_entry*) #1

declare dso_local i32 @qib_msi_setup(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_enable_intx(i32) #1

declare dso_local i32 @pcie_capability_read_word(i32, i32, i32*) #1

declare dso_local i32 @qib_tune_pcie_caps(%struct.qib_devdata*) #1

declare dso_local i32 @qib_tune_pcie_coalesce(%struct.qib_devdata*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
