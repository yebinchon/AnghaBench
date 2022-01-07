; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_eepromregister_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_eepromregister_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeprom_93cx6 = type { i32, i32, i32, i32, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }

@E2PROM_CSR = common dso_local global i32 0, align 4
@E2PROM_CSR_DATA_IN = common dso_local global i32 0, align 4
@E2PROM_CSR_DATA_OUT = common dso_local global i32 0, align 4
@E2PROM_CSR_DATA_CLOCK = common dso_local global i32 0, align 4
@E2PROM_CSR_CHIP_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eeprom_93cx6*)* @rt61pci_eepromregister_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_eepromregister_read(%struct.eeprom_93cx6* %0) #0 {
  %2 = alloca %struct.eeprom_93cx6*, align 8
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.eeprom_93cx6* %0, %struct.eeprom_93cx6** %2, align 8
  %5 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %6 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %5, i32 0, i32 4
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  store %struct.rt2x00_dev* %7, %struct.rt2x00_dev** %3, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %9 = load i32, i32* @E2PROM_CSR, align 4
  %10 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %8, i32 %9, i32* %4)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @E2PROM_CSR_DATA_IN, align 4
  %13 = call i32 @rt2x00_get_field32(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %19 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @E2PROM_CSR_DATA_OUT, align 4
  %22 = call i32 @rt2x00_get_field32(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %28 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @E2PROM_CSR_DATA_CLOCK, align 4
  %31 = call i32 @rt2x00_get_field32(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %37 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @E2PROM_CSR_CHIP_SELECT, align 4
  %40 = call i32 @rt2x00_get_field32(i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %46 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  ret void
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
