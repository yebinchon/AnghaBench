; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_rtas_pci.c_rtas_pci_write_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_rtas_pci.c_rtas_pci_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.device_node = type { %struct.device_node*, %struct.device_node* }
%struct.pci_dn = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @rtas_pci_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtas_pci_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.device_node*, align 8
  %13 = alloca %struct.device_node*, align 8
  %14 = alloca %struct.pci_dn*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %16 = call %struct.device_node* @pci_bus_to_OF_node(%struct.pci_bus* %15)
  store %struct.device_node* %16, %struct.device_node** %12, align 8
  %17 = load %struct.device_node*, %struct.device_node** %12, align 8
  %18 = getelementptr inbounds %struct.device_node, %struct.device_node* %17, i32 0, i32 1
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %13, align 8
  br label %20

20:                                               ; preds = %45, %5
  %21 = load %struct.device_node*, %struct.device_node** %13, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %23, label %49

23:                                               ; preds = %20
  %24 = load %struct.device_node*, %struct.device_node** %13, align 8
  %25 = call %struct.pci_dn* @PCI_DN(%struct.device_node* %24)
  store %struct.pci_dn* %25, %struct.pci_dn** %14, align 8
  %26 = load %struct.pci_dn*, %struct.pci_dn** %14, align 8
  %27 = icmp ne %struct.pci_dn* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load %struct.pci_dn*, %struct.pci_dn** %14, align 8
  %30 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.device_node*, %struct.device_node** %13, align 8
  %36 = call i64 @of_device_is_available(%struct.device_node* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.pci_dn*, %struct.pci_dn** %14, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @rtas_write_config(%struct.pci_dn* %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  br label %51

44:                                               ; preds = %34, %28, %23
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.device_node*, %struct.device_node** %13, align 8
  %47 = getelementptr inbounds %struct.device_node, %struct.device_node* %46, i32 0, i32 0
  %48 = load %struct.device_node*, %struct.device_node** %47, align 8
  store %struct.device_node* %48, %struct.device_node** %13, align 8
  br label %20

49:                                               ; preds = %20
  %50 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %38
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local %struct.device_node* @pci_bus_to_OF_node(%struct.pci_bus*) #1

declare dso_local %struct.pci_dn* @PCI_DN(%struct.device_node*) #1

declare dso_local i64 @of_device_is_available(%struct.device_node*) #1

declare dso_local i32 @rtas_write_config(%struct.pci_dn*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
