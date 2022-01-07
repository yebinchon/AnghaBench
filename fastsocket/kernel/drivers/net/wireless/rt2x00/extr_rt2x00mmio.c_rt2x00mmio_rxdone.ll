; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00mmio.c_rt2x00mmio_rxdone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00mmio.c_rt2x00mmio_rxdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_5__*, %struct.data_queue* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.queue_entry*)* }
%struct.queue_entry = type { %struct.TYPE_6__*, i32, %struct.queue_entry_priv_mmio* }
%struct.TYPE_6__ = type { i32 }
%struct.queue_entry_priv_mmio = type { i32 }
%struct.data_queue = type { i32 }
%struct.skb_frame_desc = type { i32, i32 }

@Q_INDEX = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2x00mmio_rxdone(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.data_queue*, align 8
  %4 = alloca %struct.queue_entry*, align 8
  %5 = alloca %struct.queue_entry_priv_mmio*, align 8
  %6 = alloca %struct.skb_frame_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %9 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %8, i32 0, i32 1
  %10 = load %struct.data_queue*, %struct.data_queue** %9, align 8
  store %struct.data_queue* %10, %struct.data_queue** %3, align 8
  store i32 16, i32* %7, align 4
  br label %11

11:                                               ; preds = %33, %1
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %57

15:                                               ; preds = %11
  %16 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %17 = load i32, i32* @Q_INDEX, align 4
  %18 = call %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue* %16, i32 %17)
  store %struct.queue_entry* %18, %struct.queue_entry** %4, align 8
  %19 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %20 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %19, i32 0, i32 2
  %21 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %20, align 8
  store %struct.queue_entry_priv_mmio* %21, %struct.queue_entry_priv_mmio** %5, align 8
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %23 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64 (%struct.queue_entry*)*, i64 (%struct.queue_entry*)** %27, align 8
  %29 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %30 = call i64 %28(%struct.queue_entry* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %15
  br label %57

33:                                               ; preds = %15
  %34 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %35 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.skb_frame_desc* @get_skb_frame_desc(i32 %36)
  store %struct.skb_frame_desc* %37, %struct.skb_frame_desc** %6, align 8
  %38 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %5, align 8
  %39 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %6, align 8
  %42 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %44 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %6, align 8
  %49 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %51 = call i32 @rt2x00lib_dmastart(%struct.queue_entry* %50)
  %52 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %53 = call i32 @rt2x00lib_dmadone(%struct.queue_entry* %52)
  %54 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %55 = load i32, i32* @GFP_ATOMIC, align 4
  %56 = call i32 @rt2x00lib_rxdone(%struct.queue_entry* %54, i32 %55)
  br label %11

57:                                               ; preds = %32, %11
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  ret i32 %61
}

declare dso_local %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue*, i32) #1

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(i32) #1

declare dso_local i32 @rt2x00lib_dmastart(%struct.queue_entry*) #1

declare dso_local i32 @rt2x00lib_dmadone(%struct.queue_entry*) #1

declare dso_local i32 @rt2x00lib_rxdone(%struct.queue_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
