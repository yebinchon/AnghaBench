; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_scc.c_scc_discard_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_scc.c_scc_discard_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_channel = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scc_channel*)* @scc_discard_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scc_discard_buffers(%struct.scc_channel* %0) #0 {
  %2 = alloca %struct.scc_channel*, align 8
  %3 = alloca i64, align 8
  store %struct.scc_channel* %0, %struct.scc_channel** %2, align 8
  %4 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %5 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %9 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %14 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @dev_kfree_skb(i32* %15)
  %17 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %18 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %17, i32 0, i32 2
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %12, %1
  br label %20

20:                                               ; preds = %26, %19
  %21 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %22 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %21, i32 0, i32 1
  %23 = call i32 @skb_queue_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %28 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %27, i32 0, i32 1
  %29 = call i32* @skb_dequeue(i32* %28)
  %30 = call i32 @dev_kfree_skb(i32* %29)
  br label %20

31:                                               ; preds = %20
  %32 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %33 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %32, i32 0, i32 0
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32* @skb_dequeue(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
