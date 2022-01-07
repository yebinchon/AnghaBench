; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_ethtool.c_stmmac_set_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_ethtool.c_stmmac_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.stmmac_priv = type { i64, i32, i32, i32 }

@WAKE_MAGIC = common dso_local global i32 0, align 4
@PMT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @stmmac_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.stmmac_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.stmmac_priv* %9, %struct.stmmac_priv** %6, align 8
  %10 = load i32, i32* @WAKE_MAGIC, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %12 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PMT_NOT_SUPPORTED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %57

19:                                               ; preds = %2
  %20 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %57

30:                                               ; preds = %19
  %31 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %37 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @device_set_wakeup_enable(i32 %38, i32 0)
  br label %45

40:                                               ; preds = %30
  %41 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %42 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @device_set_wakeup_enable(i32 %43, i32 1)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %47 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %46, i32 0, i32 2
  %48 = call i32 @spin_lock_irq(i32* %47)
  %49 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %53 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %55 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %54, i32 0, i32 2
  %56 = call i32 @spin_unlock_irq(i32* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %45, %27, %16
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @device_set_wakeup_enable(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
