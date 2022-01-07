; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/pci/extr_pci.c_pcibios_bus_to_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/pci/extr_pci.c_pcibios_bus_to_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.resource = type { i32, i64, i64 }
%struct.pci_bus_region = type { i64, i64 }
%struct.pci_controller = type { i32, %struct.pci_window* }
%struct.pci_window = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcibios_bus_to_resource(%struct.pci_dev* %0, %struct.resource* %1, %struct.pci_bus_region* %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.pci_bus_region*, align 8
  %7 = alloca %struct.pci_controller*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_window*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  store %struct.pci_bus_region* %2, %struct.pci_bus_region** %6, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = call %struct.pci_controller* @PCI_CONTROLLER(%struct.pci_dev* %11)
  store %struct.pci_controller* %12, %struct.pci_controller** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %68, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.pci_controller*, %struct.pci_controller** %7, align 8
  %16 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %71

19:                                               ; preds = %13
  %20 = load %struct.pci_controller*, %struct.pci_controller** %7, align 8
  %21 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %20, i32 0, i32 1
  %22 = load %struct.pci_window*, %struct.pci_window** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.pci_window, %struct.pci_window* %22, i64 %24
  store %struct.pci_window* %25, %struct.pci_window** %10, align 8
  %26 = load %struct.pci_window*, %struct.pci_window** %10, align 8
  %27 = getelementptr inbounds %struct.pci_window, %struct.pci_window* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.resource*, %struct.resource** %5, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %19
  br label %68

36:                                               ; preds = %19
  %37 = load %struct.pci_window*, %struct.pci_window** %10, align 8
  %38 = getelementptr inbounds %struct.pci_window, %struct.pci_window* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.pci_window*, %struct.pci_window** %10, align 8
  %42 = getelementptr inbounds %struct.pci_window, %struct.pci_window* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %40, %43
  %45 = load %struct.pci_bus_region*, %struct.pci_bus_region** %6, align 8
  %46 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ugt i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %68

50:                                               ; preds = %36
  %51 = load %struct.pci_window*, %struct.pci_window** %10, align 8
  %52 = getelementptr inbounds %struct.pci_window, %struct.pci_window* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.pci_window*, %struct.pci_window** %10, align 8
  %56 = getelementptr inbounds %struct.pci_window, %struct.pci_window* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %54, %57
  %59 = load %struct.pci_bus_region*, %struct.pci_bus_region** %6, align 8
  %60 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %68

64:                                               ; preds = %50
  %65 = load %struct.pci_window*, %struct.pci_window** %10, align 8
  %66 = getelementptr inbounds %struct.pci_window, %struct.pci_window* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %8, align 8
  br label %71

68:                                               ; preds = %63, %49, %35
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %13

71:                                               ; preds = %64, %13
  %72 = load %struct.pci_bus_region*, %struct.pci_bus_region** %6, align 8
  %73 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %74, %75
  %77 = load %struct.resource*, %struct.resource** %5, align 8
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.pci_bus_region*, %struct.pci_bus_region** %6, align 8
  %80 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = add i64 %81, %82
  %84 = load %struct.resource*, %struct.resource** %5, align 8
  %85 = getelementptr inbounds %struct.resource, %struct.resource* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  ret void
}

declare dso_local %struct.pci_controller* @PCI_CONTROLLER(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
