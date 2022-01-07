; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_msi.c_pci_enable_msix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_msi.c_pci_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i64, i32 }
%struct.msix_entry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PCI_CAP_ID_MSIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"can't enable MSI-X (MSI IRQ already assigned)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_enable_msix(%struct.pci_dev* %0, %struct.msix_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.msix_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.msix_entry* %1, %struct.msix_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %13 = icmp ne %struct.msix_entry* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %108

17:                                               ; preds = %3
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PCI_CAP_ID_MSIX, align 4
  %21 = call i32 @pci_msi_check_device(%struct.pci_dev* %18, i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %108

26:                                               ; preds = %17
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = call i32 @pci_msix_table_size(%struct.pci_dev* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %108

34:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %80, %34
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %83

39:                                               ; preds = %35
  %40 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %40, i64 %42
  %44 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %108

51:                                               ; preds = %39
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %76, %51
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %54
  %59 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %59, i64 %61
  %63 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %65, i64 %67
  %69 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %64, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %58
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %108

75:                                               ; preds = %58
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %54

79:                                               ; preds = %54
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %35

83:                                               ; preds = %35
  %84 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 @WARN_ON(i32 %90)
  %92 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %83
  %97 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 0
  %99 = call i32 @dev_info(i32* %98, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %108

102:                                              ; preds = %83
  %103 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %104 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @msix_capability_init(%struct.pci_dev* %103, %struct.msix_entry* %104, i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %102, %96, %72, %48, %32, %24, %14
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @pci_msi_check_device(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_msix_table_size(%struct.pci_dev*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @msix_capability_init(%struct.pci_dev*, %struct.msix_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
