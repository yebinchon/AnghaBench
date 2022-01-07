; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpi_pcihp.c_pci_get_hp_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpi_pcihp.c_pci_get_hp_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pci_bus* }
%struct.pci_bus = type { %struct.pci_bus* }
%struct.hotplug_params = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_get_hp_params(%struct.pci_dev* %0, %struct.hotplug_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.hotplug_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pci_bus*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.hotplug_params* %1, %struct.hotplug_params** %5, align 8
  store i32* null, i32** %7, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  store %struct.pci_bus* %12, %struct.pci_bus** %9, align 8
  br label %13

13:                                               ; preds = %23, %2
  %14 = load %struct.pci_bus*, %struct.pci_bus** %9, align 8
  %15 = icmp ne %struct.pci_bus* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load %struct.pci_bus*, %struct.pci_bus** %9, align 8
  %18 = call i32* @acpi_pci_get_bridge_handle(%struct.pci_bus* %17)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %27

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.pci_bus*, %struct.pci_bus** %9, align 8
  %25 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %24, i32 0, i32 0
  %26 = load %struct.pci_bus*, %struct.pci_bus** %25, align 8
  store %struct.pci_bus* %26, %struct.pci_bus** %9, align 8
  br label %13

27:                                               ; preds = %21, %13
  br label %28

28:                                               ; preds = %59, %27
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %61

31:                                               ; preds = %28
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.hotplug_params*, %struct.hotplug_params** %5, align 8
  %34 = call i32 @acpi_run_hpx(i32* %32, %struct.hotplug_params* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @ACPI_SUCCESS(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %64

39:                                               ; preds = %31
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.hotplug_params*, %struct.hotplug_params** %5, align 8
  %42 = call i32 @acpi_run_hpp(i32* %40, %struct.hotplug_params* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @ACPI_SUCCESS(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %64

47:                                               ; preds = %39
  %48 = load i32*, i32** %7, align 8
  %49 = call i64 @acpi_is_root_bridge(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %61

52:                                               ; preds = %47
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @acpi_get_parent(i32* %53, i32** %8)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @ACPI_FAILURE(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %61

59:                                               ; preds = %52
  %60 = load i32*, i32** %8, align 8
  store i32* %60, i32** %7, align 8
  br label %28

61:                                               ; preds = %58, %51, %28
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %46, %38
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32* @acpi_pci_get_bridge_handle(%struct.pci_bus*) #1

declare dso_local i32 @acpi_run_hpx(i32*, %struct.hotplug_params*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_run_hpp(i32*, %struct.hotplug_params*) #1

declare dso_local i64 @acpi_is_root_bridge(i32*) #1

declare dso_local i32 @acpi_get_parent(i32*, i32**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
