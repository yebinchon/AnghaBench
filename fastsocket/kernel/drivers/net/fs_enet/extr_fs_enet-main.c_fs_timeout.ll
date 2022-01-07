; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/fs_enet/extr_fs_enet-main.c_fs_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/fs_enet/extr_fs_enet-main.c_fs_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fs_enet_private = type { i32, i32, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.net_device*)*, i32 (%struct.net_device*)* }
%struct.TYPE_3__ = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@BD_ENET_TX_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fs_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fs_enet_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.fs_enet_private* @netdev_priv(%struct.net_device* %6)
  store %struct.fs_enet_private* %7, %struct.fs_enet_private** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %9 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 8
  %13 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %14 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %13, i32 0, i32 0
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IFF_UP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %1
  %24 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %25 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @phy_stop(i32 %26)
  %28 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %29 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %28, i32 0, i32 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %31, align 8
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 %32(%struct.net_device* %33)
  %35 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %36 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %35, i32 0, i32 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %38, align 8
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i32 %39(%struct.net_device* %40)
  %42 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %43 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @phy_start(i32 %44)
  br label %46

46:                                               ; preds = %23, %1
  %47 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %48 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @phy_start(i32 %49)
  %51 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %52 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %46
  %56 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %57 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @CBDR_SC(i32 %58)
  %60 = load i32, i32* @BD_ENET_TX_READY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br label %64

64:                                               ; preds = %55, %46
  %65 = phi i1 [ false, %46 ], [ %63, %55 ]
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %5, align 4
  %67 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %68 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %67, i32 0, i32 0
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = call i32 @netif_wake_queue(%struct.net_device* %74)
  br label %76

76:                                               ; preds = %73, %64
  ret void
}

declare dso_local %struct.fs_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @phy_stop(i32) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i32 @CBDR_SC(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
