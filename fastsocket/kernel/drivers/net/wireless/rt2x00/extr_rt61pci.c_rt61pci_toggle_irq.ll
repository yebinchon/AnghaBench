; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_toggle_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_toggle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, i32, i32, i32 }

@STATE_RADIO_IRQ_OFF = common dso_local global i32 0, align 4
@STATE_RADIO_IRQ_ON = common dso_local global i32 0, align 4
@INT_SOURCE_CSR = common dso_local global i32 0, align 4
@MCU_INT_SOURCE_CSR = common dso_local global i32 0, align 4
@INT_MASK_CSR = common dso_local global i32 0, align 4
@INT_MASK_CSR_TXDONE = common dso_local global i32 0, align 4
@INT_MASK_CSR_RXDONE = common dso_local global i32 0, align 4
@INT_MASK_CSR_BEACON_DONE = common dso_local global i32 0, align 4
@INT_MASK_CSR_ENABLE_MITIGATION = common dso_local global i32 0, align 4
@INT_MASK_CSR_MITIGATION_PERIOD = common dso_local global i32 0, align 4
@MCU_INT_MASK_CSR = common dso_local global i32 0, align 4
@MCU_INT_MASK_CSR_0 = common dso_local global i32 0, align 4
@MCU_INT_MASK_CSR_1 = common dso_local global i32 0, align 4
@MCU_INT_MASK_CSR_2 = common dso_local global i32 0, align 4
@MCU_INT_MASK_CSR_3 = common dso_local global i32 0, align 4
@MCU_INT_MASK_CSR_4 = common dso_local global i32 0, align 4
@MCU_INT_MASK_CSR_5 = common dso_local global i32 0, align 4
@MCU_INT_MASK_CSR_6 = common dso_local global i32 0, align 4
@MCU_INT_MASK_CSR_7 = common dso_local global i32 0, align 4
@MCU_INT_MASK_CSR_TWAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, i32)* @rt61pci_toggle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_toggle_irq(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @STATE_RADIO_IRQ_OFF, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @STATE_RADIO_IRQ_ON, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %17 = load i32, i32* @INT_SOURCE_CSR, align 4
  %18 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %16, i32 %17, i32* %6)
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %20 = load i32, i32* @INT_SOURCE_CSR, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %19, i32 %20, i32 %21)
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %24 = load i32, i32* @MCU_INT_SOURCE_CSR, align 4
  %25 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %23, i32 %24, i32* %6)
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %27 = load i32, i32* @MCU_INT_SOURCE_CSR, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %15, %2
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %32 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %31, i32 0, i32 4
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %36 = load i32, i32* @INT_MASK_CSR, align 4
  %37 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %35, i32 %36, i32* %6)
  %38 = load i32, i32* @INT_MASK_CSR_TXDONE, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @rt2x00_set_field32(i32* %6, i32 %38, i32 %39)
  %41 = load i32, i32* @INT_MASK_CSR_RXDONE, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @rt2x00_set_field32(i32* %6, i32 %41, i32 %42)
  %44 = load i32, i32* @INT_MASK_CSR_BEACON_DONE, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @rt2x00_set_field32(i32* %6, i32 %44, i32 %45)
  %47 = load i32, i32* @INT_MASK_CSR_ENABLE_MITIGATION, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @rt2x00_set_field32(i32* %6, i32 %47, i32 %48)
  %50 = load i32, i32* @INT_MASK_CSR_MITIGATION_PERIOD, align 4
  %51 = call i32 @rt2x00_set_field32(i32* %6, i32 %50, i32 255)
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %53 = load i32, i32* @INT_MASK_CSR, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %52, i32 %53, i32 %54)
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %57 = load i32, i32* @MCU_INT_MASK_CSR, align 4
  %58 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %56, i32 %57, i32* %6)
  %59 = load i32, i32* @MCU_INT_MASK_CSR_0, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @rt2x00_set_field32(i32* %6, i32 %59, i32 %60)
  %62 = load i32, i32* @MCU_INT_MASK_CSR_1, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @rt2x00_set_field32(i32* %6, i32 %62, i32 %63)
  %65 = load i32, i32* @MCU_INT_MASK_CSR_2, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @rt2x00_set_field32(i32* %6, i32 %65, i32 %66)
  %68 = load i32, i32* @MCU_INT_MASK_CSR_3, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @rt2x00_set_field32(i32* %6, i32 %68, i32 %69)
  %71 = load i32, i32* @MCU_INT_MASK_CSR_4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @rt2x00_set_field32(i32* %6, i32 %71, i32 %72)
  %74 = load i32, i32* @MCU_INT_MASK_CSR_5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @rt2x00_set_field32(i32* %6, i32 %74, i32 %75)
  %77 = load i32, i32* @MCU_INT_MASK_CSR_6, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @rt2x00_set_field32(i32* %6, i32 %77, i32 %78)
  %80 = load i32, i32* @MCU_INT_MASK_CSR_7, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @rt2x00_set_field32(i32* %6, i32 %80, i32 %81)
  %83 = load i32, i32* @MCU_INT_MASK_CSR_TWAKEUP, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @rt2x00_set_field32(i32* %6, i32 %83, i32 %84)
  %86 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %87 = load i32, i32* @MCU_INT_MASK_CSR, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %86, i32 %87, i32 %88)
  %90 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %91 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %90, i32 0, i32 4
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @STATE_RADIO_IRQ_OFF, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %30
  %98 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %99 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %98, i32 0, i32 3
  %100 = call i32 @tasklet_kill(i32* %99)
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %102 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %101, i32 0, i32 2
  %103 = call i32 @tasklet_kill(i32* %102)
  %104 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %105 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %104, i32 0, i32 1
  %106 = call i32 @tasklet_kill(i32* %105)
  %107 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %108 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %107, i32 0, i32 0
  %109 = call i32 @tasklet_kill(i32* %108)
  br label %110

110:                                              ; preds = %97, %30
  ret void
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
