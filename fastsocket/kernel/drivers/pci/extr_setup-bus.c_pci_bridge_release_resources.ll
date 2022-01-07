; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-bus.c_pci_bridge_release_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-bus.c_pci_bridge_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.pci_dev* }
%struct.pci_dev = type { i32, %struct.resource* }
%struct.resource = type { i64, i64, i64, i32 }

@IORESOURCE_IO = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i64 0, align 8
@IORESOURCE_PREFETCH = common dso_local global i64 0, align 8
@PCI_BRIDGE_RESOURCES = common dso_local global i32 0, align 4
@PCI_NUM_RESOURCES = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"resource %d %pR released\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_bus*, i64)* @pci_bridge_release_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_bridge_release_resources(%struct.pci_bus* %0, i64 %1) #0 {
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i64, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load i64, i64* @IORESOURCE_IO, align 8
  %11 = load i64, i64* @IORESOURCE_MEM, align 8
  %12 = or i64 %10, %11
  %13 = load i64, i64* @IORESOURCE_PREFETCH, align 8
  %14 = or i64 %12, %13
  store i64 %14, i64* %9, align 8
  %15 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %7, align 8
  %18 = load i32, i32* @PCI_BRIDGE_RESOURCES, align 4
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %71, %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @PCI_NUM_RESOURCES, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %74

23:                                               ; preds = %19
  %24 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 1
  %26 = load %struct.resource*, %struct.resource** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %26, i64 %28
  store %struct.resource* %29, %struct.resource** %8, align 8
  %30 = load %struct.resource*, %struct.resource** %8, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = and i64 %32, %33
  %35 = load i64, i64* %4, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %71

38:                                               ; preds = %23
  %39 = load %struct.resource*, %struct.resource** %8, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %71

44:                                               ; preds = %38
  %45 = load %struct.resource*, %struct.resource** %8, align 8
  %46 = call i32 @release_child_resources(%struct.resource* %45)
  %47 = load %struct.resource*, %struct.resource** %8, align 8
  %48 = call i32 @release_resource(%struct.resource* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @KERN_DEBUG, align 4
  %52 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.resource*, %struct.resource** %8, align 8
  %56 = call i32 @dev_printk(i32 %51, i32* %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %54, %struct.resource* %55)
  %57 = load %struct.resource*, %struct.resource** %8, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.resource*, %struct.resource** %8, align 8
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  %64 = load %struct.resource*, %struct.resource** %8, align 8
  %65 = getelementptr inbounds %struct.resource, %struct.resource* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load %struct.resource*, %struct.resource** %8, align 8
  %67 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.resource*, %struct.resource** %8, align 8
  %69 = getelementptr inbounds %struct.resource, %struct.resource* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  store i32 1, i32* %6, align 4
  br label %70

70:                                               ; preds = %50, %44
  br label %71

71:                                               ; preds = %70, %43, %37
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %19

74:                                               ; preds = %19
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* @IORESOURCE_PREFETCH, align 8
  %80 = and i64 %78, %79
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i64, i64* @IORESOURCE_PREFETCH, align 8
  store i64 %83, i64* %4, align 8
  br label %84

84:                                               ; preds = %82, %77
  %85 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %86 = load i64, i64* %4, align 8
  %87 = call i32 @__pci_setup_bridge(%struct.pci_bus* %85, i64 %86)
  br label %88

88:                                               ; preds = %84, %74
  ret void
}

declare dso_local i32 @release_child_resources(%struct.resource*) #1

declare dso_local i32 @release_resource(%struct.resource*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i32, %struct.resource*) #1

declare dso_local i32 @__pci_setup_bridge(%struct.pci_bus*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
