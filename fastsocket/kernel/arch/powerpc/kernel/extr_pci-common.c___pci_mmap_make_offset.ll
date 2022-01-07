; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_pci-common.c___pci_mmap_make_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_pci-common.c___pci_mmap_make_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32, i64, i64 }
%struct.pci_dev = type { %struct.resource*, i32 }
%struct.pci_controller = type { i64, i64, i64 }

@pci_mmap_mem = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@_IO_BASE = common dso_local global i64 0, align 8
@IORESOURCE_IO = common dso_local global i32 0, align 4
@PCI_ROM_RESOURCE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@pci_mmap_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (%struct.pci_dev*, i64*, i32)* @__pci_mmap_make_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @__pci_mmap_make_offset(%struct.pci_dev* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_controller*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.pci_controller* @pci_bus_to_host(i32 %16)
  store %struct.pci_controller* %17, %struct.pci_controller** %8, align 8
  store i64 0, i64* %9, align 8
  %18 = load %struct.pci_controller*, %struct.pci_controller** %8, align 8
  %19 = icmp eq %struct.pci_controller* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store %struct.resource* null, %struct.resource** %4, align 8
  br label %102

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @pci_mmap_mem, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  store i32 %26, i32* %11, align 4
  br label %38

27:                                               ; preds = %21
  %28 = load %struct.pci_controller*, %struct.pci_controller** %8, align 8
  %29 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @_IO_BASE, align 8
  %32 = sub i64 %30, %31
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64*, i64** %6, align 8
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, %33
  store i64 %36, i64* %34, align 8
  %37 = load i32, i32* @IORESOURCE_IO, align 4
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %27, %25
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %98, %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %101

43:                                               ; preds = %39
  %44 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = load %struct.resource*, %struct.resource** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %46, i64 %48
  store %struct.resource* %49, %struct.resource** %12, align 8
  %50 = load %struct.resource*, %struct.resource** %12, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %43
  %57 = load i32, i32* @IORESOURCE_MEM, align 4
  %58 = load i32, i32* %13, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %56, %43
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %11, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %98

66:                                               ; preds = %60
  %67 = load i64*, i64** %6, align 8
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.resource*, %struct.resource** %12, align 8
  %70 = getelementptr inbounds %struct.resource, %struct.resource* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PAGE_MASK, align 8
  %73 = and i64 %71, %72
  %74 = icmp ult i64 %68, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %66
  %76 = load i64*, i64** %6, align 8
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.resource*, %struct.resource** %12, align 8
  %79 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ugt i64 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75, %66
  br label %98

83:                                               ; preds = %75
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @pci_mmap_io, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load %struct.pci_controller*, %struct.pci_controller** %8, align 8
  %89 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = sub i64 %90, %91
  %93 = load i64*, i64** %6, align 8
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, %92
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %87, %83
  %97 = load %struct.resource*, %struct.resource** %12, align 8
  store %struct.resource* %97, %struct.resource** %4, align 8
  br label %102

98:                                               ; preds = %82, %65
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %39

101:                                              ; preds = %39
  store %struct.resource* null, %struct.resource** %4, align 8
  br label %102

102:                                              ; preds = %101, %96, %20
  %103 = load %struct.resource*, %struct.resource** %4, align 8
  ret %struct.resource* %103
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
