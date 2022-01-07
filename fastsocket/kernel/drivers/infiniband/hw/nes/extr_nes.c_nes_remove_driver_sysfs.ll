; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes.c_nes_remove_driver_sysfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes.c_nes_remove_driver_sysfs.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_driver*)* @nes_remove_driver_sysfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_remove_driver_sysfs(%struct.pci_driver* %0) #0 {
  %2 = alloca %struct.pci_driver*, align 8
  store %struct.pci_driver* %0, %struct.pci_driver** %2, align 8
  %3 = load %struct.pci_driver*, %struct.pci_driver** %2, align 8
  %4 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %3, i32 0, i32 0
  %5 = call i32 @driver_remove_file(i32* %4, i32* @driver_attr_adapter)
  %6 = load %struct.pci_driver*, %struct.pci_driver** %2, align 8
  %7 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %6, i32 0, i32 0
  %8 = call i32 @driver_remove_file(i32* %7, i32* @driver_attr_eeprom_cmd)
  %9 = load %struct.pci_driver*, %struct.pci_driver** %2, align 8
  %10 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %9, i32 0, i32 0
  %11 = call i32 @driver_remove_file(i32* %10, i32* @driver_attr_eeprom_data)
  %12 = load %struct.pci_driver*, %struct.pci_driver** %2, align 8
  %13 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %12, i32 0, i32 0
  %14 = call i32 @driver_remove_file(i32* %13, i32* @driver_attr_flash_cmd)
  %15 = load %struct.pci_driver*, %struct.pci_driver** %2, align 8
  %16 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %15, i32 0, i32 0
  %17 = call i32 @driver_remove_file(i32* %16, i32* @driver_attr_flash_data)
  %18 = load %struct.pci_driver*, %struct.pci_driver** %2, align 8
  %19 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %18, i32 0, i32 0
  %20 = call i32 @driver_remove_file(i32* %19, i32* @driver_attr_nonidx_addr)
  %21 = load %struct.pci_driver*, %struct.pci_driver** %2, align 8
  %22 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %21, i32 0, i32 0
  %23 = call i32 @driver_remove_file(i32* %22, i32* @driver_attr_nonidx_data)
  %24 = load %struct.pci_driver*, %struct.pci_driver** %2, align 8
  %25 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %24, i32 0, i32 0
  %26 = call i32 @driver_remove_file(i32* %25, i32* @driver_attr_idx_addr)
  %27 = load %struct.pci_driver*, %struct.pci_driver** %2, align 8
  %28 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %27, i32 0, i32 0
  %29 = call i32 @driver_remove_file(i32* %28, i32* @driver_attr_idx_data)
  %30 = load %struct.pci_driver*, %struct.pci_driver** %2, align 8
  %31 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %30, i32 0, i32 0
  %32 = call i32 @driver_remove_file(i32* %31, i32* @driver_attr_wqm_quanta)
  ret void
}

declare dso_local i32 @driver_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
