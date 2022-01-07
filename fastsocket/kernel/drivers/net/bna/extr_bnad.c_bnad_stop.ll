; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnad = type { i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@BNA_HARD_CLEANUP = common dso_local global i32 0, align 4
@bnad_cb_enet_disabled = common dso_local global i32 0, align 4
@BNAD_CF_ALLMULTI = common dso_local global i32 0, align 4
@BNAD_CF_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bnad_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.bnad* @netdev_priv(%struct.net_device* %5)
  store %struct.bnad* %6, %struct.bnad** %3, align 8
  %7 = load %struct.bnad*, %struct.bnad** %3, align 8
  %8 = getelementptr inbounds %struct.bnad, %struct.bnad* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.bnad*, %struct.bnad** %3, align 8
  %11 = call i32 @bnad_stats_timer_stop(%struct.bnad* %10)
  %12 = load %struct.bnad*, %struct.bnad** %3, align 8
  %13 = getelementptr inbounds %struct.bnad, %struct.bnad* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call i32 @init_completion(i32* %14)
  %16 = load %struct.bnad*, %struct.bnad** %3, align 8
  %17 = getelementptr inbounds %struct.bnad, %struct.bnad* %16, i32 0, i32 3
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.bnad*, %struct.bnad** %3, align 8
  %21 = getelementptr inbounds %struct.bnad, %struct.bnad* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* @BNA_HARD_CLEANUP, align 4
  %24 = load i32, i32* @bnad_cb_enet_disabled, align 4
  %25 = call i32 @bna_enet_disable(i32* %22, i32 %23, i32 %24)
  %26 = load %struct.bnad*, %struct.bnad** %3, align 8
  %27 = getelementptr inbounds %struct.bnad, %struct.bnad* %26, i32 0, i32 3
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load %struct.bnad*, %struct.bnad** %3, align 8
  %31 = getelementptr inbounds %struct.bnad, %struct.bnad* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @wait_for_completion(i32* %32)
  %34 = load %struct.bnad*, %struct.bnad** %3, align 8
  %35 = call i32 @bnad_destroy_tx(%struct.bnad* %34, i32 0)
  %36 = load %struct.bnad*, %struct.bnad** %3, align 8
  %37 = call i32 @bnad_destroy_rx(%struct.bnad* %36, i32 0)
  %38 = load i32, i32* @BNAD_CF_ALLMULTI, align 4
  %39 = load i32, i32* @BNAD_CF_PROMISC, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load %struct.bnad*, %struct.bnad** %3, align 8
  %43 = getelementptr inbounds %struct.bnad, %struct.bnad* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.bnad*, %struct.bnad** %3, align 8
  %47 = call i32 @bnad_mbox_irq_sync(%struct.bnad* %46)
  %48 = load %struct.bnad*, %struct.bnad** %3, align 8
  %49 = getelementptr inbounds %struct.bnad, %struct.bnad* %48, i32 0, i32 1
  %50 = call i32 @mutex_unlock(i32* %49)
  ret i32 0
}

declare dso_local %struct.bnad* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bnad_stats_timer_stop(%struct.bnad*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bna_enet_disable(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @bnad_destroy_tx(%struct.bnad*, i32) #1

declare dso_local i32 @bnad_destroy_rx(%struct.bnad*, i32) #1

declare dso_local i32 @bnad_mbox_irq_sync(%struct.bnad*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
