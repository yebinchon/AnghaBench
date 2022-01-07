; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_pci_host.c_bcma_find_pci_capability.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_pci_host.c_bcma_find_pci_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_pci = type { i32 }

@PCI_HEADER_TYPE = common dso_local global i32 0, align 4
@PCI_HEADER_TYPE_NORMAL = common dso_local global i32 0, align 4
@PCI_STATUS = common dso_local global i32 0, align 4
@PCI_STATUS_CAP_LIST = common dso_local global i32 0, align 4
@PCI_CAPABILITY_LIST = common dso_local global i32 0, align 4
@PCI_CONFIG_SPACE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_drv_pci*, i32, i32, i32, i8*, i64*)* @bcma_find_pci_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_find_pci_capability(%struct.bcma_drv_pci* %0, i32 %1, i32 %2, i32 %3, i8* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bcma_drv_pci*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.bcma_drv_pci* %0, %struct.bcma_drv_pci** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @PCI_HEADER_TYPE, align 4
  %23 = call i32 (%struct.bcma_drv_pci*, i32, i32, i32, ...) @bcma_extpci_read_config(%struct.bcma_drv_pci* %19, i32 %20, i32 %21, i32 %22, i32* %17, i64 4)
  %24 = load i32, i32* %17, align 4
  %25 = and i32 %24, 127
  %26 = load i32, i32* @PCI_HEADER_TYPE_NORMAL, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* %15, align 4
  store i32 %29, i32* %7, align 4
  br label %128

30:                                               ; preds = %6
  %31 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @PCI_STATUS, align 4
  %35 = call i32 (%struct.bcma_drv_pci*, i32, i32, i32, ...) @bcma_extpci_read_config(%struct.bcma_drv_pci* %31, i32 %32, i32 %33, i32 %34, i32* %17, i64 4)
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* @PCI_STATUS_CAP_LIST, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %7, align 4
  br label %128

42:                                               ; preds = %30
  %43 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @PCI_CAPABILITY_LIST, align 4
  %47 = call i32 (%struct.bcma_drv_pci*, i32, i32, i32, ...) @bcma_extpci_read_config(%struct.bcma_drv_pci* %43, i32 %44, i32 %45, i32 %46, i32* %15, i64 4)
  %48 = load i32, i32* %15, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %7, align 4
  br label %128

52:                                               ; preds = %42
  %53 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %15, align 4
  %57 = call i32 (%struct.bcma_drv_pci*, i32, i32, i32, ...) @bcma_extpci_read_config(%struct.bcma_drv_pci* %53, i32 %54, i32 %55, i32 %56, i32* %14, i64 4)
  br label %58

58:                                               ; preds = %73, %52
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %58
  %63 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 (%struct.bcma_drv_pci*, i32, i32, i32, ...) @bcma_extpci_read_config(%struct.bcma_drv_pci* %63, i32 %64, i32 %65, i32 %67, i32* %15, i64 4)
  %69 = load i32, i32* %15, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* %15, align 4
  store i32 %72, i32* %7, align 4
  br label %128

73:                                               ; preds = %62
  %74 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call i32 (%struct.bcma_drv_pci*, i32, i32, i32, ...) @bcma_extpci_read_config(%struct.bcma_drv_pci* %74, i32 %75, i32 %76, i32 %77, i32* %14, i64 4)
  br label %58

79:                                               ; preds = %58
  %80 = load i8*, i8** %12, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %126

82:                                               ; preds = %79
  %83 = load i64*, i64** %13, align 8
  %84 = icmp ne i64* %83, null
  br i1 %84, label %85, label %126

85:                                               ; preds = %82
  %86 = load i64*, i64** %13, align 8
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %16, align 8
  %88 = load i64, i64* %16, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %15, align 4
  store i32 %91, i32* %7, align 4
  br label %128

92:                                               ; preds = %85
  %93 = load i64*, i64** %13, align 8
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 2
  store i32 %95, i32* %18, align 4
  %96 = load i64, i64* %16, align 8
  %97 = load i32, i32* %18, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = load i64, i64* @PCI_CONFIG_SPACE_SIZE, align 8
  %101 = icmp sgt i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %92
  %103 = load i64, i64* @PCI_CONFIG_SPACE_SIZE, align 8
  %104 = load i32, i32* %18, align 4
  %105 = sext i32 %104 to i64
  %106 = sub nsw i64 %103, %105
  store i64 %106, i64* %16, align 8
  br label %107

107:                                              ; preds = %102, %92
  %108 = load i64, i64* %16, align 8
  %109 = load i64*, i64** %13, align 8
  store i64 %108, i64* %109, align 8
  br label %110

110:                                              ; preds = %114, %107
  %111 = load i64, i64* %16, align 8
  %112 = add nsw i64 %111, -1
  store i64 %112, i64* %16, align 8
  %113 = icmp ne i64 %111, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %110
  %115 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %8, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %18, align 4
  %119 = load i8*, i8** %12, align 8
  %120 = call i32 (%struct.bcma_drv_pci*, i32, i32, i32, ...) @bcma_extpci_read_config(%struct.bcma_drv_pci* %115, i32 %116, i32 %117, i32 %118, i8* %119, i64 4)
  %121 = load i32, i32* %18, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %18, align 4
  %123 = load i8*, i8** %12, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %12, align 8
  br label %110

125:                                              ; preds = %110
  br label %126

126:                                              ; preds = %125, %82, %79
  %127 = load i32, i32* %15, align 4
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %126, %90, %71, %50, %40, %28
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local i32 @bcma_extpci_read_config(%struct.bcma_drv_pci*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
