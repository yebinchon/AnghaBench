; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dscc4_dev_priv = type { i32, i32 }

@PowerUp = common dso_local global i32 0, align 4
@Vis = common dso_local global i32 0, align 4
@CCR0 = common dso_local global i32 0, align 4
@CCR2 = common dso_local global i32 0, align 4
@IMR = common dso_local global i32 0, align 4
@FakeReset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @dscc4_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dscc4_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dscc4_dev_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.dscc4_dev_priv* @dscc4_priv(%struct.net_device* %4)
  store %struct.dscc4_dev_priv* %5, %struct.dscc4_dev_priv** %3, align 8
  %6 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %7 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %6, i32 0, i32 1
  %8 = call i32 @del_timer_sync(i32* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @netif_stop_queue(%struct.net_device* %9)
  %11 = load i32, i32* @PowerUp, align 4
  %12 = load i32, i32* @Vis, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = load i32, i32* @CCR0, align 4
  %17 = call i32 @scc_patchl(i32 %13, i32 0, %struct.dscc4_dev_priv* %14, %struct.net_device* %15, i32 %16)
  %18 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = load i32, i32* @CCR2, align 4
  %21 = call i32 @scc_patchl(i32 327680, i32 0, %struct.dscc4_dev_priv* %18, %struct.net_device* %19, i32 %20)
  %22 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = load i32, i32* @IMR, align 4
  %25 = call i32 @scc_writel(i32 -1, %struct.dscc4_dev_priv* %22, %struct.net_device* %23, i32 %24)
  %26 = load i32, i32* @FakeReset, align 4
  %27 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %28 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = call i32 @hdlc_close(%struct.net_device* %31)
  ret i32 0
}

declare dso_local %struct.dscc4_dev_priv* @dscc4_priv(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @scc_patchl(i32, i32, %struct.dscc4_dev_priv*, %struct.net_device*, i32) #1

declare dso_local i32 @scc_writel(i32, %struct.dscc4_dev_priv*, %struct.net_device*, i32) #1

declare dso_local i32 @hdlc_close(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
