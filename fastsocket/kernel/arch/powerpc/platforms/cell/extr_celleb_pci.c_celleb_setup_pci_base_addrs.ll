; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_celleb_pci.c_celleb_setup_pci_base_addrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_celleb_pci.c_celleb_setup_pci_base_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_controller = type { i32 }
%struct.celleb_pci_resource = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCI_BASE_ADDRESS_MEM_TYPE_64 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_4 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_5 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_2 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_3 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_1 = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_controller*, i32, i32, i32)* @celleb_setup_pci_base_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @celleb_setup_pci_base_addrs(%struct.pci_controller* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pci_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.celleb_pci_resource*, align 8
  store %struct.pci_controller* %0, %struct.pci_controller** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.pci_controller*, %struct.pci_controller** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i8* @get_fake_config_start(%struct.pci_controller* %12, i32 %13, i32 %14)
  store i8* %15, i8** %10, align 8
  %16 = load %struct.pci_controller*, %struct.pci_controller** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.celleb_pci_resource* @get_resource_start(%struct.pci_controller* %16, i32 %17, i32 %18)
  store %struct.celleb_pci_resource* %19, %struct.celleb_pci_resource** %11, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load %struct.celleb_pci_resource*, %struct.celleb_pci_resource** %11, align 8
  %24 = icmp ne %struct.celleb_pci_resource* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %4
  br label %113

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %103 [
    i32 3, label %28
    i32 2, label %53
    i32 1, label %78
  ]

28:                                               ; preds = %26
  %29 = load %struct.celleb_pci_resource*, %struct.celleb_pci_resource** %11, align 8
  %30 = getelementptr inbounds %struct.celleb_pci_resource, %struct.celleb_pci_resource* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, -16
  %36 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_64, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* @PCI_BASE_ADDRESS_4, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @celleb_config_write_fake(i8* %38, i32 %39, i32 4, i32 %40)
  %42 = load %struct.celleb_pci_resource*, %struct.celleb_pci_resource** %11, align 8
  %43 = getelementptr inbounds %struct.celleb_pci_resource, %struct.celleb_pci_resource* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 32
  store i32 %48, i32* %9, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* @PCI_BASE_ADDRESS_5, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @celleb_config_write_fake(i8* %49, i32 %50, i32 4, i32 %51)
  br label %53

53:                                               ; preds = %26, %28
  %54 = load %struct.celleb_pci_resource*, %struct.celleb_pci_resource** %11, align 8
  %55 = getelementptr inbounds %struct.celleb_pci_resource, %struct.celleb_pci_resource* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, -16
  %61 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_64, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %9, align 4
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* @PCI_BASE_ADDRESS_2, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @celleb_config_write_fake(i8* %63, i32 %64, i32 4, i32 %65)
  %67 = load %struct.celleb_pci_resource*, %struct.celleb_pci_resource** %11, align 8
  %68 = getelementptr inbounds %struct.celleb_pci_resource, %struct.celleb_pci_resource* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 32
  store i32 %73, i32* %9, align 4
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* @PCI_BASE_ADDRESS_3, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @celleb_config_write_fake(i8* %74, i32 %75, i32 4, i32 %76)
  br label %78

78:                                               ; preds = %26, %53
  %79 = load %struct.celleb_pci_resource*, %struct.celleb_pci_resource** %11, align 8
  %80 = getelementptr inbounds %struct.celleb_pci_resource, %struct.celleb_pci_resource* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, -16
  %86 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_64, align 4
  %87 = or i32 %85, %86
  store i32 %87, i32* %9, align 4
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @celleb_config_write_fake(i8* %88, i32 %89, i32 4, i32 %90)
  %92 = load %struct.celleb_pci_resource*, %struct.celleb_pci_resource** %11, align 8
  %93 = getelementptr inbounds %struct.celleb_pci_resource, %struct.celleb_pci_resource* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 32
  store i32 %98, i32* %9, align 4
  %99 = load i8*, i8** %10, align 8
  %100 = load i32, i32* @PCI_BASE_ADDRESS_1, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @celleb_config_write_fake(i8* %99, i32 %100, i32 4, i32 %101)
  br label %103

103:                                              ; preds = %26, %78
  %104 = load i32, i32* @PCI_COMMAND_IO, align 4
  %105 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %108 = or i32 %106, %107
  store i32 %108, i32* %9, align 4
  %109 = load i8*, i8** %10, align 8
  %110 = load i32, i32* @PCI_COMMAND, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @celleb_config_write_fake(i8* %109, i32 %110, i32 2, i32 %111)
  br label %113

113:                                              ; preds = %103, %25
  ret void
}

declare dso_local i8* @get_fake_config_start(%struct.pci_controller*, i32, i32) #1

declare dso_local %struct.celleb_pci_resource* @get_resource_start(%struct.pci_controller*, i32, i32) #1

declare dso_local i32 @celleb_config_write_fake(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
