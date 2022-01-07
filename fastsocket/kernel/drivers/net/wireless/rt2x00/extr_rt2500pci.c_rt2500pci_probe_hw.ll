; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500pci.c_rt2500pci_probe_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500pci.c_rt2500pci_probe_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32 }

@GPIOCSR = common dso_local global i32 0, align 4
@GPIOCSR_DIR0 = common dso_local global i32 0, align 4
@REQUIRE_ATIM_QUEUE = common dso_local global i32 0, align 4
@REQUIRE_DMA = common dso_local global i32 0, align 4
@REQUIRE_SW_SEQNO = common dso_local global i32 0, align 4
@DEFAULT_RSSI_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2500pci_probe_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2500pci_probe_hw(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %6 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %7 = call i32 @rt2500pci_validate_eeprom(%struct.rt2x00_dev* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %51

12:                                               ; preds = %1
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %14 = call i32 @rt2500pci_init_eeprom(%struct.rt2x00_dev* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %51

19:                                               ; preds = %12
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %21 = load i32, i32* @GPIOCSR, align 4
  %22 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %20, i32 %21, i32* %5)
  %23 = load i32, i32* @GPIOCSR_DIR0, align 4
  %24 = call i32 @rt2x00_set_field32(i32* %5, i32 %23, i32 1)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = load i32, i32* @GPIOCSR, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %25, i32 %26, i32 %27)
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %30 = call i32 @rt2500pci_probe_hw_mode(%struct.rt2x00_dev* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %51

35:                                               ; preds = %19
  %36 = load i32, i32* @REQUIRE_ATIM_QUEUE, align 4
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %38 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %37, i32 0, i32 1
  %39 = call i32 @__set_bit(i32 %36, i32* %38)
  %40 = load i32, i32* @REQUIRE_DMA, align 4
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %42 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %41, i32 0, i32 1
  %43 = call i32 @__set_bit(i32 %40, i32* %42)
  %44 = load i32, i32* @REQUIRE_SW_SEQNO, align 4
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %46 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %45, i32 0, i32 1
  %47 = call i32 @__set_bit(i32 %44, i32* %46)
  %48 = load i32, i32* @DEFAULT_RSSI_OFFSET, align 4
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %50 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %35, %33, %17, %10
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @rt2500pci_validate_eeprom(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2500pci_init_eeprom(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2500pci_probe_hw_mode(%struct.rt2x00_dev*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
