; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_bus.c_pci_bus_add_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_bus.c_pci_bus_add_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, i32, %struct.resource** }
%struct.resource = type { i32 }
%struct.pci_bus_resource = type { i32, i32, %struct.resource* }

@PCI_BRIDGE_RESOURCE_NUM = common dso_local global i32 0, align 4
@PCI_BUS_NUM_RESOURCES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"can't add %pR resource\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_bus_add_resource(%struct.pci_bus* %0, %struct.resource* %1, i32 %2) #0 {
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus_resource*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @PCI_BRIDGE_RESOURCE_NUM, align 4
  store i32 %9, i32* %8, align 4
  br label %10

10:                                               ; preds = %32, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @PCI_BUS_NUM_RESOURCES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 2
  %17 = load %struct.resource**, %struct.resource*** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.resource*, %struct.resource** %17, i64 %19
  %21 = load %struct.resource*, %struct.resource** %20, align 8
  %22 = icmp eq %struct.resource* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = load %struct.resource*, %struct.resource** %5, align 8
  %25 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %26 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %25, i32 0, i32 2
  %27 = load %struct.resource**, %struct.resource*** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.resource*, %struct.resource** %27, i64 %29
  store %struct.resource* %24, %struct.resource** %30, align 8
  br label %57

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %10

35:                                               ; preds = %10
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.pci_bus_resource* @kzalloc(i32 16, i32 %36)
  store %struct.pci_bus_resource* %37, %struct.pci_bus_resource** %7, align 8
  %38 = load %struct.pci_bus_resource*, %struct.pci_bus_resource** %7, align 8
  %39 = icmp ne %struct.pci_bus_resource* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %42 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %41, i32 0, i32 1
  %43 = load %struct.resource*, %struct.resource** %5, align 8
  %44 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.resource* %43)
  br label %57

45:                                               ; preds = %35
  %46 = load %struct.resource*, %struct.resource** %5, align 8
  %47 = load %struct.pci_bus_resource*, %struct.pci_bus_resource** %7, align 8
  %48 = getelementptr inbounds %struct.pci_bus_resource, %struct.pci_bus_resource* %47, i32 0, i32 2
  store %struct.resource* %46, %struct.resource** %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.pci_bus_resource*, %struct.pci_bus_resource** %7, align 8
  %51 = getelementptr inbounds %struct.pci_bus_resource, %struct.pci_bus_resource* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.pci_bus_resource*, %struct.pci_bus_resource** %7, align 8
  %53 = getelementptr inbounds %struct.pci_bus_resource, %struct.pci_bus_resource* %52, i32 0, i32 1
  %54 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %55 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %54, i32 0, i32 0
  %56 = call i32 @list_add_tail(i32* %53, i32* %55)
  br label %57

57:                                               ; preds = %45, %40, %23
  ret void
}

declare dso_local %struct.pci_bus_resource* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, %struct.resource*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
