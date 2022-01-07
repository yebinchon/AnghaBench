; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_pci-common.c_pci_resource_to_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_pci-common.c_pci_resource_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.resource = type { i32, i64, i64 }
%struct.pci_controller = type { i64, i64 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@_IO_BASE = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_resource_to_user(%struct.pci_dev* %0, i32 %1, %struct.resource* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.pci_controller*, align 8
  %12 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.resource* %2, %struct.resource** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.pci_controller* @pci_bus_to_host(i32 %15)
  store %struct.pci_controller* %16, %struct.pci_controller** %11, align 8
  store i64 0, i64* %12, align 8
  %17 = load %struct.pci_controller*, %struct.pci_controller** %11, align 8
  %18 = icmp eq %struct.pci_controller* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %46

20:                                               ; preds = %5
  %21 = load %struct.resource*, %struct.resource** %8, align 8
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IORESOURCE_IO, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.pci_controller*, %struct.pci_controller** %11, align 8
  %29 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @_IO_BASE, align 8
  %32 = sub i64 %30, %31
  store i64 %32, i64* %12, align 8
  br label %33

33:                                               ; preds = %27, %20
  %34 = load %struct.resource*, %struct.resource** %8, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %12, align 8
  %38 = sub nsw i64 %36, %37
  %39 = load i64*, i64** %9, align 8
  store i64 %38, i64* %39, align 8
  %40 = load %struct.resource*, %struct.resource** %8, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %12, align 8
  %44 = sub nsw i64 %42, %43
  %45 = load i64*, i64** %10, align 8
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %33, %19
  ret void
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
