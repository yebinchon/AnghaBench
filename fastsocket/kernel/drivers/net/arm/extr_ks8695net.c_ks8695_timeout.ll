; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ks8695_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ks8695_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8695_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ks8695_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ks8695_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.ks8695_priv* %5, %struct.ks8695_priv** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netif_stop_queue(%struct.net_device* %6)
  %8 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %9 = call i32 @ks8695_shutdown(%struct.ks8695_priv* %8)
  %10 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %11 = call i32 @ks8695_reset(%struct.ks8695_priv* %10)
  %12 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %13 = call i32 @ks8695_update_mac(%struct.ks8695_priv* %12)
  %14 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %15 = call i32 @ks8695_init_net(%struct.ks8695_priv* %14)
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @ks8695_set_multicast(%struct.net_device* %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @netif_start_queue(%struct.net_device* %18)
  ret void
}

declare dso_local %struct.ks8695_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @ks8695_shutdown(%struct.ks8695_priv*) #1

declare dso_local i32 @ks8695_reset(%struct.ks8695_priv*) #1

declare dso_local i32 @ks8695_update_mac(%struct.ks8695_priv*) #1

declare dso_local i32 @ks8695_init_net(%struct.ks8695_priv*) #1

declare dso_local i32 @ks8695_set_multicast(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
