; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci-acpi.c_acpi_pci_propagate_wakeup_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci-acpi.c_acpi_pci_propagate_wakeup_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32*, %struct.pci_bus*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_bus*, i32)* @acpi_pci_propagate_wakeup_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_pci_propagate_wakeup_enable(%struct.pci_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %7

7:                                                ; preds = %27, %2
  %8 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %9 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %8, i32 0, i32 1
  %10 = load %struct.pci_bus*, %struct.pci_bus** %9, align 8
  %11 = icmp ne %struct.pci_bus* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %7
  %13 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %14 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %5, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @acpi_pm_device_sleep_wake(i32* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = call i64 @pci_is_pcie(%struct.pci_dev* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %12
  br label %42

27:                                               ; preds = %22
  %28 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %29 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %28, i32 0, i32 1
  %30 = load %struct.pci_bus*, %struct.pci_bus** %29, align 8
  store %struct.pci_bus* %30, %struct.pci_bus** %3, align 8
  br label %7

31:                                               ; preds = %7
  %32 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %33 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %38 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @acpi_pm_device_sleep_wake(i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %26, %36, %31
  ret void
}

declare dso_local i32 @acpi_pm_device_sleep_wake(i32*, i32) #1

declare dso_local i64 @pci_is_pcie(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
