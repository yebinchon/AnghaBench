; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, i32, i32, i32, i32 }

@MCU_INT_SOURCE_CSR = common dso_local global i32 0, align 4
@INT_SOURCE_CSR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@DEVICE_STATE_ENABLED_RADIO = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@INT_SOURCE_CSR_RXDONE = common dso_local global i32 0, align 4
@INT_SOURCE_CSR_TXDONE = common dso_local global i32 0, align 4
@INT_SOURCE_CSR_BEACON_DONE = common dso_local global i32 0, align 4
@MCU_INT_SOURCE_CSR_TWAKEUP = common dso_local global i32 0, align 4
@INT_MASK_CSR = common dso_local global i32 0, align 4
@MCU_INT_MASK_CSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rt61pci_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt61pci_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rt2x00_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.rt2x00_dev*
  store %struct.rt2x00_dev* %12, %struct.rt2x00_dev** %6, align 8
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %14 = load i32, i32* @MCU_INT_SOURCE_CSR, align 4
  %15 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %13, i32 %14, i32* %7)
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %17 = load i32, i32* @MCU_INT_SOURCE_CSR, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %16, i32 %17, i32 %18)
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %21 = load i32, i32* @INT_SOURCE_CSR, align 4
  %22 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %20, i32 %21, i32* %9)
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %24 = load i32, i32* @INT_SOURCE_CSR, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %23, i32 %24, i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @IRQ_NONE, align 4
  store i32 %33, i32* %3, align 4
  br label %108

34:                                               ; preds = %29, %2
  %35 = load i32, i32* @DEVICE_STATE_ENABLED_RADIO, align 4
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %37 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %36, i32 0, i32 5
  %38 = call i32 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %41, i32* %3, align 4
  br label %108

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @INT_SOURCE_CSR_RXDONE, align 4
  %45 = call i64 @rt2x00_get_field32(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %49 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %48, i32 0, i32 4
  %50 = call i32 @tasklet_schedule(i32* %49)
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @INT_SOURCE_CSR_TXDONE, align 4
  %54 = call i64 @rt2x00_get_field32(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %58 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %57, i32 0, i32 3
  %59 = call i32 @tasklet_schedule(i32* %58)
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @INT_SOURCE_CSR_BEACON_DONE, align 4
  %63 = call i64 @rt2x00_get_field32(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %67 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %66, i32 0, i32 2
  %68 = call i32 @tasklet_hi_schedule(i32* %67)
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @MCU_INT_SOURCE_CSR_TWAKEUP, align 4
  %72 = call i64 @rt2x00_get_field32(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %76 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %75, i32 0, i32 1
  %77 = call i32 @tasklet_schedule(i32* %76)
  br label %78

78:                                               ; preds = %74, %69
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %8, align 4
  %81 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %82 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %81, i32 0, i32 0
  %83 = call i32 @spin_lock(i32* %82)
  %84 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %85 = load i32, i32* @INT_MASK_CSR, align 4
  %86 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %84, i32 %85, i32* %9)
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %91 = load i32, i32* @INT_MASK_CSR, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %90, i32 %91, i32 %92)
  %94 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %95 = load i32, i32* @MCU_INT_MASK_CSR, align 4
  %96 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %94, i32 %95, i32* %9)
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %101 = load i32, i32* @MCU_INT_MASK_CSR, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %100, i32 %101, i32 %102)
  %104 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %105 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %104, i32 0, i32 0
  %106 = call i32 @spin_unlock(i32* %105)
  %107 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %78, %40, %32
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
