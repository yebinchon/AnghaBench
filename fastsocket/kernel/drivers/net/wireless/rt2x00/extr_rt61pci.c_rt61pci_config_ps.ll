; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_config_ps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_config_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00lib_conf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@STATE_SLEEP = common dso_local global i32 0, align 4
@STATE_AWAKE = common dso_local global i32 0, align 4
@MAC_CSR11 = common dso_local global i32 0, align 4
@MAC_CSR11_DELAY_AFTER_TBCN = common dso_local global i32 0, align 4
@MAC_CSR11_TBCN_BEFORE_WAKEUP = common dso_local global i32 0, align 4
@MAC_CSR11_WAKEUP_LATENCY = common dso_local global i32 0, align 4
@MAC_CSR11_AUTOWAKE = common dso_local global i32 0, align 4
@SOFT_RESET_CSR = common dso_local global i32 0, align 4
@IO_CNTL_CSR = common dso_local global i32 0, align 4
@PCI_USEC_CSR = common dso_local global i32 0, align 4
@MCU_SLEEP = common dso_local global i32 0, align 4
@MCU_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rt2x00lib_conf*)* @rt61pci_config_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_config_ps(%struct.rt2x00_dev* %0, %struct.rt2x00lib_conf* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.rt2x00lib_conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.rt2x00lib_conf* %1, %struct.rt2x00lib_conf** %4, align 8
  %7 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %4, align 8
  %8 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @STATE_SLEEP, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @STATE_AWAKE, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @STATE_SLEEP, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %68

24:                                               ; preds = %19
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = load i32, i32* @MAC_CSR11, align 4
  %27 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %25, i32 %26, i32* %6)
  %28 = load i32, i32* @MAC_CSR11_DELAY_AFTER_TBCN, align 4
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %30 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 10
  %33 = call i32 @rt2x00_set_field32(i32* %6, i32 %28, i32 %32)
  %34 = load i32, i32* @MAC_CSR11_TBCN_BEFORE_WAKEUP, align 4
  %35 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %4, align 8
  %36 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = call i32 @rt2x00_set_field32(i32* %6, i32 %34, i32 %40)
  %42 = load i32, i32* @MAC_CSR11_WAKEUP_LATENCY, align 4
  %43 = call i32 @rt2x00_set_field32(i32* %6, i32 %42, i32 5)
  %44 = load i32, i32* @MAC_CSR11_AUTOWAKE, align 4
  %45 = call i32 @rt2x00_set_field32(i32* %6, i32 %44, i32 0)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %47 = load i32, i32* @MAC_CSR11, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %46, i32 %47, i32 %48)
  %50 = load i32, i32* @MAC_CSR11_AUTOWAKE, align 4
  %51 = call i32 @rt2x00_set_field32(i32* %6, i32 %50, i32 1)
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %53 = load i32, i32* @MAC_CSR11, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %52, i32 %53, i32 %54)
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %57 = load i32, i32* @SOFT_RESET_CSR, align 4
  %58 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %56, i32 %57, i32 5)
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %60 = load i32, i32* @IO_CNTL_CSR, align 4
  %61 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %59, i32 %60, i32 28)
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %63 = load i32, i32* @PCI_USEC_CSR, align 4
  %64 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %62, i32 %63, i32 96)
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %66 = load i32, i32* @MCU_SLEEP, align 4
  %67 = call i32 @rt61pci_mcu_request(%struct.rt2x00_dev* %65, i32 %66, i32 255, i32 0, i32 0)
  br label %96

68:                                               ; preds = %19
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %70 = load i32, i32* @MAC_CSR11, align 4
  %71 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %69, i32 %70, i32* %6)
  %72 = load i32, i32* @MAC_CSR11_DELAY_AFTER_TBCN, align 4
  %73 = call i32 @rt2x00_set_field32(i32* %6, i32 %72, i32 0)
  %74 = load i32, i32* @MAC_CSR11_TBCN_BEFORE_WAKEUP, align 4
  %75 = call i32 @rt2x00_set_field32(i32* %6, i32 %74, i32 0)
  %76 = load i32, i32* @MAC_CSR11_AUTOWAKE, align 4
  %77 = call i32 @rt2x00_set_field32(i32* %6, i32 %76, i32 0)
  %78 = load i32, i32* @MAC_CSR11_WAKEUP_LATENCY, align 4
  %79 = call i32 @rt2x00_set_field32(i32* %6, i32 %78, i32 0)
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %81 = load i32, i32* @MAC_CSR11, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %80, i32 %81, i32 %82)
  %84 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %85 = load i32, i32* @SOFT_RESET_CSR, align 4
  %86 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %84, i32 %85, i32 7)
  %87 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %88 = load i32, i32* @IO_CNTL_CSR, align 4
  %89 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %87, i32 %88, i32 24)
  %90 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %91 = load i32, i32* @PCI_USEC_CSR, align 4
  %92 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %90, i32 %91, i32 32)
  %93 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %94 = load i32, i32* @MCU_WAKEUP, align 4
  %95 = call i32 @rt61pci_mcu_request(%struct.rt2x00_dev* %93, i32 %94, i32 255, i32 0, i32 0)
  br label %96

96:                                               ; preds = %68, %24
  ret void
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt61pci_mcu_request(%struct.rt2x00_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
