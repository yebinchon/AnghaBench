; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_glue.c_add_host_bridge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_glue.c_add_host_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpiphp_bridge = type { i32, i32, i32*, i32 }
%struct.acpi_pci_root = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@BRIDGE_TYPE_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @add_host_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_host_bridge(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.acpiphp_bridge*, align 8
  %4 = alloca %struct.acpi_pci_root*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.acpi_pci_root* @acpi_pci_find_root(i32* %5)
  store %struct.acpi_pci_root* %6, %struct.acpi_pci_root** %4, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.acpiphp_bridge* @kzalloc(i32 24, i32 %7)
  store %struct.acpiphp_bridge* %8, %struct.acpiphp_bridge** %3, align 8
  %9 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %10 = icmp eq %struct.acpiphp_bridge* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %29

12:                                               ; preds = %1
  %13 = load i32, i32* @BRIDGE_TYPE_HOST, align 4
  %14 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %15 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %18 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %17, i32 0, i32 2
  store i32* %16, i32** %18, align 8
  %19 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_pci_root, %struct.acpi_pci_root* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %23 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %25 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %3, align 8
  %28 = call i32 @init_bridge_misc(%struct.acpiphp_bridge* %27)
  br label %29

29:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.acpi_pci_root* @acpi_pci_find_root(i32*) #1

declare dso_local %struct.acpiphp_bridge* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_bridge_misc(%struct.acpiphp_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
