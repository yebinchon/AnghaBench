; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/pci/extr_pci.c_pcibios_fixup_device_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/pci/extr_pci.c_pcibios_fixup_device_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.pci_bus = type { %struct.pci_channel* }
%struct.pci_channel = type { i64, i64 }

@PCI_NUM_RESOURCES = common dso_local global i32 0, align 4
@IORESOURCE_PCI_FIXED = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.pci_bus*)* @pcibios_fixup_device_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcibios_fixup_device_resources(%struct.pci_dev* %0, %struct.pci_bus* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca %struct.pci_channel*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.pci_bus* %1, %struct.pci_bus** %4, align 8
  %8 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %9 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %8, i32 0, i32 0
  %10 = load %struct.pci_channel*, %struct.pci_channel** %9, align 8
  store %struct.pci_channel* %10, %struct.pci_channel** %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %93, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @PCI_NUM_RESOURCES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %96

15:                                               ; preds = %11
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %93

26:                                               ; preds = %15
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IORESOURCE_PCI_FIXED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %93

39:                                               ; preds = %26
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @IORESOURCE_IO, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %39
  %52 = load %struct.pci_channel*, %struct.pci_channel** %5, align 8
  %53 = getelementptr inbounds %struct.pci_channel, %struct.pci_channel* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %6, align 8
  br label %72

55:                                               ; preds = %39
  %56 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IORESOURCE_MEM, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %55
  %68 = load %struct.pci_channel*, %struct.pci_channel** %5, align 8
  %69 = getelementptr inbounds %struct.pci_channel, %struct.pci_channel* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %6, align 8
  br label %71

71:                                               ; preds = %67, %55
  br label %72

72:                                               ; preds = %71, %51
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, %73
  store i64 %82, i64* %80, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, %83
  store i64 %92, i64* %90, align 8
  br label %93

93:                                               ; preds = %72, %38, %25
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %11

96:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
