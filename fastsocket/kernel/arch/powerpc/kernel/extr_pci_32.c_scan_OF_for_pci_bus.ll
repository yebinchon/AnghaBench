; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_pci_32.c_scan_OF_for_pci_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_pci_32.c_scan_OF_for_pci_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.pci_bus = type { %struct.TYPE_2__*, %struct.pci_bus* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_controller = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (%struct.pci_bus*)* @scan_OF_for_pci_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @scan_OF_for_pci_bus(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.pci_controller*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %3, align 8
  %7 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %8 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp eq %struct.TYPE_2__* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %13 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %12, i32 0, i32 1
  %14 = load %struct.pci_bus*, %struct.pci_bus** %13, align 8
  %15 = icmp eq %struct.pci_bus* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %11, %1
  %17 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %18 = call %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus* %17)
  store %struct.pci_controller* %18, %struct.pci_controller** %6, align 8
  %19 = load %struct.pci_controller*, %struct.pci_controller** %6, align 8
  %20 = icmp eq %struct.pci_controller* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store %struct.device_node* null, %struct.device_node** %2, align 8
  br label %46

22:                                               ; preds = %16
  %23 = load %struct.pci_controller*, %struct.pci_controller** %6, align 8
  %24 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.device_node* @of_node_get(i32 %25)
  store %struct.device_node* %26, %struct.device_node** %2, align 8
  br label %46

27:                                               ; preds = %11
  %28 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %29 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %28, i32 0, i32 1
  %30 = load %struct.pci_bus*, %struct.pci_bus** %29, align 8
  %31 = call %struct.device_node* @scan_OF_for_pci_bus(%struct.pci_bus* %30)
  store %struct.device_node* %31, %struct.device_node** %4, align 8
  %32 = load %struct.device_node*, %struct.device_node** %4, align 8
  %33 = icmp eq %struct.device_node* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store %struct.device_node* null, %struct.device_node** %2, align 8
  br label %46

35:                                               ; preds = %27
  %36 = load %struct.device_node*, %struct.device_node** %4, align 8
  %37 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %38 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.device_node* @scan_OF_for_pci_dev(%struct.device_node* %36, i32 %41)
  store %struct.device_node* %42, %struct.device_node** %5, align 8
  %43 = load %struct.device_node*, %struct.device_node** %4, align 8
  %44 = call i32 @of_node_put(%struct.device_node* %43)
  %45 = load %struct.device_node*, %struct.device_node** %5, align 8
  store %struct.device_node* %45, %struct.device_node** %2, align 8
  br label %46

46:                                               ; preds = %35, %34, %22, %21
  %47 = load %struct.device_node*, %struct.device_node** %2, align 8
  ret %struct.device_node* %47
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus*) #1

declare dso_local %struct.device_node* @of_node_get(i32) #1

declare dso_local %struct.device_node* @scan_OF_for_pci_dev(%struct.device_node*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
