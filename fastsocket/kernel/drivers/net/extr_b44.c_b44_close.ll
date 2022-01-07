; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.b44 = type { i32, i32, i32, i32 }

@B44_FLAG_WOL_ENABLE = common dso_local global i32 0, align 4
@B44_PARTIAL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @b44_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.b44*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.b44* @netdev_priv(%struct.net_device* %4)
  store %struct.b44* %5, %struct.b44** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netif_stop_queue(%struct.net_device* %6)
  %8 = load %struct.b44*, %struct.b44** %3, align 8
  %9 = getelementptr inbounds %struct.b44, %struct.b44* %8, i32 0, i32 3
  %10 = call i32 @napi_disable(i32* %9)
  %11 = load %struct.b44*, %struct.b44** %3, align 8
  %12 = getelementptr inbounds %struct.b44, %struct.b44* %11, i32 0, i32 2
  %13 = call i32 @del_timer_sync(i32* %12)
  %14 = load %struct.b44*, %struct.b44** %3, align 8
  %15 = getelementptr inbounds %struct.b44, %struct.b44* %14, i32 0, i32 1
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load %struct.b44*, %struct.b44** %3, align 8
  %18 = call i32 @b44_halt(%struct.b44* %17)
  %19 = load %struct.b44*, %struct.b44** %3, align 8
  %20 = call i32 @b44_free_rings(%struct.b44* %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @netif_carrier_off(%struct.net_device* %21)
  %23 = load %struct.b44*, %struct.b44** %3, align 8
  %24 = getelementptr inbounds %struct.b44, %struct.b44* %23, i32 0, i32 1
  %25 = call i32 @spin_unlock_irq(i32* %24)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @free_irq(i32 %28, %struct.net_device* %29)
  %31 = load %struct.b44*, %struct.b44** %3, align 8
  %32 = getelementptr inbounds %struct.b44, %struct.b44* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @B44_FLAG_WOL_ENABLE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %1
  %38 = load %struct.b44*, %struct.b44** %3, align 8
  %39 = load i32, i32* @B44_PARTIAL_RESET, align 4
  %40 = call i32 @b44_init_hw(%struct.b44* %38, i32 %39)
  %41 = load %struct.b44*, %struct.b44** %3, align 8
  %42 = call i32 @b44_setup_wol(%struct.b44* %41)
  br label %43

43:                                               ; preds = %37, %1
  %44 = load %struct.b44*, %struct.b44** %3, align 8
  %45 = call i32 @b44_free_consistent(%struct.b44* %44)
  ret i32 0
}

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @b44_halt(%struct.b44*) #1

declare dso_local i32 @b44_free_rings(%struct.b44*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @b44_init_hw(%struct.b44*, i32) #1

declare dso_local i32 @b44_setup_wol(%struct.b44*) #1

declare dso_local i32 @b44_free_consistent(%struct.b44*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
