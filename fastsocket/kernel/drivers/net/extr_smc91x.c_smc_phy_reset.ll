; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smc91x.c_smc_phy_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smc91x.c_smc_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.smc_local = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @smc_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_phy_reset(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smc_local*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.smc_local* @netdev_priv(%struct.net_device* %8)
  store %struct.smc_local* %9, %struct.smc_local** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MII_BMCR, align 4
  %13 = load i32, i32* @BMCR_RESET, align 4
  %14 = call i32 @smc_phy_write(%struct.net_device* %10, i32 %11, i32 %12, i32 %13)
  store i32 2, i32* %7, align 4
  br label %15

15:                                               ; preds = %36, %2
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = load %struct.smc_local*, %struct.smc_local** %5, align 8
  %20 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock_irq(i32* %20)
  %22 = call i32 @msleep(i32 50)
  %23 = load %struct.smc_local*, %struct.smc_local** %5, align 8
  %24 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_irq(i32* %24)
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @MII_BMCR, align 4
  %29 = call i32 @smc_phy_read(%struct.net_device* %26, i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @BMCR_RESET, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %18
  br label %39

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %7, align 4
  br label %15

39:                                               ; preds = %34, %15
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @BMCR_RESET, align 4
  %42 = and i32 %40, %41
  ret i32 %42
}

declare dso_local %struct.smc_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @smc_phy_write(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @smc_phy_read(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
