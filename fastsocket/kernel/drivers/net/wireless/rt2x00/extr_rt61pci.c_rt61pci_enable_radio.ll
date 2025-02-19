; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_enable_radio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_enable_radio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@EIO = common dso_local global i32 0, align 4
@RX_CNTL_CSR = common dso_local global i32 0, align 4
@RX_CNTL_CSR_ENABLE_RX_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt61pci_enable_radio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt61pci_enable_radio(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %6 = call i64 @rt61pci_init_queues(%struct.rt2x00_dev* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %10 = call i64 @rt61pci_init_registers(%struct.rt2x00_dev* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %14 = call i64 @rt61pci_init_bbp(%struct.rt2x00_dev* %13)
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %12, %8, %1
  %17 = phi i1 [ true, %8 ], [ true, %1 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %34

24:                                               ; preds = %16
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = load i32, i32* @RX_CNTL_CSR, align 4
  %27 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %25, i32 %26, i32* %4)
  %28 = load i32, i32* @RX_CNTL_CSR_ENABLE_RX_DMA, align 4
  %29 = call i32 @rt2x00_set_field32(i32* %4, i32 %28, i32 1)
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %31 = load i32, i32* @RX_CNTL_CSR, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %30, i32 %31, i32 %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %24, %21
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @rt61pci_init_queues(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt61pci_init_registers(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt61pci_init_bbp(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
