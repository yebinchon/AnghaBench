; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800pci.c_rt2800pci_enable_radio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800pci.c_rt2800pci_enable_radio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@EIO = common dso_local global i32 0, align 4
@H2M_MAILBOX_STATUS = common dso_local global i32 0, align 4
@H2M_MAILBOX_CID = common dso_local global i32 0, align 4
@MCU_SLEEP = common dso_local global i32 0, align 4
@TOKEN_RADIO_OFF = common dso_local global i32 0, align 4
@MCU_WAKEUP = common dso_local global i32 0, align 4
@TOKEN_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2800pci_enable_radio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800pci_enable_radio(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %6 = call i32 @rt2800_wait_wpdma_ready(%struct.rt2x00_dev* %5)
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %8 = call i32 @rt2800pci_init_queues(%struct.rt2x00_dev* %7)
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %43

14:                                               ; preds = %1
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %16 = call i32 @rt2800_enable_radio(%struct.rt2x00_dev* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %43

21:                                               ; preds = %14
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %23 = load i32, i32* @H2M_MAILBOX_STATUS, align 4
  %24 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %22, i32 %23, i32 -1)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = load i32, i32* @H2M_MAILBOX_CID, align 4
  %27 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %25, i32 %26, i32 -1)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %29 = load i32, i32* @MCU_SLEEP, align 4
  %30 = load i32, i32* @TOKEN_RADIO_OFF, align 4
  %31 = call i32 @rt2800_mcu_request(%struct.rt2x00_dev* %28, i32 %29, i32 %30, i32 255, i32 2)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %33 = load i32, i32* @TOKEN_RADIO_OFF, align 4
  %34 = call i32 @rt2800pci_mcu_status(%struct.rt2x00_dev* %32, i32 %33)
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %36 = load i32, i32* @MCU_WAKEUP, align 4
  %37 = load i32, i32* @TOKEN_WAKEUP, align 4
  %38 = call i32 @rt2800_mcu_request(%struct.rt2x00_dev* %35, i32 %36, i32 %37, i32 0, i32 0)
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %40 = load i32, i32* @TOKEN_WAKEUP, align 4
  %41 = call i32 @rt2800pci_mcu_status(%struct.rt2x00_dev* %39, i32 %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %21, %19, %11
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @rt2800_wait_wpdma_ready(%struct.rt2x00_dev*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2800pci_init_queues(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_enable_radio(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_mcu_request(%struct.rt2x00_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @rt2800pci_mcu_status(%struct.rt2x00_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
