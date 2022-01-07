; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800pci.c_rt2800pci_kick_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800pci.c_rt2800pci_kick_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { i32, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }
%struct.queue_entry = type { i32 }

@Q_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data_queue*)* @rt2800pci_kick_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800pci_kick_queue(%struct.data_queue* %0) #0 {
  %2 = alloca %struct.data_queue*, align 8
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.queue_entry*, align 8
  store %struct.data_queue* %0, %struct.data_queue** %2, align 8
  %5 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %6 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %5, i32 0, i32 1
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  store %struct.rt2x00_dev* %7, %struct.rt2x00_dev** %3, align 8
  %8 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %9 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %34 [
    i32 129, label %11
    i32 130, label %11
    i32 132, label %11
    i32 131, label %11
    i32 128, label %24
  ]

11:                                               ; preds = %1, %1, %1, %1
  %12 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %13 = load i32, i32* @Q_INDEX, align 4
  %14 = call %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue* %12, i32 %13)
  store %struct.queue_entry* %14, %struct.queue_entry** %4, align 8
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %16 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %17 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @TX_CTX_IDX(i32 %18)
  %20 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %21 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %15, i32 %19, i32 %22)
  br label %35

24:                                               ; preds = %1
  %25 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %26 = load i32, i32* @Q_INDEX, align 4
  %27 = call %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue* %25, i32 %26)
  store %struct.queue_entry* %27, %struct.queue_entry** %4, align 8
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %29 = call i32 @TX_CTX_IDX(i32 5)
  %30 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %31 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %28, i32 %29, i32 %32)
  br label %35

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %34, %24, %11
  ret void
}

declare dso_local %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue*, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @TX_CTX_IDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
