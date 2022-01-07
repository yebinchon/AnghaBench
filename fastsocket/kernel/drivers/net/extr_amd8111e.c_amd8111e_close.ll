; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.amd8111e_priv = type { i32, i64, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@OPTION_DYN_IPG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @amd8111e_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd8111e_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.amd8111e_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.amd8111e_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.amd8111e_priv* %5, %struct.amd8111e_priv** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netif_stop_queue(%struct.net_device* %6)
  %8 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %9 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %8, i32 0, i32 5
  %10 = call i32 @napi_disable(i32* %9)
  %11 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %12 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %11, i32 0, i32 2
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %15 = call i32 @amd8111e_disable_interrupt(%struct.amd8111e_priv* %14)
  %16 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %17 = call i32 @amd8111e_stop_chip(%struct.amd8111e_priv* %16)
  %18 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %19 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @amd8111e_free_skbs(i32 %20)
  %22 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %23 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @netif_carrier_off(i32 %24)
  %26 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %27 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @OPTION_DYN_IPG_ENABLE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %34 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @del_timer_sync(i32* %35)
  br label %37

37:                                               ; preds = %32, %1
  %38 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %39 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %38, i32 0, i32 2
  %40 = call i32 @spin_unlock_irq(i32* %39)
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = call i32 @free_irq(i32 %43, %struct.net_device* %44)
  %46 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %47 = call i32 @amd8111e_free_ring(%struct.amd8111e_priv* %46)
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = call i32 @amd8111e_get_stats(%struct.net_device* %48)
  %50 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %51 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  ret i32 0
}

declare dso_local %struct.amd8111e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @amd8111e_disable_interrupt(%struct.amd8111e_priv*) #1

declare dso_local i32 @amd8111e_stop_chip(%struct.amd8111e_priv*) #1

declare dso_local i32 @amd8111e_free_skbs(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @amd8111e_free_ring(%struct.amd8111e_priv*) #1

declare dso_local i32 @amd8111e_get_stats(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
