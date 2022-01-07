; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_pci_bind.c_acpi_pci_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_pci_bind.c_acpi_pci_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.acpi_device.0*)*, i32 }
%struct.acpi_device.0 = type opaque
%struct.pci_bus = type { i32 }
%struct.pci_dev = type { %struct.pci_bus*, %struct.pci_bus*, i32 }

@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Device %04x:%02x:%02x.%d is a PCI bridge\0A\00", align 1
@acpi_pci_unbind = common dso_local global i32 0, align 4
@METHOD_NAME__PRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_pci_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pci_bind(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %8 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.pci_dev* @acpi_get_pci_dev(i32 %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %7, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %13 = icmp ne %struct.pci_dev* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %79

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  %18 = load %struct.pci_bus*, %struct.pci_bus** %17, align 8
  %19 = icmp ne %struct.pci_bus* %18, null
  br i1 %19, label %20, label %47

20:                                               ; preds = %15
  %21 = load i32, i32* @ACPI_DB_INFO, align 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load %struct.pci_bus*, %struct.pci_bus** %23, align 8
  %25 = call i32 @pci_domain_nr(%struct.pci_bus* %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load %struct.pci_bus*, %struct.pci_bus** %27, align 8
  %29 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @PCI_SLOT(i32 %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @PCI_FUNC(i32 %37)
  %39 = call i32 @ACPI_DEBUG_PRINT(i32 %38)
  %40 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %41 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 (%struct.acpi_device.0*)* bitcast (i32 (%struct.acpi_device*)* @acpi_pci_bind to i32 (%struct.acpi_device.0*)*), i32 (%struct.acpi_device.0*)** %42, align 8
  %43 = load i32, i32* @acpi_pci_unbind, align 4
  %44 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %45 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 8
  br label %47

47:                                               ; preds = %20, %15
  %48 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %49 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @METHOD_NAME__PRT, align 4
  %52 = call i32 @acpi_get_handle(i32 %50, i32 %51, i32* %5)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @ACPI_FAILURE(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %76

57:                                               ; preds = %47
  %58 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 1
  %60 = load %struct.pci_bus*, %struct.pci_bus** %59, align 8
  %61 = icmp ne %struct.pci_bus* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 1
  %65 = load %struct.pci_bus*, %struct.pci_bus** %64, align 8
  store %struct.pci_bus* %65, %struct.pci_bus** %6, align 8
  br label %70

66:                                               ; preds = %57
  %67 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 0
  %69 = load %struct.pci_bus*, %struct.pci_bus** %68, align 8
  store %struct.pci_bus* %69, %struct.pci_bus** %6, align 8
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %72 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %75 = call i32 @acpi_pci_irq_add_prt(i32 %73, %struct.pci_bus* %74)
  br label %76

76:                                               ; preds = %70, %56
  %77 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %78 = call i32 @pci_dev_put(%struct.pci_dev* %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %76, %14
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.pci_dev* @acpi_get_pci_dev(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @acpi_get_handle(i32, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_pci_irq_add_prt(i32, %struct.pci_bus*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
