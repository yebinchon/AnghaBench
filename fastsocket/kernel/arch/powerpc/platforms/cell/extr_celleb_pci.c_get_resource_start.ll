; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_celleb_pci.c_get_resource_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_celleb_pci.c_get_resource_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.celleb_pci_resource = type { i32 }
%struct.pci_controller = type { %struct.celleb_pci_private* }
%struct.celleb_pci_private = type { %struct.celleb_pci_resource*** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.celleb_pci_resource* (%struct.pci_controller*, i32, i32)* @get_resource_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.celleb_pci_resource* @get_resource_start(%struct.pci_controller* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.celleb_pci_resource*, align 8
  %5 = alloca %struct.pci_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.celleb_pci_private*, align 8
  store %struct.pci_controller* %0, %struct.pci_controller** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.pci_controller*, %struct.pci_controller** %5, align 8
  %10 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %9, i32 0, i32 0
  %11 = load %struct.celleb_pci_private*, %struct.celleb_pci_private** %10, align 8
  store %struct.celleb_pci_private* %11, %struct.celleb_pci_private** %8, align 8
  %12 = load %struct.celleb_pci_private*, %struct.celleb_pci_private** %8, align 8
  %13 = icmp eq %struct.celleb_pci_private* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.celleb_pci_resource* null, %struct.celleb_pci_resource** %4, align 8
  br label %27

15:                                               ; preds = %3
  %16 = load %struct.celleb_pci_private*, %struct.celleb_pci_private** %8, align 8
  %17 = getelementptr inbounds %struct.celleb_pci_private, %struct.celleb_pci_private* %16, i32 0, i32 0
  %18 = load %struct.celleb_pci_resource***, %struct.celleb_pci_resource**** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.celleb_pci_resource**, %struct.celleb_pci_resource*** %18, i64 %20
  %22 = load %struct.celleb_pci_resource**, %struct.celleb_pci_resource*** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.celleb_pci_resource*, %struct.celleb_pci_resource** %22, i64 %24
  %26 = load %struct.celleb_pci_resource*, %struct.celleb_pci_resource** %25, align 8
  store %struct.celleb_pci_resource* %26, %struct.celleb_pci_resource** %4, align 8
  br label %27

27:                                               ; preds = %15, %14
  %28 = load %struct.celleb_pci_resource*, %struct.celleb_pci_resource** %4, align 8
  ret %struct.celleb_pci_resource* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
