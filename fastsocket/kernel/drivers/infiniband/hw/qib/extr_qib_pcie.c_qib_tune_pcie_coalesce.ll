; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_tune_pcie_coalesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_tune_pcie_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@qib_pcie_coalesce = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Parent not root\0A\00", align 1
@PCI_REVISION_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*)* @qib_tune_pcie_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_tune_pcie_coalesce(%struct.qib_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  %11 = load i32, i32* @qib_pcie_coalesce, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %100

14:                                               ; preds = %1
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  store %struct.pci_dev* %21, %struct.pci_dev** %5, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %14
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %30 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = call i32 @qib_devinfo(%struct.TYPE_6__* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %100

33:                                               ; preds = %14
  %34 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %35 = call i32 @pci_is_pcie(%struct.pci_dev* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %100

38:                                               ; preds = %33
  %39 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 32902
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  br label %100

44:                                               ; preds = %38
  %45 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp sge i32 %48, 9698
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = icmp sle i32 %51, 9722
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %55 = load i32, i32* @PCI_REVISION_ID, align 4
  %56 = call i32 @pci_read_config_byte(%struct.pci_dev* %54, i32 %55, i32* %10)
  %57 = load i32, i32* %10, align 4
  %58 = icmp sle i32 %57, 178
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 1024, i32* %8, align 4
  br label %61

60:                                               ; preds = %53
  store i32 7168, i32* %8, align 4
  br label %61

61:                                               ; preds = %60, %59
  store i32 50338816, i32* %7, align 4
  br label %87

62:                                               ; preds = %50, %44
  %63 = load i32, i32* %6, align 4
  %64 = icmp sge i32 %63, 26082
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  %67 = icmp sle i32 %66, 26106
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 1024, i32* %8, align 4
  store i32 50338816, i32* %7, align 4
  br label %86

69:                                               ; preds = %65, %62
  %70 = load i32, i32* %6, align 4
  %71 = icmp sge i32 %70, 16417
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = icmp sle i32 %73, 16430
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 7168, i32* %8, align 4
  store i32 7168, i32* %7, align 4
  br label %85

76:                                               ; preds = %72, %69
  %77 = load i32, i32* %6, align 4
  %78 = icmp sge i32 %77, 13828
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* %6, align 4
  %81 = icmp sle i32 %80, 13834
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 7168, i32* %8, align 4
  store i32 50338816, i32* %7, align 4
  br label %84

83:                                               ; preds = %79, %76
  store i32 1, i32* %2, align 4
  br label %100

84:                                               ; preds = %82
  br label %85

85:                                               ; preds = %84, %75
  br label %86

86:                                               ; preds = %85, %68
  br label %87

87:                                               ; preds = %86, %61
  %88 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %89 = call i32 @pci_read_config_dword(%struct.pci_dev* %88, i32 72, i32* %9)
  %90 = load i32, i32* %7, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %9, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %9, align 4
  %97 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @pci_write_config_dword(%struct.pci_dev* %97, i32 72, i32 %98)
  store i32 %99, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %87, %83, %43, %37, %28, %13
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @qib_devinfo(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
