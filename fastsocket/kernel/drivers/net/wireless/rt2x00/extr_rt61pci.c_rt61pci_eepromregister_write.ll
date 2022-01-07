; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_eepromregister_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_eepromregister_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeprom_93cx6 = type { i32, i32, i32, i32, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }

@E2PROM_CSR_DATA_IN = common dso_local global i32 0, align 4
@E2PROM_CSR_DATA_OUT = common dso_local global i32 0, align 4
@E2PROM_CSR_DATA_CLOCK = common dso_local global i32 0, align 4
@E2PROM_CSR_CHIP_SELECT = common dso_local global i32 0, align 4
@E2PROM_CSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eeprom_93cx6*)* @rt61pci_eepromregister_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_eepromregister_write(%struct.eeprom_93cx6* %0) #0 {
  %2 = alloca %struct.eeprom_93cx6*, align 8
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.eeprom_93cx6* %0, %struct.eeprom_93cx6** %2, align 8
  %5 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %6 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %5, i32 0, i32 4
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  store %struct.rt2x00_dev* %7, %struct.rt2x00_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @E2PROM_CSR_DATA_IN, align 4
  %9 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %10 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @rt2x00_set_field32(i32* %4, i32 %8, i32 %15)
  %17 = load i32, i32* @E2PROM_CSR_DATA_OUT, align 4
  %18 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %19 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @rt2x00_set_field32(i32* %4, i32 %17, i32 %24)
  %26 = load i32, i32* @E2PROM_CSR_DATA_CLOCK, align 4
  %27 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %28 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @rt2x00_set_field32(i32* %4, i32 %26, i32 %33)
  %35 = load i32, i32* @E2PROM_CSR_CHIP_SELECT, align 4
  %36 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %37 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @rt2x00_set_field32(i32* %4, i32 %35, i32 %42)
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %45 = load i32, i32* @E2PROM_CSR, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %44, i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
