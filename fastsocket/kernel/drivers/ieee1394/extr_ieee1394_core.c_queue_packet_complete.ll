; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_queue_packet_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_queue_packet_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_packet = type { i32, i32*, i64 }

@pending_packets_lock = common dso_local global i32 0, align 4
@hpsbpkt_queue = common dso_local global i32 0, align 4
@khpsbpkt_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_packet*)* @queue_packet_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_packet_complete(%struct.hpsb_packet* %0) #0 {
  %2 = alloca %struct.hpsb_packet*, align 8
  %3 = alloca i64, align 8
  store %struct.hpsb_packet* %0, %struct.hpsb_packet** %2, align 8
  %4 = load %struct.hpsb_packet*, %struct.hpsb_packet** %2, align 8
  %5 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.hpsb_packet*, %struct.hpsb_packet** %2, align 8
  %10 = call i32 @hpsb_free_packet(%struct.hpsb_packet* %9)
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.hpsb_packet*, %struct.hpsb_packet** %2, align 8
  %13 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @spin_lock_irqsave(i32* @pending_packets_lock, i64 %17)
  %19 = load %struct.hpsb_packet*, %struct.hpsb_packet** %2, align 8
  %20 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %19, i32 0, i32 0
  %21 = call i32 @list_add_tail(i32* %20, i32* @hpsbpkt_queue)
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* @pending_packets_lock, i64 %22)
  %24 = load i32, i32* @khpsbpkt_thread, align 4
  %25 = call i32 @wake_up_process(i32 %24)
  br label %26

26:                                               ; preds = %16, %11
  br label %27

27:                                               ; preds = %26, %8
  ret void
}

declare dso_local i32 @hpsb_free_packet(%struct.hpsb_packet*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
