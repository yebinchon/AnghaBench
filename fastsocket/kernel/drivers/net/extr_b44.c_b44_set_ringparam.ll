; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i64, i64, i32 }
%struct.b44 = type { i32, i32, i32, i32 }

@B44_RX_RING_SIZE = common dso_local global i32 0, align 4
@B44_TX_RING_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@B44_FULL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @b44_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.b44*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.b44* @netdev_priv(%struct.net_device* %7)
  store %struct.b44* %8, %struct.b44** %6, align 8
  %9 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @B44_RX_RING_SIZE, align 4
  %13 = sub nsw i32 %12, 1
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %32, label %15

15:                                               ; preds = %2
  %16 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %15
  %21 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @B44_TX_RING_SIZE, align 4
  %30 = sub nsw i32 %29, 1
  %31 = icmp sgt i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25, %20, %15, %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %65

35:                                               ; preds = %25
  %36 = load %struct.b44*, %struct.b44** %6, align 8
  %37 = getelementptr inbounds %struct.b44, %struct.b44* %36, i32 0, i32 2
  %38 = call i32 @spin_lock_irq(i32* %37)
  %39 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.b44*, %struct.b44** %6, align 8
  %43 = getelementptr inbounds %struct.b44, %struct.b44* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.b44*, %struct.b44** %6, align 8
  %48 = getelementptr inbounds %struct.b44, %struct.b44* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.b44*, %struct.b44** %6, align 8
  %50 = call i32 @b44_halt(%struct.b44* %49)
  %51 = load %struct.b44*, %struct.b44** %6, align 8
  %52 = call i32 @b44_init_rings(%struct.b44* %51)
  %53 = load %struct.b44*, %struct.b44** %6, align 8
  %54 = load i32, i32* @B44_FULL_RESET, align 4
  %55 = call i32 @b44_init_hw(%struct.b44* %53, i32 %54)
  %56 = load %struct.b44*, %struct.b44** %6, align 8
  %57 = getelementptr inbounds %struct.b44, %struct.b44* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @netif_wake_queue(i32 %58)
  %60 = load %struct.b44*, %struct.b44** %6, align 8
  %61 = getelementptr inbounds %struct.b44, %struct.b44* %60, i32 0, i32 2
  %62 = call i32 @spin_unlock_irq(i32* %61)
  %63 = load %struct.b44*, %struct.b44** %6, align 8
  %64 = call i32 @b44_enable_ints(%struct.b44* %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %35, %32
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @b44_halt(%struct.b44*) #1

declare dso_local i32 @b44_init_rings(%struct.b44*) #1

declare dso_local i32 @b44_init_hw(%struct.b44*, i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @b44_enable_ints(%struct.b44*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
