; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec_mpc52xx.c_mpc52xx_fec_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec_mpc52xx.c_mpc52xx_fec_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mpc52xx_fec_priv = type { i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mpc52xx_fec_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_fec_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mpc52xx_fec_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.mpc52xx_fec_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.mpc52xx_fec_priv* %5, %struct.mpc52xx_fec_priv** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netif_stop_queue(%struct.net_device* %6)
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @mpc52xx_fec_stop(%struct.net_device* %8)
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @mpc52xx_fec_free_rx_buffers(%struct.net_device* %10, i32 %13)
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @free_irq(i32 %17, %struct.net_device* %18)
  %20 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %3, align 8
  %21 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 @free_irq(i32 %22, %struct.net_device* %23)
  %25 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %3, align 8
  %26 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = call i32 @free_irq(i32 %27, %struct.net_device* %28)
  %30 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %3, align 8
  %31 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %1
  %35 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %3, align 8
  %36 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @phy_stop(i32* %37)
  %39 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %3, align 8
  %40 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @phy_disconnect(i32* %41)
  %43 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %3, align 8
  %44 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %34, %1
  ret i32 0
}

declare dso_local %struct.mpc52xx_fec_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @mpc52xx_fec_stop(%struct.net_device*) #1

declare dso_local i32 @mpc52xx_fec_free_rx_buffers(%struct.net_device*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @phy_stop(i32*) #1

declare dso_local i32 @phy_disconnect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
