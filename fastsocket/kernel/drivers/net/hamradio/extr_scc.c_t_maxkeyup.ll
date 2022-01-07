; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_scc.c_t_maxkeyup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_scc.c_t_maxkeyup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_channel = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@R1 = common dso_local global i32 0, align 4
@TxINT_ENAB = common dso_local global i32 0, align 4
@R15 = common dso_local global i32 0, align 4
@TxUIE = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@RES_Tx_P = common dso_local global i32 0, align 4
@TXS_TIMEOUT = common dso_local global i32 0, align 4
@t_tail = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @t_maxkeyup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t_maxkeyup(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.scc_channel*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.scc_channel*
  store %struct.scc_channel* %6, %struct.scc_channel** %3, align 8
  %7 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %8 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %7, i32 0, i32 2
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %12 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @netif_stop_queue(i32 %13)
  %15 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %16 = call i32 @scc_discard_buffers(%struct.scc_channel* %15)
  %17 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %18 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %17, i32 0, i32 4
  %19 = call i32 @del_timer(i32* %18)
  %20 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %21 = load i32, i32* @R1, align 4
  %22 = load i32, i32* @TxINT_ENAB, align 4
  %23 = call i32 @cl(%struct.scc_channel* %20, i32 %21, i32 %22)
  %24 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %25 = load i32, i32* @R15, align 4
  %26 = load i32, i32* @TxUIE, align 4
  %27 = call i32 @cl(%struct.scc_channel* %24, i32 %25, i32 %26)
  %28 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %29 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @R0, align 4
  %32 = load i32, i32* @RES_Tx_P, align 4
  %33 = call i32 @OutReg(i32 %30, i32 %31, i32 %32)
  %34 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %35 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %34, i32 0, i32 2
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %39 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @TXS_TIMEOUT, align 4
  %44 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %45 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %48 = load i32, i32* @t_tail, align 4
  %49 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %50 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @scc_start_tx_timer(%struct.scc_channel* %47, i32 %48, i32 %52)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @scc_discard_buffers(%struct.scc_channel*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @cl(%struct.scc_channel*, i32, i32) #1

declare dso_local i32 @OutReg(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @scc_start_tx_timer(%struct.scc_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
