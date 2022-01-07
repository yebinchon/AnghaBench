; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800pci.c_rt2800pci_stop_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800pci.c_rt2800pci_stop_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { i32, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32, i32 }

@MAC_SYS_CTRL = common dso_local global i32 0, align 4
@MAC_SYS_CTRL_ENABLE_RX = common dso_local global i32 0, align 4
@BCN_TIME_CFG = common dso_local global i32 0, align 4
@BCN_TIME_CFG_TSF_TICKING = common dso_local global i32 0, align 4
@BCN_TIME_CFG_TBTT_ENABLE = common dso_local global i32 0, align 4
@BCN_TIME_CFG_BEACON_GEN = common dso_local global i32 0, align 4
@INT_TIMER_EN = common dso_local global i32 0, align 4
@INT_TIMER_EN_PRE_TBTT_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data_queue*)* @rt2800pci_stop_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800pci_stop_queue(%struct.data_queue* %0) #0 {
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
  switch i32 %10, label %50 [
    i32 128, label %11
    i32 129, label %21
  ]

11:                                               ; preds = %1
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %13 = load i32, i32* @MAC_SYS_CTRL, align 4
  %14 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %12, i32 %13, i32* %4)
  %15 = load i32, i32* @MAC_SYS_CTRL_ENABLE_RX, align 4
  %16 = call i32 @rt2x00_set_field32(i32* %4, i32 %15, i32 0)
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %18 = load i32, i32* @MAC_SYS_CTRL, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %17, i32 %18, i32 %19)
  br label %51

21:                                               ; preds = %1
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %23 = load i32, i32* @BCN_TIME_CFG, align 4
  %24 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %22, i32 %23, i32* %4)
  %25 = load i32, i32* @BCN_TIME_CFG_TSF_TICKING, align 4
  %26 = call i32 @rt2x00_set_field32(i32* %4, i32 %25, i32 0)
  %27 = load i32, i32* @BCN_TIME_CFG_TBTT_ENABLE, align 4
  %28 = call i32 @rt2x00_set_field32(i32* %4, i32 %27, i32 0)
  %29 = load i32, i32* @BCN_TIME_CFG_BEACON_GEN, align 4
  %30 = call i32 @rt2x00_set_field32(i32* %4, i32 %29, i32 0)
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %32 = load i32, i32* @BCN_TIME_CFG, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %31, i32 %32, i32 %33)
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %36 = load i32, i32* @INT_TIMER_EN, align 4
  %37 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %35, i32 %36, i32* %4)
  %38 = load i32, i32* @INT_TIMER_EN_PRE_TBTT_TIMER, align 4
  %39 = call i32 @rt2x00_set_field32(i32* %4, i32 %38, i32 0)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %41 = load i32, i32* @INT_TIMER_EN, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %40, i32 %41, i32 %42)
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %45 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %44, i32 0, i32 1
  %46 = call i32 @tasklet_kill(i32* %45)
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %48 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %47, i32 0, i32 0
  %49 = call i32 @tasklet_kill(i32* %48)
  br label %51

50:                                               ; preds = %1
  br label %51

51:                                               ; preds = %50, %21, %11
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
