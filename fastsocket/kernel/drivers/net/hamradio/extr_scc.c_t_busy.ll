; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_scc.c_t_busy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_scc.c_t_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_channel = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@TXS_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @t_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t_busy(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.scc_channel*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.scc_channel*
  store %struct.scc_channel* %5, %struct.scc_channel** %3, align 8
  %6 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %7 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %6, i32 0, i32 2
  %8 = call i32 @del_timer(i32* %7)
  %9 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %10 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @netif_stop_queue(i32 %11)
  %13 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %14 = call i32 @scc_discard_buffers(%struct.scc_channel* %13)
  %15 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %16 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @TXS_IDLE, align 4
  %21 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %22 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %25 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @netif_wake_queue(i32 %26)
  ret void
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @scc_discard_buffers(%struct.scc_channel*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
