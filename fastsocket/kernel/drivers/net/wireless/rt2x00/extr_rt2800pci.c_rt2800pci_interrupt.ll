; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800pci.c_rt2800pci_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800pci.c_rt2800pci_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, i32, i32, i32, i32 }

@INT_SOURCE_CSR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@DEVICE_STATE_ENABLED_RADIO = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@INT_SOURCE_CSR_TX_FIFO_STATUS = common dso_local global i32 0, align 4
@INT_MASK_CSR_TX_FIFO_STATUS = common dso_local global i32 0, align 4
@INT_SOURCE_CSR_PRE_TBTT = common dso_local global i32 0, align 4
@INT_SOURCE_CSR_TBTT = common dso_local global i32 0, align 4
@INT_SOURCE_CSR_RX_DONE = common dso_local global i32 0, align 4
@INT_SOURCE_CSR_AUTO_WAKEUP = common dso_local global i32 0, align 4
@INT_MASK_CSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rt2800pci_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800pci_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rt2x00_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.rt2x00_dev*
  store %struct.rt2x00_dev* %10, %struct.rt2x00_dev** %6, align 8
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %12 = load i32, i32* @INT_SOURCE_CSR, align 4
  %13 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %11, i32 %12, i32* %7)
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %15 = load i32, i32* @INT_SOURCE_CSR, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %14, i32 %15, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %96

22:                                               ; preds = %2
  %23 = load i32, i32* @DEVICE_STATE_ENABLED_RADIO, align 4
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %25 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %24, i32 0, i32 5
  %26 = call i32 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %29, i32* %3, align 4
  br label %96

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = xor i32 %31, -1
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @INT_SOURCE_CSR_TX_FIFO_STATUS, align 4
  %35 = call i64 @rt2x00_get_field32(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %39 = call i32 @rt2800pci_txstatus_interrupt(%struct.rt2x00_dev* %38)
  %40 = load i32, i32* @INT_MASK_CSR_TX_FIFO_STATUS, align 4
  %41 = call i32 @rt2x00_set_field32(i32* %8, i32 %40, i32 1)
  br label %42

42:                                               ; preds = %37, %30
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @INT_SOURCE_CSR_PRE_TBTT, align 4
  %45 = call i64 @rt2x00_get_field32(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %49 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %48, i32 0, i32 4
  %50 = call i32 @tasklet_hi_schedule(i32* %49)
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @INT_SOURCE_CSR_TBTT, align 4
  %54 = call i64 @rt2x00_get_field32(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %58 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %57, i32 0, i32 3
  %59 = call i32 @tasklet_hi_schedule(i32* %58)
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @INT_SOURCE_CSR_RX_DONE, align 4
  %63 = call i64 @rt2x00_get_field32(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %67 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %66, i32 0, i32 2
  %68 = call i32 @tasklet_schedule(i32* %67)
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @INT_SOURCE_CSR_AUTO_WAKEUP, align 4
  %72 = call i64 @rt2x00_get_field32(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %76 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %75, i32 0, i32 1
  %77 = call i32 @tasklet_schedule(i32* %76)
  br label %78

78:                                               ; preds = %74, %69
  %79 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %80 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %79, i32 0, i32 0
  %81 = call i32 @spin_lock(i32* %80)
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %83 = load i32, i32* @INT_MASK_CSR, align 4
  %84 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %82, i32 %83, i32* %7)
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %89 = load i32, i32* @INT_MASK_CSR, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %88, i32 %89, i32 %90)
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %93 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock(i32* %93)
  %95 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %78, %28, %20
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @rt2800pci_txstatus_interrupt(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
