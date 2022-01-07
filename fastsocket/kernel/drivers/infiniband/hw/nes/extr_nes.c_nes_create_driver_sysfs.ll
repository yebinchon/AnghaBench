; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes.c_nes_create_driver_sysfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes.c_nes_create_driver_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_driver = type { i32 }

@driver_attr_adapter = common dso_local global i32 0, align 4
@driver_attr_eeprom_cmd = common dso_local global i32 0, align 4
@driver_attr_eeprom_data = common dso_local global i32 0, align 4
@driver_attr_flash_cmd = common dso_local global i32 0, align 4
@driver_attr_flash_data = common dso_local global i32 0, align 4
@driver_attr_nonidx_addr = common dso_local global i32 0, align 4
@driver_attr_nonidx_data = common dso_local global i32 0, align 4
@driver_attr_idx_addr = common dso_local global i32 0, align 4
@driver_attr_idx_data = common dso_local global i32 0, align 4
@driver_attr_wqm_quanta = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_driver*)* @nes_create_driver_sysfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_create_driver_sysfs(%struct.pci_driver* %0) #0 {
  %2 = alloca %struct.pci_driver*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_driver* %0, %struct.pci_driver** %2, align 8
  %4 = load %struct.pci_driver*, %struct.pci_driver** %2, align 8
  %5 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %4, i32 0, i32 0
  %6 = call i32 @driver_create_file(i32* %5, i32* @driver_attr_adapter)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.pci_driver*, %struct.pci_driver** %2, align 8
  %8 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %7, i32 0, i32 0
  %9 = call i32 @driver_create_file(i32* %8, i32* @driver_attr_eeprom_cmd)
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load %struct.pci_driver*, %struct.pci_driver** %2, align 8
  %13 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %12, i32 0, i32 0
  %14 = call i32 @driver_create_file(i32* %13, i32* @driver_attr_eeprom_data)
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load %struct.pci_driver*, %struct.pci_driver** %2, align 8
  %18 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %17, i32 0, i32 0
  %19 = call i32 @driver_create_file(i32* %18, i32* @driver_attr_flash_cmd)
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.pci_driver*, %struct.pci_driver** %2, align 8
  %23 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %22, i32 0, i32 0
  %24 = call i32 @driver_create_file(i32* %23, i32* @driver_attr_flash_data)
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load %struct.pci_driver*, %struct.pci_driver** %2, align 8
  %28 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %27, i32 0, i32 0
  %29 = call i32 @driver_create_file(i32* %28, i32* @driver_attr_nonidx_addr)
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load %struct.pci_driver*, %struct.pci_driver** %2, align 8
  %33 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %32, i32 0, i32 0
  %34 = call i32 @driver_create_file(i32* %33, i32* @driver_attr_nonidx_data)
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load %struct.pci_driver*, %struct.pci_driver** %2, align 8
  %38 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %37, i32 0, i32 0
  %39 = call i32 @driver_create_file(i32* %38, i32* @driver_attr_idx_addr)
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = load %struct.pci_driver*, %struct.pci_driver** %2, align 8
  %43 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %42, i32 0, i32 0
  %44 = call i32 @driver_create_file(i32* %43, i32* @driver_attr_idx_data)
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load %struct.pci_driver*, %struct.pci_driver** %2, align 8
  %48 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %47, i32 0, i32 0
  %49 = call i32 @driver_create_file(i32* %48, i32* @driver_attr_wqm_quanta)
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @driver_create_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
