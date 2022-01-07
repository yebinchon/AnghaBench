; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_driver_gige.c_ssb_gige_pcibios_plat_dev_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_driver_gige.c_ssb_gige_pcibios_plat_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { i32 }
%struct.pci_dev = type { i64, %struct.resource*, %struct.TYPE_3__* }
%struct.resource = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.ssb_gige = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_PCI_FIXED = common dso_local global i32 0, align 4
@PCI_INTERRUPT_LINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_gige_pcibios_plat_dev_init(%struct.ssb_device* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssb_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.ssb_gige*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.ssb_device* %0, %struct.ssb_device** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %8 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %9 = call %struct.ssb_gige* @ssb_get_drvdata(%struct.ssb_device* %8)
  store %struct.ssb_gige* %9, %struct.ssb_gige** %6, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.ssb_gige*, %struct.ssb_gige** %6, align 8
  %16 = getelementptr inbounds %struct.ssb_gige, %struct.ssb_gige* %15, i32 0, i32 1
  %17 = icmp ne i32* %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %60

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 1
  %24 = load %struct.resource*, %struct.resource** %23, align 8
  %25 = getelementptr inbounds %struct.resource, %struct.resource* %24, i64 0
  store %struct.resource* %25, %struct.resource** %7, align 8
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = load i32, i32* @IORESOURCE_PCI_FIXED, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.resource*, %struct.resource** %7, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ssb_gige*, %struct.ssb_gige** %6, align 8
  %32 = getelementptr inbounds %struct.ssb_gige, %struct.ssb_gige* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.resource*, %struct.resource** %7, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ssb_gige*, %struct.ssb_gige** %6, align 8
  %38 = getelementptr inbounds %struct.ssb_gige, %struct.ssb_gige* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.resource*, %struct.resource** %7, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ssb_gige*, %struct.ssb_gige** %6, align 8
  %44 = getelementptr inbounds %struct.ssb_gige, %struct.ssb_gige* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.resource*, %struct.resource** %7, align 8
  %48 = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %50 = call i64 @ssb_mips_irq(%struct.ssb_device* %49)
  %51 = add nsw i64 %50, 2
  %52 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %55 = load i32, i32* @PCI_INTERRUPT_LINE, align 4
  %56 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @pci_write_config_byte(%struct.pci_dev* %54, i32 %55, i64 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %21, %18
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.ssb_gige* @ssb_get_drvdata(%struct.ssb_device*) #1

declare dso_local i64 @ssb_mips_irq(%struct.ssb_device*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
