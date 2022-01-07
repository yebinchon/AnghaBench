; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/fs_enet/extr_fs_enet-main.c_fs_enet_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/fs_enet/extr_fs_enet-main.c_fs_enet_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fs_enet_private = type { i32, i32*, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.net_device*)* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @fs_enet_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_enet_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fs_enet_private*, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.fs_enet_private* @netdev_priv(%struct.net_device* %5)
  store %struct.fs_enet_private* %6, %struct.fs_enet_private** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netif_stop_queue(%struct.net_device* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @netif_carrier_off(%struct.net_device* %9)
  %11 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %12 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %11, i32 0, i32 6
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %19 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %18, i32 0, i32 5
  %20 = call i32 @napi_disable(i32* %19)
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %23 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @phy_stop(i32* %24)
  %26 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %27 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %26, i32 0, i32 2
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %31 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %30, i32 0, i32 3
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %34 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %33, i32 0, i32 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %36, align 8
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = call i32 %37(%struct.net_device* %38)
  %40 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %41 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %40, i32 0, i32 3
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %44 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %43, i32 0, i32 2
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %48 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @phy_disconnect(i32* %49)
  %51 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %52 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  %53 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %54 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = call i32 @free_irq(i32 %55, %struct.net_device* %56)
  ret i32 0
}

declare dso_local %struct.fs_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @phy_stop(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @phy_disconnect(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
