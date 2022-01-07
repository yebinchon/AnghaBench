; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_scc.c_scc_net_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_scc.c_scc_net_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.scc_channel = type { i32, i32, i32, i32 }

@R1 = common dso_local global i32 0, align 4
@R3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @scc_net_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scc_net_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.scc_channel*, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.scc_channel*
  store %struct.scc_channel* %8, %struct.scc_channel** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @netif_stop_queue(%struct.net_device* %9)
  %11 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %12 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %11, i32 0, i32 2
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %16 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @Outb(i32 %17, i32 0)
  %19 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %20 = load i32, i32* @R1, align 4
  %21 = call i32 @wr(%struct.scc_channel* %19, i32 %20, i32 0)
  %22 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %23 = load i32, i32* @R3, align 4
  %24 = call i32 @wr(%struct.scc_channel* %22, i32 %23, i32 0)
  %25 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %26 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %25, i32 0, i32 2
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %30 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %29, i32 0, i32 1
  %31 = call i32 @del_timer_sync(i32* %30)
  %32 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %33 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %32, i32 0, i32 0
  %34 = call i32 @del_timer_sync(i32* %33)
  %35 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %36 = call i32 @scc_discard_buffers(%struct.scc_channel* %35)
  ret i32 0
}

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @Outb(i32, i32) #1

declare dso_local i32 @wr(%struct.scc_channel*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @scc_discard_buffers(%struct.scc_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
