; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_validate_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_validate_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.eeprom_93cx6 = type { i64, i64, i64, i64, i32, i32, i32, %struct.rt2x00_dev* }

@CSR21 = common dso_local global i32 0, align 4
@rt2400pci_eepromregister_read = common dso_local global i32 0, align 4
@rt2400pci_eepromregister_write = common dso_local global i32 0, align 4
@CSR21_TYPE_93C46 = common dso_local global i32 0, align 4
@PCI_EEPROM_WIDTH_93C46 = common dso_local global i32 0, align 4
@PCI_EEPROM_WIDTH_93C66 = common dso_local global i32 0, align 4
@EEPROM_BASE = common dso_local global i32 0, align 4
@EEPROM_SIZE = common dso_local global i32 0, align 4
@EEPROM_MAC_ADDR_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"MAC: %pM\0A\00", align 1
@EEPROM_ANTENNA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid EEPROM data detected\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2400pci_validate_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2400pci_validate_eeprom(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.eeprom_93cx6, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %9 = load i32, i32* @CSR21, align 4
  %10 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %8, i32 %9, i32* %5)
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %12 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %4, i32 0, i32 7
  store %struct.rt2x00_dev* %11, %struct.rt2x00_dev** %12, align 8
  %13 = load i32, i32* @rt2400pci_eepromregister_read, align 4
  %14 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %4, i32 0, i32 6
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* @rt2400pci_eepromregister_write, align 4
  %16 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %4, i32 0, i32 5
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @CSR21_TYPE_93C46, align 4
  %19 = call i64 @rt2x00_get_field32(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @PCI_EEPROM_WIDTH_93C46, align 4
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @PCI_EEPROM_WIDTH_93C66, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %4, i32 0, i32 4
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %4, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %4, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %4, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %4, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @EEPROM_BASE, align 4
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %34 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @EEPROM_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = udiv i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i32 @eeprom_93cx6_multiread(%struct.eeprom_93cx6* %4, i32 %32, i32 %35, i32 %39)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %42 = load i32, i32* @EEPROM_MAC_ADDR_0, align 4
  %43 = call i32* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %41, i32 %42)
  store i32* %43, i32** %7, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @is_valid_ether_addr(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %25
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @eth_random_addr(i32* %48)
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %51)
  br label %53

53:                                               ; preds = %47, %25
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %55 = load i32, i32* @EEPROM_ANTENNA, align 4
  %56 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %54, i32 %55, i32* %6)
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 65535
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %61 = call i32 @rt2x00_err(%struct.rt2x00_dev* %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %65

64:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %59
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i64 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @eeprom_93cx6_multiread(%struct.eeprom_93cx6*, i32, i32, i32) #1

declare dso_local i32* @rt2x00_eeprom_addr(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @eth_random_addr(i32*) #1

declare dso_local i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev*, i8*, i32*) #1

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
