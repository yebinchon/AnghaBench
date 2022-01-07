; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_probe_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_probe_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32 }

@SOFT_RESET_CSR = common dso_local global i32 0, align 4
@MAC_CSR13 = common dso_local global i32 0, align 4
@MAC_CSR13_DIR5 = common dso_local global i32 0, align 4
@CAPABILITY_CONTROL_FILTERS = common dso_local global i32 0, align 4
@REQUIRE_FIRMWARE = common dso_local global i32 0, align 4
@REQUIRE_DMA = common dso_local global i32 0, align 4
@modparam_nohwcrypt = common dso_local global i32 0, align 4
@CAPABILITY_HW_CRYPTO = common dso_local global i32 0, align 4
@CAPABILITY_LINK_TUNING = common dso_local global i32 0, align 4
@DEFAULT_RSSI_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt61pci_probe_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt61pci_probe_hw(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %6 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %7 = load i32, i32* @SOFT_RESET_CSR, align 4
  %8 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %6, i32 %7, i32 7)
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %10 = call i32 @rt61pci_validate_eeprom(%struct.rt2x00_dev* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %66

15:                                               ; preds = %1
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %17 = call i32 @rt61pci_init_eeprom(%struct.rt2x00_dev* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %66

22:                                               ; preds = %15
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %24 = load i32, i32* @MAC_CSR13, align 4
  %25 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %23, i32 %24, i32* %5)
  %26 = load i32, i32* @MAC_CSR13_DIR5, align 4
  %27 = call i32 @rt2x00_set_field32(i32* %5, i32 %26, i32 1)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %29 = load i32, i32* @MAC_CSR13, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %28, i32 %29, i32 %30)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %33 = call i32 @rt61pci_probe_hw_mode(%struct.rt2x00_dev* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %66

38:                                               ; preds = %22
  %39 = load i32, i32* @CAPABILITY_CONTROL_FILTERS, align 4
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %41 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %40, i32 0, i32 1
  %42 = call i32 @__set_bit(i32 %39, i32* %41)
  %43 = load i32, i32* @REQUIRE_FIRMWARE, align 4
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %45 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %44, i32 0, i32 1
  %46 = call i32 @__set_bit(i32 %43, i32* %45)
  %47 = load i32, i32* @REQUIRE_DMA, align 4
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %49 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %48, i32 0, i32 1
  %50 = call i32 @__set_bit(i32 %47, i32* %49)
  %51 = load i32, i32* @modparam_nohwcrypt, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %38
  %54 = load i32, i32* @CAPABILITY_HW_CRYPTO, align 4
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %56 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %55, i32 0, i32 1
  %57 = call i32 @__set_bit(i32 %54, i32* %56)
  br label %58

58:                                               ; preds = %53, %38
  %59 = load i32, i32* @CAPABILITY_LINK_TUNING, align 4
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %61 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %60, i32 0, i32 1
  %62 = call i32 @__set_bit(i32 %59, i32* %61)
  %63 = load i32, i32* @DEFAULT_RSSI_OFFSET, align 4
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %65 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %58, %36, %20, %13
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt61pci_validate_eeprom(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt61pci_init_eeprom(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt61pci_probe_hw_mode(%struct.rt2x00_dev*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
