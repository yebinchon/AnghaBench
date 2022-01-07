; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_stop_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_stop_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { i32, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }

@TX_CNTL_CSR = common dso_local global i32 0, align 4
@TX_CNTL_CSR_ABORT_TX_AC0 = common dso_local global i32 0, align 4
@TX_CNTL_CSR_ABORT_TX_AC1 = common dso_local global i32 0, align 4
@TX_CNTL_CSR_ABORT_TX_AC2 = common dso_local global i32 0, align 4
@TX_CNTL_CSR_ABORT_TX_AC3 = common dso_local global i32 0, align 4
@TXRX_CSR0 = common dso_local global i32 0, align 4
@TXRX_CSR0_DISABLE_RX = common dso_local global i32 0, align 4
@TXRX_CSR9 = common dso_local global i32 0, align 4
@TXRX_CSR9_TSF_TICKING = common dso_local global i32 0, align 4
@TXRX_CSR9_TBTT_ENABLE = common dso_local global i32 0, align 4
@TXRX_CSR9_BEACON_GEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data_queue*)* @rt61pci_stop_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_stop_queue(%struct.data_queue* %0) #0 {
  %2 = alloca %struct.data_queue*, align 8
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.data_queue* %0, %struct.data_queue** %2, align 8
  %5 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %6 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %5, i32 0, i32 1
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  store %struct.rt2x00_dev* %7, %struct.rt2x00_dev** %3, align 8
  %8 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %9 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %78 [
    i32 130, label %11
    i32 131, label %21
    i32 133, label %31
    i32 132, label %41
    i32 128, label %51
    i32 129, label %61
  ]

11:                                               ; preds = %1
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %13 = load i32, i32* @TX_CNTL_CSR, align 4
  %14 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %12, i32 %13, i32* %4)
  %15 = load i32, i32* @TX_CNTL_CSR_ABORT_TX_AC0, align 4
  %16 = call i32 @rt2x00_set_field32(i32* %4, i32 %15, i32 1)
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %18 = load i32, i32* @TX_CNTL_CSR, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %17, i32 %18, i32 %19)
  br label %79

21:                                               ; preds = %1
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %23 = load i32, i32* @TX_CNTL_CSR, align 4
  %24 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %22, i32 %23, i32* %4)
  %25 = load i32, i32* @TX_CNTL_CSR_ABORT_TX_AC1, align 4
  %26 = call i32 @rt2x00_set_field32(i32* %4, i32 %25, i32 1)
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %28 = load i32, i32* @TX_CNTL_CSR, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %27, i32 %28, i32 %29)
  br label %79

31:                                               ; preds = %1
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %33 = load i32, i32* @TX_CNTL_CSR, align 4
  %34 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %32, i32 %33, i32* %4)
  %35 = load i32, i32* @TX_CNTL_CSR_ABORT_TX_AC2, align 4
  %36 = call i32 @rt2x00_set_field32(i32* %4, i32 %35, i32 1)
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %38 = load i32, i32* @TX_CNTL_CSR, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %37, i32 %38, i32 %39)
  br label %79

41:                                               ; preds = %1
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %43 = load i32, i32* @TX_CNTL_CSR, align 4
  %44 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %42, i32 %43, i32* %4)
  %45 = load i32, i32* @TX_CNTL_CSR_ABORT_TX_AC3, align 4
  %46 = call i32 @rt2x00_set_field32(i32* %4, i32 %45, i32 1)
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %48 = load i32, i32* @TX_CNTL_CSR, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %47, i32 %48, i32 %49)
  br label %79

51:                                               ; preds = %1
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %53 = load i32, i32* @TXRX_CSR0, align 4
  %54 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %52, i32 %53, i32* %4)
  %55 = load i32, i32* @TXRX_CSR0_DISABLE_RX, align 4
  %56 = call i32 @rt2x00_set_field32(i32* %4, i32 %55, i32 1)
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %58 = load i32, i32* @TXRX_CSR0, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %57, i32 %58, i32 %59)
  br label %79

61:                                               ; preds = %1
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %63 = load i32, i32* @TXRX_CSR9, align 4
  %64 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %62, i32 %63, i32* %4)
  %65 = load i32, i32* @TXRX_CSR9_TSF_TICKING, align 4
  %66 = call i32 @rt2x00_set_field32(i32* %4, i32 %65, i32 0)
  %67 = load i32, i32* @TXRX_CSR9_TBTT_ENABLE, align 4
  %68 = call i32 @rt2x00_set_field32(i32* %4, i32 %67, i32 0)
  %69 = load i32, i32* @TXRX_CSR9_BEACON_GEN, align 4
  %70 = call i32 @rt2x00_set_field32(i32* %4, i32 %69, i32 0)
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %72 = load i32, i32* @TXRX_CSR9, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %71, i32 %72, i32 %73)
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %76 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %75, i32 0, i32 0
  %77 = call i32 @tasklet_kill(i32* %76)
  br label %79

78:                                               ; preds = %1
  br label %79

79:                                               ; preds = %78, %61, %51, %41, %31, %21, %11
  ret void
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
