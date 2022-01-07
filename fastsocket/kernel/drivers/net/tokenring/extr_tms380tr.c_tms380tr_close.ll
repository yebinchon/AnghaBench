; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tokenring/extr_tms380tr.c_tms380tr_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tokenring/extr_tms380tr.c_tms380tr_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.net_local = type { i32, i32, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i64, i32, i64 }

@OC_CLOSE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@tms380tr_timer_end_wait = common dso_local global i32 0, align 4
@SIFCMD = common dso_local global i32 0, align 4
@POSREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tms380tr_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.net_local* @netdev_priv(%struct.net_device* %4)
  store %struct.net_local* %5, %struct.net_local** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netif_stop_queue(%struct.net_device* %6)
  %8 = load %struct.net_local*, %struct.net_local** %3, align 8
  %9 = getelementptr inbounds %struct.net_local, %struct.net_local* %8, i32 0, i32 2
  %10 = call i32 @del_timer(%struct.TYPE_3__* %9)
  %11 = load %struct.net_local*, %struct.net_local** %3, align 8
  %12 = getelementptr inbounds %struct.net_local, %struct.net_local* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = load i32, i32* @OC_CLOSE, align 4
  %15 = call i32 @tms380tr_exec_cmd(%struct.net_device* %13, i32 %14)
  %16 = load i64, i64* @jiffies, align 8
  %17 = load i32, i32* @HZ, align 4
  %18 = mul nsw i32 1, %17
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = load %struct.net_local*, %struct.net_local** %3, align 8
  %22 = getelementptr inbounds %struct.net_local, %struct.net_local* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  store i64 %20, i64* %23, align 8
  %24 = load i32, i32* @tms380tr_timer_end_wait, align 4
  %25 = load %struct.net_local*, %struct.net_local** %3, align 8
  %26 = getelementptr inbounds %struct.net_local, %struct.net_local* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 8
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = ptrtoint %struct.net_device* %28 to i64
  %30 = load %struct.net_local*, %struct.net_local** %3, align 8
  %31 = getelementptr inbounds %struct.net_local, %struct.net_local* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load %struct.net_local*, %struct.net_local** %3, align 8
  %34 = getelementptr inbounds %struct.net_local, %struct.net_local* %33, i32 0, i32 2
  %35 = call i32 @add_timer(%struct.TYPE_3__* %34)
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = call i32 @tms380tr_enable_interrupts(%struct.net_device* %36)
  %38 = load %struct.net_local*, %struct.net_local** %3, align 8
  %39 = getelementptr inbounds %struct.net_local, %struct.net_local* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.net_local*, %struct.net_local** %3, align 8
  %41 = getelementptr inbounds %struct.net_local, %struct.net_local* %40, i32 0, i32 4
  %42 = call i32 @interruptible_sleep_on(i32* %41)
  %43 = load %struct.net_local*, %struct.net_local** %3, align 8
  %44 = getelementptr inbounds %struct.net_local, %struct.net_local* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.net_local*, %struct.net_local** %3, align 8
  %46 = getelementptr inbounds %struct.net_local, %struct.net_local* %45, i32 0, i32 2
  %47 = call i32 @del_timer(%struct.TYPE_3__* %46)
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = call i32 @tms380tr_disable_interrupts(%struct.net_device* %48)
  %50 = load i32, i32* @SIFCMD, align 4
  %51 = call i32 @SIFWRITEW(i32 65280, i32 %50)
  %52 = load %struct.net_local*, %struct.net_local** %3, align 8
  %53 = call i32 @tms380tr_cancel_tx_queue(%struct.net_local* %52)
  ret i32 0
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @del_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @tms380tr_exec_cmd(%struct.net_device*, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @tms380tr_enable_interrupts(%struct.net_device*) #1

declare dso_local i32 @interruptible_sleep_on(i32*) #1

declare dso_local i32 @tms380tr_disable_interrupts(%struct.net_device*) #1

declare dso_local i32 @SIFWRITEW(i32, i32) #1

declare dso_local i32 @tms380tr_cancel_tx_queue(%struct.net_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
