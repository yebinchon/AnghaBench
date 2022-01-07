; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_scc.c_t_tail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_scc.c_t_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_channel = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@TX_OFF = common dso_local global i32 0, align 4
@TXS_TIMEOUT = common dso_local global i64 0, align 8
@TXS_WAIT = common dso_local global i64 0, align 8
@t_dwait = common dso_local global i32 0, align 4
@TXS_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @t_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t_tail(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.scc_channel*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.scc_channel*
  store %struct.scc_channel* %6, %struct.scc_channel** %3, align 8
  %7 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %8 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %7, i32 0, i32 3
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %12 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %11, i32 0, i32 4
  %13 = call i32 @del_timer(i32* %12)
  %14 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %15 = load i32, i32* @TX_OFF, align 4
  %16 = call i32 @scc_key_trx(%struct.scc_channel* %14, i32 %15)
  %17 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %18 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %17, i32 0, i32 3
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %22 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TXS_TIMEOUT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %1
  %28 = load i64, i64* @TXS_WAIT, align 8
  %29 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %30 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  %32 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %33 = load i32, i32* @t_dwait, align 4
  %34 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %35 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %37, 100
  %39 = call i32 @scc_start_tx_timer(%struct.scc_channel* %32, i32 %33, i32 %38)
  br label %49

40:                                               ; preds = %1
  %41 = load i64, i64* @TXS_IDLE, align 8
  %42 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %43 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  %45 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %46 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @netif_wake_queue(i32 %47)
  br label %49

49:                                               ; preds = %40, %27
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @scc_key_trx(%struct.scc_channel*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @scc_start_tx_timer(%struct.scc_channel*, i32, i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
