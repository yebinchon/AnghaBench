; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_ethtool.c_gfar_set_rx_csum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_ethtool.c_gfar_set_rx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gfar_private = type { i32, i32, i32, i32, i32, i32 }

@FSL_GIANFAR_DEV_HAS_CSUM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @gfar_set_rx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_set_rx_csum(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfar_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %9)
  store %struct.gfar_private* %10, %struct.gfar_private** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %12 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FSL_GIANFAR_DEV_HAS_CSUM, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %76

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFF_UP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %20
  %28 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %29 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %28, i32 0, i32 4
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %33 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %32, i32 0, i32 5
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = call i32 @gfar_halt(%struct.net_device* %35)
  %37 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %38 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %37, i32 0, i32 5
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %41 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %40, i32 0, i32 4
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %46 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @gfar_clean_rx_ring(%struct.net_device* %44, i32 %47)
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = call i32 @stop_gfar(%struct.net_device* %49)
  br label %51

51:                                               ; preds = %27, %20
  %52 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %53 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %52, i32 0, i32 1
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %58 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %60 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %59, i32 0, i32 1
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IFF_UP, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %51
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = call i32 @startup_gfar(%struct.net_device* %70)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = call i32 @netif_wake_queue(%struct.net_device* %72)
  br label %74

74:                                               ; preds = %69, %51
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %17
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gfar_halt(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @gfar_clean_rx_ring(%struct.net_device*, i32) #1

declare dso_local i32 @stop_gfar(%struct.net_device*) #1

declare dso_local i32 @startup_gfar(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
