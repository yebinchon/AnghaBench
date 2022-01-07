; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_scc.c_scc_stop_calibrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_scc.c_scc_stop_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_channel = type { i32, i32, i32, i32 }

@TX_OFF = common dso_local global i32 0, align 4
@R6 = common dso_local global i32 0, align 4
@R7 = common dso_local global i32 0, align 4
@FLAG = common dso_local global i32 0, align 4
@RES_EXT_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @scc_stop_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scc_stop_calibrate(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.scc_channel*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.scc_channel*
  store %struct.scc_channel* %6, %struct.scc_channel** %3, align 8
  %7 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %8 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %7, i32 0, i32 0
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %12 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %11, i32 0, i32 3
  %13 = call i32 @del_timer(i32* %12)
  %14 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %15 = load i32, i32* @TX_OFF, align 4
  %16 = call i32 @scc_key_trx(%struct.scc_channel* %14, i32 %15)
  %17 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %18 = load i32, i32* @R6, align 4
  %19 = call i32 @wr(%struct.scc_channel* %17, i32 %18, i32 0)
  %20 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %21 = load i32, i32* @R7, align 4
  %22 = load i32, i32* @FLAG, align 4
  %23 = call i32 @wr(%struct.scc_channel* %20, i32 %21, i32 %22)
  %24 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %25 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RES_EXT_INT, align 4
  %28 = call i32 @Outb(i32 %26, i32 %27)
  %29 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %30 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RES_EXT_INT, align 4
  %33 = call i32 @Outb(i32 %31, i32 %32)
  %34 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %35 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @netif_wake_queue(i32 %36)
  %38 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %39 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %38, i32 0, i32 0
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @scc_key_trx(%struct.scc_channel*, i32) #1

declare dso_local i32 @wr(%struct.scc_channel*, i32, i32) #1

declare dso_local i32 @Outb(i32, i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
